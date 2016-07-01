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
import SRKControls

class SettingViewController : UIViewController, UITableViewDelegate, UITableViewDataSource, UIImagePickerControllerDelegate, UITextFieldDelegate, SRKComboBoxDelegate
{
    
    var tableView : UITableView!
    var comboBox : SRKComboBox!
    
    var chatEnabled : Bool = true
    var notification : Bool = true
    
    private let _sections = [
        ["Video Quality", "Notification", "Chat Enable"]
    ]
    
    let videoQualities = ["Source", "High", "Medium", "Low", "Mobile"]
    
    
    override func viewDidLoad() {
        
        if let navigationController = self.navigationController {
            navigationController.navigationBar.tintColor = AppConstant.AppWhite
            
            //Done button
            let doneButton = UIBarButtonItem(title: "Done", style: .Done, target: self, action: #selector(SettingViewController.DoneDidPressed))
            self.navigationItem.rightBarButtonItem = doneButton
            
            self.navigationItem.title = "Top games"
        }
        
        
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
    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return .Portrait
    }
    
    
    func notificationChanged(toggleSwitch : UISwitch) {
        notification = toggleSwitch.on
    }
    
    func chatEnableChanged(toggleSwitch : UISwitch) {
        chatEnabled = toggleSwitch.on
    }
    
    func DoneDidPressed() {
        // Save setting
        AppDelegate.SutoAppSetting.Notification = notification
        AppDelegate.SutoAppSetting.ChatEnable = chatEnabled
        
        AppDelegate.SutoAppSetting.SaveSetting()
        // Navigate back
        self.navigationController?.popViewControllerAnimated(true)
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
            cell.comboBox.delegate = self
            cell.comboBox.delegateForComboBox = self
            if(cell.comboBox.text?.isEmpty == true) {
                cell.comboBox.text = videoQualities[2]
            }
            self.comboBox = cell.comboBox
            
//            cell.dropDown.dataSource = videoQualities
//            cell.dropDown.direction = .Bottom
//            cell.dropDown.bottomOffset = CGPoint(x: 0, y:cell.dropDown.anchorView!.bounds.height)
//            cell.dropDown.selectionAction = {(index: Int, item: String) in
//                cell.videoQuality?.text = item
//            }
//            // TODO: Replace with correct value from setting
//            cell.videoQuality.text = "High"
            cell.textLabel?.text = _sections[0][0]
            cell.selectionStyle = UITableViewCellSelectionStyle.None
            return cell
        case 1:
            let cell = tableView.dequeueReusableCellWithIdentifier("notificationIdentifier") as! NotificationCell
            cell.textLabel?.text = _sections[0][1]
            cell.toggleSwitch.on = AppDelegate.SutoAppSetting.Notification
            cell.toggleSwitch.actionsForTarget(self, forControlEvent: .ValueChanged)
            cell.toggleSwitch.addTarget(self, action: #selector(SettingViewController.notificationChanged(_:)), forControlEvents: .ValueChanged)
            cell.selectionStyle = UITableViewCellSelectionStyle.None
            return cell
        case 2:
            let cell = tableView.dequeueReusableCellWithIdentifier("chatEnableIdentifier") as! ChatEnableCell
            cell.textLabel?.text = _sections[0][2]
            cell.toggleSwitch.on = AppDelegate.SutoAppSetting.ChatEnable
            cell.toggleSwitch.addTarget(self, action: #selector(SettingViewController.chatEnableChanged(_:)), forControlEvents: .ValueChanged)
            cell.selectionStyle = UITableViewCellSelectionStyle.None
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 54
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

    }
}

extension SettingViewController {
    //MARK:- UITextFieldDelegate
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        if let txt = textField as? SRKComboBox {
            txt.delegateForComboBox = self
            txt.showOptions()
            return false
        }
        return true
    }
    
    //MARK:- SRKComboBoxDelegate
    
    func comboBox(textField:SRKComboBox, didSelectRow row:Int) {
        if textField == self.comboBox {
            self.comboBox.text = self.videoQualities[row]
        }
    }
    
    func comboBoxNumberOfRows(textField:SRKComboBox) -> Int {
        if textField == self.comboBox {
            return self.videoQualities.count
        } else {
            return 0
        }
    }
    
    func comboBox(textField:SRKComboBox, textForRow row:Int) -> String {
        if textField == self.comboBox {
            return self.videoQualities[row]
        } else {
            return ""
        }
    }
    
    func comboBoxPresentingViewController(textField:SRKComboBox) -> UIViewController {
        return self
    }
    
    func comboBoxRectFromWhereToPresent(textField:SRKComboBox) -> CGRect {
        return textField.frame
    }
    
    func comboBoxFromBarButton(textField:SRKComboBox) -> UIBarButtonItem? {
        return nil
    }
    
    func comboBoxTintColor(textField:SRKComboBox) -> UIColor {
        return UIColor.blackColor()
    }
    
    func comboBoxToolbarColor(textField:SRKComboBox) -> UIColor {
        return UIColor.whiteColor()
    }
    
    func comboBoxDidTappedCancel(textField:SRKComboBox) {

    }
    
    func comboBoxDidTappedDone(textField:SRKComboBox) {
        print("Let's do some action here")
    }
}

