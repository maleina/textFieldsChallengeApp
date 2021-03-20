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
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set the switch to be off
        textField3Switch.setOn(false, animated: false)
        
        // Set the three delegates
        self.textField1.delegate = zipTextFieldDelegate
        self.textField3.delegate = self
    }
    
    // MARK: Text Field Delegate Methods

    

}

