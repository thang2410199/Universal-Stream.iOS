//
//  VideoQuality.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on 6/17/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import UIKit
import SRKControls
import PureLayout
import DropDown

class VideoQualityCell : UITableViewCell, ISettingCell {
    
    var comboBox : SRKComboBox!
    var videoQuality : UILabel!
    weak var delegateForComboBox:SRKComboBoxDelegate?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.commonInit()
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func commonInit() {
        comboBox = SRKComboBox()
        //myComboBox.delegate = self
        comboBox.textColor = AppConstant.TwitchDarkGray050
        comboBox.textAlignment = .Center
        comboBox.borderStyle = .RoundedRect
        
        videoQuality = UILabel()
        videoQuality.textAlignment = .Right
        
        // Layout
        self.contentView.addSubview(comboBox)
        //self.contentView.addSubview(videoQuality)
        
        comboBox.autoPinEdgeToSuperviewEdge(.Right, withInset: 8)
        comboBox.autoSetDimensionsToSize(CGSize(width: 100, height: 30))
        comboBox.autoAlignAxisToSuperviewAxis(.Horizontal)
        
    }

}

extension UIView {
    var parentViewController: UIViewController? {
        var parentResponder: UIResponder? = self
        while parentResponder != nil {
            parentResponder = parentResponder!.nextResponder()
            if let viewController = parentResponder as? UIViewController {
                return viewController
            }
        }
        return nil
    }
}