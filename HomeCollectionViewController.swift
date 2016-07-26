//
//  HomeViewController.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on May/20/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import UIKit
import Foundation
import SideMenu

public final class HomeCollectionViewController : UICollectionViewController, TabbarItemDelegate {
    var initilized : Bool = false
    
    var hidingNavBarManager: HidingNavigationBarManager?
    
    let HEADER_SECTION = 0
    let GAME_SECTION = 1
    
    let streamListSegueIdentifier = "showListStreamFromGame"
    let gameCellIndentifier = "gameCellIndentifier"
    var selectedTopGame : TwitchTopGame? {
        didSet {
        }
    }
    
    public var viewModel: HomeViewModeling!
    
    var loadedIndex = 0
    
    public init(viewModel : HomeViewModeling?) {
        if let vm = viewModel {
            self.viewModel = vm
        }
        
        let layout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 8
        layout.sectionInset = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        
        super.init(collectionViewLayout: layout)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    public override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        hidingNavBarManager?.viewDidLayoutSubviews()
    }
    
    override public func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        hidingNavBarManager?.viewWillDisappear(animated)
    }
    
    //OnNavigatedTo
    public override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        hidingNavBarManager?.viewWillAppear(animated)
    }
    
    public override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    let refreshControl = UIRefreshControl()
    
    public override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return .Portrait
    }
    
    override public func viewDidLoad() {
        self.collectionView?.registerClass(TwitchGameCollectionCell.self, forCellWithReuseIdentifier: gameCellIndentifier)
        if let navigationController = self.navigationController {
            //navigationController.navigationBarHidden = true
            //navigationController.hidesBarsOnSwipe = true
            navigationController.navigationBar.tintColor = AppConstant.AppWhite
            
            hidingNavBarManager = HidingNavigationBarManager(viewController: self, scrollView: collectionView!)
            hidingNavBarManager?.manageBottomBar((self.tabBarController?.tabBar)!)
            
//            //Settings button
//            let settingsButton = HighLightButton(image: UIImage.settingIcon(size: CGSize(width: 25, height: 25), color: AppConstant.AppWhite), alignment: UIControlContentHorizontalAlignment.Right)
//            settingsButton.addTarget(self, action: #selector(HomeCollectionViewController.settingsButtonTapped), forControlEvents: UIControlEvents.TouchUpInside)
//            let rightBarButtonItem = UIBarButtonItem(customView: settingsButton)
//            self.navigationItem.rightBarButtonItem = rightBarButtonItem
//            
//            //Search button
//            let searchButton = HighLightButton(image: UIImage.searchIcon(size: CGSize(width: 20, height: 20), color: AppConstant.AppWhite), alignment: .Right)
//            searchButton.addTarget(self, action: #selector(HomeCollectionViewController.searchButtonTapped), forControlEvents: .TouchUpInside)
//            let leftBarButtonItem = UIBarButtonItem(customView: searchButton)
//            self.navigationItem.rightBarButtonItem = leftBarButtonItem
//            
//            //Menu button
//            let menuButton = HighLightButton(image: UIImage.menuIcon(size: CGSize(width: 20, height: 20), color: AppConstant.AppWhite), alignment: .Left)
//            menuButton.addTarget(self, action: #selector(HomeCollectionViewController.menuButtonTapped), forControlEvents: .TouchUpInside)
//            let menuButtonItem = UIBarButtonItem(customView: menuButton)
//            self.navigationItem.leftBarButtonItem = menuButtonItem
            
            self.navigationItem.title = "Top games"
        }
        
        self.collectionView?.backgroundColor = AppConstant.AppWhite
        
        if !initilized {
            
            initilized = true
            refreshControl.beginRefreshing()
            NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(HomeCollectionViewController.OnAppAction(_:)), name: AppAction.Key, object: nil)
            viewModel.GetData()
        }
        
        //        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        //self.tableView.separatorColor = UIColor.clearColor()
        //let detailView = UIViewController()
        //self.navigationController?.pushViewController(detailView, animated: true)
        
        self.collectionView!.alwaysBounceVertical = true
        refreshControl.addTarget(self, action: #selector(HomeCollectionViewController.refresh), forControlEvents: .ValueChanged)
        //        refreshControl.layer.zPosition = -1
        hidingNavBarManager!.refreshControl = refreshControl
        self.collectionView!.addSubview(refreshControl)
        refreshControl.endRefreshing()
        
        // on items source changed, add new cell
        viewModel.cellModels.producer
            .on(
                next: { _ in
                
                var indexPaths : [NSIndexPath] = []
                    for i in (0..<self.viewModel.addedGameModelCount) {
                        indexPaths.append(NSIndexPath(forRow: self.viewModel.oldGameModelsCount + i, inSection: 0))
                    }
                self.collectionView!.insertItemsAtIndexPaths(indexPaths)
            })
            .start()
        
        // if busy, start the indicator
        viewModel.searching.producer
            .on(next: { searching in
                if searching {
                    // Display the activity indicator at the center of the screen if the table is empty.
                    //self.footerView.frame.size.height = viewModel.cellModels.value.isEmpty ? self.collectionView!.frame.size.height + self.collectionView!.contentOffset.y : 44.0
                    
                    //self.searchingIndicator.startAnimating()
                }
                else {
                    //self.searchingIndicator.stopAnimating()
                }
            })
            .start()
        viewModel.errorMessage.producer
            .on(next: { errorMessage in
                if let errorMessage = errorMessage {
                    self.displayErrorMessage(errorMessage)
                }
            })
            .start()
        
    }
    
    func OnAppAction(notification : NSNotification)
    {
        viewModel.Authorize({_ in }, onError: {}, context : (AppDelegate.CurrentApp.window?.rootViewController)!)
    }
    
    func settingsButtonTapped() {
        let settingVC = SettingViewController()
        settingVC.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(settingVC, animated: true)
    }
    
    func searchButtonTapped() {
        let searchViewController = SearchViewController()
        searchViewController.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(searchViewController, animated: true)
        
        //viewModel?.EditTitleAtIndex(i)
    }
    
    func menuButtonTapped() {
        presentViewController(SideMenuManager.menuLeftNavigationController!, animated: true, completion: nil)
    }
    
    func refresh() {
        viewModel.refresh()
        loadedIndex = 0
        refreshControl.endRefreshing()
    }
    
    private func displayErrorMessage(errorMessage: String) {
        let title = LocalizedString("ImageSearchTableViewController_ErrorAlertTitle", comment: "Error alert title.")
        let dismissButtonText = LocalizedString("ImageSearchTableViewController_DismissButtonTitle", comment: "Dismiss button title on an alert.")
        let message = errorMessage
        let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        alert.addAction(UIAlertAction(title: dismissButtonText, style: .Default) { _ in
            alert.dismissViewControllerAnimated(true, completion: nil)
            })
        self.presentViewController(alert, animated: true, completion: nil)
    }
}

// MARK: UITableViewDataSource
extension HomeCollectionViewController {
    
    public override func collectionView(collectionView: UICollectionView, willDisplayCell cell: UICollectionViewCell, forItemAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row > loadedIndex {
            loadedIndex = indexPath.row
            PopAnimate(cell)
        }
    }
    
    // Custom section as a header
    public override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    public override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //        switch section {
        //        case HEADER_SECTION:
        //            if let viewModel = viewModel {
        //                if viewModel.cellModels.value.count > 0 {
        //                    return 1
        //                }
        //                return 0
        //            }
        //        case GAME_SECTION:
        //            if let viewModel = viewModel {
        //                if viewModel.cellModels.value.count > 0 {
        //                    return viewModel.cellModels.value.count - 1
        //                }
        //                return 0
        //            }
        //        default:
        //            return 0
        //        }
        //        
        //        return 0
        
        
            if viewModel.cellModels.value.count > 0 {
                return viewModel.cellModels.value.count
            }
            return 0
    }
    
    public override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(gameCellIndentifier, forIndexPath: indexPath) as! TwitchGameCollectionCell
        
        //        if(indexPath.section == HEADER_SECTION)
        //        {
        //            cell.viewModel = TwitchGameCellViewModel(game: (self.viewModel?.cellModels.value[1].game)!)
        //        }
        //        else
        //        {
        // Set info
        cell.viewModel = self.viewModel.cellModels.value[indexPath.row]
        
        if (indexPath.row >= viewModel.cellModels.value.count - 12 && viewModel.loadNextPage.enabled.value) {
            
            viewModel.loadNextPage.apply(()).start()
        }
        //        }
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                               sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: TwitchGameCell.width, height: TwitchGameCell.height)
        
    }
    
}

extension HomeCollectionViewController {
    
    public override func scrollViewShouldScrollToTop(scrollView: UIScrollView) -> Bool {
        hidingNavBarManager?.shouldScrollToTop()
        
        return true
    }
    
    public override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let cell = viewModel.cellModels.value[indexPath.row]
        selectedTopGame = cell.game;
        let viewController = StreamListController()
        viewController.topGame = cell.game
        viewController.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}

extension HomeCollectionViewController {
    public func viewControllerScrollViewGoesToTop()
    {
        self.collectionView?.setContentOffset(CGPointMake(collectionView!.contentOffset.x,
            -collectionView!.contentInset.top), animated: true)
    }
}






