//
//  Shadow.swift
//  MySocialApp
//
//  Created by Yaniv Hasbani on 7/16/17.
//  Copyright © 2017 Yaniv. All rights reserved.
//

import UIKit

private var shadowKey = false

extension UIView {

  @IBInspectable var shadowDesign : Bool {
    get {
      return shadowKey
    }
    
    set {
      shadowKey = newValue
      
      if shadowKey {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSize(width: 1.0, height: -1.0)
      } else {
        layer.shadowOffset = CGSize(width: 0, height: 0)
        layer.shadowOpacity = 0
        layer.shadowRadius = 0
        layer.shadowColor = nil
      }
    }
  }
  
  override open func awakeFromNib() {
    super.awakeFromNib()
    
    
  }

}
