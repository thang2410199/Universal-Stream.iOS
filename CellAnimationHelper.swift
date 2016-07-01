//
//  CellAnimationHelper.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on 7/1/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import UIKit
import pop

func PopAnimate(cell : UIView) {
    cell.transform = CGAffineTransformMakeScale(0.9, 0.9)
    let animation = POPSpringAnimation(propertyNamed: kPOPLayerScaleXY)
    animation.toValue = NSValue(CGSize: CGSize(width: 1.0, height: 1.0))
    animation.springSpeed = 7.0
    animation.springBounciness = 5.0
    cell.layer.pop_addAnimation(animation, forKey: "popScale")
}
