//
//  SideMenuProfile.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on 6/15/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import UIKit
import LoremIpsum
import BFPaperButton

class SideMenuProfile : UIView {
    var backgroundX : CGFloat = 0
    var backgroundY : CGFloat = 0
    var backgroundWidth : CGFloat = 300
    var backgroundHeight: CGFloat = 200
    
    //var backgroundView : UIView!
    
    var loginButton : BFPaperButton!
    var signupButton : UIButton!
    var profileImage : UIImageView!
    var backgroundLogin : UIView!
    
    init() {
        super.init(frame: CGRectZero)
        self.commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.commonInit()
    }
    
    
    func commonInit() {
        
        profileImage = UIImageView()
        profileImage.translatesAutoresizingMaskIntoConstraints = false
        
        profileImage.contentMode = .ScaleAspectFill
        profileImage.backgroundColor = AppConstant.TwitchDarkGray
        
        let image_url = LoremIpsum.URLForPlaceholderImageFromService(.LoremPixel, withSize: CGSize(width: 300,height: 300))
        profileImage.clipsToBounds = true
        profileImage.sd_setImageWithURL(image_url)
        profileImage.layer.borderWidth = 1
        profileImage.layer.borderColor = AppConstant.AppWhite.CGColor
        profileImage.layer.cornerRadius = 120 / 2
        
        backgroundLogin = UIView()
        backgroundLogin.backgroundColor = AppConstant.TwitchDarkGray050
        
        loginButton = BFPaperButton(raised: false)
        loginButton.setTitleColor(AppConstant.AppWhite, forState: .Normal)
        loginButton.setTitle("login", forState: .Normal)
        loginButton.cornerRadius = 0
        
        //Layout
        self.addSubview(profileImage)
        self.addSubview(backgroundLogin)
        backgroundLogin.addSubview(loginButton)
        
        profileImage.autoSetDimensionsToSize(CGSize(width: 120, height: 120))
        profileImage.autoPinEdge(.Bottom, toEdge: .Bottom, ofView: self, withOffset: -60)
        profileImage.autoAlignAxis(.Vertical, toSameAxisOfView: self)
        
        backgroundLogin.autoSetDimension(.Height, toSize: 40)
        backgroundLogin.autoMatchDimension(.Width, toDimension: .Width, ofView: self)
        backgroundLogin.autoPinEdge(.Bottom, toEdge: .Bottom, ofView: self, withOffset: 0)
        
        loginButton.autoPinEdgesToSuperviewEdges()
    }
    
}