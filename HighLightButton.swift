//
//  HighLightButton.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on 6/15/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import UIKit

//MARK: Highlight button
class HighLightButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override var highlighted: Bool {
        set{
            super.highlighted = newValue
            if newValue {
                self.alpha = 0.5
            }
            else{
                UIView.animateWithDuration(0.3, animations: { () -> Void in
                    self.alpha = 1.0
                })
            }
        }
        get{
            return super.highlighted
        }
    }
}

//Custom bar button

extension HighLightButton {
    convenience init(title: String, alignment : UIControlContentHorizontalAlignment){
        self.init(frame: CGRectMake(0, 0, 60, 44))
        //self.titleLabel?.font = UIFont.appFont(CGFloat.normalFontSize)
        self.setTitle(title, forState: UIControlState.Normal)
        self.setTitleColor(AppConstant.AppWhite, forState: UIControlState.Normal)
        self.setTitleColor(AppConstant.AppWhite.colorWithAlphaComponent(0.5), forState: UIControlState.Highlighted)
        self.setTitleColor(AppConstant.TwitchDarkGray050, forState: UIControlState.Disabled)
        self.contentHorizontalAlignment = alignment
    }
    
    convenience init(image: UIImage, highlightedImage: UIImage, alignment : UIControlContentHorizontalAlignment){
        self.init(frame: CGRectMake(0, 0, 60, 44))
        self.setImage(image, forState: UIControlState.Normal)
        self.setImage(highlightedImage, forState: UIControlState.Highlighted)
        self.contentHorizontalAlignment = alignment
    }
    
    convenience init(image: UIImage, alignment : UIControlContentHorizontalAlignment){
        self.init(frame: CGRectMake(0, 0, 60, 44))
        self.setImage(image, forState: UIControlState.Normal)
        self.contentHorizontalAlignment = alignment
    }
}
