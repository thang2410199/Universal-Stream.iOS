//
//  AppIcon.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on 7/14/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation

extension UIImage {
    
    //Size 106x197
    public class func backIcon(size size: CGSize, color fillColor : UIColor!) -> UIImage {
        let frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContextWithOptions(frame.size, false, 0)
        
        //PaintCode here
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.moveToPoint(CGPoint(x: 9.41, y: 20.4))
        bezierPath.addLineToPoint(CGPoint(x: 0, y: 10.2))
        bezierPath.addLineToPoint(CGPoint(x: 9.41, y: 0))
        bezierPath.addLineToPoint(CGPoint(x: 9.89, y: 0.56))
        bezierPath.addLineToPoint(CGPoint(x: 1, y: 10.2))
        bezierPath.addLineToPoint(CGPoint(x: 9.89, y: 19.84))
        bezierPath.addLineToPoint(CGPoint(x: 9.41, y: 20.4))
        bezierPath.closePath()
        bezierPath.miterLimit = 4;
        
        fillColor.setFill()
        bezierPath.fill()
        
        let image = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        return image
    }
    
    //Size 21 * 20
    public class func gameIcon(size size: CGSize, color fillColor : UIColor!) -> UIImage {
        let frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContextWithOptions(frame.size, false, 0)
        
        //// Subframes
        let group2: CGRect = CGRect(x: frame.minX, y: frame.minY, width: frame.width + 0.06, height: frame.height - 0.09)
        
        
        //// Group 2
        //// Group 3
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.moveToPoint(CGPoint(x: group2.minX + 0.31516 * group2.width, y: group2.minY + 0.36604 * group2.height))
        bezierPath.addCurveToPoint(CGPoint(x: group2.minX + 0.22167 * group2.width, y: group2.minY + 0.46818 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.26360 * group2.width, y: group2.minY + 0.36604 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.22167 * group2.width, y: group2.minY + 0.41186 * group2.height))
        bezierPath.addCurveToPoint(CGPoint(x: group2.minX + 0.31516 * group2.width, y: group2.minY + 0.57041 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.22167 * group2.width, y: group2.minY + 0.52453 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.26360 * group2.width, y: group2.minY + 0.57041 * group2.height))
        bezierPath.addCurveToPoint(CGPoint(x: group2.minX + 0.40854 * group2.width, y: group2.minY + 0.46818 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.36662 * group2.width, y: group2.minY + 0.57041 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.40854 * group2.width, y: group2.minY + 0.52453 * group2.height))
        bezierPath.addCurveToPoint(CGPoint(x: group2.minX + 0.31516 * group2.width, y: group2.minY + 0.36604 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.40854 * group2.width, y: group2.minY + 0.41186 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.36662 * group2.width, y: group2.minY + 0.36604 * group2.height))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPoint(x: group2.minX + 0.31516 * group2.width, y: group2.minY + 0.53260 * group2.height))
        bezierPath.addCurveToPoint(CGPoint(x: group2.minX + 0.25623 * group2.width, y: group2.minY + 0.46819 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.28264 * group2.width, y: group2.minY + 0.53260 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.25623 * group2.width, y: group2.minY + 0.50370 * group2.height))
        bezierPath.addCurveToPoint(CGPoint(x: group2.minX + 0.31516 * group2.width, y: group2.minY + 0.40382 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.25623 * group2.width, y: group2.minY + 0.43270 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.28266 * group2.width, y: group2.minY + 0.40382 * group2.height))
        bezierPath.addCurveToPoint(CGPoint(x: group2.minX + 0.37399 * group2.width, y: group2.minY + 0.46819 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.34761 * group2.width, y: group2.minY + 0.40382 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.37399 * group2.width, y: group2.minY + 0.43270 * group2.height))
        bezierPath.addCurveToPoint(CGPoint(x: group2.minX + 0.31516 * group2.width, y: group2.minY + 0.53260 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.37399 * group2.width, y: group2.minY + 0.50370 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.34761 * group2.width, y: group2.minY + 0.53260 * group2.height))
        bezierPath.closePath()
        bezierPath.miterLimit = 4;
        
        fillColor.setFill()
        bezierPath.fill()
        
        
        
        
        //// Group 4
        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.moveToPoint(CGPoint(x: group2.minX + 0.69168 * group2.width, y: group2.minY + 0.21604 * group2.height))
        bezier2Path.addLineToPoint(CGPoint(x: group2.minX + 0.68771 * group2.width, y: group2.minY + 0.21604 * group2.height))
        bezier2Path.addLineToPoint(CGPoint(x: group2.minX + 0.68404 * group2.width, y: group2.minY + 0.21799 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.51542 * group2.width, y: group2.minY + 0.27026 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.61968 * group2.width, y: group2.minY + 0.25283 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.56731 * group2.width, y: group2.minY + 0.26896 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.53297 * group2.width, y: group2.minY + 0.17016 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.51369 * group2.width, y: group2.minY + 0.24626 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.51343 * group2.width, y: group2.minY + 0.20008 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.57373 * group2.width, y: group2.minY + 0.14344 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.54266 * group2.width, y: group2.minY + 0.15533 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.55600 * group2.width, y: group2.minY + 0.14659 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.59808 * group2.width, y: group2.minY + 0.13927 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.58174 * group2.width, y: group2.minY + 0.14202 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.58991 * group2.width, y: group2.minY + 0.14065 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.81870 * group2.width, y: group2.minY + 0.01106 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.68900 * group2.width, y: group2.minY + 0.12392 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.79202 * group2.width, y: group2.minY + 0.10650 * group2.height))
        bezier2Path.addLineToPoint(CGPoint(x: group2.minX + 0.78565 * group2.width, y: group2.minY + 0.00000 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.59280 * group2.width, y: group2.minY + 0.10193 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.76530 * group2.width, y: group2.minY + 0.07277 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.67762 * group2.width, y: group2.minY + 0.08759 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.56820 * group2.width, y: group2.minY + 0.10614 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.58451 * group2.width, y: group2.minY + 0.10331 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.57628 * group2.width, y: group2.minY + 0.10472 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.50481 * group2.width, y: group2.minY + 0.14832 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.54124 * group2.width, y: group2.minY + 0.11093 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.51988 * group2.width, y: group2.minY + 0.12511 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.48065 * group2.width, y: group2.minY + 0.26893 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.48022 * group2.width, y: group2.minY + 0.18610 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.47892 * group2.width, y: group2.minY + 0.23877 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.32054 * group2.width, y: group2.minY + 0.21649 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.43441 * group2.width, y: group2.minY + 0.26424 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.38479 * group2.width, y: group2.minY + 0.24793 * group2.height))
        bezier2Path.addLineToPoint(CGPoint(x: group2.minX + 0.31719 * group2.width, y: group2.minY + 0.21482 * group2.height))
        bezier2Path.addLineToPoint(CGPoint(x: group2.minX + 0.31347 * group2.width, y: group2.minY + 0.21482 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.00000 * group2.width, y: group2.minY + 0.80330 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.13166 * group2.width, y: group2.minY + 0.21482 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.00000 * group2.width, y: group2.minY + 0.56634 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.02255 * group2.width, y: group2.minY + 0.93901 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.00000 * group2.width, y: group2.minY + 0.85992 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.00759 * group2.width, y: group2.minY + 0.90558 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.10397 * group2.width, y: group2.minY + 1.00000 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.04036 * group2.width, y: group2.minY + 0.97887 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.06857 * group2.width, y: group2.minY + 1.00000 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.28196 * group2.width, y: group2.minY + 0.89833 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.18471 * group2.width, y: group2.minY + 1.00000 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.23417 * group2.width, y: group2.minY + 0.94831 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.50516 * group2.width, y: group2.minY + 0.78148 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.33697 * group2.width, y: group2.minY + 0.84089 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.39380 * group2.width, y: group2.minY + 0.78148 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.73552 * group2.width, y: group2.minY + 0.90157 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.59681 * group2.width, y: group2.minY + 0.78148 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.66738 * group2.width, y: group2.minY + 0.84255 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.90516 * group2.width, y: group2.minY + 0.99728 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.79229 * group2.width, y: group2.minY + 0.95081 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.84596 * group2.width, y: group2.minY + 0.99728 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.97970 * group2.width, y: group2.minY + 0.94548 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.93777 * group2.width, y: group2.minY + 0.99728 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.96352 * group2.width, y: group2.minY + 0.97938 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 1.00000 * group2.width, y: group2.minY + 0.82942 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.99317 * group2.width, y: group2.minY + 0.91731 * group2.height), controlPoint2: CGPoint(x: group2.minX + 1.00000 * group2.width, y: group2.minY + 0.87832 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.69168 * group2.width, y: group2.minY + 0.21604 * group2.height), controlPoint1: CGPoint(x: group2.minX + 1.00005 * group2.width, y: group2.minY + 0.62212 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.86043 * group2.width, y: group2.minY + 0.21604 * group2.height))
        bezier2Path.closePath()
        bezier2Path.moveToPoint(CGPoint(x: group2.minX + 0.94912 * group2.width, y: group2.minY + 0.92796 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.90520 * group2.width, y: group2.minY + 0.95946 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.93890 * group2.width, y: group2.minY + 0.94950 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.92488 * group2.width, y: group2.minY + 0.95946 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.75698 * group2.width, y: group2.minY + 0.87193 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.85801 * group2.width, y: group2.minY + 0.95946 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.81119 * group2.width, y: group2.minY + 0.91893 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.50521 * group2.width, y: group2.minY + 0.74367 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.68755 * group2.width, y: group2.minY + 0.81182 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.60893 * group2.width, y: group2.minY + 0.74367 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.25817 * group2.width, y: group2.minY + 0.87102 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.37996 * group2.width, y: group2.minY + 0.74367 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.31527 * group2.width, y: group2.minY + 0.81131 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.10403 * group2.width, y: group2.minY + 0.96223 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.21136 * group2.width, y: group2.minY + 0.91993 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.17092 * group2.width, y: group2.minY + 0.96223 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.05360 * group2.width, y: group2.minY + 0.92243 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.08207 * group2.width, y: group2.minY + 0.96223 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.06561 * group2.width, y: group2.minY + 0.94921 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.03459 * group2.width, y: group2.minY + 0.80330 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.04117 * group2.width, y: group2.minY + 0.89463 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.03459 * group2.width, y: group2.minY + 0.85341 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.30995 * group2.width, y: group2.minY + 0.25270 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.03459 * group2.width, y: group2.minY + 0.58830 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.15258 * group2.width, y: group2.minY + 0.25762 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.50878 * group2.width, y: group2.minY + 0.30830 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.39026 * group2.width, y: group2.minY + 0.29165 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.44990 * group2.width, y: group2.minY + 0.30830 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.69559 * group2.width, y: group2.minY + 0.25396 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.56739 * group2.width, y: group2.minY + 0.30830 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.62513 * group2.width, y: group2.minY + 0.29151 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.96552 * group2.width, y: group2.minY + 0.82941 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.83008 * group2.width, y: group2.minY + 0.26076 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.96552 * group2.width, y: group2.minY + 0.62504 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.94912 * group2.width, y: group2.minY + 0.92796 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.96549 * group2.width, y: group2.minY + 0.87151 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.95983 * group2.width, y: group2.minY + 0.90557 * group2.height))
        bezier2Path.closePath()
        bezier2Path.miterLimit = 4;
        
        fillColor.setFill()
        bezier2Path.fill()
        
        
        
        
        //// Group 5
        //// Oval Drawing
        let ovalPath = UIBezierPath(ovalInRect: CGRect(x: group2.minX + floor(group2.width * 0.70277 - 0.4) + 0.9, y: group2.minY + floor(group2.height * 0.36598 + 0.2) + 0.3, width: floor(group2.width * 0.76322 - 0.43) - floor(group2.width * 0.70277 - 0.4) + 0.03, height: floor(group2.height * 0.43212 + 0.17) - floor(group2.height * 0.36598 + 0.2) + 0.03))
        fillColor.setFill()
        ovalPath.fill()
        
        
        
        
        //// Group 6
        //// Oval 2 Drawing
        let oval2Path = UIBezierPath(ovalInRect: CGRect(x: group2.minX + floor(group2.width * 0.64142 - 0.18) + 0.68, y: group2.minY + floor(group2.height * 0.43710 + 0.13) + 0.37, width: floor(group2.width * 0.70182 - 0.21) - floor(group2.width * 0.64142 - 0.18) + 0.02, height: floor(group2.height * 0.50320 + 0.11) - floor(group2.height * 0.43710 + 0.13) + 0.02))
        fillColor.setFill()
        oval2Path.fill()
        
        
        
        
        //// Group 7
        //// Oval 3 Drawing
        let oval3Path = UIBezierPath(ovalInRect: CGRect(x: group2.minX + floor(group2.width * 0.74688 - 0.18) + 0.68, y: group2.minY + floor(group2.height * 0.45113 - 0.32) + 0.82, width: floor(group2.width * 0.80728 - 0.2) - floor(group2.width * 0.74688 - 0.18) + 0.02, height: floor(group2.height * 0.51723 - 0.34) - floor(group2.height * 0.45113 - 0.32) + 0.02))
        fillColor.setFill()
        oval3Path.fill()
        
        
        
        
        //// Group 8
        //// Oval 4 Drawing
        let oval4Path = UIBezierPath(ovalInRect: CGRect(x: group2.minX + floor(group2.width * 0.68546 + 0.05) + 0.45, y: group2.minY + floor(group2.height * 0.52237 - 0.38) + 0.88, width: floor(group2.width * 0.74574 + 0.05) - floor(group2.width * 0.68546 + 0.05), height: floor(group2.height * 0.58833 - 0.38) - floor(group2.height * 0.52237 - 0.38)))
        fillColor.setFill()
        oval4Path.fill()
        
        let image = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        return image
    }
    
    public class func streamIcon(size size: CGSize, color fillColor : UIColor!) -> UIImage {
        
        let frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContextWithOptions(frame.size, false, 0)
        
        
        //// Subframes
        let group: CGRect = CGRect(x: frame.minX, y: frame.minY + 0.33, width: frame.width - 0.46, height: frame.height - 0.11)
        
        
        //// Group
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.moveToPoint(CGPoint(x: group.minX + 0.83464 * group.width, y: group.minY + 0.23666 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.80814 * group.width, y: group.minY + 0.21648 * group.height), controlPoint1: CGPoint(x: group.minX + 0.82715 * group.width, y: group.minY + 0.22358 * group.height), controlPoint2: CGPoint(x: group.minX + 0.81785 * group.width, y: group.minY + 0.21648 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.74980 * group.width, y: group.minY + 0.21648 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.73955 * group.width, y: group.minY + 0.21915 * group.height), controlPoint1: CGPoint(x: group.minX + 0.74628 * group.width, y: group.minY + 0.21648 * group.height), controlPoint2: CGPoint(x: group.minX + 0.74288 * group.width, y: group.minY + 0.21732 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.73955 * group.width, y: group.minY + 0.10613 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.68235 * group.width, y: group.minY + 0.00000 * group.height), controlPoint1: CGPoint(x: group.minX + 0.73955 * group.width, y: group.minY + 0.04763 * group.height), controlPoint2: CGPoint(x: group.minX + 0.71389 * group.width, y: group.minY + 0.00000 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.05718 * group.width, y: group.minY + 0.00000 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.00000 * group.width, y: group.minY + 0.10613 * group.height), controlPoint1: CGPoint(x: group.minX + 0.02566 * group.width, y: group.minY + 0.00000 * group.height), controlPoint2: CGPoint(x: group.minX + 0.00000 * group.width, y: group.minY + 0.04763 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.00000 * group.width, y: group.minY + 0.89387 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.05718 * group.width, y: group.minY + 1.00000 * group.height), controlPoint1: CGPoint(x: group.minX + 0.00000 * group.width, y: group.minY + 0.95237 * group.height), controlPoint2: CGPoint(x: group.minX + 0.02566 * group.width, y: group.minY + 1.00000 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.68235 * group.width, y: group.minY + 1.00000 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.73955 * group.width, y: group.minY + 0.89387 * group.height), controlPoint1: CGPoint(x: group.minX + 0.71387 * group.width, y: group.minY + 1.00000 * group.height), controlPoint2: CGPoint(x: group.minX + 0.73955 * group.width, y: group.minY + 0.95241 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.73955 * group.width, y: group.minY + 0.78077 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.74980 * group.width, y: group.minY + 0.78344 * group.height), controlPoint1: CGPoint(x: group.minX + 0.74289 * group.width, y: group.minY + 0.78257 * group.height), controlPoint2: CGPoint(x: group.minX + 0.74632 * group.width, y: group.minY + 0.78344 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.80814 * group.width, y: group.minY + 0.78344 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.83016 * group.width, y: group.minY + 0.77009 * group.height), controlPoint1: CGPoint(x: group.minX + 0.81599 * group.width, y: group.minY + 0.78344 * group.height), controlPoint2: CGPoint(x: group.minX + 0.82355 * group.width, y: group.minY + 0.77882 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 1.00000 * group.width, y: group.minY + 0.85736 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 1.00000 * group.width, y: group.minY + 0.15176 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.83464 * group.width, y: group.minY + 0.23666 * group.height))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPoint(x: group.minX + 0.84924 * group.width, y: group.minY + 0.71786 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.84924 * group.width, y: group.minY + 0.29122 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.96778 * group.width, y: group.minY + 0.23034 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.96778 * group.width, y: group.minY + 0.77874 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.84924 * group.width, y: group.minY + 0.71786 * group.height))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPoint(x: group.minX + 0.74091 * group.width, y: group.minY + 0.30136 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.74978 * group.width, y: group.minY + 0.27624 * group.height), controlPoint1: CGPoint(x: group.minX + 0.74091 * group.width, y: group.minY + 0.28824 * group.height), controlPoint2: CGPoint(x: group.minX + 0.74512 * group.width, y: group.minY + 0.27624 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.80812 * group.width, y: group.minY + 0.27624 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.81699 * group.width, y: group.minY + 0.30136 * group.height), controlPoint1: CGPoint(x: group.minX + 0.81229 * group.width, y: group.minY + 0.27624 * group.height), controlPoint2: CGPoint(x: group.minX + 0.81699 * group.width, y: group.minY + 0.28699 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.81699 * group.width, y: group.minY + 0.69860 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.80812 * group.width, y: group.minY + 0.72361 * group.height), controlPoint1: CGPoint(x: group.minX + 0.81699 * group.width, y: group.minY + 0.71290 * group.height), controlPoint2: CGPoint(x: group.minX + 0.81229 * group.width, y: group.minY + 0.72361 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.74978 * group.width, y: group.minY + 0.72361 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.74091 * group.width, y: group.minY + 0.69860 * group.height), controlPoint1: CGPoint(x: group.minX + 0.74512 * group.width, y: group.minY + 0.72361 * group.height), controlPoint2: CGPoint(x: group.minX + 0.74091 * group.width, y: group.minY + 0.71164 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.74091 * group.width, y: group.minY + 0.30136 * group.height))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPoint(x: group.minX + 0.03223 * group.width, y: group.minY + 0.10610 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.05720 * group.width, y: group.minY + 0.05975 * group.height), controlPoint1: CGPoint(x: group.minX + 0.03223 * group.width, y: group.minY + 0.08054 * group.height), controlPoint2: CGPoint(x: group.minX + 0.04345 * group.width, y: group.minY + 0.05975 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.68237 * group.width, y: group.minY + 0.05975 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.70733 * group.width, y: group.minY + 0.10610 * group.height), controlPoint1: CGPoint(x: group.minX + 0.69615 * group.width, y: group.minY + 0.05975 * group.height), controlPoint2: CGPoint(x: group.minX + 0.70733 * group.width, y: group.minY + 0.08054 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.70733 * group.width, y: group.minY + 0.89383 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.68237 * group.width, y: group.minY + 0.94013 * group.height), controlPoint1: CGPoint(x: group.minX + 0.70733 * group.width, y: group.minY + 0.91935 * group.height), controlPoint2: CGPoint(x: group.minX + 0.69615 * group.width, y: group.minY + 0.94013 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.05718 * group.width, y: group.minY + 0.94013 * group.height))
        bezierPath.addCurveToPoint(CGPoint(x: group.minX + 0.03221 * group.width, y: group.minY + 0.89383 * group.height), controlPoint1: CGPoint(x: group.minX + 0.04345 * group.width, y: group.minY + 0.94013 * group.height), controlPoint2: CGPoint(x: group.minX + 0.03221 * group.width, y: group.minY + 0.91935 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.03221 * group.width, y: group.minY + 0.10610 * group.height))
        bezierPath.addLineToPoint(CGPoint(x: group.minX + 0.03223 * group.width, y: group.minY + 0.10610 * group.height))
        bezierPath.closePath()
        bezierPath.miterLimit = 4;
        
        fillColor.setFill()
        bezierPath.fill()
        
        let image = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        return image
    }
    
    // 20 x 20
    public class func menuIcon(size size: CGSize, color fillColor : UIColor!) -> UIImage {
        let frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContextWithOptions(frame.size, false, 0)
        
        //// Subframes
        let group2: CGRect = CGRect(x: frame.minX, y: frame.minY, width: frame.width, height: frame.height)
        
        
        //// Group 2
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.moveToPoint(CGPoint(x: group2.minX + 0.93237 * group2.width, y: group2.minY + 0.00000 * group2.height))
        bezierPath.addLineToPoint(CGPoint(x: group2.minX + 0.06602 * group2.width, y: group2.minY + 0.00000 * group2.height))
        bezierPath.addCurveToPoint(CGPoint(x: group2.minX + 0.00000 * group2.width, y: group2.minY + 0.06602 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.02899 * group2.width, y: group2.minY + 0.00000 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.00000 * group2.width, y: group2.minY + 0.02899 * group2.height))
        bezierPath.addCurveToPoint(CGPoint(x: group2.minX + 0.06602 * group2.width, y: group2.minY + 0.13205 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.00000 * group2.width, y: group2.minY + 0.10306 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.02899 * group2.width, y: group2.minY + 0.13205 * group2.height))
        bezierPath.addLineToPoint(CGPoint(x: group2.minX + 0.93398 * group2.width, y: group2.minY + 0.13205 * group2.height))
        bezierPath.addCurveToPoint(CGPoint(x: group2.minX + 1.00000 * group2.width, y: group2.minY + 0.06602 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.97101 * group2.width, y: group2.minY + 0.13205 * group2.height), controlPoint2: CGPoint(x: group2.minX + 1.00000 * group2.width, y: group2.minY + 0.10306 * group2.height))
        bezierPath.addCurveToPoint(CGPoint(x: group2.minX + 0.93237 * group2.width, y: group2.minY + 0.00000 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.99839 * group2.width, y: group2.minY + 0.02899 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.96940 * group2.width, y: group2.minY + 0.00000 * group2.height))
        bezierPath.closePath()
        bezierPath.miterLimit = 4;
        
        fillColor.setFill()
        bezierPath.fill()
        
        
        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.moveToPoint(CGPoint(x: group2.minX + 0.93237 * group2.width, y: group2.minY + 0.86795 * group2.height))
        bezier2Path.addLineToPoint(CGPoint(x: group2.minX + 0.06602 * group2.width, y: group2.minY + 0.86795 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.00000 * group2.width, y: group2.minY + 0.93398 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.02899 * group2.width, y: group2.minY + 0.86795 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.00000 * group2.width, y: group2.minY + 0.89694 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.06602 * group2.width, y: group2.minY + 1.00000 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.00000 * group2.width, y: group2.minY + 0.97101 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.02899 * group2.width, y: group2.minY + 1.00000 * group2.height))
        bezier2Path.addLineToPoint(CGPoint(x: group2.minX + 0.93398 * group2.width, y: group2.minY + 1.00000 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 1.00000 * group2.width, y: group2.minY + 0.93398 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.97101 * group2.width, y: group2.minY + 1.00000 * group2.height), controlPoint2: CGPoint(x: group2.minX + 1.00000 * group2.width, y: group2.minY + 0.97101 * group2.height))
        bezier2Path.addCurveToPoint(CGPoint(x: group2.minX + 0.93237 * group2.width, y: group2.minY + 0.86795 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.99839 * group2.width, y: group2.minY + 0.89694 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.96940 * group2.width, y: group2.minY + 0.86795 * group2.height))
        bezier2Path.closePath()
        bezier2Path.miterLimit = 4;
        
        fillColor.setFill()
        bezier2Path.fill()
        
        
        //// Bezier 3 Drawing
        let bezier3Path = UIBezierPath()
        bezier3Path.moveToPoint(CGPoint(x: group2.minX + 0.93237 * group2.width, y: group2.minY + 0.43317 * group2.height))
        bezier3Path.addLineToPoint(CGPoint(x: group2.minX + 0.06602 * group2.width, y: group2.minY + 0.43317 * group2.height))
        bezier3Path.addCurveToPoint(CGPoint(x: group2.minX + 0.00000 * group2.width, y: group2.minY + 0.49919 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.02899 * group2.width, y: group2.minY + 0.43317 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.00000 * group2.width, y: group2.minY + 0.46216 * group2.height))
        bezier3Path.addCurveToPoint(CGPoint(x: group2.minX + 0.06602 * group2.width, y: group2.minY + 0.56522 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.00000 * group2.width, y: group2.minY + 0.53623 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.02899 * group2.width, y: group2.minY + 0.56522 * group2.height))
        bezier3Path.addLineToPoint(CGPoint(x: group2.minX + 0.93398 * group2.width, y: group2.minY + 0.56522 * group2.height))
        bezier3Path.addCurveToPoint(CGPoint(x: group2.minX + 1.00000 * group2.width, y: group2.minY + 0.49919 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.97101 * group2.width, y: group2.minY + 0.56522 * group2.height), controlPoint2: CGPoint(x: group2.minX + 1.00000 * group2.width, y: group2.minY + 0.53623 * group2.height))
        bezier3Path.addCurveToPoint(CGPoint(x: group2.minX + 0.93237 * group2.width, y: group2.minY + 0.43317 * group2.height), controlPoint1: CGPoint(x: group2.minX + 0.99839 * group2.width, y: group2.minY + 0.46216 * group2.height), controlPoint2: CGPoint(x: group2.minX + 0.96940 * group2.width, y: group2.minY + 0.43317 * group2.height))
        bezier3Path.closePath()
        bezier3Path.miterLimit = 4;
        
        fillColor.setFill()
        bezier3Path.fill()
        
        let image = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        return image
        
    }
}
