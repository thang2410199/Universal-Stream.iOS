//
//  PaintCodeIcons7.swift
//  Buddify
//
//  Created by Vo Duc Tung on 07/04/16.
//  Copyright © 2016 Vo Duc Tung. All rights reserved.
//
import UIKit

extension UIImage {
    //More action icon 320x64
    public class func moreIcon(size size: CGSize, color fillColor: UIColor!) -> UIImage {
        let frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContextWithOptions(frame.size, false, 0)
        
        //PaintCode here
        //// frame
        //// Oval Drawing
        let ovalPath = UIBezierPath(ovalInRect: CGRectMake(frame.minX + floor(frame.width * 0.39925 - 0.1) + 0.6, frame.minY + floor(frame.height * 0.00000 + 0.5), floor(frame.width * 0.59950 - 0.1) - floor(frame.width * 0.39925 - 0.1), floor(frame.height * 1.00000 + 0.5) - floor(frame.height * 0.00000 + 0.5)))
        fillColor.setFill()
        ovalPath.fill()
        
        
        //// Oval 2 Drawing
        let oval2Path = UIBezierPath(ovalInRect: CGRectMake(frame.minX + floor(frame.width * 0.00000 + 0.5), frame.minY + floor(frame.height * 0.00000 + 0.5), floor(frame.width * 0.20025 + 0.5) - floor(frame.width * 0.00000 + 0.5), floor(frame.height * 1.00000 + 0.5) - floor(frame.height * 0.00000 + 0.5)))
        fillColor.setFill()
        oval2Path.fill()
        
        
        //// Oval 3 Drawing
        let oval3Path = UIBezierPath(ovalInRect: CGRectMake(frame.minX + floor(frame.width * 0.79975 - 0.1) + 0.6, frame.minY + floor(frame.height * 0.00000 + 0.5), floor(frame.width * 1.00000 - 0.1) - floor(frame.width * 0.79975 - 0.1), floor(frame.height * 1.00000 + 0.5) - floor(frame.height * 0.00000 + 0.5)))
        fillColor.setFill()
        oval3Path.fill()
        
        let image = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        return image
    }

	//1x1
	public class func maleFemaleIcon(size size: CGSize, color fillColor : UIColor!) -> UIImage {
		let frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
		UIGraphicsBeginImageContextWithOptions(frame.size, false, 0)
		
		//PaintCode here
		//// Subframes
		let maleAndFemaleIconGroup: CGRect = CGRectMake(frame.minX + floor(frame.width * 0.02676 - 0.3) + 0.8, frame.minY + floor(frame.height * 0.13380 + 0.5), floor(frame.width * 0.98028 + 0.3) - floor(frame.width * 0.02676 - 0.3) - 0.6, floor(frame.height * 0.96479 + 0.5) - floor(frame.height * 0.13380 + 0.5))
		
		
		//// male and female icon Group
		//// Bezier Drawing
		let bezierPath = UIBezierPath()
		bezierPath.moveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.47378 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.64513 * maleAndFemaleIconGroup.height))
		bezierPath.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.40429 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.44873 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.43077 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.59428 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.40429 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.52496 * maleAndFemaleIconGroup.height))
		bezierPath.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.47604 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.24975 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.40429 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.37119 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.43169 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.30085 * maleAndFemaleIconGroup.height))
		bezierPath.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.47326 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.24648 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.47515 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.24864 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.47419 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.24758 * maleAndFemaleIconGroup.height))
		bezierPath.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.43550 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.21102 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.46158 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.23314 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.44893 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.22127 * maleAndFemaleIconGroup.height))
		bezierPath.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.35163 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.44873 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.38358 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.27267 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.35163 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.35648 * maleAndFemaleIconGroup.height))
		bezierPath.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.43280 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.68322 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.35163 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.53936 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.38247 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.62191 * maleAndFemaleIconGroup.height))
		bezierPath.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.47326 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.64576 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.44723 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.67254 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.46080 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.66000 * maleAndFemaleIconGroup.height))
		bezierPath.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.47378 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.64513 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.47345 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.64555 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.47363 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.64534 * maleAndFemaleIconGroup.height))
		bezierPath.closePath()
		bezierPath.moveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.99527 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.01288 * maleAndFemaleIconGroup.height))
		bezierPath.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.99087 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.00746 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.99438 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.01148 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.99315 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.00945 * maleAndFemaleIconGroup.height))
		bezierPath.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.98739 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.00445 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.98983 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.00644 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.98842 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.00521 * maleAndFemaleIconGroup.height))
		bezierPath.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.98351 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.00242 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.98632 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.00381 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.98458 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.00263 * maleAndFemaleIconGroup.height))
		bezierPath.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.97367 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.00000 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.98051 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.00081 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.97722 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.00000 * maleAndFemaleIconGroup.height))
		bezierPath.addLineToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.83768 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.00000 * maleAndFemaleIconGroup.height))
		bezierPath.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.81139 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.03017 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.82315 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.00000 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.81139 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.01347 * maleAndFemaleIconGroup.height))
		bezierPath.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.83768 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.06030 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.81139 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.04703 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.82297 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.06030 * maleAndFemaleIconGroup.height))
		bezierPath.addLineToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.91439 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.06030 * maleAndFemaleIconGroup.height))
		bezierPath.addLineToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.82629 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.17191 * maleAndFemaleIconGroup.height))
		bezierPath.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.65048 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.10614 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.77470 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.12890 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.71416 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.10614 * maleAndFemaleIconGroup.height))
		bezierPath.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.47641 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.17038 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.58557 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.10614 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.52544 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.12996 * maleAndFemaleIconGroup.height))
		bezierPath.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.51047 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.20407 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.48839 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.18051 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.49974 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.19178 * maleAndFemaleIconGroup.height))
		bezierPath.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.51690 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.21169 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.51265 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.20657 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.51483 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.20911 * maleAndFemaleIconGroup.height))
		bezierPath.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.65048 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.16648 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.55540 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.18309 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.60126 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.16648 * maleAndFemaleIconGroup.height))
		bezierPath.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.89682 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.44873 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.78628 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.16648 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.89682 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.29314 * maleAndFemaleIconGroup.height))
		bezierPath.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.65048 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.73102 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.89682 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.60436 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.78628 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.73102 * maleAndFemaleIconGroup.height))
		bezierPath.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.51413 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.68369 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.60007 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.73102 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.55318 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.71360 * maleAndFemaleIconGroup.height))
		bezierPath.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.51028 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.68818 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.51287 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.68521 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.51158 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.68669 * maleAndFemaleIconGroup.height))
		bezierPath.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.47322 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.72441 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.49874 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.70148 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.48632 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.71360 * maleAndFemaleIconGroup.height))
		bezierPath.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.65048 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.79131 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.52286 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.76644 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.58417 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.79131 * maleAndFemaleIconGroup.height))
		bezierPath.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.94948 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.44873 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.81542 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.79131 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.94948 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.63775 * maleAndFemaleIconGroup.height))
		bezierPath.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.86594 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.21148 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.94948 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.35970 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.91982 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.27585 * maleAndFemaleIconGroup.height))
		bezierPath.addLineToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.94737 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.10856 * maleAndFemaleIconGroup.height))
		bezierPath.addLineToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.94737 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.19140 * maleAndFemaleIconGroup.height))
		bezierPath.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.97367 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.22157 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.94737 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.20831 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.95895 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.22157 * maleAndFemaleIconGroup.height))
		bezierPath.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 1.00000 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.19140 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.98824 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.22157 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 1.00000 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.20809 * maleAndFemaleIconGroup.height))
		bezierPath.addLineToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 1.00000 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.03017 * maleAndFemaleIconGroup.height))
		bezierPath.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.99527 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.01288 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 1.00000 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.02373 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.99822 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.01750 * maleAndFemaleIconGroup.height))
		bezierPath.closePath()
		fillColor.setFill()
		bezierPath.fill()
		
		
		//// Bezier 2 Drawing
		let bezier2Path = UIBezierPath()
		bezier2Path.moveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.47378 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.64513 * maleAndFemaleIconGroup.height))
		bezier2Path.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.47326 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.64576 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.47363 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.64534 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.47345 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.64555 * maleAndFemaleIconGroup.height))
		bezier2Path.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.43280 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.68322 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.46080 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.66000 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.44723 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.67254 * maleAndFemaleIconGroup.height))
		bezier2Path.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.29900 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.72839 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.39327 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.71263 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.34719 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.72839 * maleAndFemaleIconGroup.height))
		bezier2Path.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.12478 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.64576 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.23321 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.72839 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.17145 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.69903 * maleAndFemaleIconGroup.height))
		bezier2Path.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.05263 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.44614 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.07825 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.59229 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.05263 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.52153 * maleAndFemaleIconGroup.height))
		bezier2Path.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.12478 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.24648 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.05263 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.37093 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.07825 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.30017 * maleAndFemaleIconGroup.height))
		bezier2Path.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.29900 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.16386 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.17160 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.19322 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.23339 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.16386 * maleAndFemaleIconGroup.height))
		bezier2Path.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.43550 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.21102 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.34830 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.16386 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.39534 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.18034 * maleAndFemaleIconGroup.height))
		bezier2Path.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.47326 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.24648 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.44893 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.22127 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.46158 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.23314 * maleAndFemaleIconGroup.height))
		bezier2Path.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.47604 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.24975 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.47419 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.24758 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.47515 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.24864 * maleAndFemaleIconGroup.height))
		bezier2Path.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.54534 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.44614 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.52078 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.30284 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.54534 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.37229 * maleAndFemaleIconGroup.height))
		bezier2Path.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.47378 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.64513 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.54534 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.52123 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.51993 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.59174 * maleAndFemaleIconGroup.height))
		bezier2Path.closePath()
		bezier2Path.moveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.51690 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.21169 * maleAndFemaleIconGroup.height))
		bezier2Path.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.51047 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.20407 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.51483 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.20911 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.51265 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.20657 * maleAndFemaleIconGroup.height))
		bezier2Path.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.47641 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.17038 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.49974 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.19178 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.48839 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.18051 * maleAndFemaleIconGroup.height))
		bezier2Path.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.29900 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.10352 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.42530 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.12691 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.36372 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.10352 * maleAndFemaleIconGroup.height))
		bezier2Path.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.08772 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.20407 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.21897 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.10352 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.14405 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.13932 * maleAndFemaleIconGroup.height))
		bezier2Path.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.00000 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.44614 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.03107 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.26860 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.00000 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.35466 * maleAndFemaleIconGroup.height))
		bezier2Path.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.08772 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.68818 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.00000 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.53758 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.03107 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.62364 * maleAndFemaleIconGroup.height))
		bezier2Path.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.27267 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.78729 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.13739 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.74547 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.20285 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.78047 * maleAndFemaleIconGroup.height))
		bezier2Path.addLineToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.27267 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.87216 * maleAndFemaleIconGroup.height))
		bezier2Path.addLineToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.23987 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.87216 * maleAndFemaleIconGroup.height))
		bezier2Path.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.21357 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.90229 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.22511 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.87216 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.21357 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.88542 * maleAndFemaleIconGroup.height))
		bezier2Path.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.23987 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.93246 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.21357 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.91898 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.22530 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.93246 * maleAndFemaleIconGroup.height))
		bezier2Path.addLineToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.27267 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.93246 * maleAndFemaleIconGroup.height))
		bezier2Path.addLineToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.27267 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.96983 * maleAndFemaleIconGroup.height))
		bezier2Path.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.29900 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 1.00000 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.27267 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.98653 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.28443 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 1.00000 * maleAndFemaleIconGroup.height))
		bezier2Path.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.32533 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.96983 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.31357 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 1.00000 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.32533 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.98653 * maleAndFemaleIconGroup.height))
		bezier2Path.addLineToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.32533 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.93246 * maleAndFemaleIconGroup.height))
		bezier2Path.addLineToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.35832 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.93246 * maleAndFemaleIconGroup.height))
		bezier2Path.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.38465 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.90229 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.37286 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.93246 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.38465 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.91898 * maleAndFemaleIconGroup.height))
		bezier2Path.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.35832 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.87216 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.38465 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.88559 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.37286 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.87216 * maleAndFemaleIconGroup.height))
		bezier2Path.addLineToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.32533 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.87216 * maleAndFemaleIconGroup.height))
		bezier2Path.addLineToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.32533 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.78729 * maleAndFemaleIconGroup.height))
		bezier2Path.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.47322 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.72441 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.37892 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.78203 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.42996 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.76021 * maleAndFemaleIconGroup.height))
		bezier2Path.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.51028 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.68818 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.48632 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.71360 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.49874 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.70148 * maleAndFemaleIconGroup.height))
		bezier2Path.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.51413 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.68369 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.51158 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.68669 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.51287 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.68521 * maleAndFemaleIconGroup.height))
		bezier2Path.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.59800 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.44614 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.56834 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.61966 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.59800 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.53547 * maleAndFemaleIconGroup.height))
		bezier2Path.addCurveToPoint(CGPointMake(maleAndFemaleIconGroup.minX + 0.51690 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.21169 * maleAndFemaleIconGroup.height), controlPoint1: CGPointMake(maleAndFemaleIconGroup.minX + 0.59800 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.35822 * maleAndFemaleIconGroup.height), controlPoint2: CGPointMake(maleAndFemaleIconGroup.minX + 0.56930 * maleAndFemaleIconGroup.width, maleAndFemaleIconGroup.minY + 0.27530 * maleAndFemaleIconGroup.height))
		bezier2Path.closePath()
		fillColor.setFill()
		bezier2Path.fill()
		
		let image = UIGraphicsGetImageFromCurrentImageContext()!
		UIGraphicsEndImageContext()
		
		return image
	}
    
    //1x1
    public class func backIcon(size size: CGSize, color fillColor: UIColor!) -> UIImage {
        let frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContextWithOptions(frame.size, false, 0)
        
        //PaintCode here
        //// Subframes
        let group: CGRect = CGRect(origin: CGPointZero, size: CGSize(width: size.height, height: size.height))
        
        let bounds: CGRect = CGRect(x: 0.2 * group.size.width, y: 0, width: 0.586 * group.size.width, height: group.size.height)
        
        
        //// bounds
        //// Search
        //// Nav-Bar
        //// chevron-left Drawing
        let chevronleftPath = UIBezierPath()
        chevronleftPath.moveToPoint(CGPointMake(bounds.minX + 0.96390 * bounds.width, bounds.minY + 0.88133 * bounds.height))
        chevronleftPath.addCurveToPoint(CGPointMake(bounds.minX + 0.96716 * bounds.width, bounds.minY + 0.97884 * bounds.height), controlPoint1: CGPointMake(bounds.minX + 1.01072 * bounds.width, bounds.minY + 0.90772 * bounds.height), controlPoint2: CGPointMake(bounds.minX + 1.01219 * bounds.width, bounds.minY + 0.95138 * bounds.height))
        chevronleftPath.addCurveToPoint(CGPointMake(bounds.minX + 0.88234 * bounds.width, bounds.minY + 1.00000 * bounds.height), controlPoint1: CGPointMake(bounds.minX + 0.94408 * bounds.width, bounds.minY + 0.99291 * bounds.height), controlPoint2: CGPointMake(bounds.minX + 0.91322 * bounds.width, bounds.minY + 1.00000 * bounds.height))
        chevronleftPath.addCurveToPoint(CGPointMake(bounds.minX + 0.80081 * bounds.width, bounds.minY + 0.98076 * bounds.height), controlPoint1: CGPointMake(bounds.minX + 0.85299 * bounds.width, bounds.minY + 1.00000 * bounds.height), controlPoint2: CGPointMake(bounds.minX + 0.82363 * bounds.width, bounds.minY + 0.99362 * bounds.height))
        chevronleftPath.addLineToPoint(CGPointMake(bounds.minX + 0.03609 * bounds.width, bounds.minY + 0.54972 * bounds.height))
        chevronleftPath.addCurveToPoint(CGPointMake(bounds.minX + 0.00000 * bounds.width, bounds.minY + 0.50000 * bounds.height), controlPoint1: CGPointMake(bounds.minX + 0.01303 * bounds.width, bounds.minY + 0.53672 * bounds.height), controlPoint2: CGPointMake(bounds.minX + 0.00000 * bounds.width, bounds.minY + 0.51876 * bounds.height))
        chevronleftPath.addCurveToPoint(CGPointMake(bounds.minX + 0.03609 * bounds.width, bounds.minY + 0.45029 * bounds.height), controlPoint1: CGPointMake(bounds.minX + 0.00000 * bounds.width, bounds.minY + 0.48126 * bounds.height), controlPoint2: CGPointMake(bounds.minX + 0.01303 * bounds.width, bounds.minY + 0.46329 * bounds.height))
        chevronleftPath.addLineToPoint(CGPointMake(bounds.minX + 0.80081 * bounds.width, bounds.minY + 0.01925 * bounds.height))
        chevronleftPath.addCurveToPoint(CGPointMake(bounds.minX + 0.96716 * bounds.width, bounds.minY + 0.02117 * bounds.height), controlPoint1: CGPointMake(bounds.minX + 0.84763 * bounds.width, bounds.minY + -0.00714 * bounds.height), controlPoint2: CGPointMake(bounds.minX + 0.92213 * bounds.width, bounds.minY + -0.00630 * bounds.height))
        chevronleftPath.addCurveToPoint(CGPointMake(bounds.minX + 0.96390 * bounds.width, bounds.minY + 0.11869 * bounds.height), controlPoint1: CGPointMake(bounds.minX + 1.01219 * bounds.width, bounds.minY + 0.04863 * bounds.height), controlPoint2: CGPointMake(bounds.minX + 1.01072 * bounds.width, bounds.minY + 0.09229 * bounds.height))
        chevronleftPath.addLineToPoint(CGPointMake(bounds.minX + 0.28739 * bounds.width, bounds.minY + 0.50000 * bounds.height))
        chevronleftPath.addLineToPoint(CGPointMake(bounds.minX + 0.96390 * bounds.width, bounds.minY + 0.88133 * bounds.height))
        chevronleftPath.closePath()
        chevronleftPath.miterLimit = 4;
        
        chevronleftPath.usesEvenOddFillRule = true;
        
        fillColor.setFill()
        chevronleftPath.fill()
        
        let image = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        return image
    }
    
    public class func onboardingMessageIcon(size size: CGSize, color fillColor : UIColor!) -> UIImage {
        let frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContextWithOptions(frame.size, false, 0)
        
        //PaintCode here
        //// Bezier Drawing
        
        let shapesMessagesvgGroup: CGRect = CGRectMake(frame.minX + floor(frame.width * 0.00000 + 0.5), frame.minY + floor(frame.height * 0.00077 + 0.16) + 0.34, floor(frame.width * 0.99986 - 0.44) - floor(frame.width * 0.00000 + 0.5) + 0.94, floor(frame.height * 0.99907 - 0.22) - floor(frame.height * 0.00077 + 0.16) + 0.37)
        
        
        //// shapesMessage.svg Group
        //// Group 2
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.moveToPoint(CGPointMake(shapesMessagesvgGroup.minX + 0.96727 * shapesMessagesvgGroup.width, shapesMessagesvgGroup.minY + 0.00000 * shapesMessagesvgGroup.height))
        bezierPath.addLineToPoint(CGPointMake(shapesMessagesvgGroup.minX + 0.03272 * shapesMessagesvgGroup.width, shapesMessagesvgGroup.minY + 0.00000 * shapesMessagesvgGroup.height))
        bezierPath.addCurveToPoint(CGPointMake(shapesMessagesvgGroup.minX + 0.00000 * shapesMessagesvgGroup.width, shapesMessagesvgGroup.minY + 0.03597 * shapesMessagesvgGroup.height), controlPoint1: CGPointMake(shapesMessagesvgGroup.minX + 0.01465 * shapesMessagesvgGroup.width, shapesMessagesvgGroup.minY + 0.00000 * shapesMessagesvgGroup.height), controlPoint2: CGPointMake(shapesMessagesvgGroup.minX + 0.00000 * shapesMessagesvgGroup.width, shapesMessagesvgGroup.minY + 0.01611 * shapesMessagesvgGroup.height))
        bezierPath.addLineToPoint(CGPointMake(shapesMessagesvgGroup.minX + 0.00000 * shapesMessagesvgGroup.width, shapesMessagesvgGroup.minY + 0.69422 * shapesMessagesvgGroup.height))
        bezierPath.addCurveToPoint(CGPointMake(shapesMessagesvgGroup.minX + 0.03272 * shapesMessagesvgGroup.width, shapesMessagesvgGroup.minY + 0.73019 * shapesMessagesvgGroup.height), controlPoint1: CGPointMake(shapesMessagesvgGroup.minX + 0.00000 * shapesMessagesvgGroup.width, shapesMessagesvgGroup.minY + 0.71409 * shapesMessagesvgGroup.height), controlPoint2: CGPointMake(shapesMessagesvgGroup.minX + 0.01465 * shapesMessagesvgGroup.width, shapesMessagesvgGroup.minY + 0.73019 * shapesMessagesvgGroup.height))
        bezierPath.addLineToPoint(CGPointMake(shapesMessagesvgGroup.minX + 0.53322 * shapesMessagesvgGroup.width, shapesMessagesvgGroup.minY + 0.73019 * shapesMessagesvgGroup.height))
        bezierPath.addLineToPoint(CGPointMake(shapesMessagesvgGroup.minX + 0.53322 * shapesMessagesvgGroup.width, shapesMessagesvgGroup.minY + 0.96402 * shapesMessagesvgGroup.height))
        bezierPath.addCurveToPoint(CGPointMake(shapesMessagesvgGroup.minX + 0.55342 * shapesMessagesvgGroup.width, shapesMessagesvgGroup.minY + 0.99726 * shapesMessagesvgGroup.height), controlPoint1: CGPointMake(shapesMessagesvgGroup.minX + 0.53322 * shapesMessagesvgGroup.width, shapesMessagesvgGroup.minY + 0.97857 * shapesMessagesvgGroup.height), controlPoint2: CGPointMake(shapesMessagesvgGroup.minX + 0.54119 * shapesMessagesvgGroup.width, shapesMessagesvgGroup.minY + 0.99169 * shapesMessagesvgGroup.height))
        bezierPath.addCurveToPoint(CGPointMake(shapesMessagesvgGroup.minX + 0.56594 * shapesMessagesvgGroup.width, shapesMessagesvgGroup.minY + 1.00000 * shapesMessagesvgGroup.height), controlPoint1: CGPointMake(shapesMessagesvgGroup.minX + 0.55747 * shapesMessagesvgGroup.width, shapesMessagesvgGroup.minY + 0.99910 * shapesMessagesvgGroup.height), controlPoint2: CGPointMake(shapesMessagesvgGroup.minX + 0.56172 * shapesMessagesvgGroup.width, shapesMessagesvgGroup.minY + 1.00000 * shapesMessagesvgGroup.height))
        bezierPath.addCurveToPoint(CGPointMake(shapesMessagesvgGroup.minX + 0.58908 * shapesMessagesvgGroup.width, shapesMessagesvgGroup.minY + 0.98946 * shapesMessagesvgGroup.height), controlPoint1: CGPointMake(shapesMessagesvgGroup.minX + 0.57445 * shapesMessagesvgGroup.width, shapesMessagesvgGroup.minY + 1.00000 * shapesMessagesvgGroup.height), controlPoint2: CGPointMake(shapesMessagesvgGroup.minX + 0.58282 * shapesMessagesvgGroup.width, shapesMessagesvgGroup.minY + 0.99634 * shapesMessagesvgGroup.height))
        bezierPath.addLineToPoint(CGPointMake(shapesMessagesvgGroup.minX + 0.82658 * shapesMessagesvgGroup.width, shapesMessagesvgGroup.minY + 0.73019 * shapesMessagesvgGroup.height))
        bezierPath.addLineToPoint(CGPointMake(shapesMessagesvgGroup.minX + 0.96727 * shapesMessagesvgGroup.width, shapesMessagesvgGroup.minY + 0.73019 * shapesMessagesvgGroup.height))
        bezierPath.addCurveToPoint(CGPointMake(shapesMessagesvgGroup.minX + 1.00000 * shapesMessagesvgGroup.width, shapesMessagesvgGroup.minY + 0.69422 * shapesMessagesvgGroup.height), controlPoint1: CGPointMake(shapesMessagesvgGroup.minX + 0.98535 * shapesMessagesvgGroup.width, shapesMessagesvgGroup.minY + 0.73019 * shapesMessagesvgGroup.height), controlPoint2: CGPointMake(shapesMessagesvgGroup.minX + 1.00000 * shapesMessagesvgGroup.width, shapesMessagesvgGroup.minY + 0.71409 * shapesMessagesvgGroup.height))
        bezierPath.addLineToPoint(CGPointMake(shapesMessagesvgGroup.minX + 1.00000 * shapesMessagesvgGroup.width, shapesMessagesvgGroup.minY + 0.03597 * shapesMessagesvgGroup.height))
        bezierPath.addCurveToPoint(CGPointMake(shapesMessagesvgGroup.minX + 0.96727 * shapesMessagesvgGroup.width, shapesMessagesvgGroup.minY + 0.00000 * shapesMessagesvgGroup.height), controlPoint1: CGPointMake(shapesMessagesvgGroup.minX + 1.00000 * shapesMessagesvgGroup.width, shapesMessagesvgGroup.minY + 0.01611 * shapesMessagesvgGroup.height), controlPoint2: CGPointMake(shapesMessagesvgGroup.minX + 0.98535 * shapesMessagesvgGroup.width, shapesMessagesvgGroup.minY + 0.00000 * shapesMessagesvgGroup.height))
        bezierPath.addLineToPoint(CGPointMake(shapesMessagesvgGroup.minX + 0.96727 * shapesMessagesvgGroup.width, shapesMessagesvgGroup.minY + 0.00000 * shapesMessagesvgGroup.height))
        bezierPath.closePath()
        bezierPath.miterLimit = 4;
        
        fillColor.setFill()
        bezierPath.fill()
        
        let image = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        return image
    }
	
	//Size 1x1
	public class func removeUserIcon(size size: CGSize, color fillColor : UIColor!) -> UIImage {
		let frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
		UIGraphicsBeginImageContextWithOptions(frame.size, false, 0)
		
		//PaintCode here
		//// Bezier Drawing
		let bezierPath = UIBezierPath()
		bezierPath.moveToPoint(CGPointMake(frame.minX + 0.48145 * frame.width, frame.minY + 0.86299 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.43251 * frame.width, frame.minY + 0.86299 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.06670 * frame.width, frame.minY + 0.86299 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.05839 * frame.width, frame.minY + 0.86299 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.02395 * frame.width, frame.minY + 0.82169 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.03510 * frame.width, frame.minY + 0.86299 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.01975 * frame.width, frame.minY + 0.84450 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.02545 * frame.width, frame.minY + 0.81352 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.03521 * frame.width, frame.minY + 0.77523 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.02696 * frame.width, frame.minY + 0.80531 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.03009 * frame.width, frame.minY + 0.79201 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.06926 * frame.width, frame.minY + 0.69333 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.04368 * frame.width, frame.minY + 0.74744 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.05487 * frame.width, frame.minY + 0.71962 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.12532 * frame.width, frame.minY + 0.61926 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.08487 * frame.width, frame.minY + 0.66481 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.10339 * frame.width, frame.minY + 0.63976 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.32631 * frame.width, frame.minY + 0.51586 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.18521 * frame.width, frame.minY + 0.56327 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.26065 * frame.width, frame.minY + 0.52976 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.32631 * frame.width, frame.minY + 0.50697 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.20744 * frame.width, frame.minY + 0.27078 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.25311 * frame.width, frame.minY + 0.45987 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.20744 * frame.width, frame.minY + 0.37093 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.43370 * frame.width, frame.minY + 0.00000 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.20744 * frame.width, frame.minY + 0.12000 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.30148 * frame.width, frame.minY + 0.00000 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.65996 * frame.width, frame.minY + 0.27078 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.56570 * frame.width, frame.minY + 0.00000 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.65996 * frame.width, frame.minY + 0.12065 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.54110 * frame.width, frame.minY + 0.50697 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.65996 * frame.width, frame.minY + 0.37093 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.61430 * frame.width, frame.minY + 0.45987 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.54110 * frame.width, frame.minY + 0.51586 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.57817 * frame.width, frame.minY + 0.52554 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.55318 * frame.width, frame.minY + 0.51841 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.56559 * frame.width, frame.minY + 0.52164 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.59358 * frame.width, frame.minY + 0.53063 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.58328 * frame.width, frame.minY + 0.52712 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.58842 * frame.width, frame.minY + 0.52882 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.52233 * frame.width, frame.minY + 0.59746 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.56615 * frame.width, frame.minY + 0.54866 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.54203 * frame.width, frame.minY + 0.57130 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.51783 * frame.width, frame.minY + 0.59648 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.52082 * frame.width, frame.minY + 0.59712 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.51932 * frame.width, frame.minY + 0.59679 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.49568 * frame.width, frame.minY + 0.43889 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.45261 * frame.width, frame.minY + 0.58266 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.44072 * frame.width, frame.minY + 0.47425 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.57608 * frame.width, frame.minY + 0.27078 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.54388 * frame.width, frame.minY + 0.40787 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.57608 * frame.width, frame.minY + 0.34350 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.43370 * frame.width, frame.minY + 0.08381 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.57608 * frame.width, frame.minY + 0.16303 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.51418 * frame.width, frame.minY + 0.08381 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.29133 * frame.width, frame.minY + 0.27078 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.35292 * frame.width, frame.minY + 0.08381 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.29133 * frame.width, frame.minY + 0.16241 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.37173 * frame.width, frame.minY + 0.43889 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.29133 * frame.width, frame.minY + 0.34350 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.32352 * frame.width, frame.minY + 0.40787 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.34958 * frame.width, frame.minY + 0.59648 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.42668 * frame.width, frame.minY + 0.47425 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.41480 * frame.width, frame.minY + 0.58266 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.18263 * frame.width, frame.minY + 0.68046 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.29752 * frame.width, frame.minY + 0.60750 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.22944 * frame.width, frame.minY + 0.63671 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.14286 * frame.width, frame.minY + 0.73354 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.16775 * frame.width, frame.minY + 0.69437 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.15445 * frame.width, frame.minY + 0.71236 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.12924 * frame.width, frame.minY + 0.77918 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.13146 * frame.width, frame.minY + 0.75435 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.12924 * frame.width, frame.minY + 0.77918 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.43251 * frame.width, frame.minY + 0.77918 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.46548 * frame.width, frame.minY + 0.77918 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.48145 * frame.width, frame.minY + 0.86299 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.46659 * frame.width, frame.minY + 0.80847 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.47213 * frame.width, frame.minY + 0.83663 * frame.height))
		bezierPath.closePath()
		bezierPath.moveToPoint(CGPointMake(frame.minX + 0.74943 * frame.width, frame.minY + 0.99981 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.98097 * frame.width, frame.minY + 0.76828 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.87731 * frame.width, frame.minY + 0.99981 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.98097 * frame.width, frame.minY + 0.89615 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.74943 * frame.width, frame.minY + 0.53674 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.98097 * frame.width, frame.minY + 0.64040 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.87731 * frame.width, frame.minY + 0.53674 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.51790 * frame.width, frame.minY + 0.76828 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.62156 * frame.width, frame.minY + 0.53674 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.51790 * frame.width, frame.minY + 0.64040 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.74943 * frame.width, frame.minY + 0.99981 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.51790 * frame.width, frame.minY + 0.89615 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.62156 * frame.width, frame.minY + 0.99981 * frame.height))
		bezierPath.closePath()
		bezierPath.moveToPoint(CGPointMake(frame.minX + 0.74943 * frame.width, frame.minY + 0.93666 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.58105 * frame.width, frame.minY + 0.76828 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.65644 * frame.width, frame.minY + 0.93666 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.58105 * frame.width, frame.minY + 0.86127 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.74943 * frame.width, frame.minY + 0.59989 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.58105 * frame.width, frame.minY + 0.67528 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.65644 * frame.width, frame.minY + 0.59989 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.91782 * frame.width, frame.minY + 0.76828 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.84243 * frame.width, frame.minY + 0.59989 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.91782 * frame.width, frame.minY + 0.67528 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.74943 * frame.width, frame.minY + 0.93666 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.91782 * frame.width, frame.minY + 0.86127 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.84243 * frame.width, frame.minY + 0.93666 * frame.height))
		bezierPath.closePath()
		bezierPath.moveToPoint(CGPointMake(frame.minX + 0.83054 * frame.width, frame.minY + 0.73670 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.86520 * frame.width, frame.minY + 0.76828 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.84968 * frame.width, frame.minY + 0.73670 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.86520 * frame.width, frame.minY + 0.75072 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.83054 * frame.width, frame.minY + 0.79985 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.86520 * frame.width, frame.minY + 0.78571 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.84965 * frame.width, frame.minY + 0.79985 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.66833 * frame.width, frame.minY + 0.79985 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.63367 * frame.width, frame.minY + 0.76828 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.64919 * frame.width, frame.minY + 0.79985 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.63367 * frame.width, frame.minY + 0.78583 * frame.height))
		bezierPath.addCurveToPoint(CGPointMake(frame.minX + 0.66833 * frame.width, frame.minY + 0.73670 * frame.height), controlPoint1: CGPointMake(frame.minX + 0.63367 * frame.width, frame.minY + 0.75084 * frame.height), controlPoint2: CGPointMake(frame.minX + 0.64922 * frame.width, frame.minY + 0.73670 * frame.height))
		bezierPath.addLineToPoint(CGPointMake(frame.minX + 0.83054 * frame.width, frame.minY + 0.73670 * frame.height))
		bezierPath.closePath()
		fillColor.setFill()
		bezierPath.fill()
		
		let image = UIGraphicsGetImageFromCurrentImageContext()!
		UIGraphicsEndImageContext()
		
		return image
	}
	
}
