//
//  SideMenuProfileCell.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on 6/10/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import UIKit
import LoremIpsum

class SideMenuProfileCell : UITableViewCell {
    var backgroundX : CGFloat = 0
    var backgroundY : CGFloat = 0
    var backgroundWidth : CGFloat = 300
    var backgroundHeight: CGFloat = 200
    
    //var backgroundView : UIView!
    
    var loginButton : UIButton!
    var profileImage : UIImageView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.commonInit()
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.commonInit()
    }
    
    func commonInit() {
        self.backgroundView = UIView(frame: CGRect(x: backgroundX, y: backgroundY, width: backgroundWidth, height: backgroundHeight))
        self.backgroundColor = AppConstant.AppColor
        self.selectionStyle = .None
        
        profileImage = UIImageView()
        profileImage.translatesAutoresizingMaskIntoConstraints = false
        
        profileImage.contentMode = .ScaleAspectFill
        profileImage.backgroundColor = AppConstant.TwitchDarkGray
        
        let image_url = LoremIpsum.URLForPlaceholderImageFromService(.LoremPixel, withSize: CGSize(width: 300,height: 300))
        profileImage.sd_setImageWithURL(image_url)
        profileImage.layer.borderWidth = 1
        profileImage.layer.borderColor = AppConstant.AppWhite.CGColor
        profileImage.layer.cornerRadius = 150 / 2
        
        self.contentView.layer.borderWidth = 1
        self.contentView.layer.borderColor = AppConstant.AppWhite.CGColor
        
        //Layout
        self.contentView.addSubview(profileImage)
        profileImage.layer.zPosition = 3
        profileImage.autoSetDimensionsToSize(CGSize(width: 150, height: 150))
        profileImage.autoPinEdge(.Bottom, toEdge: .Bottom, ofView: self.contentView, withOffset: -35)
        profileImage.autoAlignAxis(.Vertical, toSameAxisOfView: self.contentView)
    }
    
}