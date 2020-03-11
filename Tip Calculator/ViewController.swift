//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Easy Transport on 3/3/20.
//  Copyright © 2020 HungryDroid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myBill: UITextField!
    @IBOutlet weak var myTip: UITextField!
    @IBOutlet weak var myValue: UILabel!
    
    @IBOutlet weak var myCalculate: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func myButtonTapped(_ sender: Any) {
        
        
        if(Float(myBill.text!) != nil && Float(myTip.text!) != nil){
            let bill = Float(myBill.text!)!
            let tip = bill * (Float(myTip.text!)! / 100.0)
            
            if(tip >= 50.0){
                myValue.text = String("Tip:  \(tip)! 🤑")
            } else if (tip == 0.0){
                myValue.text = String("Tip:  \(tip). 🥺")
            } else {
                myValue.text = String("Tip:  \(tip). 😊")
            }
        }else{
            print("null found")
        }
        
        
    }
    
}


