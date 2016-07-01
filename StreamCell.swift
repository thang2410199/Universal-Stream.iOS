//
//  StreamCell.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on Jun/02/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import UIKit
import PureLayout

class StreamCell : UITableViewCell {
    var preview : UIImageView!
    var status  : UILabel!
    var nameOfStreamer  : UILabel!
    var numberOfViewer : UILabel!
    var gameNameBackgroundView : UIView!
    
    
    static let imageParallaxOffset: CGFloat = 40
    static let RowHeight = AppConstant.AppWidth * 360 / 640 - imageParallaxOffset
    static let ImageHeight = RowHeight + imageParallaxOffset
    
    var viewModel : StreamCellViewModel? {
        didSet{
            guard viewModel != nil else {
                return
            }
            
            
            self.nameOfStreamer.text = viewModel?.stream.channel?.name
            //self.numberOfViewer.text = "\(viewModel?.stream.viewers)"
            self.status.text = viewModel?.stream.channel?.status
            let url = NSURL(string: (viewModel?.stream.preview?.medium)!)
            self.preview?.sd_setImageWithURLWithFade(url, placeholderImage : UIImage.defaultStreamPreview)
        }
    }
    
    func commonInit()
    {
        let PreviewWidth = AppConstant.AppWidth
        
        self.clipsToBounds = true
        
//        gameNameBackgroundView = UIView(frame: CGRect(x: 0, y: StreamCell.RowHeight - 40, width: PreviewWidth, height: 40))
        gameNameBackgroundView = UIView()
        gameNameBackgroundView.translatesAutoresizingMaskIntoConstraints = false
        gameNameBackgroundView.backgroundColor = AppConstant.TwitchDarkGray050
        
        preview = UIImageView()
        preview.translatesAutoresizingMaskIntoConstraints = false
        preview.contentMode = .ScaleAspectFill
        preview.clipsToBounds = false
        
        status = UILabel(frame: CGRect(x: AppConstant.Margin, y: StreamCell.RowHeight - AppConstant.Margin - 20, width: PreviewWidth, height: 20))
        status.textColor = AppConstant.AppWhite
        nameOfStreamer = UILabel(frame: CGRect(x: AppConstant.Margin, y: AppConstant.Margin, width: PreviewWidth, height: 20))
        nameOfStreamer.textColor = AppConstant.AppWhite
        
        self.contentView.addSubview(preview)
        self.contentView.addSubview(gameNameBackgroundView)
        self.contentView.addSubview(status)
        self.contentView.addSubview(nameOfStreamer)
        
        
        preview.autoPinEdgesToSuperviewEdges()
        gameNameBackgroundView.autoSetDimension(.Height, toSize: 40)
        gameNameBackgroundView.autoMatchDimension(.Width, toDimension: .Width, ofView: self.contentView)
        gameNameBackgroundView.autoPinEdge(.Bottom, toEdge: .Bottom, ofView: self.contentView)
        
        //Layout
//        let viewsDictionary = ["view1":gameNameBackgroundView, "image":preview]
//
//        let image_constraint_H = NSLayoutConstraint.constraintsWithVisualFormat(
//            "H:|[image]|",
//            options: NSLayoutFormatOptions.AlignAllLeading,
//            metrics: nil,
//            views: viewsDictionary)
//        let image_constraint_V = NSLayoutConstraint.constraintsWithVisualFormat(
//            "V:|[image(\(StreamCell.ImageHeight))]|",
//            options: NSLayoutFormatOptions.AlignAllLeading,
//            metrics: nil,
//            views: viewsDictionary)
//        let view_constraint_H = NSLayoutConstraint.constraintsWithVisualFormat(
//            "H:|[view1]|",
//            options: NSLayoutFormatOptions.AlignAllLeading,
//            metrics: nil, views: viewsDictionary)
//        let view_constraint_V = NSLayoutConstraint.constraintsWithVisualFormat(
//            "V:[view1(40)]|",
//            options: NSLayoutFormatOptions.AlignAllLeading,
//            metrics: nil, views: viewsDictionary)
//        
//        self.contentView.addConstraints(image_constraint_H)
//        //self.contentView.addConstraints(image_constraint_V)
//        self.contentView.addConstraints(view_constraint_H)
//        self.contentView.addConstraints(view_constraint_V)
    }
    
    func setBackgroundOffset(offset:CGFloat) {
        var frame = self.preview.frame
        frame.origin.y = (offset / 20.0)
        self.preview.frame = frame
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.commonInit()
    }
}