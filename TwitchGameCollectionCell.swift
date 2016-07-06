//
//  TwitchGameCell.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on May/20/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import ReactiveCocoa
import SDWebImage
import PureLayout
import UIKit

class TwitchGameCollectionCell : UICollectionViewCell{
    var viewModel: TwitchGameCellModeling? {
        didSet {
            //self.gameName.text = viewModel?.game?.game?.name
            
            let url = NSURL(string: (self.viewModel?.game?.game?.box?.large)!)
            self.gameThumbnail.sd_setImageWithURLWithFade(url, placeholderImage: UIImage.defaultGameBox)
            
            viewModel?.Title.producer.takeUntil(self.racutil_prepareForReuseProducer)
                .on(next : { title in
                    self.gameName.text = title
                })
                .start()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    
    private var gameThumbnail : UIImageView!
    public var gameName : UILabel!
    private var gameNameBackgroundView : UIView!
    
    private func commonInit() {
        
        //Profile photo view
        gameThumbnail = UIImageView(frame: CGRect(x: 0, y: 0, width: self.bounds.width, height: self.bounds.height))
        gameNameBackgroundView = UIView(frame: CGRect(x: 0, y: TwitchGameCell.height - 40, width: self.bounds.width, height: 40))
        gameNameBackgroundView.backgroundColor = AppConstant.TwitchDarkGray050
        
        gameName = UILabel(frame: CGRect(x: 0, y: TwitchGameCell.height - 40, width: self.bounds.width, height: 40))
        gameName.textColor = AppConstant.AppWhite
        gameName.textAlignment = .Center
        gameName.lineBreakMode = .ByTruncatingTail
        
        self.backgroundColor = AppConstant.TwitchLightGray050
        self.contentView.addSubview(gameThumbnail)
        self.contentView.addSubview(gameNameBackgroundView)
        self.contentView.addSubview(gameName)
    }
}