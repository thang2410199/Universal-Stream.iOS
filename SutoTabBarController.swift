//
//  SutoTabBarController.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on May/25/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import UIKit

extension SWRevealViewController {
    override public func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if let selected = self.frontViewController {
            return selected.supportedInterfaceOrientations()
        }
        return super.supportedInterfaceOrientations()
    }
    override public func shouldAutorotate() -> Bool {
        if let selected = self.frontViewController {
            return selected.shouldAutorotate()
        }
        return super.shouldAutorotate()
    }
}

protocol TabbarItemDelegate: NSObjectProtocol {
    func viewControllerScrollViewGoesToTop()
}

class SutoTabBarController : UITabBarController, UITabBarControllerDelegate {
    
    private var _oldSelectedIndex = 0
    let homeController : HomeCollectionViewController? = nil
    let topStreamController : StreamListController? = nil
    
    init() {
        super.init(nibName: nil, bundle: nil)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        self.delegate = self
        
        let homeController = HomeCollectionViewController()
        homeController.viewModel = AppDelegate.CurrentApp.container.resolve(HomeViewModeling.self)
        
        let topStreamController = StreamListController()
        
        let navigationController1 = SutoNavigationController(rootViewController: homeController)
        let navigationController2 = SutoNavigationController(rootViewController: topStreamController)
        
        self.viewControllers = [navigationController1, navigationController2]
        
        self.setUpTabbarItems()
        
        // Listen tokens refresh token outdated in here
        // NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(self.dynamicType.handleExpiredRefreshTokenNotification(_:)), name: WebServicesRefreshTokenExpiredNotificationKey, object: nil)
        
    }
    
    func setUpTabbarItems() {
        guard let items = self.tabBar.items else {
            return
        }
        
        //Add bar into tab bar
        
        let tabbarItemInset : CGFloat = -6
        
//        let discoveryIcon = UIImage.tabbarDiscoveryIcon(size: CGSize(width: 25, height: 25), color: normalColor)
//        let discoveryIconSelected = UIImage.tabbarDiscoveryIcon(size: CGSize(width: 25, height: 25), color: selectedColor)
//        
//        let conversationIcon = UIImage.tabbarConversationIcon(size: CGSize(width: 25, height: 25), color: normalColor)
//        let conversationIconSelected = UIImage.tabbarConversationIcon(size: CGSize(width: 25, height: 25), color: selectedColor)
        
        for (index, item) in items.enumerate() {
            //item.titlePositionAdjustment = UIOffsetMake(0, 49)
            //item.imageInsets = UIEdgeInsets(top: -tabbarItemInset, left: 0, bottom: tabbarItemInset, right: 0)
            if index == 0 {
                item.setTitleTextAttributes([NSForegroundColorAttributeName : AppConstant.AppWhite], forState: .Selected)
                item.title = "Games"
//                item.image = discoveryIcon.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
//                item.selectedImage = discoveryIconSelected.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
            }
            else if index == 1 {
                item.setTitleTextAttributes([NSForegroundColorAttributeName : AppConstant.AppWhite], forState: .Selected)
                item.title = "Streams"
//                item.image = conversationIcon.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
//                item.selectedImage = conversationIconSelected.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
            }
//            else if index == 2 {
//                item.image = timelineIcon.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
//                item.selectedImage = timelineIconSelected.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
//            }
//            else if index == 3 {
//                item.image = notificationIcon.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
//                item.selectedImage = notificationIconSelected.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
//            }
//            else if index == 4 {
//                item.image = profileIcon.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
//                item.selectedImage = profileIconSelected.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
//            }
        }
    }
    
    override func loadView() {
        super.loadView()
        self.setUpTabbarItems()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.layer.shadowOpacity = 0.8
        self.tabBar.barTintColor = AppConstant.AppColor
        self.tabBar.translucent = false
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if let selected = selectedViewController {
            return selected.supportedInterfaceOrientations()
        }
        return super.supportedInterfaceOrientations()
    }
    override func shouldAutorotate() -> Bool {
        if let selected = selectedViewController {
            return selected.shouldAutorotate()
        }
        return super.shouldAutorotate()
    }
}

//MARK: UITabbarViewControllerDelegate
extension SutoTabBarController {
    func tabBarController(tabBarController: UITabBarController, didSelectViewController viewController: UIViewController) {
        if _oldSelectedIndex == tabBarController.selectedIndex {
            if let navigationController = viewController as? UINavigationController {
                if navigationController.viewControllers.count == 1 {
                    if let currentViewController = navigationController.viewControllers[0] as? TabbarItemDelegate {
                        currentViewController.viewControllerScrollViewGoesToTop()
                    }
                }
            }
        }
        
        _oldSelectedIndex = tabBarController.selectedIndex
    }
}