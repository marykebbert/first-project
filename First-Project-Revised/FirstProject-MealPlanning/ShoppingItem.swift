//
//  ShoppingItem.swift
//  FirstProject-MealPlanning
//
//  Created by HLC on 7/22/22.
//

import UIKit

class ShoppingItem: Codable {
    var name = ""
    var checked = false
    
    convenience init(name: String) {
        self.init()
        self.name = name
    }
}
