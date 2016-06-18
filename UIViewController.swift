//
//  UIViewController.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on 6/15/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func setUpViewControllerExpands() {
        self.edgesForExtendedLayout = [UIRectEdge.Bottom, UIRectEdge.Top]
        self.automaticallyAdjustsScrollViewInsets = true
        self.view.clearsContextBeforeDrawing = true
        self.view.autoresizesSubviews = true
        self.view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
    }
}