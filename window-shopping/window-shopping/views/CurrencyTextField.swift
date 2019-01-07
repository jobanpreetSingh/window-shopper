//
//  CurrencyTextField.swift
//  window-shopping
//
//  Created by Joban Dhot on 2019-01-06.
//  Copyright © 2019 Joban Dhot. All rights reserved.
//

import UIKit
@IBDesignable
class CurrencyTextField: UITextField {
    override func prepareForInterfaceBuilder() {
        custmizeview()
    }
    override func awakeFromNib() {
    super.awakeFromNib()
        custmizeview()
       
    }
    func custmizeview(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2528038727)
        layer.cornerRadius = 5.0
        textAlignment = .center
        if let p =  placeholder {
            
            
            
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
        
    }
}
