//
//  SettingViewController.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on 6/15/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import PureLayout
import UIKit

class SettingViewController : UIViewController, UITableViewDelegate, UITableViewDataSource, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var tableView : UITableView!
    
    private let _sections = [
        ["Video Quality", "Notification", "Chat Enable"]
    ]
    
    
    override func viewDidLoad() {
        tableView = UITableView()
        
        tableView.registerClass(VideoQualityCell.self, forCellReuseIdentifier: "videoQualityIdentifier")
        tableView.registerClass(NotificationCell.self, forCellReuseIdentifier: "notificationIdentifier")
        tableView.registerClass(ChatEnableCell.self, forCellReuseIdentifier: "chatEnableIdentifier")
        //tableView.separatorStyle = .None
        tableView.dataSource = self
        tableView.delegate = self
        
        self.navigationItem.title = "Settings"
        //self.hidesBottomBarWhenPushed = true
        self.view.backgroundColor = AppConstant.AppWhite

        //Layout
        self.view.addSubview(tableView)
        
        tableView.tableFooterView = UIView()
        tableView.autoPinEdgesToSuperviewEdges()
        
        
        tableView.reloadData()
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    func notificationChanged(toggleSwitch : UISwitch) {
        let value = toggleSwitch.on
        AppDelegate.AppSetting.SetValue(value, key: "testNotification")
    }
    
    func chatEnableChanged(toggleSwitch : UISwitch) {
        let value = toggleSwitch.on
        AppDelegate.AppSetting.SetValue(value, key: "testChat")
    }
}

extension SettingViewController {
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return _sections.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return _sections[section].count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        switch (indexPath.row) {
        case 0:
            let cell = tableView.dequeueReusableCellWithIdentifier("videoQualityIdentifier") as! VideoQualityCell
            cell.textLabel?.text = _sections[0][0]
            return cell
        case 1:
            let cell = tableView.dequeueReusableCellWithIdentifier("notificationIdentifier") as! NotificationCell
            cell.textLabel?.text = _sections[0][1]
            let noti : Bool? = AppDelegate.AppSetting.GetValue("testNotification")
            if let notiRaw = noti {
                cell.toggleSwitch.on = notiRaw
            }

            cell.toggleSwitch.actionsForTarget(self, forControlEvent: .ValueChanged)
            cell.toggleSwitch.addTarget(self, action: #selector(SettingViewController.notificationChanged(_:)), forControlEvents: .ValueChanged)
            return cell
        case 2:
            let cell = tableView.dequeueReusableCellWithIdentifier("chatEnableIdentifier") as! ChatEnableCell
            cell.textLabel?.text = _sections[0][2]
            cell.toggleSwitch.addTarget(self, action: #selector(SettingViewController.chatEnableChanged(_:)), forControlEvents: .ValueChanged)
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 54
    }
}