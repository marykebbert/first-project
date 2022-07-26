//
//  ShoppingItemCell.swift
//  FirstProject-MealPlanning
//
//  Created by HLC on 7/21/22.
//

import UIKit

protocol CheckButton {
    func checkButton(checked: Bool, index: Int)
}

class ShoppingItemCell: UITableViewCell {
    @IBOutlet var checkBoxOutlet: UIButton!
    @IBOutlet var shoppingItemLabel: UILabel!
    @IBAction func checkBoxAction(_ sender: Any) {
        if shoppingItems![indexP!].checked {
            shoppingItemLabel.textColor = .black
            let checkBoxOutline = UIImage(named: "checkBoxOUTLINE ")
            checkBoxOutlet.setBackgroundImage(checkBoxOutline, for: .normal)
            delegate?.checkButton(checked: false, index: indexP!)
        } else {
            shoppingItemLabel.textColor = .systemGray
            let checkBoxFilled = UIImage(named: "checkBoxFILLED ")
            checkBoxOutlet.setBackgroundImage(checkBoxFilled, for: .normal)
            delegate?.checkButton(checked: true, index: indexP!)
        }
    }
    
    var delegate: CheckButton?
    var indexP: Int?
    var shoppingItems: [ShoppingItem]?

}
