//
//  ShoppingListViewController.swift
//  FirstProject-MealPlanning
//
//  Created by HLC on 7/21/22.
//

import UIKit

class ShoppingListViewController: UITableViewController, CheckButton {
    var shoppingItems = [ShoppingItem]()
    var deletedShoppingItems = [Int:Double]()
    var allSavedRecipes = [Recipe]()
    var allSavedRecipesKey = "allSavedRecipesKey"
    var allSavedShoppingItems = [ShoppingItem]()
    var allSavedShoppingItemsKey = "allSavedShoppingItemsKey"

    override func viewDidLoad() {
        super.viewDidLoad()
        updateData()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: #selector(updateData))
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .trash, target: self, action: #selector(deleteAllShoppingItems))
    }
    
    @objc func deleteAllShoppingItems() {
        shoppingItems = [ShoppingItem]()
        saveData()
        tableView.reloadData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoppingItems.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShoppingItem", for: indexPath) as! ShoppingItemCell
       
        let checkBoxOutline = UIImage(named: "checkBoxOUTLINE ")
        cell.checkBoxOutlet.setBackgroundImage(checkBoxOutline, for: .normal)
        cell.shoppingItemLabel.textColor = .black
        cell.delegate = self
        cell.indexP = indexPath.row
        cell.shoppingItems = shoppingItems
        cell.shoppingItemLabel.text = shoppingItems[indexPath.row].name

        return cell
    }
    
    func checkButton(checked: Bool, index: Int) {
        // there must be a better way of doing this...
        shoppingItems.remove(at: index)
        let indexPath = IndexPath(row: index, section: 0)
        tableView.deleteRows(at: [indexPath], with: .automatic)
        saveData()
        updateData()
        //perform(#selector(reloadData), with: nil, afterDelay: 0.2)
    }
    
    @objc func reloadData() {
        tableView.reloadData()
    }
    
    func saveData() {
        let jsonEncoder = JSONEncoder()
        if let savedShoppingItems = try? jsonEncoder.encode(shoppingItems) {
            let defaults = UserDefaults.standard
            defaults.set(savedShoppingItems, forKey: allSavedShoppingItemsKey)
        } else {
            print("Failed to save")
        }
    }
    
    @objc func updateData() {
        let defaults = UserDefaults.standard
        if let savedShoppingItems = defaults.object(forKey: allSavedShoppingItemsKey) as? Data {
            let jsonDecoder = JSONDecoder()
            
            do {
                shoppingItems = try jsonDecoder.decode([ShoppingItem].self, from: savedShoppingItems)
            } catch {
                print("Failed to load shopping items")
            }
        }
        
        tableView.reloadData()
    }
    
}
