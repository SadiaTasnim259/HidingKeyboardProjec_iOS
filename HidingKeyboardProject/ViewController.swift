//
//  ViewController.swift
//  HidingKeyboardProject
//
//  Created by Sadia on 9/5/23.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var professionTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
        ageTextField.delegate = self
        professionTextField.delegate = self
        addressTextField.delegate = self
    }
 
    //keyboard take return kore dibe done button er maddhome.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameTextField.resignFirstResponder()
        ageTextField.resignFirstResponder()
        professionTextField.resignFirstResponder()
        addressTextField.resignFirstResponder()

        return true
    }
    
    // View er je kono jaigai click korlei keyboard dismiss hoye jabe.
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
}

