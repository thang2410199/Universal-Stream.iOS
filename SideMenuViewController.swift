//
//  SideMenuViewController.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on 6/10/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import UIKit
import DZNEmptyDataSet
import PureLayout

class SideMenuViewController : UIViewController, UITableViewDelegate, UITableViewDataSource, DZNEmptyDataSetSource, DZNEmptyDataSetDelegate {
    let PROFILE_SECTION = 0
    var tableView : UITableView!
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    let profileCellIdentifier = "profileIdentifier"
    let streamCellIdentifier = "streamIdentifier"
    
    override func viewDidLoad() {
        self.tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: streamCellIdentifier)
        self.tableView.separatorStyle = .None
        self.tableView.separatorColor = AppConstant.Transparent
        
        self.tableView.emptyDataSetSource = self;
        self.tableView.emptyDataSetDelegate = self;
        
        self.tableView.tableHeaderView = SideMenuProfile(frame: CGRect(x: 0, y: 0, width: 300, height: 200))
        
        //self.tableView.tableFooterView = UIView(frame: CGRectZero)
        
        self.tableView.backgroundColor = AppConstant.Transparent
        self.view.backgroundColor = AppConstant.AppColor
        
        //Layout
        self.view.addSubview(tableView)
        
        tableView.autoMatchDimension(.Height, toDimension: .Height, ofView: self.view)
        tableView.autoSetDimension(.Width, toSize: 300)
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
}

//MARK DZNEmptyDataSetDelegate
extension SideMenuViewController {
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
extension SideMenuViewController {

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
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