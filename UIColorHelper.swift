//
//  UIColorHelper.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on May/26/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import UIKit

extension UIColor {
//    convenience init(hex: String, alpha: CGFloat = 1) {
//        assert(hex[hex.startIndex] == "#", "Expected hex string of format #RRGGBB")
//        
//        let scanner = NSScanner(string: hex)
//        scanner.scanLocation = 1  // skip #
//        
//        var rgb: UInt32 = 0
//        scanner.scanHexInt(&rgb)
//        
//        self.init(
//            red:   CGFloat((rgb & 0xFF0000) >> 16)/255.0,
//            green: CGFloat((rgb &   0xFF00) >>  8)/255.0,
//            blue:  CGFloat((rgb &     0xFF)      )/255.0,
//            alpha: alpha)
//    }
    
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
}