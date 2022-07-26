//
//  ViewController.swift
//  FirstProject-MealPlanning
//
//  Created by HLC on 7/19/22.
//

import UIKit

class ViewController: UITableViewController, UISearchBarDelegate {
    var recipes = [Recipe]()
    
    // making a search controller
    let searchController = UISearchController(searchResultsController: nil)
    
    // for filtering functions
    var lowercasedRecipes = [Recipe]()
    var filteredRecipes = [Recipe]()
    var recipesToShow = [Recipe]()
    var inSearchMode = false
    
    // adding items to shopping list
    var itemsToAdd = [ShoppingItem]()
    
    // user defaults
    var allSavedRecipes = [Recipe]()
    var allSavedRecipesKey = "allSavedRecipesKey"
    var allSavedShoppingItems = [ShoppingItem]()
    var allSavedShoppingItemsKey = "allSavedShoppingItemsKey"

    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        recipesToShow = recipes
        createSearchBar()
        title = "Family Favorites"
        // navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(createNewRecipe))
    }
    
//    @objc func createNewRecipe() {
//        if let vc = storyboard?.instantiateViewController(identifier: "NewRecipe") {
//            navigationController?.present(vc, animated: true, completion: nil)
//        }
//    }
    
    func loadData() {
        let defaults = UserDefaults.standard
        
        // loading the recipes...
        if let savedRecipes = defaults.object(forKey: allSavedRecipesKey) as? [Recipe] { // in case I figure out how to add recipes
            recipes = savedRecipes
        } else {
            let jsonData = JSON.data(using: .utf8)!
            let decodedJson = try! JSONDecoder().decode([Recipe].self, from: jsonData)
            recipes = decodedJson
        }
        
        // loading the shopping items
        if let savedShoppingItems = defaults.object(forKey: allSavedShoppingItemsKey) as? Data {
            let jsonDecoder = JSONDecoder()
            
            do {
                itemsToAdd = try jsonDecoder.decode([ShoppingItem].self, from: savedShoppingItems)
            } catch {
                print("Failed to load shopping items")
            }
        }
        
        tableView.reloadData()
    }
    
    func createSearchBar() {
        navigationItem.searchController = searchController
        searchController.searchBar.delegate = self
        
        // will need to update the lowercasedRecipes if I add the functionality to add another recipe
        for (index, recipe) in recipes.enumerated() {
            lowercasedRecipes.append(recipes[index])
            lowercasedRecipes[index].name = recipe.name.lowercased()
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipesToShow.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Recipe", for: indexPath)
        cell.textLabel?.text = recipesToShow[indexPath.row].name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = RecipeViewController()
        vc.selectedWebsite = recipesToShow[indexPath.row].originalURL
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let text = searchBar.text, !text.isEmpty else {return}
        inSearchMode = true
        showFilteredResults(text: text.lowercased())
        searchController.dismiss(animated: true, completion: nil)
    }
    
    func showFilteredResults(text: String) {
        
        // things to add to this method:
            // search through ingredients
            // make each word a seperate criteria
        DispatchQueue.global().async {
            self.filteredRecipes = [Recipe]()
            
            for (index, recipe) in self.lowercasedRecipes.enumerated() {
                if recipe.name.contains(text) {
                    self.filteredRecipes.append(self.recipes[index])
                }
            }
            self.recipesToShow = self.filteredRecipes
        }
        
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        recipesToShow = recipes
        tableView.reloadData()
    }
    
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        guard let text = searchBar.text, !text.isEmpty else {
            recipesToShow = recipes
            tableView.reloadData()
            return
        }
        showFilteredResults(text: text.lowercased())
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let addItem = UIContextualAction(style: .normal, title: "Add to List") { [weak self] (contextualAction, view, completionHandler) in
            self?.sendDataOver(index: indexPath.row)
            completionHandler(true)
        }
        addItem.backgroundColor = .systemGreen
        return UISwipeActionsConfiguration(actions: [addItem])
    }
    
    func sendDataOver(index: Int) {
        loadData()
        for ingredient in recipesToShow[index].ingredients {
            itemsToAdd.append(ShoppingItem(name: ingredient.name))
        }
        saveShoppingItems(items: itemsToAdd)
    }
    
    func saveShoppingItems(items: [ShoppingItem]) {
        let jsonEncoder = JSONEncoder()
        if let savedShoppingItems = try? jsonEncoder.encode(itemsToAdd) {
            let defaults = UserDefaults.standard
            defaults.set(savedShoppingItems, forKey: allSavedShoppingItemsKey)
        } else {
            print("Failed to save")
        }
    }
}

