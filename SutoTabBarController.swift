//
//  SutoTabBarController.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on May/25/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import UIKit
import SideMenu

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
    var _bar : UIView!
    
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
        
        
        let homeViewModel = AppDelegate.CurrentApp.container.resolve(HomeViewModeling.self)
        let homeController = HomeCollectionViewController(viewModel: homeViewModel)
        
        let topStreamController = TopStreamListController()
        
        let searchViewController = SearchViewController()
        let profileViewController = ProfileViewController()
        
        let navigationController1 = SutoNavigationController(rootViewController: homeController)
        let navigationController2 = SutoNavigationController(rootViewController: topStreamController)
        
        let navigationController3 = SutoNavigationController(rootViewController: searchViewController)
        let navigationController4 = SutoNavigationController(rootViewController: profileViewController)
        
        self.viewControllers = [navigationController1, navigationController2, navigationController3, navigationController4]
        
        self.setUpTabbarItems()
        
//        // Define the menus
//        let menuLeftNavigationController = UISideMenuNavigationController(rootViewController: SideMenuViewController())
//        menuLeftNavigationController.leftSide = true
//        // UISideMenuNavigationController is a subclass of UINavigationController, so do any additional configuration of it here like setting its viewControllers.
//        SideMenuManager.menuLeftNavigationController = menuLeftNavigationController
//        
//        //let menuRightNavigationController = UISideMenuNavigationController()
//        // UISideMenuNavigationController is a subclass of UINavigationController, so do any additional configuration of it here like setting its viewControllers.
//        //SideMenuManager.menuRightNavigationController = menuRightNavigationController
//        SideMenuManager.menuWidth = 300
//        
//        // Enable gestures. The left and/or right menus must be set up above for these to work.
//        // Note that these continue to work on the Navigation Controller independent of the View Controller it displays!
//        //SideMenuManager.menuAddPanGestureToPresent(toView: self.navigationController!.navigationBar)
//        var gestureRecognizer = SideMenuManager.menuAddScreenEdgePanGesturesToPresent(toView: self.view)
//        gestureRecognizer[0].addTarget(self, action:#selector(SutoTabBarController.handlePresentMenuPan(_:)))
//        SideMenuManager.menuFadeStatusBar = false
//        SideMenuManager.menuParallaxStrength = 2
//        SideMenuManager.menuPresentMode = .ViewSlideOut
        //        SideMenuManager.menuAnimationFadeStrength = 1
        //        SideMenuManager.menuShadowRadius = 0
        //        SideMenuManager.menuShadowOpacity = 0
        //        SideMenuManager.menuShadowColor = UIColor.clearColor()
        
        // Listen tokens refresh token outdated in here
        // NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(self.dynamicType.handleExpiredRefreshTokenNotification(_:)), name: WebServicesRefreshTokenExpiredNotificationKey, object: nil)
        
    }
    
    func handlePresentMenuPan(sender : UIPanGestureRecognizer) -> Void {
        
        guard let menuView = SideMenuManager.menuLeftNavigationController != nil ? SideMenuManager.menuLeftNavigationController?.view : sender.view else {
            return
        }
        
        //let transform = menuView.transform
        //menuView.transform = CGAffineTransformIdentity
        let translation = sender.translationInView(sender.view!)
        let distance = translation.x / SideMenuManager.menuWidth
        //menuView.transform = transform
        
        
        if sender.state == UIGestureRecognizerState.Began{
            
        }else{
            if sender.state == UIGestureRecognizerState.Changed{
                
                
            } else {
                if sender.state == UIGestureRecognizerState.Ended{
                    
                }
            }
        }
        
    }
    
    func setUpTabbarItems() {
        guard let items = self.tabBar.items else {
            return
        }
        
        //Add bar into tab bar
        _bar = UIView(frame: CGRect(x: 0, y: self.tabBar.frame.size.height - 49, width: self.tabBar.frame.width/CGFloat(items.count), height: 49))
        _bar.backgroundColor = AppConstant.AppColor
        _bar.autoresizingMask = [UIViewAutoresizing.FlexibleWidth]
        _bar.userInteractionEnabled = false
        self.tabBar.addSubview(_bar)
        
        
        let tabbarItemInset : CGFloat = 5
        
        //        let discoveryIcon = UIImage.tabbarDiscoveryIcon(size: CGSize(width: 25, height: 25), color: normalColor)
        //        let discoveryIconSelected = UIImage.tabbarDiscoveryIcon(size: CGSize(width: 25, height: 25), color: selectedColor)
        //
        
        
        let gameIcon = UIImage.gameIcon(size: CGSize(width: 21, height: 20), color: AppConstant.AppColor)
        let gameIconSelected = UIImage.gameIcon(size: CGSize(width: 21, height: 20), color: AppConstant.AppWhite)
        
        let streamIcon = UIImage.streamIcon(size: CGSize(width: 30, height: 20), color: AppConstant.AppColor)
        let streamIconSelected = UIImage.streamIcon(size: CGSize(width: 30, height: 20), color: AppConstant.AppWhite)
        
        let searchIcon = UIImage.searchIcon(size: CGSize(width: 25, height: 25), color: AppConstant.AppColor)
        let searchIconSelected = UIImage.searchIcon(size: CGSize(width: 25, height: 25), color: AppConstant.AppWhite)
        
        let profileIcon = UIImage.profileIcon (size: CGSize(width: 20, height: 24), color: AppConstant.AppColor)
        let profileIconSelected = UIImage.profileIcon(size: CGSize(width: 20, height: 24), color: AppConstant.AppWhite)
        
        
        
        for (index, item) in items.enumerate() {
            //item.titlePositionAdjustment = UIOffsetMake(0, 49)
            //item.imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: 3, right: 0)
            if index == 0 {
                item.setTitleTextAttributes([NSForegroundColorAttributeName : AppConstant.AppWhite], forState: .Selected)
                item.title = "Games"
                item.image = gameIcon.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
                item.selectedImage = gameIconSelected.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
            }
            else if index == 1 {
                item.setTitleTextAttributes([NSForegroundColorAttributeName : AppConstant.AppWhite], forState: .Selected)
                item.title = "Streams"
                item.image = streamIcon.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
                item.selectedImage = streamIconSelected.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
            }
            else if index == 2 {
                item.title = "Search"
                item.setTitleTextAttributes([NSForegroundColorAttributeName : AppConstant.AppWhite], forState: .Selected)
                item.image = searchIcon.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
                item.selectedImage = searchIconSelected.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
            }
            else if index == 3 {
                item.title = "Profile"
                item.setTitleTextAttributes([NSForegroundColorAttributeName : AppConstant.AppWhite], forState: .Selected)
                item.image = profileIcon.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
                item.selectedImage = profileIconSelected.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
            }
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
        self.tabBar.barTintColor = AppConstant.TwitchLightGray
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
        
        _bar.frame.origin.x = CGFloat(_oldSelectedIndex) * _bar.frame.size.width
    }
}
