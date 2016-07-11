//
//  SutoTabBarController.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on May/25/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import UIKit
import PureLayout

class SutoNavigationController : UINavigationController {
    
    override func viewWillAppear(animated: Bool) {
        self.navigationBar.barTintColor = AppConstant.AppColor
        self.navigationBar.barStyle = .Black
        self.navigationBar.translucent = false
        self.view.window?.backgroundColor = AppConstant.AppWhite
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let statusBar = UIView()
//        statusBar.backgroundColor = AppConstant.AppColor
//        
//        self.view.addSubview(statusBar)
//        
//        statusBar.autoSetDimension(.Height, toSize: 20)
//        statusBar.autoMatchDimension(.Width, toDimension: .Width, ofView: self.view)
    }
    
}

extension SutoNavigationController {
    override func shouldAutorotate() -> Bool {
        if let visibleViewController = self.visibleViewController {            
            return visibleViewController.shouldAutorotate()
        }
       
        return false
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if let visibleViewController = self.visibleViewController {
            return visibleViewController.supportedInterfaceOrientations()
        }

        return .Portrait
    }
}