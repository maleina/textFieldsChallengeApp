//
//  CashTextFieldDelegate.swift
//  textFieldsChallengeApp
//
//  Created by Maleina Bidek on 3/20/21.
//

import Foundation
import UIKit

class CashTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    // MARK: Text Field Delegate Methods
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        var newTextString = String(newText)
        
        // Append only digits to the string that will be displayed
        let digits = CharacterSet.decimalDigits
        var digitText = ""
        for c in (newTextString.unicodeScalars) {
            if digits.contains(UnicodeScalar(c.value)!) {
                digitText.append("\(c)")
            }
        }
        
        // Format the new string
        if let numOfPennies = Int(digitText) {
            newTextString = "$" + self.dollarStringFromInt(numOfPennies) + "." + self.centsStringFromInt(numOfPennies)
        } else {
            newTextString = "$0.00"
        }
        
        // Display the string
        textField.text = newTextString
        
        return false
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField.text!.isEmpty {
            textField.text = "$0.00"
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    
    // MARK: Helper Functions
    func dollarStringFromInt(_ value: Int) -> String {
        return String(value / 100)
    }
    
    func centsStringFromInt(_ value: Int) -> String {
        
        let cents = value % 100
        var centsString = String(cents)
        
        if cents < 10 {
            centsString = "0" + centsString
        }
        
        return centsString
    }
}
