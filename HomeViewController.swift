//
//  HomeViewController.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on May/20/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import UIKit
import Foundation

public final class HomeViewController : UITableViewController {
    var initilized : Bool = false
    @IBOutlet var footerView: UIView!
    @IBOutlet weak var searchingIndicator: UIActivityIndicatorView!
    
    public var viewModel: HomeViewModeling? {
        didSet {
            if let viewModel = viewModel {
                // on items source changed, reload Data
                viewModel.cellModels.producer
                    .on(next: { _ in self.tableView.reloadData() })
                    .start()
                
                // if busy, start the indicator
                viewModel.searching.producer
                    .on(next: { searching in
                        if searching {
                            // Display the activity indicator at the center of the screen if the table is empty.
                            self.footerView.frame.size.height = viewModel.cellModels.value.isEmpty
                                ? self.tableView.frame.size.height + self.tableView.contentOffset.y : 44.0
                            
                            self.tableView.tableFooterView = self.footerView
                            self.searchingIndicator.startAnimating()
                        }
                        else {
                            self.tableView.tableFooterView = nil
                            self.searchingIndicator.stopAnimating()
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
        }
    }
    
    //OnNavigatedTo
    public override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if !initilized {
            initilized = true
            viewModel?.GetData()
        }
    }
    
    override public func viewDidLoad() {
        //self.tableView.separatorColor = UIColor.clearColor()
        //let detailView = UIViewController()
        //self.navigationController?.pushViewController(detailView, animated: true)
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
extension HomeViewController {
    public override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let viewModel = viewModel {
            return viewModel.cellModels.value.count
        }
        return 0
        
        // The following code invokes didSet of viewModel property. A bug?
        // return viewModel?.cellModels.value.count ?? 0
    }
    
    public override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("TwitchGameCell", forIndexPath: indexPath) as! TwitchGameCell
        //cell.separatorInset = UIEdgeInsetsMake(0, cell.bounds.size.width, 0, 0);
        
        cell.viewModel = viewModel.map { $0.cellModels.value[indexPath.row] }
        
        if let viewModel = viewModel
            where indexPath.row >= viewModel.cellModels.value.count - 4 && viewModel.loadNextPage.enabled.value {
            
            viewModel.loadNextPage.apply(()).start()
        }
        
        return cell
    }
}

// MARK: - UITableViewDelegate
extension HomeViewController {
    public override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        viewModel?.selectCellAtIndex(indexPath.row)
        
        performSegueWithIdentifier("showListStreamFromGame", sender: self)
    }
    
    public override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // if navigate to StreamList
        if(segue.identifier == "showListStreamFromGame"){
            
        }
    }
}







