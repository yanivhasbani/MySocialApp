//
//  ViewController.swift
//  MySocialApp
//
//  Created by Yaniv Hasbani on 6/30/17.
//  Copyright © 2017 Yaniv. All rights reserved.
//

import UIKit

class SignInVC: UIViewController, UITextFieldDelegate {
  @IBOutlet var emailTextField: SignInTextFiled!
  @IBOutlet var passwordTextField: SignInTextFiled!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    emailTextField.delegate = self
    emailTextField.returnKeyType = UIReturnKeyType.next
    emailTextField.tag = 1
    passwordTextField.delegate = self
    passwordTextField.returnKeyType = UIReturnKeyType.done
    passwordTextField.tag = 2
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    
    if (textField == emailTextField) {
      if let nextResponder = textField.superview?.viewWithTag(2) {
        nextResponder.becomeFirstResponder()
      }
    }
    
    if (textField == passwordTextField) {
      textField.resignFirstResponder()
    }
    return true
  }
}

