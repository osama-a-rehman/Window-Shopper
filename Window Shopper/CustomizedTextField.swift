//
//  CustomizedTextField.swift
//  Window Shopper
//
//  Created by Osama Mac on 11/9/17.
//  Copyright © 2017 Osama Mac. All rights reserved.
//

import UIKit

@IBDesignable
class CustomizedTextField: UITextField {
    
    override func awakeFromNib() {
        createTextField()
    }
    
    override func prepareForInterfaceBuilder() {
        createTextField()
    }
    
    override func draw(_ rect: CGRect) {
        let iconSize: CGFloat = 25
        
        let currencyIcon = CGRect(x: 10, y: (frame.size.height / 2) - iconSize / 2, width: iconSize, height: iconSize)
        
        let currencyIconLabel = UILabel(frame: currencyIcon)
        currencyIconLabel.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.8)
        currencyIconLabel.textAlignment = .center
        currencyIconLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        currencyIconLabel.layer.cornerRadius = 5.0
        currencyIconLabel.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        
        currencyIconLabel.text = formatter.currencySymbol
        
        addSubview(currencyIconLabel)
    }
    
    func createTextField() {
        backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 2.0
        textAlignment = .center
        
        if let placeholder = placeholder {
            let p = NSAttributedString(string: placeholder, attributes: [NSForegroundColorAttributeName: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            
            attributedPlaceholder = p
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
}
