//
//  PaintCodeIcons.swift
//  Buddify
//
//  Created by Vo Duc Tung on 13/03/16.
//  Copyright © 2016 Vo Duc Tung. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {
        
	//SIZE 1x1
    public class func tabbarDiscoveryIcon(size size: CGSize, color fillColor : UIColor!) -> UIImage {
        let frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContextWithOptions(frame.size, false, 0)
        
        //PaintCode here
		//// Bezier Drawing
		let bezierPath = UIBezierPath()
		bezierPath.moveToPoint(CGPointMake(frame.minX + 0.50139 * frame.width, frame.minY + 0.98753 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.97715 * frame.width, frame.minY + 0.50018 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.76415 * frame.width, frame.minY + 0.98753 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.97715 * frame.width, frame.minY + 0.76934 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.50139 * frame.width, frame.minY + 0.01282 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.97715 * frame.width, frame.minY + 0.23102 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.76415 * frame.width, frame.minY + 0.01282 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.02564 * frame.width, frame.minY + 0.50018 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.23864 * frame.width, frame.minY + 0.01282 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.02564 * frame.width, frame.minY + 0.23102 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.50139 * frame.width, frame.minY + 0.98753 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.02564 * frame.width, frame.minY + 0.76934 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.23864 * frame.width, frame.minY + 0.98753 * frame.height))
		bezierPath.closePath()
		bezierPath.moveToPoint(CGPointMake(frame.minX + 0.50139 * frame.width, frame.minY + 0.89018 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.11847 * frame.width, frame.minY + 0.49791 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.28991 * frame.width, frame.minY + 0.89018 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.11847 * frame.width, frame.minY + 0.71455 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.50139 * frame.width, frame.minY + 0.10565 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.11847 * frame.width, frame.minY + 0.28127 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.28991 * frame.width, frame.minY + 0.10565 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.88432 * frame.width, frame.minY + 0.49791 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.71288 * frame.width, frame.minY + 0.10565 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.88432 * frame.width, frame.minY + 0.28127 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.50139 * frame.width, frame.minY + 0.89018 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.88432 * frame.width, frame.minY + 0.71455 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.71288 * frame.width, frame.minY + 0.89018 * frame.height))
		bezierPath.closePath()
		bezierPath.moveToPoint(CGPointMake(frame.minX + 0.64072 * frame.width, frame.minY + 0.31992 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.61516 * frame.width, frame.minY + 0.30333 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.64845 * frame.width, frame.minY + 0.29256 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.63713 * frame.width, frame.minY + 0.28502 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.48972 * frame.width, frame.minY + 0.40780 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.40956 * frame.width, frame.minY + 0.53124 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.45703 * frame.width, frame.minY + 0.43503 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.42110 * frame.width, frame.minY + 0.49042 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.36514 * frame.width, frame.minY + 0.68833 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.39069 * frame.width, frame.minY + 0.70492 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.35740 * frame.width, frame.minY + 0.71569 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.36872 * frame.width, frame.minY + 0.72322 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.51613 * frame.width, frame.minY + 0.60045 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.59630 * frame.width, frame.minY + 0.47701 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.54883 * frame.width, frame.minY + 0.57322 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.58475 * frame.width, frame.minY + 0.51783 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.64072 * frame.width, frame.minY + 0.31992 * frame.height))
		bezierPath.closePath()
		fillColor.setFill()
		bezierPath.fill()
		
        let image = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        return image
    }
    
	//SIZE 20x24
    public class func profileIcon(size size: CGSize, color fillColor : UIColor!) -> UIImage {
        let frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContextWithOptions(frame.size, false, 0)
        
        /// Subframes
        let group: CGRect = CGRect(x: frame.minX, y: frame.minY, width: frame.width, height: frame.height - 0.18)
        
        
        //// Group
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.moveToPoint(CGPoint(x: group.minX + 0.70860 * group.width, y: group.minY + 0.58669 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.70552 * group.width, y: group.minY + 0.58553 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.68322 * group.width, y: group.minY + 0.57768 * group.height), controlPoint1: CGPoint(x: group.minX + 0.69817 * group.width, y: group.minY + 0.58275 * group.height), controlPoint2: CGPoint(x: group.minX + 0.69077 * group.width, y: group.minY + 0.58013 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.65817 * group.width, y: group.minY + 0.57003 * group.height), controlPoint1: CGPoint(x: group.minX + 0.67499 * group.width, y: group.minY + 0.57494 * group.height), controlPoint2: CGPoint(x: group.minX + 0.66664 * group.width, y: group.minY + 0.57241 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.63792 * group.width, y: group.minY + 0.56484 * group.height), controlPoint1: CGPoint(x: group.minX + 0.65147 * group.width, y: group.minY + 0.56821 * group.height), controlPoint2: CGPoint(x: group.minX + 0.64473 * group.width, y: group.minY + 0.56650 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.60627 * group.width, y: group.minY + 0.55811 * group.height), controlPoint1: CGPoint(x: group.minX + 0.62754 * group.width, y: group.minY + 0.56235 * group.height), controlPoint2: CGPoint(x: group.minX + 0.61706 * group.width, y: group.minY + 0.56009 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.59516 * group.width, y: group.minY + 0.55632 * group.height), controlPoint1: CGPoint(x: group.minX + 0.60261 * group.width, y: group.minY + 0.55748 * group.height), controlPoint2: CGPoint(x: group.minX + 0.59887 * group.width, y: group.minY + 0.55687 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.59262 * group.width, y: group.minY + 0.55591 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.57338 * group.width, y: group.minY + 0.55317 * group.height), controlPoint1: CGPoint(x: group.minX + 0.58625 * group.width, y: group.minY + 0.55488 * group.height), controlPoint2: CGPoint(x: group.minX + 0.57985 * group.width, y: group.minY + 0.55396 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.57153 * group.width, y: group.minY + 0.55293 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.57133 * group.width, y: group.minY + 0.55289 * group.height), controlPoint1: CGPoint(x: group.minX + 0.57146 * group.width, y: group.minY + 0.55293 * group.height), controlPoint2: CGPoint(x: group.minX + 0.57141 * group.width, y: group.minY + 0.55289 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.56948 * group.width, y: group.minY + 0.55269 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.55319 * group.width, y: group.minY + 0.55086 * group.height), controlPoint1: CGPoint(x: group.minX + 0.56411 * group.width, y: group.minY + 0.55202 * group.height), controlPoint2: CGPoint(x: group.minX + 0.55876 * group.width, y: group.minY + 0.55139 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.53424 * group.width, y: group.minY + 0.54956 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.46391 * group.width, y: group.minY + 0.54973 * group.height), controlPoint1: CGPoint(x: group.minX + 0.51095 * group.width, y: group.minY + 0.54829 * group.height), controlPoint2: CGPoint(x: group.minX + 0.48694 * group.width, y: group.minY + 0.54833 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.45720 * group.width, y: group.minY + 0.55019 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.45407 * group.width, y: group.minY + 0.55039 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.44623 * group.width, y: group.minY + 0.55098 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.42472 * group.width, y: group.minY + 0.55340 * group.height), controlPoint1: CGPoint(x: group.minX + 0.43903 * group.width, y: group.minY + 0.55161 * group.height), controlPoint2: CGPoint(x: group.minX + 0.43187 * group.width, y: group.minY + 0.55244 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.42262 * group.width, y: group.minY + 0.55364 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.40804 * group.width, y: group.minY + 0.55581 * group.height), controlPoint1: CGPoint(x: group.minX + 0.41773 * group.width, y: group.minY + 0.55431 * group.height), controlPoint2: CGPoint(x: group.minX + 0.41285 * group.width, y: group.minY + 0.55506 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.39214 * group.width, y: group.minY + 0.55843 * group.height), controlPoint1: CGPoint(x: group.minX + 0.40269 * group.width, y: group.minY + 0.55660 * group.height), controlPoint2: CGPoint(x: group.minX + 0.39741 * group.width, y: group.minY + 0.55747 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.36198 * group.width, y: group.minY + 0.56488 * group.height), controlPoint1: CGPoint(x: group.minX + 0.38193 * group.width, y: group.minY + 0.56033 * group.height), controlPoint2: CGPoint(x: group.minX + 0.37180 * group.width, y: group.minY + 0.56251 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.33920 * group.width, y: group.minY + 0.57086 * group.height), controlPoint1: CGPoint(x: group.minX + 0.35416 * group.width, y: group.minY + 0.56674 * group.height), controlPoint2: CGPoint(x: group.minX + 0.34645 * group.width, y: group.minY + 0.56879 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.33417 * group.width, y: group.minY + 0.57237 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.28870 * group.width, y: group.minY + 0.58778 * group.height), controlPoint1: CGPoint(x: group.minX + 0.31878 * group.width, y: group.minY + 0.57689 * group.height), controlPoint2: CGPoint(x: group.minX + 0.30350 * group.width, y: group.minY + 0.58208 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.28474 * group.width, y: group.minY + 0.58934 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.28467 * group.width, y: group.minY + 0.58943 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.00000 * group.width, y: group.minY + 0.96391 * group.height), controlPoint1: CGPoint(x: group.minX + 0.11160 * group.width, y: group.minY + 0.65823 * group.height), controlPoint2: CGPoint(x: group.minX + 0.00000 * group.width, y: group.minY + 0.80484 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.00056 * group.width, y: group.minY + 0.97477 * group.height), controlPoint1: CGPoint(x: group.minX + 0.00000 * group.width, y: group.minY + 0.96757 * group.height), controlPoint2: CGPoint(x: group.minX + 0.00029 * group.width, y: group.minY + 0.97115 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.00186 * group.width, y: group.minY + 1.00000 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.99810 * group.width, y: group.minY + 1.00000 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.99944 * group.width, y: group.minY + 0.97505 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 1.00000 * group.width, y: group.minY + 0.96391 * group.height), controlPoint1: CGPoint(x: group.minX + 0.99973 * group.width, y: group.minY + 0.97136 * group.height), controlPoint2: CGPoint(x: group.minX + 1.00000 * group.width, y: group.minY + 0.96769 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.70860 * group.width, y: group.minY + 0.58669 * group.height), controlPoint1: CGPoint(x: group.minX + 1.00000 * group.width, y: group.minY + 0.80230 * group.height), controlPoint2: CGPoint(x: group.minX + 0.88569 * group.width, y: group.minY + 0.65440 * group.height))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPoint(x: group.minX + 0.04886 * group.width, y: group.minY + 0.95943 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.30756 * group.width, y: group.minY + 0.62523 * group.height), controlPoint1: CGPoint(x: group.minX + 0.05096 * group.width, y: group.minY + 0.81660 * group.height), controlPoint2: CGPoint(x: group.minX + 0.15262 * group.width, y: group.minY + 0.68558 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.31255 * group.width, y: group.minY + 0.62361 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.31313 * group.width, y: group.minY + 0.62314 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.35049 * group.width, y: group.minY + 0.61062 * group.height), controlPoint1: CGPoint(x: group.minX + 0.32527 * group.width, y: group.minY + 0.61853 * group.height), controlPoint2: CGPoint(x: group.minX + 0.33780 * group.width, y: group.minY + 0.61434 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.35452 * group.width, y: group.minY + 0.60943 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.37547 * group.width, y: group.minY + 0.60393 * group.height), controlPoint1: CGPoint(x: group.minX + 0.36143 * group.width, y: group.minY + 0.60744 * group.height), controlPoint2: CGPoint(x: group.minX + 0.36832 * group.width, y: group.minY + 0.60561 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.40258 * group.width, y: group.minY + 0.59811 * group.height), controlPoint1: CGPoint(x: group.minX + 0.38439 * group.width, y: group.minY + 0.60176 * group.height), controlPoint2: CGPoint(x: group.minX + 0.39347 * group.width, y: group.minY + 0.59981 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.41687 * group.width, y: group.minY + 0.59574 * group.height), controlPoint1: CGPoint(x: group.minX + 0.40729 * group.width, y: group.minY + 0.59728 * group.height), controlPoint2: CGPoint(x: group.minX + 0.41201 * group.width, y: group.minY + 0.59649 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.42844 * group.width, y: group.minY + 0.59403 * group.height), controlPoint1: CGPoint(x: group.minX + 0.42072 * group.width, y: group.minY + 0.59515 * group.height), controlPoint2: CGPoint(x: group.minX + 0.42456 * group.width, y: group.minY + 0.59454 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.43035 * group.width, y: group.minY + 0.59375 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.45132 * group.width, y: group.minY + 0.59137 * group.height), controlPoint1: CGPoint(x: group.minX + 0.43733 * group.width, y: group.minY + 0.59283 * group.height), controlPoint2: CGPoint(x: group.minX + 0.44434 * group.width, y: group.minY + 0.59200 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.46729 * group.width, y: group.minY + 0.59022 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.53242 * group.width, y: group.minY + 0.59022 * group.height), controlPoint1: CGPoint(x: group.minX + 0.48820 * group.width, y: group.minY + 0.58894 * group.height), controlPoint2: CGPoint(x: group.minX + 0.50820 * group.width, y: group.minY + 0.58876 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.54795 * group.width, y: group.minY + 0.59129 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.56028 * group.width, y: group.minY + 0.59263 * group.height), controlPoint1: CGPoint(x: group.minX + 0.55178 * group.width, y: group.minY + 0.59166 * group.height), controlPoint2: CGPoint(x: group.minX + 0.55562 * group.width, y: group.minY + 0.59209 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.56588 * group.width, y: group.minY + 0.59330 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.58341 * group.width, y: group.minY + 0.59576 * group.height), controlPoint1: CGPoint(x: group.minX + 0.57171 * group.width, y: group.minY + 0.59401 * group.height), controlPoint2: CGPoint(x: group.minX + 0.57755 * group.width, y: group.minY + 0.59484 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.58615 * group.width, y: group.minY + 0.59618 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.59582 * group.width, y: group.minY + 0.59776 * group.height), controlPoint1: CGPoint(x: group.minX + 0.58944 * group.width, y: group.minY + 0.59669 * group.height), controlPoint2: CGPoint(x: group.minX + 0.59272 * group.width, y: group.minY + 0.59722 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.62426 * group.width, y: group.minY + 0.60383 * group.height), controlPoint1: CGPoint(x: group.minX + 0.60544 * group.width, y: group.minY + 0.59951 * group.height), controlPoint2: CGPoint(x: group.minX + 0.61489 * group.width, y: group.minY + 0.60158 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.64263 * group.width, y: group.minY + 0.60854 * group.height), controlPoint1: CGPoint(x: group.minX + 0.63047 * group.width, y: group.minY + 0.60533 * group.height), controlPoint2: CGPoint(x: group.minX + 0.63662 * group.width, y: group.minY + 0.60687 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.66522 * group.width, y: group.minY + 0.61539 * group.height), controlPoint1: CGPoint(x: group.minX + 0.65025 * group.width, y: group.minY + 0.61065 * group.height), controlPoint2: CGPoint(x: group.minX + 0.65777 * group.width, y: group.minY + 0.61294 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.68641 * group.width, y: group.minY + 0.62288 * group.height), controlPoint1: CGPoint(x: group.minX + 0.67237 * group.width, y: group.minY + 0.61773 * group.height), controlPoint2: CGPoint(x: group.minX + 0.67943 * group.width, y: group.minY + 0.62022 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.68763 * group.width, y: group.minY + 0.62335 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.95110 * group.width, y: group.minY + 0.95939 * group.height), controlPoint1: CGPoint(x: group.minX + 0.84610 * group.width, y: group.minY + 0.68374 * group.height), controlPoint2: CGPoint(x: group.minX + 0.94900 * group.width, y: group.minY + 0.81519 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.04886 * group.width, y: group.minY + 0.95939 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.04886 * group.width, y: group.minY + 0.95943 * group.height))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPoint(x: group.minX + 0.37929 * group.width, y: group.minY + 0.49743 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.39052 * group.width, y: group.minY + 0.50094 * group.height), controlPoint1: CGPoint(x: group.minX + 0.38295 * group.width, y: group.minY + 0.49871 * group.height), controlPoint2: CGPoint(x: group.minX + 0.38674 * group.width, y: group.minY + 0.49982 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.39846 * group.width, y: group.minY + 0.50333 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.40771 * group.width, y: group.minY + 0.50607 * group.height), controlPoint1: CGPoint(x: group.minX + 0.40151 * group.width, y: group.minY + 0.50431 * group.height), controlPoint2: CGPoint(x: group.minX + 0.40459 * group.width, y: group.minY + 0.50526 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.49824 * group.width, y: group.minY + 0.51780 * group.height), controlPoint1: CGPoint(x: group.minX + 0.43682 * group.width, y: group.minY + 0.51368 * group.height), controlPoint2: CGPoint(x: group.minX + 0.46727 * group.width, y: group.minY + 0.51759 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.50070 * group.width, y: group.minY + 0.51784 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.53218 * group.width, y: group.minY + 0.51650 * group.height), controlPoint1: CGPoint(x: group.minX + 0.51133 * group.width, y: group.minY + 0.51784 * group.height), controlPoint2: CGPoint(x: group.minX + 0.52198 * group.width, y: group.minY + 0.51737 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.54256 * group.width, y: group.minY + 0.51526 * group.height), controlPoint1: CGPoint(x: group.minX + 0.53570 * group.width, y: group.minY + 0.51622 * group.height), controlPoint2: CGPoint(x: group.minX + 0.53912 * group.width, y: group.minY + 0.51575 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.55020 * group.width, y: group.minY + 0.51431 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.56329 * group.width, y: group.minY + 0.51259 * group.height), controlPoint1: CGPoint(x: group.minX + 0.55450 * group.width, y: group.minY + 0.51384 * group.height), controlPoint2: CGPoint(x: group.minX + 0.55880 * group.width, y: group.minY + 0.51332 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.57233 * group.width, y: group.minY + 0.51072 * group.height), controlPoint1: CGPoint(x: group.minX + 0.56637 * group.width, y: group.minY + 0.51206 * group.height), controlPoint2: CGPoint(x: group.minX + 0.56935 * group.width, y: group.minY + 0.51139 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.58068 * group.width, y: group.minY + 0.50896 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.59302 * group.width, y: group.minY + 0.50624 * group.height), controlPoint1: CGPoint(x: group.minX + 0.58481 * group.width, y: group.minY + 0.50813 * group.height), controlPoint2: CGPoint(x: group.minX + 0.58893 * group.width, y: group.minY + 0.50729 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.60051 * group.width, y: group.minY + 0.50403 * group.height), controlPoint1: CGPoint(x: group.minX + 0.59555 * group.width, y: group.minY + 0.50557 * group.height), controlPoint2: CGPoint(x: group.minX + 0.59805 * group.width, y: group.minY + 0.50480 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.60723 * group.width, y: group.minY + 0.50202 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.62168 * group.width, y: group.minY + 0.49754 * group.height), controlPoint1: CGPoint(x: group.minX + 0.61201 * group.width, y: group.minY + 0.50064 * group.height), controlPoint2: CGPoint(x: group.minX + 0.61685 * group.width, y: group.minY + 0.49922 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.62720 * group.width, y: group.minY + 0.49541 * group.height), controlPoint1: CGPoint(x: group.minX + 0.62357 * group.width, y: group.minY + 0.49687 * group.height), controlPoint2: CGPoint(x: group.minX + 0.62540 * group.width, y: group.minY + 0.49614 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.62937 * group.width, y: group.minY + 0.49451 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.64913 * group.width, y: group.minY + 0.48662 * group.height), controlPoint1: CGPoint(x: group.minX + 0.63599 * group.width, y: group.minY + 0.49206 * group.height), controlPoint2: CGPoint(x: group.minX + 0.64259 * group.width, y: group.minY + 0.48954 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.65338 * group.width, y: group.minY + 0.48451 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.67540 * group.width, y: group.minY + 0.47330 * group.height), controlPoint1: CGPoint(x: group.minX + 0.66070 * group.width, y: group.minY + 0.48107 * group.height), controlPoint2: CGPoint(x: group.minX + 0.66801 * group.width, y: group.minY + 0.47750 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.68652 * group.width, y: group.minY + 0.46634 * group.height), controlPoint1: CGPoint(x: group.minX + 0.67924 * group.width, y: group.minY + 0.47115 * group.height), controlPoint2: CGPoint(x: group.minX + 0.68290 * group.width, y: group.minY + 0.46873 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.69902 * group.width, y: group.minY + 0.45827 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.81223 * group.width, y: group.minY + 0.26105 * group.height), controlPoint1: CGPoint(x: group.minX + 0.77091 * group.width, y: group.minY + 0.40883 * group.height), controlPoint2: CGPoint(x: group.minX + 0.81223 * group.width, y: group.minY + 0.33629 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.81238 * group.width, y: group.minY + 0.25890 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.50068 * group.width, y: group.minY + 0.00000 * group.height), controlPoint1: CGPoint(x: group.minX + 0.81238 * group.width, y: group.minY + 0.11613 * group.height), controlPoint2: CGPoint(x: group.minX + 0.67255 * group.width, y: group.minY + 0.00000 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.18996 * group.width, y: group.minY + 0.24259 * group.height), controlPoint1: CGPoint(x: group.minX + 0.33663 * group.width, y: group.minY + 0.00000 * group.height), controlPoint2: CGPoint(x: group.minX + 0.20014 * group.width, y: group.minY + 0.10656 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.18969 * group.width, y: group.minY + 0.24596 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.18898 * group.width, y: group.minY + 0.25890 * group.height), controlPoint1: CGPoint(x: group.minX + 0.18930 * group.width, y: group.minY + 0.25024 * group.height), controlPoint2: CGPoint(x: group.minX + 0.18898 * group.width, y: group.minY + 0.25452 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.37929 * group.width, y: group.minY + 0.49743 * group.height), controlPoint1: CGPoint(x: group.minX + 0.18893 * group.width, y: group.minY + 0.36318 * group.height), controlPoint2: CGPoint(x: group.minX + 0.26364 * group.width, y: group.minY + 0.45680 * group.height))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPoint(x: group.minX + 0.23838 * group.width, y: group.minY + 0.24877 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.23868 * group.width, y: group.minY + 0.24512 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.50066 * group.width, y: group.minY + 0.04057 * group.height), controlPoint1: CGPoint(x: group.minX + 0.24727 * group.width, y: group.minY + 0.13041 * group.height), controlPoint2: CGPoint(x: group.minX + 0.36234 * group.width, y: group.minY + 0.04057 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.76364 * group.width, y: group.minY + 0.25705 * group.height), controlPoint1: CGPoint(x: group.minX + 0.64561 * group.width, y: group.minY + 0.04057 * group.height), controlPoint2: CGPoint(x: group.minX + 0.76351 * group.width, y: group.minY + 0.13850 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.76349 * group.width, y: group.minY + 0.25918 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.66759 * group.width, y: group.minY + 0.42731 * group.height), controlPoint1: CGPoint(x: group.minX + 0.76339 * group.width, y: group.minY + 0.32413 * group.height), controlPoint2: CGPoint(x: group.minX + 0.72852 * group.width, y: group.minY + 0.38530 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.65599 * group.width, y: group.minY + 0.43465 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.64754 * group.width, y: group.minY + 0.44001 * group.height), controlPoint1: CGPoint(x: group.minX + 0.65340 * group.width, y: group.minY + 0.43640 * group.height), controlPoint2: CGPoint(x: group.minX + 0.65079 * group.width, y: group.minY + 0.43814 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.62918 * group.width, y: group.minY + 0.44926 * group.height), controlPoint1: CGPoint(x: group.minX + 0.64168 * group.width, y: group.minY + 0.44332 * group.height), controlPoint2: CGPoint(x: group.minX + 0.63548 * group.width, y: group.minY + 0.44629 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.62569 * group.width, y: group.minY + 0.45102 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.60910 * group.width, y: group.minY + 0.45759 * group.height), controlPoint1: CGPoint(x: group.minX + 0.62041 * group.width, y: group.minY + 0.45338 * group.height), controlPoint2: CGPoint(x: group.minX + 0.61487 * group.width, y: group.minY + 0.45546 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.60263 * group.width, y: group.minY + 0.46019 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.59115 * group.width, y: group.minY + 0.46370 * group.height), controlPoint1: CGPoint(x: group.minX + 0.59892 * group.width, y: group.minY + 0.46147 * group.height), controlPoint2: CGPoint(x: group.minX + 0.59501 * group.width, y: group.minY + 0.46258 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.58309 * group.width, y: group.minY + 0.46612 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.57841 * group.width, y: group.minY + 0.46751 * group.height), controlPoint1: CGPoint(x: group.minX + 0.58153 * group.width, y: group.minY + 0.46660 * group.height), controlPoint2: CGPoint(x: group.minX + 0.57994 * group.width, y: group.minY + 0.46713 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.56927 * group.width, y: group.minY + 0.46950 * group.height), controlPoint1: CGPoint(x: group.minX + 0.57540 * group.width, y: group.minY + 0.46829 * group.height), controlPoint2: CGPoint(x: group.minX + 0.57233 * group.width, y: group.minY + 0.46888 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.55953 * group.width, y: group.minY + 0.47157 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.55350 * group.width, y: group.minY + 0.47285 * group.height), controlPoint1: CGPoint(x: group.minX + 0.55743 * group.width, y: group.minY + 0.47204 * group.height), controlPoint2: CGPoint(x: group.minX + 0.55535 * group.width, y: group.minY + 0.47253 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.54363 * group.width, y: group.minY + 0.47413 * group.height), controlPoint1: CGPoint(x: group.minX + 0.55025 * group.width, y: group.minY + 0.47338 * group.height), controlPoint2: CGPoint(x: group.minX + 0.54693 * group.width, y: group.minY + 0.47375 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.53436 * group.width, y: group.minY + 0.47529 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.52734 * group.width, y: group.minY + 0.47614 * group.height), controlPoint1: CGPoint(x: group.minX + 0.53211 * group.width, y: group.minY + 0.47561 * group.height), controlPoint2: CGPoint(x: group.minX + 0.52986 * group.width, y: group.minY + 0.47594 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.50273 * group.width, y: group.minY + 0.47729 * group.height), controlPoint1: CGPoint(x: group.minX + 0.51921 * group.width, y: group.minY + 0.47685 * group.height), controlPoint2: CGPoint(x: group.minX + 0.51103 * group.width, y: group.minY + 0.47723 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.50044 * group.width, y: group.minY + 0.47727 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.50039 * group.width, y: group.minY + 0.47727 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.42229 * group.width, y: group.minY + 0.46742 * group.height), controlPoint1: CGPoint(x: group.minX + 0.47365 * group.width, y: group.minY + 0.47726 * group.height), controlPoint2: CGPoint(x: group.minX + 0.44739 * group.width, y: group.minY + 0.47395 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.41587 * group.width, y: group.minY + 0.46547 * group.height), controlPoint1: CGPoint(x: group.minX + 0.42012 * group.width, y: group.minY + 0.46685 * group.height), controlPoint2: CGPoint(x: group.minX + 0.41799 * group.width, y: group.minY + 0.46614 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.40669 * group.width, y: group.minY + 0.46269 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.39826 * group.width, y: group.minY + 0.46009 * group.height), controlPoint1: CGPoint(x: group.minX + 0.40383 * group.width, y: group.minY + 0.46186 * group.height), controlPoint2: CGPoint(x: group.minX + 0.40100 * group.width, y: group.minY + 0.46105 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.23777 * group.width, y: group.minY + 0.25892 * group.height), controlPoint1: CGPoint(x: group.minX + 0.30078 * group.width, y: group.minY + 0.42584 * group.height), controlPoint2: CGPoint(x: group.minX + 0.23777 * group.width, y: group.minY + 0.34685 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.23838 * group.width, y: group.minY + 0.24877 * group.height), controlPoint1: CGPoint(x: group.minX + 0.23777 * group.width, y: group.minY + 0.25549 * group.height), controlPoint2: CGPoint(x: group.minX + 0.23809 * group.width, y: group.minY + 0.25212 * group.height))
        bezierPath.closePath()
        bezierPath.miterLimit = 4;

		fillColor.setFill()
		bezierPath.fill()

        let image = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        return image
    }
    
	//SIZE 1x1
    public class func tabbarConversationIcon(size size: CGSize, color fillColor : UIColor!) -> UIImage {
        let frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContextWithOptions(frame.size, false, 0)
        
        //PaintCode here
		//// Bezier Drawing
		let bezierPath = UIBezierPath()
		bezierPath.moveToPoint(CGPointMake(frame.minX + 0.90509 * frame.width, frame.minY + 0.73647 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.90509 * frame.width, frame.minY + 0.27232 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.09283 * frame.width, frame.minY + 0.27232 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.09283 * frame.width, frame.minY + 0.73647 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.90509 * frame.width, frame.minY + 0.73647 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.90509 * frame.width, frame.minY + 0.73647 * frame.height))
		bezierPath.closePath()
		bezierPath.moveToPoint(CGPointMake(frame.minX + 0.00000 * frame.width, frame.minY + 0.22570 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.04646 * frame.width, frame.minY + 0.17949 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.00000 * frame.width, frame.minY + 0.20018 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.02084 * frame.width, frame.minY + 0.17949 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.95146 * frame.width, frame.minY + 0.17949 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.99792 * frame.width, frame.minY + 0.22570 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.97712 * frame.width, frame.minY + 0.17949 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.99792 * frame.width, frame.minY + 0.20037 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.99792 * frame.width, frame.minY + 0.78308 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.95146 * frame.width, frame.minY + 0.82930 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.99792 * frame.width, frame.minY + 0.80861 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.97708 * frame.width, frame.minY + 0.82930 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.04646 * frame.width, frame.minY + 0.82930 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.00000 * frame.width, frame.minY + 0.78308 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.02080 * frame.width, frame.minY + 0.82930 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.00000 * frame.width, frame.minY + 0.80841 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.00000 * frame.width, frame.minY + 0.22570 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.00000 * frame.width, frame.minY + 0.22570 * frame.height))
		bezierPath.closePath()
		bezierPath.moveToPoint(CGPointMake(frame.minX + 0.18861 * frame.width, frame.minY + 0.27226 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.49950 * frame.width, frame.minY + 0.52982 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.81073 * frame.width, frame.minY + 0.27199 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.18861 * frame.width, frame.minY + 0.27226 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.18861 * frame.width, frame.minY + 0.27226 * frame.height))
		bezierPath.closePath()
		fillColor.setFill()
		bezierPath.fill()
		
        let image = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        return image
    }
    
	//SIZE 1x1
    public class func tabbarTimelineIcon(size size: CGSize, color fillColor : UIColor!) -> UIImage {
        let frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContextWithOptions(frame.size, false, 0)
        
        //PaintCode here
		//// Bezier Drawing
		let bezierPath = UIBezierPath()
		bezierPath.moveToPoint(CGPointMake(frame.minX + 0.11538 * frame.width, frame.minY + 0.07558 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.11538 * frame.width, frame.minY + 0.07558 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.11538 * frame.width, frame.minY + 0.40013 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.06411 * frame.width, frame.minY + 0.35020 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.11538 * frame.width, frame.minY + 0.37260 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.09234 * frame.width, frame.minY + 0.35020 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.39743 * frame.width, frame.minY + 0.35020 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.34615 * frame.width, frame.minY + 0.40013 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.36916 * frame.width, frame.minY + 0.35020 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.34615 * frame.width, frame.minY + 0.37265 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.34615 * frame.width, frame.minY + 0.07558 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.39743 * frame.width, frame.minY + 0.12551 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.34615 * frame.width, frame.minY + 0.10310 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.36920 * frame.width, frame.minY + 0.12551 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.06411 * frame.width, frame.minY + 0.12551 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.11538 * frame.width, frame.minY + 0.07558 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.09238 * frame.width, frame.minY + 0.12551 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.11538 * frame.width, frame.minY + 0.10306 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.11538 * frame.width, frame.minY + 0.07558 * frame.height))
		bezierPath.closePath()
		bezierPath.moveToPoint(CGPointMake(frame.minX + 0.01282 * frame.width, frame.minY + 0.07558 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.06411 * frame.width, frame.minY + 0.02564 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.01282 * frame.width, frame.minY + 0.04800 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.03564 * frame.width, frame.minY + 0.02564 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.39743 * frame.width, frame.minY + 0.02564 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.44872 * frame.width, frame.minY + 0.07558 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.42576 * frame.width, frame.minY + 0.02564 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.44872 * frame.width, frame.minY + 0.04786 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.44872 * frame.width, frame.minY + 0.40013 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.39743 * frame.width, frame.minY + 0.45007 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.44872 * frame.width, frame.minY + 0.42771 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.42590 * frame.width, frame.minY + 0.45007 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.06411 * frame.width, frame.minY + 0.45007 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.01282 * frame.width, frame.minY + 0.40013 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.03578 * frame.width, frame.minY + 0.45007 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.01282 * frame.width, frame.minY + 0.42785 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.01282 * frame.width, frame.minY + 0.07558 * frame.height))
		bezierPath.closePath()
		bezierPath.moveToPoint(CGPointMake(frame.minX + 0.65385 * frame.width, frame.minY + 0.07564 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.65385 * frame.width, frame.minY + 0.92436 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.60257 * frame.width, frame.minY + 0.87449 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.65385 * frame.width, frame.minY + 0.89680 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.63101 * frame.width, frame.minY + 0.87449 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.93589 * frame.width, frame.minY + 0.87449 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.88462 * frame.width, frame.minY + 0.92436 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.90759 * frame.width, frame.minY + 0.87449 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.88462 * frame.width, frame.minY + 0.89694 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.88462 * frame.width, frame.minY + 0.07564 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.93589 * frame.width, frame.minY + 0.12551 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.88462 * frame.width, frame.minY + 0.10320 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.90746 * frame.width, frame.minY + 0.12551 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.60257 * frame.width, frame.minY + 0.12551 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.65385 * frame.width, frame.minY + 0.07564 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.63087 * frame.width, frame.minY + 0.12551 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.65385 * frame.width, frame.minY + 0.10306 * frame.height))
		bezierPath.closePath()
		bezierPath.moveToPoint(CGPointMake(frame.minX + 0.55128 * frame.width, frame.minY + 0.07564 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.60257 * frame.width, frame.minY + 0.02564 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.55128 * frame.width, frame.minY + 0.04803 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.57410 * frame.width, frame.minY + 0.02564 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.93589 * frame.width, frame.minY + 0.02564 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.98718 * frame.width, frame.minY + 0.07564 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.96422 * frame.width, frame.minY + 0.02564 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.98718 * frame.width, frame.minY + 0.04816 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.98718 * frame.width, frame.minY + 0.92436 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.93589 * frame.width, frame.minY + 0.97436 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.98718 * frame.width, frame.minY + 0.95197 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.96436 * frame.width, frame.minY + 0.97436 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.60257 * frame.width, frame.minY + 0.97436 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.55128 * frame.width, frame.minY + 0.92436 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.57424 * frame.width, frame.minY + 0.97436 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.55128 * frame.width, frame.minY + 0.95184 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.55128 * frame.width, frame.minY + 0.07564 * frame.height))
		bezierPath.closePath()
		bezierPath.moveToPoint(CGPointMake(frame.minX + 0.11538 * frame.width, frame.minY + 0.59987 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.11538 * frame.width, frame.minY + 0.92442 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.06411 * frame.width, frame.minY + 0.87449 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.11538 * frame.width, frame.minY + 0.89689 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.09234 * frame.width, frame.minY + 0.87449 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.39743 * frame.width, frame.minY + 0.87449 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.34615 * frame.width, frame.minY + 0.92442 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.36916 * frame.width, frame.minY + 0.87449 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.34615 * frame.width, frame.minY + 0.89694 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.34615 * frame.width, frame.minY + 0.59987 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.39743 * frame.width, frame.minY + 0.64980 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.34615 * frame.width, frame.minY + 0.62740 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.36920 * frame.width, frame.minY + 0.64980 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.06411 * frame.width, frame.minY + 0.64980 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.11538 * frame.width, frame.minY + 0.59987 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.09238 * frame.width, frame.minY + 0.64980 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.11538 * frame.width, frame.minY + 0.62735 * frame.height))
		bezierPath.closePath()
		bezierPath.moveToPoint(CGPointMake(frame.minX + 0.01282 * frame.width, frame.minY + 0.59987 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.06411 * frame.width, frame.minY + 0.54993 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.01282 * frame.width, frame.minY + 0.57229 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.03564 * frame.width, frame.minY + 0.54993 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.39743 * frame.width, frame.minY + 0.54993 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.44872 * frame.width, frame.minY + 0.59987 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.42576 * frame.width, frame.minY + 0.54993 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.44872 * frame.width, frame.minY + 0.57215 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.44872 * frame.width, frame.minY + 0.92442 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.39743 * frame.width, frame.minY + 0.97436 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.44872 * frame.width, frame.minY + 0.95200 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.42590 * frame.width, frame.minY + 0.97436 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.06411 * frame.width, frame.minY + 0.97436 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.01282 * frame.width, frame.minY + 0.92442 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.03578 * frame.width, frame.minY + 0.97436 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.01282 * frame.width, frame.minY + 0.95214 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.01282 * frame.width, frame.minY + 0.59987 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.01282 * frame.width, frame.minY + 0.59987 * frame.height))
		bezierPath.closePath()
		fillColor.setFill()
		bezierPath.fill()
		
        let image = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
		
        return image
    }
    
    //SIZE 1x1
    public class func tabbarNotificationIcon(size size: CGSize, color fillColor : UIColor!) -> UIImage {
        let frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContextWithOptions(frame.size, false, 0)
        
        //PaintCode here
		//// Bezier Drawing
		let bezierPath = UIBezierPath()
		bezierPath.moveToPoint(CGPointMake(frame.minX + 0.56766 * frame.width, frame.minY + 0.07813 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.81728 * frame.width, frame.minY + 0.38130 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.70340 * frame.width, frame.minY + 0.11207 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.81728 * frame.width, frame.minY + 0.24108 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.92635 * frame.width, frame.minY + 0.75654 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.81728 * frame.width, frame.minY + 0.53702 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.85806 * frame.width, frame.minY + 0.68633 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.93832 * frame.width, frame.minY + 0.76885 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.91025 * frame.width, frame.minY + 0.83532 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.97400 * frame.width, frame.minY + 0.80554 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.96146 * frame.width, frame.minY + 0.83532 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.89308 * frame.width, frame.minY + 0.83532 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.49855 * frame.width, frame.minY + 0.83532 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.10402 * frame.width, frame.minY + 0.83532 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.08685 * frame.width, frame.minY + 0.83532 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.05878 * frame.width, frame.minY + 0.76885 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.03567 * frame.width, frame.minY + 0.83532 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.02307 * frame.width, frame.minY + 0.80556 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.07075 * frame.width, frame.minY + 0.75654 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.17982 * frame.width, frame.minY + 0.38130 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.13904 * frame.width, frame.minY + 0.68633 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.17982 * frame.width, frame.minY + 0.53702 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.42944 * frame.width, frame.minY + 0.07813 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.17982 * frame.width, frame.minY + 0.24108 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.29370 * frame.width, frame.minY + 0.11207 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.42893 * frame.width, frame.minY + 0.06962 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.42910 * frame.width, frame.minY + 0.07534 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.42893 * frame.width, frame.minY + 0.07250 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.49855 * frame.width, frame.minY + 0.00000 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.42893 * frame.width, frame.minY + 0.03117 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.46010 * frame.width, frame.minY + 0.00000 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.56817 * frame.width, frame.minY + 0.06962 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.53700 * frame.width, frame.minY + 0.00000 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.56817 * frame.width, frame.minY + 0.03117 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.56766 * frame.width, frame.minY + 0.07813 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.56817 * frame.width, frame.minY + 0.07250 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.56800 * frame.width, frame.minY + 0.07534 * frame.height))
		bezierPath.closePath()
		bezierPath.moveToPoint(CGPointMake(frame.minX + 0.19402 * frame.width, frame.minY + 0.74249 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.27265 * frame.width, frame.minY + 0.38130 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.23501 * frame.width, frame.minY + 0.66209 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.27265 * frame.width, frame.minY + 0.50342 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.49855 * frame.width, frame.minY + 0.16231 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.27265 * frame.width, frame.minY + 0.26996 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.38511 * frame.width, frame.minY + 0.16231 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.72445 * frame.width, frame.minY + 0.38130 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.61199 * frame.width, frame.minY + 0.16231 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.72445 * frame.width, frame.minY + 0.26996 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.80747 * frame.width, frame.minY + 0.74249 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.72445 * frame.width, frame.minY + 0.50084 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.75561 * frame.width, frame.minY + 0.65838 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.49855 * frame.width, frame.minY + 0.74249 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.19402 * frame.width, frame.minY + 0.74249 * frame.height))
		bezierPath.closePath()
		bezierPath.moveToPoint(CGPointMake(frame.minX + 0.49855 * frame.width, frame.minY + 0.99777 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.61459 * frame.width, frame.minY + 0.88174 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.56263 * frame.width, frame.minY + 0.99777 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.61459 * frame.width, frame.minY + 0.94582 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.38251 * frame.width, frame.minY + 0.88174 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.49855 * frame.width, frame.minY + 0.99777 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.38251 * frame.width, frame.minY + 0.94582 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.43446 * frame.width, frame.minY + 0.99777 * frame.height))
		bezierPath.closePath()
		bezierPath.usesEvenOddFillRule = true;
		
		fillColor.setFill()
		bezierPath.fill()

		
        let image = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        return image
    }
    
 
}
