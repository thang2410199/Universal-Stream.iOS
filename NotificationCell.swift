//
//  NotificationCell.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on 6/17/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import UIKit
import PureLayout

class NotificationCell : UITableViewCell, ISettingCell {
    var toggleSwitch : UISwitch!
    
    
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
        toggleSwitch = UISwitch()
        
        
        self.contentView.addSubview(toggleSwitch)
        
        // Layout
        toggleSwitch.autoPinEdgeToSuperviewEdge(.Right, withInset: 8)
        toggleSwitch.autoAlignAxisToSuperviewAxis(.Horizontal)
    }
    
}