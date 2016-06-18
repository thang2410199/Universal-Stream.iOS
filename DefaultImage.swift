//
//  DefaultImage.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on Jun/03/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {
    class var defaultGameBox : UIImage{
        return UIImage(named: "gameBox") ?? UIImage()
    }
    
    class var defaultStreamPreview : UIImage {
        return UIImage(named: "streamPreview") ?? UIImage()
    }
    
//    func jpegDataSmallerThan(sizeInKb : CGFloat, originalCompression _originalCompression: CGFloat) -> NSData? {
//        var originalCompression = _originalCompression
//        var thumbData = UIImageJPEGRepresentation(self, originalCompression)
//        
//        if let _thumbData = thumbData {
//            while CGFloat(_thumbData.length) / 1024 > sizeInKb {
//                originalCompression -= 0.1
//                thumbData = UIImageJPEGRepresentation(self, originalCompression)
//            }
//        }
//        return thumbData
//    }
//    
//    class func thumbnailImageFromVideoURL(url : NSURL) -> UIImage? {
//        let asset:AVAsset = AVAsset(URL: url)
//        let imageGenerator : AVAssetImageGenerator = AVAssetImageGenerator(asset: asset)
//        var time: CMTime = CMTimeMakeWithSeconds(0.0, 30)
//        var actualTime = kCMTimeZero
//        time.value = 0
//        
//        do {
//            let imageRef : CGImageRef = try imageGenerator.copyCGImageAtTime(time, actualTime: &actualTime)
//            return UIImage(CGImage: imageRef)
//        }
//        catch {
//            return nil
//        }
//    }
}