//
//  ConverterLogic.swift
//  CurrencyConverter
//
//  Created by Tatum Manning on 6/25/23.
//

import Foundation

struct ConverterLogic {
    
    var eurosSwitch : Bool = false
    var canadianSwitch : Bool = false
    var francsSwitch : Bool = false
    var yuanSwitch : Bool = false
    
    var amountUSD : Float = 0
    
    var amountEU : Int = 0
    var amountCD : Int = 0
    var amountFR : Int = 0
    var amountYU : Int = 0

    
    mutating func setEUSwitch(_ switchValue: Bool) {
        if switchValue {
            eurosSwitch = true
        } else {
            eurosSwitch = false
        }
    }
    
    mutating func setCDSwitch(_ switchValue: Bool) {
        if switchValue {
            canadianSwitch = true
        } else {
            canadianSwitch = false
        }
    }
    
    mutating func setFRSwitch(_ switchValue: Bool) {
        if switchValue {
            francsSwitch = true
        } else {
            francsSwitch = false
        }
    }
    
    mutating func setYUSwitch(_ switchValue: Bool) {
        if switchValue {
            yuanSwitch = true
        } else {
            yuanSwitch = false
        }
    }
    
    mutating func getAmountUSD(_ amount: String) -> Float {
        amountUSD = Float(amount) ?? 0
        return amountUSD
    }
    
    mutating func convertCD() -> String {
        if canadianSwitch {
            amountCD = Int(amountUSD * 1.32)
            return String(amountCD)
        } else {
            return ""
        }
    }
    
    mutating func convertEU() -> String {
        if eurosSwitch {
            amountEU = Int(amountUSD * 0.91)
            return String(amountEU)
        } else {
            return ""
        }
    }
    
    mutating func convertFR() -> String {
        if francsSwitch {
            amountFR = Int(amountUSD * 0.90)
            return String(amountFR)
        } else {
            return ""
        }
    }
    
    mutating func convertYU() -> String {
        if yuanSwitch {
            amountYU = Int(amountUSD * 7.18)
            return String(amountYU)
        } else {
            return ""
        }
    }
    
    mutating func isInputValid() -> Bool {
        if amountUSD > 0 {
            return true
        } else {
            return false
        }
    }
    
}
