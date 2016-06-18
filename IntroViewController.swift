//
//  IntroViewController.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on May/30/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import UIKit
import FlowSlideMenu
import MSDynamicsDrawerViewController

class IntroViewController : UIPageViewController, UIScrollViewDelegate {
    var scroller : UIScrollView!
    
    private lazy var orderedViewControllers: [UIViewController] =
        [self.getSubView(1),
         self.getSubView(2),
         self.getSubView(3)]
    
    private func getSubView(surffix: Int) -> UIViewController {
        switch surffix {
            case 1:
                return IntroOneViewController()
            case 2:
                return IntroTwoViewController()
            case 3:
                return IntroThreeViewController()
            default:
                return ViewController()
        }
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        for view in self.view.subviews {
            if view.isKindOfClass(UIScrollView) {
                let fullFrame = CGRect(x: 0, y: 0, width: view.frame.width, height: UIScreen.mainScreen().bounds.height)
                view.frame = fullFrame
            } else if view.isKindOfClass(UIPageControl) {
                view.backgroundColor = UIColor.clearColor()
                view.userInteractionEnabled = false
            }
        }
    }
    
    override func viewDidLoad() {
        self.view.backgroundColor = AppConstant.AppColor
        for v in self.view.subviews{
            if v.isKindOfClass(UIScrollView){
                scroller = (v as! UIScrollView)
                scroller.delegate = self
            }
        }
        
        dataSource = self
        
        if let firstViewController = orderedViewControllers.first {
            setViewControllers([firstViewController],
                               direction: .Forward,
                               animated: true,
                               completion: nil)
        }
        
        let skipButton = UIButton(frame: CGRect(x: self.view.bounds.size.width - 80, y: self.view.bounds.size.height - 40, width: 80, height: 40))
        skipButton.addTarget(self, action: #selector(IntroViewController.onSkip), forControlEvents: .TouchUpInside)
        skipButton.setTitle("Skip", forState: .Normal)
        skipButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        skipButton.backgroundColor = UIColor.clearColor()
        skipButton.layer.zPosition = 1
        self.view.addSubview(skipButton)

    }
    
    func onSkip()
    {
        let controller : SWRevealViewController? = getInstance()
        
//        let leftView = SideMenuViewController()
//        let mainView = SutoTabBarController()
//        
//        let controller = MSDynamicsDrawerViewController()
//        controller.paneViewController = mainView
//        controller.setDrawerViewController(leftView, forDirection: .Left)
//        controller.setRevealWidth(300, forDirection: .Left)
        
        let window = UIApplication.sharedApplication().windows[0] as UIWindow
        UIView.transitionFromView(
            self.view,
            toView: controller!.view,
            duration: 0.5,
            options: UIViewAnimationOptions.TransitionFlipFromLeft,
            completion: {
                finished in window.rootViewController = controller
        })
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        //scrollView.contentOffset
    }
    
    /**
     Scrolls to the next view controller.
     */
    func scrollToNextViewController() {
        if let visibleViewController = viewControllers?.first,
            let nextViewController = pageViewController(self,
                                                        viewControllerAfterViewController: visibleViewController) {
            scrollToViewController(nextViewController)
        }
    }
    
    /**
     Scrolls to the view controller at the given index. Automatically calculates
     the direction.
     
     - parameter newIndex: the new index to scroll to
     */
    func scrollToViewController(index newIndex: Int) {
        if let firstViewController = viewControllers?.first,
            let currentIndex = orderedViewControllers.indexOf(firstViewController) {
            let direction: UIPageViewControllerNavigationDirection = newIndex >= currentIndex ? .Forward : .Reverse
            let nextViewController = orderedViewControllers[newIndex]
        
            scrollToViewController(nextViewController, direction : direction)
        }
    }
    
    /**
     Scrolls to the given 'viewController' page.
     
     - parameter viewController: the view controller to show.
     */
    private func scrollToViewController(viewController: UIViewController,
                                        direction: UIPageViewControllerNavigationDirection = .Forward) {
        setViewControllers([viewController],
                           direction: direction,
                           animated: true,
                           completion: { (finished) -> Void in
                            // Setting the view controller programmatically does not fire
                            // any delegate methods, so we have to manually notify the
                            // 'tutorialDelegate' of the new index.
                            //self.notifyTutorialDelegateOfNewIndex()
        })
    }

    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return orderedViewControllers.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        guard let firstViewController = viewControllers?.first,
            firstViewControllerIndex = orderedViewControllers.indexOf(firstViewController) else {
                return 0
        }
        
        return firstViewControllerIndex
    }
}

// MARK: UIPageViewControllerDataSource

extension IntroViewController : UIPageViewControllerDataSource {
    
    func pageViewController(pageViewController: UIPageViewController,
                            viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedViewControllers.indexOf(viewController) else {
            return nil
        }
        
        if(viewControllerIndex == 0)
        {
            self.view.backgroundColor = AppConstant.AppColor
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else {
            return nil
        }
        
        guard orderedViewControllers.count > previousIndex else {
            return nil
        }
        
        return orderedViewControllers[previousIndex]
    }
    
    func pageViewController(pageViewController: UIPageViewController,
                            viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedViewControllers.indexOf(viewController) else {
            return nil
        }
        
        if(viewControllerIndex == orderedViewControllers.count - 1)
        {
            self.view.backgroundColor = AppConstant.TwitchDarkGray
        }
        
        let nextIndex = viewControllerIndex + 1
        
        guard nextIndex < orderedViewControllers.count else {
            return nil
        }
        
        return orderedViewControllers[nextIndex]
    }
    
}