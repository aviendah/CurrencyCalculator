//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Tatum Manning on 6/23/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountInput: UITextField!
    
    var converterLogic = ConverterLogic()
    
    var amountUSD : Float = 0
    var amountString = ""
    var amountEU = ""
    var amountCD = ""
    var amountFR = ""
    var amountYU = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func enterAmount(_ sender: UITextField) {
        amountString = "$\(sender.text!)"
        amountUSD = converterLogic.getAmountUSD(sender.text!)
                
    }
    
    @IBAction func euros(_ sender: UISwitch) {
        converterLogic.setEUSwitch(sender.isOn)
        
    }
    
    @IBAction func canadian(_ sender: UISwitch) {
        converterLogic.setCDSwitch(sender.isOn)
        
    }
    

    @IBAction func francs(_ sender: UISwitch) {
        converterLogic.setFRSwitch(sender.isOn)
        
    }
    
    
    @IBAction func yuan(_ sender: UISwitch) {
        converterLogic.setYUSwitch(sender.isOn)
    }
    
    
    @IBAction func convert(_ sender: UIButton) {
        if converterLogic.isInputValid() {
            amountCD = converterLogic.convertCD()
            amountEU = converterLogic.convertEU()
            amountFR = converterLogic.convertFR()
            amountYU = converterLogic.convertYU()
        } else {
            amountString = "Please enter a valid integer and try again."
        }
        
        self.performSegue(withIdentifier: "toConvertedAmounts", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toConvertedAmounts" {
            let navigation = segue.destination as! ConvertedAmountView
            navigation.amountInput = amountString
            navigation.amountCD = amountCD
            navigation.amountEU = amountEU
            navigation.amountFR = amountFR
            navigation.amountYU = amountYU
        }
        
    }
    
    
}


