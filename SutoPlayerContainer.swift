//
//  SutoPlayerContainer.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on 6/27/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import UIKit

struct PlayerAction {
    static let OnPlayerTappedKey = "OnPlayerTapped"
}


class SutoPlayerContainer : UIView {
    
    var delegate : PlayerControllDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.commonInit()
    }
    
    init() {
        super.init(frame: CGRect.zero)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func commonInit() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(SutoPlayerContainer.OnPlayerTapped(_:)))
        self.addGestureRecognizer(tapGesture)
    }
    
    func OnPlayerTapped(sender : UIGestureRecognizer) {
        delegate?.OnPlayerTapped()
    }

    
    override func layoutSubviews() {
        super.layoutSubviews()
        if(self.layer.sublayers?.count > 0) {
            self.layer.sublayers![0].frame = self.bounds
        }
    }
}