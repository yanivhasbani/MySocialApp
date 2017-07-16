//
//  SignInTextFiled.swift
//  MySocialApp
//
//  Created by Yaniv Hasbani on 7/16/17.
//  Copyright © 2017 Yaniv. All rights reserved.
//

import UIKit

@IBDesignable
class SignInTextFiled: UITextField {
  override func textRect(forBounds bounds: CGRect) -> CGRect {
    return bounds.insetBy(dx: 10, dy: 5)
  }
  
  override func editingRect(forBounds bounds: CGRect) -> CGRect {
    return bounds.insetBy(dx: 10, dy: 5)
  }
}
