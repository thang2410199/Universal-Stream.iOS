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

class TwitchGameCell : UITableViewCell{
    static let width = (AppConstant.AppWidth - 8 * 3) / 2
    static let height = width * 380 / 272
    static let ratio : CGFloat = 380 / 272
    
    var viewModel: TwitchGameCellModeling? {
        didSet {
            self.gameName?.text = viewModel?.game?.game?.name
            let url = NSURL(string: (self.viewModel?.game?.game?.box?.large)!)
            let defaultImage = UIImage(named: "gameBox")
            self.gameThumbnail.sd_setImageWithURLWithFade(url, placeholderImage: defaultImage)
//            tagLabel.text = viewModel?.tagText
//            imageSizeLabel.text = viewModel?.pageImageSizeText
            
            if let viewModel = viewModel {
//                viewModel.getPreviewImage()
//                    .takeUntil(self.racutil_prepareForReuseProducer)
//                    .on(next: { self.previewImageView.image = $0 })
//                    .start()
            }
            else {
//                previewImageView.image = nil
            }
        }
    }
    
    @IBOutlet weak var gameThumbnail : UIImageView!
    @IBOutlet weak var gameName : UILabel!
    
    
}