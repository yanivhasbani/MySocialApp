//
//  UIView+RoundedCorner.swift
//  MySocialApp
//
//  Created by Yaniv Hasbani on 7/16/17.
//  Copyright © 2017 Yaniv. All rights reserved.
//

import UIKit

private var roundedCornerKey = false

extension UIView {
  @IBInspectable var RoundCorners : Bool {
    get {
      return roundedCornerKey
    }
    
    set {
      roundedCornerKey = newValue
      
      if roundedCornerKey {
          layer.cornerRadius = self.frame.width / 2
      }
    }
  }
  
//  @IBInspectable var cornerRadius: CGFloat = 0 {
//    didSet {
//      layer.cornerRadius = cornerRadius
//      layer.masksToBounds = cornerRadius > 0
//    }
//  }
//  @IBInspectable var borderWidth: CGFloat = 0 {
//    didSet {
//      layer.borderWidth = borderWidth
//    }
//  }
//  @IBInspectable var borderColor: UIColor? {
//    didSet {
//      layer.borderColor = borderColor?.CGColor
//    }
//  }
}
