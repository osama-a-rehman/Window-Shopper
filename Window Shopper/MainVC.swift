//
//  MainVC.swift
//  Window Shopper
//
//  Created by Osama Mac on 11/9/17.
//  Copyright © 2017 Osama Mac. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    
    @IBOutlet weak var wageTextField: CustomizedTextField!
    
    @IBOutlet weak var itemPriceTextField: CustomizedTextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let calculateBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        
        calculateBtn.backgroundColor = #colorLiteral(red: 1, green: 0.580126236, blue: 0.01286631583, alpha: 1)
        calculateBtn.setTitle("Calculate", for: .normal)
        calculateBtn.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        calculateBtn.addTarget(self, action: #selector(MainVC.calculateBtnPressed), for: .touchUpInside)
        
        wageTextField.inputAccessoryView = calculateBtn
        itemPriceTextField.inputAccessoryView = calculateBtn
    }
    
    func calculateBtnPressed(){
        if let wageText = wageTextField.text, let itemPriceText = itemPriceTextField.text {
            if let wageInDouble = Double(wageText), let itemPriceInDouble = Double(itemPriceText) {
                resultLabel.isHidden = false
                hoursLabel.isHidden = false
                
                resultLabel.text = "\(Wage.getHours(forWage: wageInDouble, andPrice: itemPriceInDouble))"
                
                view.endEditing(true)
            }
        }
    }
    
    @IBAction func clearCalculatorBtnPressed(_ sender: AnyObject) {
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        
        wageTextField.text = ""
        itemPriceTextField.text = ""
        
    }
   
}
