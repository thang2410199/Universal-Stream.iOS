//
//  AppConstant.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on May/26/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import UIKit

struct AppConstant {
    static let AppColor = UIColor.init(hex: "#6441A5")
    static let AppWhite = UIColor.init(hex: "#FFFFFF")
    static let AppWhite050 = AppWhite.colorWithAlphaComponent(0.5)
    static let TwitchDarkGray = UIColor.init(hex: "#262626")
    static let TwitchDarkGray050 = TwitchDarkGray.colorWithAlphaComponent(0.5)
    static let TwitchLightGray = UIColor.init(hex: "#F1F1F1")
    static let IntroTwoBackground = UIColor.init(hex: "#8CFFCA")
    static let TwitchLightGray050 = TwitchLightGray.colorWithAlphaComponent(0.5)
    
    static let Transparent = UIColor.clearColor()
    
    static let AppWidth = UIScreen.mainScreen().bounds.width
    static let AppHeght = UIScreen.mainScreen().bounds.height
    
    static let Margin : CGFloat = 8
    
    static let FirstTimeOpen = "FirstTimeOpen"
}

class AppAction {
    static let Key = "AppAction"
    static let Login = "Login"
}