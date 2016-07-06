//
// Created by Ngo Quoc Thang on 7/5/16.
// Copyright (c) 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import UIKit
import PureLayout

class SearchViewController : UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchResultsUpdating, UISearchBarDelegate {
    var viewModel : SearchViewModel

    var searchField : UITextField!
    var tableView : UITableView!
    var searchController : UISearchController!
    
    let userCellIdentifier = "userCellIdentifier"
    let gameCellIdentifier = "gameCellIdentifier"
    let streamCellIdentifier = "streamCellIdentifier"

    init()
    {
        viewModel = getInstance()!
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        viewModel = getInstance()!
        super.init(coder : aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Search"
        //navigationController?.navigationBar.tintColor = AppConstant.AppColor
        
        // prepare tableView
        tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: userCellIdentifier)
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: gameCellIdentifier)
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: streamCellIdentifier)
        
        searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        searchController.dimsBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "enter keyword here..."
        searchController.searchBar.scopeButtonTitles = ["User", "Game", "Stream"]
        
        searchController.searchBar.setScopeBarButtonTitleTextAttributes([NSForegroundColorAttributeName : AppConstant.AppWhite], forState: .Selected)
        searchController.searchBar.setScopeBarButtonTitleTextAttributes([NSForegroundColorAttributeName : AppConstant.TwitchDarkGray], forState: .Normal)
        
        searchController.searchBar.tintColor = AppConstant.AppColor
        searchController.searchBar.barTintColor = AppConstant.TwitchLightGray
        searchController.searchBar.backgroundColor = AppConstant.TwitchLightGray
        searchController.searchBar.layer.borderWidth = 1
        searchController.searchBar.layer.borderColor = AppConstant.TwitchLightGray.CGColor
        searchController.searchBar.sizeToFit()
        
        self.definesPresentationContext = true
        
        searchController.searchBar.delegate = self
        // add search bar to table header
        tableView.tableHeaderView = searchController.searchBar
        tableView.tableFooterView = UIView()
        
        self.view.backgroundColor = AppConstant.AppWhite

        // UI
        searchField = UITextField()

        // Layout
        //self.view.addSubview(searchField)
        self.view.addSubview(tableView)

        //searchField.autoSetDimension(ALDimension.Height, toSize: 40)
        //searchField.autoPinEdgeToSuperviewEdge(ALEdge.Top)
        
        tableView.autoPinEdgesToSuperviewEdges()
        
        
        // Function
        // Binding
        self.viewModel.userModels.producer
            .on(next: { _ in self.tableView!.reloadData() })
            .start()
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.userModels.value.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(userCellIdentifier)!
//        cell.textLabel?.text = self.viewModel.userModels.value[indexPath.row]
        cell.textLabel?.text = "row #\(indexPath.row)"
        return cell
    }
    
    func filterContentForSearchText(searchText: String, scope: String = "All") {
        if(!searchText.isEmpty) {
            self.viewModel.Search(searchText, scope : scope)
        }
    }
    
    func updateSearchResultsForSearchController(searchController: UISearchController) {
        let searchBar = searchController.searchBar
        let scope = searchBar.scopeButtonTitles![searchBar.selectedScopeButtonIndex]
        if searchBar.text != nil {
            filterContentForSearchText(searchBar.text!, scope: scope)
        }
        
    }
    // Scope: User / Game / Stream
    func searchBar(searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        filterContentForSearchText(searchBar.text!, scope: searchBar.scopeButtonTitles![selectedScope])
    }
    
    
}
