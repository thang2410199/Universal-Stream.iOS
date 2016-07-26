//
//  ProfileViewController.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on 7/18/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import UIKit
import PureLayout
import DZNEmptyDataSet
import BFPaperButton

class ProfileViewController : UIViewController, UITableViewDelegate, UITableViewDataSource, DZNEmptyDataSetSource, DZNEmptyDataSetDelegate {
    let PROFILE_SECTION = 0
    var tableView : UITableView!
    var refreshControl : UIRefreshControl!
    var settingButton : BFPaperButton!
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    let profileCellIdentifier = "profileIdentifier"
    let streamCellIdentifier = "streamIdentifier"
    
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func viewDidLoad() {
        self.navigationItem.title = "thang2410199"
        
        //extend the view to screen
        //self.edgesForExtendedLayout = .All
        
        self.tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: streamCellIdentifier)
        self.tableView.separatorStyle = .None
        self.tableView.separatorColor = AppConstant.Transparent
        tableView.backgroundColor = AppConstant.AppWhite
        tableView.backgroundView?.backgroundColor = AppConstant.TwitchDarkGray
        
        self.tableView.emptyDataSetSource = self;
        self.tableView.emptyDataSetDelegate = self;
        
        self.tableView.tableHeaderView = SideMenuProfile(frame: CGRect(x: 0, y: 0, width: AppConstant.AppWidth, height: 200))
        
        //self.tableView.tableFooterView = UIView(frame: CGRectZero)
        
        self.tableView.backgroundColor = AppConstant.Transparent
        self.view.backgroundColor = AppConstant.AppColor
        
        settingButton = BFPaperButton(raised: false)
        settingButton.backgroundColor = AppConstant.AppColor
        settingButton.setTitleColor(AppConstant.AppWhite, forState: .Normal)
        settingButton.setTitle("Setting", forState: .Normal)
        settingButton.setImage(UIImage.settingIcon(size: CGSize(width: 25, height: 25), color: AppConstant.AppWhite), forState: .Normal)
        settingButton.cornerRadius = 0
        settingButton.addTarget(self, action: #selector(SideMenuViewController.onSettingTapped), forControlEvents: .TouchUpInside)
        settingButton.layer.zPosition = 1
        
        //Layout
        self.view.addSubview(tableView)
        self.view.addSubview(settingButton)
        
        tableView.autoPinEdgesToSuperviewEdges()
        
        
        
        settingButton.autoPinEdgeToSuperviewEdge(.Bottom)
        settingButton.autoSetDimension(.Height, toSize: 49)
        settingButton.autoMatchDimension(.Width, toDimension: .Width, ofView: self.view)
    }
    
    func onSettingTapped() -> Void {
        // Navigate to Setting
        let controller : SettingViewController? = getInstance()
        let navigationViewController = SutoNavigationController(rootViewController: controller!)
        
        self.presentViewController(navigationViewController, animated: true, completion: nil)
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
}

//MARK DZNEmptyDataSetDelegate
extension ProfileViewController {
    func emptyDataSetShouldBeForcedToDisplay(scrollView: UIScrollView!) -> Bool {
        return false
    }
    
    func titleForEmptyDataSet(scrollView: UIScrollView!) -> NSAttributedString! {
        let font = UIFont.boldSystemFontOfSize(16)
        return NSAttributedString(string: "All of your following are offline", attributes: [NSFontAttributeName: font])
    }
    
    func descriptionForEmptyDataSet(scrollView: UIScrollView!) -> NSAttributedString! {
        return NSAttributedString(string: "we automatically put content here when your following are live again")
    }
    
    func offsetForEmptyDataSet(scrollView: UIScrollView!) -> CGPoint {
        return CGPoint(x: 300, y: 300)
    }
}

//MARK UITableViewDelegate
extension ProfileViewController {
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier(streamCellIdentifier)
        
        // fake followed live stream
        cell?.textLabel?.text = "Stream #\(indexPath.row)"
        return cell!
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        // TODO: Handle it better ?
        if(scrollView.contentOffset.y >= 300) {
            
        }
    }
}
