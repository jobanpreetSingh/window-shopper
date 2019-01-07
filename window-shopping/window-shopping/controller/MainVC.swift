//
//  ViewController.swift
//  window-shopping
//
//  Created by Joban Dhot on 2019-01-06.
//  Copyright © 2019 Joban Dhot. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var wagetxt: CurrencyTextField!
    @IBOutlet weak var showhrslabel: UILabel!
    @IBOutlet weak var hourslbl: UILabel!
    @IBOutlet weak var pricetxt: CurrencyTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        /////on starting screen hidden content is
        hourslbl.isHidden = true
        showhrslabel.isHidden = true
        
        
        
  ///CREAYTE UIBUTTON PROGMATICALLY and create claculator keyboard///////
      let calcBtn =  UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60) )
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 0.9449410468)
        calcBtn.setTitle("Calculate", for: .normal)
       //  dont use that one because not work so always use .setTitle calcBtn.titleLabel?.textColor = "Calculate"
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        
        calcBtn.addTarget(self, action: #selector(MainVC.calculate)
            , for: .touchUpInside)
        wagetxt.inputAccessoryView = calcBtn
        pricetxt.inputAccessoryView = calcBtn
        
    }
    @objc func calculate(){
        if let wageTxt = wagetxt.text,let priceTxt = pricetxt.text{
            if let wage = Double(wageTxt), let price = Double(priceTxt){
               view.endEditing(true)
                hourslbl.isHidden = false
            showhrslabel.isHidden = false
              showhrslabel.text = "\(Wage.getHours(forWages: wage, andPrice: price))"
                
            }
            }
 
        }
    
   
    @IBAction func clrcalBtn(_ sender: Any) {
       wagetxt.text = ""
        pricetxt.text = ""
        hourslbl.isHidden = true
        showhrslabel.isHidden = true
       
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

