//
//  AppDelegate.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on May/19/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import UIKit
import CoreData
import Swinject
import FlowSlideMenu
import DualSlideMenu
import MSDynamicsDrawerViewController
import DropDown
import ObjectMapper

let oauth2NotificationKey = "AppLaunchedWithURLNotification"

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let container : Container = Container(registeringClosure: serviceLocate)
    static var IsRunning = false
    static var CurrentApp : AppDelegate!
    static var AppSetting : ISetingAdapter!
    static var SutoAppSetting : SutoStreamSetting!

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        AppDelegate.SutoAppSetting = SutoStreamSetting.LoadSetting()
        
        AppDelegate.CurrentApp = self
        AppDelegate.IsRunning = true

        SetupApp()
        return true
    }
    
    func application(app: UIApplication, openURL url: NSURL, options: [String : AnyObject]) -> Bool {
        if(!AppDelegate.IsRunning) {
            SetupApp()
        }
        
        if (url.host == "sutostream") {
            let notification = NSNotification(name: oauth2NotificationKey,
                                              object:nil,
                                              userInfo:[UIApplicationLaunchOptionsURLKey:url])
            NSNotificationCenter.defaultCenter().postNotification(notification)
        }
        return true
    }
    
    func application(application: UIApplication, openURL url: NSURL, sourceApplication: String?, annotation: AnyObject) -> Bool {
        if(!AppDelegate.IsRunning) {
            SetupApp()
        }
        
        let notification = NSNotification(name: oauth2NotificationKey,
                                          object:nil,
                                          userInfo:[UIApplicationLaunchOptionsURLKey:url])
        NSNotificationCenter.defaultCenter().postNotification(notification)
        
        return true
    }
    
    func SetupApp(){
        UINavigationBar.appearance().barTintColor = AppConstant.AppColor
        let window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window.backgroundColor = UIColor.whiteColor()
        window.makeKeyAndVisible()
        window.rootViewController =  getControllerForLaunching()
        DropDown.startListeningToKeyboard()
        self.window = window
    }
    
    func getControllerForLaunching() -> UIViewController!
    {
        AppDelegate.AppSetting = getInstance()
        // Change it later to skip the intro screen after first time
        if(AppDelegate.AppSetting.OpenFistTime())
        {
            AppDelegate.AppSetting.SetValue(false, key: AppConstant.FirstTimeOpen)
            return IntroViewController(transitionStyle: .Scroll, navigationOrientation: .Horizontal, options: nil)
        }
        else
        {
            let controller : SWRevealViewController? = getInstance()
            
//            let controller = MSDynamicsDrawerViewController()
//            controller.paneViewController = mainView
//            controller.setDrawerViewController(leftView, forDirection: .Left)
//            controller.addStyler(MSDynamicsDrawerParallaxStyler(), forDirection: .Left)
//            controller.setRevealWidth(300, forDirection: .Left)
            
//            let controller = DualSlideMenuViewController(mainViewController: mainView, leftMenuViewController: leftView)
//            controller.addSwipeGestureInSide(leftView, direction: .Left)
//            controller.leftSideOffset = 300
//            controller.rightSideOffset = 300
//            FlowCurveOptions.animation_reveal = 0
//            FlowCurveOptions.animation_open = 0.01
//            FlowCurveOptions.bgColor = AppConstant.AppColor
//            FlowSlideMenuOptions.animationDuration = 0.01
//            
//            FlowSlideMenuOptions.leftViewWidth = 300
//            
//            let flowController = LLFlowSlideMenuVC(
//                mainViewController: SutoTabBarController(),
//                leftViewController: IntroViewController(transitionStyle: .Scroll, navigationOrientation: .Horizontal, options: nil))
//            
            //return SutoTabBarController()
            return controller!
        }
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        AppDelegate.SutoAppSetting.SaveSetting()
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        // Saves changes in the application's managed object context before the application terminates.
        AppDelegate.SutoAppSetting.SaveSetting()
        self.saveContext()
    }

    // MARK: - Core Data stack

    lazy var applicationDocumentsDirectory: NSURL = {
        // The directory the application uses to store the Core Data store file. This code uses a directory named "owned.Suto_Stream" in the application's documents Application Support directory.
        let urls = NSFileManager.defaultManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)
        return urls[urls.count-1]
    }()

    lazy var managedObjectModel: NSManagedObjectModel = {
        // The managed object model for the application. This property is not optional. It is a fatal error for the application not to be able to find and load its model.
        let modelURL = NSBundle.mainBundle().URLForResource("Suto_Stream", withExtension: "momd")!
        return NSManagedObjectModel(contentsOfURL: modelURL)!
    }()

    lazy var persistentStoreCoordinator: NSPersistentStoreCoordinator = {
        // The persistent store coordinator for the application. This implementation creates and returns a coordinator, having added the store for the application to it. This property is optional since there are legitimate error conditions that could cause the creation of the store to fail.
        // Create the coordinator and store
        let coordinator = NSPersistentStoreCoordinator(managedObjectModel: self.managedObjectModel)
        let url = self.applicationDocumentsDirectory.URLByAppendingPathComponent("SingleViewCoreData.sqlite")
        var failureReason = "There was an error creating or loading the application's saved data."
        do {
            try coordinator.addPersistentStoreWithType(NSSQLiteStoreType, configuration: nil, URL: url, options: nil)
        } catch {
            // Report any error we got.
            var dict = [String: AnyObject]()
            dict[NSLocalizedDescriptionKey] = "Failed to initialize the application's saved data"
            dict[NSLocalizedFailureReasonErrorKey] = failureReason

            dict[NSUnderlyingErrorKey] = error as NSError
            let wrappedError = NSError(domain: "YOUR_ERROR_DOMAIN", code: 9999, userInfo: dict)
            // Replace this with code to handle the error appropriately.
            // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            NSLog("Unresolved error \(wrappedError), \(wrappedError.userInfo)")
            abort()
        }
        
        return coordinator
    }()

    lazy var managedObjectContext: NSManagedObjectContext = {
        // Returns the managed object context for the application (which is already bound to the persistent store coordinator for the application.) This property is optional since there are legitimate error conditions that could cause the creation of the context to fail.
        let coordinator = self.persistentStoreCoordinator
        var managedObjectContext = NSManagedObjectContext(concurrencyType: .MainQueueConcurrencyType)
        managedObjectContext.persistentStoreCoordinator = coordinator
        return managedObjectContext
    }()

    // MARK: - Core Data Saving support

    func saveContext () {
        if managedObjectContext.hasChanges {
            do {
                try managedObjectContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                NSLog("Unresolved error \(nserror), \(nserror.userInfo)")
                abort()
            }
        }
    }

}

