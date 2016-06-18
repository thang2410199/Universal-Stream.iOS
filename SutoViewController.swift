//
//  SutoViewController.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on May/27/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import UIKit

extension CGSize{
    static var screenWidth : CGFloat{
        return (UIScreen.mainScreen().bounds.size.width)
    }
    
    static var screenHeight : CGFloat{
        return (UIScreen.mainScreen().bounds.size.height)
    }
    
    static var screenWidthRatioWith320 : CGFloat {
        return CGSize.screenWidth/320
    }
}

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.Plain, target:nil, action:nil)
    }
}

class TableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.Plain, target:nil, action:nil)
    }
}

class CollectionViewController: UICollectionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.Plain, target:nil, action:nil)
    }
}