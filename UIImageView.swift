//
//  UIImageView.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on 7/1/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import SDWebImage
import UIKit

extension UIImageView {
    public func sd_setImageWithURLWithFade(url: NSURL!, placeholderImage placeholder: UIImage!)
    {
        self.alpha = 0
        let imageDidSet : SDWebImageCompletionBlock = {(image, error, cacheType, url) -> Void in
            if let downloadedImage = image {
                if cacheType == SDImageCacheType.None {
                    self.alpha = 0
                    UIView.transitionWithView(self, duration: 0.2, options: .CurveEaseOut,
                        animations: {() -> Void in
                            self.image = downloadedImage
                            self.alpha = 1
                        },
                        completion: nil)
                }
                else
                {
                    self.image = downloadedImage
                    self.alpha = 1
                }
            }
            else
            {
                self.image = placeholder
                self.alpha = 1
            }
        }
        
        self.sd_setImageWithURL(url, placeholderImage: placeholder, completed: imageDidSet)
    }
}