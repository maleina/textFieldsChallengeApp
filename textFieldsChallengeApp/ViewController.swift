//
//  ViewController.swift
//  textFieldsChallengeApp
//
//  Created by Maleina Bidek on 3/19/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Outlets
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField3Switch: UISwitch!
    
    // MARK: Text Field Delegate objects
    let zipTextFieldDelegate = ZipTextFieldDelegate()
    let cashTextFieldDelegate = CashTextFieldDelegate()
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set the switch to be off
        textField3Switch.setOn(false, animated: false)
        
        // Set the three delegates
        self.textField1.delegate = zipTextFieldDelegate
        self.textField2.delegate = cashTextFieldDelegate
        self.textField3.delegate = self
    }
    
    // MARK: Text Field Delegate Methods
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        
        return true
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return self.textField3Switch.isOn
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // MARK: Actions
    @IBAction func toggleTextField3(_ sender: Any) {
        if !(sender as! UISwitch).isOn {
            self.textField3.resignFirstResponder()
        }
    }
    
}

