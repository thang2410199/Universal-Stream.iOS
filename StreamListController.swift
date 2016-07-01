//
//  StreamListViewModel.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on May/24/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import UIKit
import SDWebImage
import Preheat
import ReactiveCocoa
import Spring
import pop

public class StreamListController : UITableViewController, UIGestureRecognizerDelegate {
    var initialized = false
    
    var viewModel : StreamListViewModel
    var preheatController: PreheatController<UITableView>!
    
    var loadedIndex = 0
    
    let streamCellIdentifier = "TwitchStreamCell";
    public var topGame : TwitchTopGame?
    
    var customButton : UIBarButtonItem!
    
    public init()
    {
        viewModel = getInstance()!
        super.init(nibName: nil, bundle: nil)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        viewModel = getInstance()!
        super.init(coder : aDecoder)
    }
    
    public override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return .Portrait
    }
    
    override public func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        

//        else
//        {
//            if let navigationController = self.navigationController {
//                //navigationController.navigationBarHidden = true
//                navigationController.hidesBarsOnSwipe = true
//                navigationController.navigationBar.tintColor = AppConstant.AppWhite
//                self.navigationItem.title = "Top Streams"
//            }
//        }
    }
    var process : UIActivityIndicatorView!
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.registerClass(StreamCell.self, forCellReuseIdentifier: streamCellIdentifier)
        self.tableView.separatorStyle = .None
        self.tableView.separatorColor = UIColor.clearColor()
        //self.tableView.estimatedRowHeight = StreamCell.ImageHeight
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title:"<", style:.Plain, target:self, action: #selector(StreamListController.backButtonHit))
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        //self.tabBarController?.hidesBottomBarWhenPushed = true
        
        let footer = TableFooter(frame: CGRect(x: 0, y: 0, width: 0, height: 100))
        process = UIActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        process.tintColor = AppConstant.AppColor
        process.translatesAutoresizingMaskIntoConstraints = false
        footer.addSubview(process)
        //process.startAnimating()
        //process.autoSetDimensionsToSize(CGSize(width: 40,height: 40))
        //process.autoCenterInSuperview()
        
        footer.backgroundColor = AppConstant.Transparent
        self.tableView.tableFooterView = footer;
        
        if(!initialized)
        {
            self.navigationController?.interactivePopGestureRecognizer?.delegate = self
            self.viewModel.streamService.SetParameter("stream_type", value: "live")
            if let game = topGame {
                //self.navigationController?.navigationBar.topItem?.title = game.game?.name
                //self.navigationController?.title = game.game?.name
                //self.navigationItem.title = game.game?.name
                self.title = game.game?.name
                self.viewModel.streamService.SetParameter("game", value: EncodeUrl((game.game?.name)!))
            }
            
            self.refreshControl = UIRefreshControl()
            self.refreshControl!.layer.zPosition = -1
            self.refreshControl!.beginRefreshing()
            self.refreshControl!.addTarget(self, action: #selector(StreamListController.Refresh), forControlEvents: .ValueChanged)
            
            preheatController = PreheatController(view : self.tableView!)
            preheatController.enabled = true
            preheatController.handler = { [weak self] in
                self?.preheatWindowChanged(addedIndexPaths: $0, removedIndexPaths: $1)
            }
            
            self.viewModel.dataBinding.producer
                .observeOn(UIScheduler())
                .on(
                next : {
                    _ -> Void in
                    self.tableView.reloadData()
                    self.scrollViewDidScroll(self.tableView!)
                    //self.process.stopAnimating()
                    
            }).start()
            
            self.GetData(stopRefresher)
            initialized = true
        }

    }
    
    public func Refresh()
    {
        self.viewModel.Reset()
        GetData(stopRefresher)
    }
    
    func stopRefresher(){
        dispatch_async(dispatch_get_main_queue(), {
            self.refreshControl!.endRefreshing()
            self.refreshControl!.attributedTitle = NSAttributedString(string : "Pull to refresh")
        });
    }
    
    public override func willMoveToParentViewController(parent: UIViewController?) {
//        if(parent != nil) {
//            self.viewModel.Reset()
//        }
    }
    
    override public func viewDidAppear(animated: Bool) {
        
    }
    
    func GetData(onComplete : CompleteHandler)
    {
        self.viewModel.GetData({
            onComplete()
        })
    }
    
    @IBAction func backButtonHit()
    {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    override public func viewWillDisappear(animated: Bool) {
    }
    
    public override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
}

extension StreamListController {
    public override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row > loadedIndex {
            loadedIndex = indexPath.row
            PopAnimate(cell)
        }
        
    }
    
    public override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (viewModel.dataBinding.value.count)
    }
    
    public override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return StreamCell.RowHeight
    }
    
    public override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) ->
        UITableViewCell {
        //var temp = tableView.dequeueReusableCellWithIdentifier("testing")
        //temp?.textLabel?.text = "row \(indexPath.row)"
            
        //return temp!
            
        if(indexPath.row + 12 > viewModel.dataBinding.value.count && viewModel.isBusyBinding.value == false){
            process.startAnimating()
            self.GetData({})
        }
            
        let cell = tableView.dequeueReusableCellWithIdentifier(streamCellIdentifier, forIndexPath: indexPath) as! StreamCell
        if(indexPath.row < viewModel.dataBinding.value.count)
        {
            let stream = viewModel.dataBinding.value[indexPath.row]
            cell.viewModel = StreamCellViewModel(stream : stream)
        }
        cell.setBackgroundOffset(cell.frame.origin.y - self.tableView.contentOffset.y)
        return cell
    }
    
    public override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let stream = viewModel.dataBinding.value[indexPath.row]
        // Create viewmodel for player view
        let playerViewModel = AppDelegate.CurrentApp.container.resolve(PlayerViewModel.self)
        playerViewModel?.stream = stream
        
        let playerViewController = PlayerViewController()
        playerViewController.viewModel = playerViewModel
        
        // Navigate to player view
        self.navigationController?.pushViewController(playerViewController, animated: true)
    }
    
    // Preheat
    func preheatWindowChanged(addedIndexPaths added: [NSIndexPath], removedIndexPaths removed: [NSIndexPath]) {
        var urls : [String] = []
        
        for index in added {
            if let url = viewModel.dataBinding.value[index.row].preview?.medium {
                urls.append(url)
            }
        }
        
        SDWebImagePrefetcher.sharedImagePrefetcher().prefetchURLs(urls)
    }
    
    
    public override func scrollViewDidScroll(scrollView: UIScrollView) {
        if (scrollView == self.tableView) {
            for cell in self.tableView.visibleCells {
                let streamCell = cell as! StreamCell
                streamCell.setBackgroundOffset(scrollView.contentOffset.y - cell.frame.origin.y)
                
                
            }
        }
    }
}