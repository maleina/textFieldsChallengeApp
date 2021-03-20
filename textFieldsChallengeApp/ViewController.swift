//
//  ViewController.swift
//  textFieldsChallengeApp
//
//  Created by Maleina Bidek on 3/19/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField3Switch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set the switch to be off
        textField3Switch.isOn = false
        
        // Set the three delegates
        self.textField3.delegate = self
    }
    
    

    

}

