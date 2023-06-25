//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Tatum Manning on 6/23/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountInput: UITextField!
    
    var eurosSwitch : Bool = false
    var canadianSwitch : Bool = false
    var francsSwitch : Bool = false
    var yuanSwitch : Bool = false
    
    var amountUSD : Float = 0
    
    var amountEU : Int = 0
    var amountCD : Int = 0
    var ammountFR : Int = 0
    var amountYU : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func enterAmount(_ sender: UITextField) {
        
        amountUSD = Float(amountInput.text!) ?? 0
        
    }
    
    @IBAction func euros(_ sender: UISwitch) {
        if sender.isOn {
            eurosSwitch = true
        } else {
            eurosSwitch = false
        }
        
    }
    
    @IBAction func canadian(_ sender: UISwitch) {
        if sender.isOn {
            canadianSwitch = true
        } else {
            canadianSwitch = false
        }
        
    }
    

    @IBAction func francs(_ sender: UISwitch) {
        if sender.isOn {
           francsSwitch = true
        } else {
            francsSwitch = false
        }
        
    }
    
    
    @IBAction func yuan(_ sender: UISwitch) {
        if sender.isOn {
            yuanSwitch = true
        } else {
           yuanSwitch = false
        }
        
    }
    
    
    @IBAction func convert(_ sender: UIButton) {
        if canadianSwitch {
            amountCD = Int(amountUSD * 1.32)
        }
        
        
        
    }
}

