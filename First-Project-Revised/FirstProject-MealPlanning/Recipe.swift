//
//  Recipe.swift
//  FirstProject-MealPlanning
//
//  Created by HLC on 7/19/22.
//

import Foundation

struct Recipe: Decodable {
    var name: String
    var ingredients: [Ingredient]
    var steps: [String]
    var originalURL: String?
}
