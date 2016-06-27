//
//  Oauth2Service.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on 6/20/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import UIKit
import SafariServices
import p2_OAuth2

class Oauth2Service : NSObject, UIWebViewDelegate {
    
    
    let settings : [String:String] = [
        "client_id": "iahumdox9qh5991ek1f7e95dn8z67ca",
        "client_secret": "52ys7wskuk6an9f0pkrmbnz94xyt19l",
        "authorize_uri": "https://api.twitch.tv/kraken/oauth2/authorize",
        "token_uri": "https://api.twitch.tv/kraken/token",   // code grant only
        "scope": ["user_read", "user_blocks_edit", "user_blocks_read", "user_follows_edit", "channel_read", "channel_editor", "channel_subscriptions", "user_subscriptions", "channel_check_subscription", "chat_login"].joinWithSeparator(" "),
        "redirect_uris": "http://sutoen.com",   // register the "sutostream" scheme in Info.plist
        ]
    
    
    @objc func safariViewControllerDidFinish(controller: SFSafariViewController)
    {
        controller.dismissViewControllerAnimated(true, completion: nil)
    }
    
    var web_view : UIWebView!
    var complete : CompleteBlock!
    var close_button : UIButton!
    
    func Authorize(onComplete: CompleteBlock, onError: ErrorBlock, context : AnyObject) {
        let view_controller = context as! UIViewController
        complete = onComplete
        web_view = UIWebView()
        web_view.delegate = self
        
        close_button = UIButton()
        close_button.setTitle("Close", forState: .Normal)
        close_button.setTitleColor(AppConstant.AppColor, forState: .Normal)
        close_button.addTarget(self, action: #selector(Oauth2Service.Close), forControlEvents: .TouchUpInside)
        
        // Layout
        view_controller.view.addSubview(web_view)
        view_controller.view.addSubview(close_button)
        
        web_view.autoPinEdgesToSuperviewEdges()
        
        close_button.autoSetDimensionsToSize(CGSize(width: 60, height: 30))
        close_button.autoPinEdgeToSuperviewEdge(.Top)
        close_button.autoPinEdgeToSuperviewEdge(.Right)
        
        
        let url = String(format: "https://api.twitch.tv/kraken/oauth2/authorize?response_type=token&client_id=%@&redirect_uri=%@&scope=%@", settings["client_id"]!, (settings["redirect_uris"]!), settings["scope"]!).stringByAddingPercentEscapesUsingEncoding(NSUTF8StringEncoding)!
        let requestURL = NSURL(string:url)
        let request = NSURLRequest(URL: requestURL!)
        
        web_view.loadRequest(request)
        
        return
    }
    
    func Close() {
        web_view.removeFromSuperview()
    }
    
    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        if(request.URLString.hasPrefix("http://sutoen.com")) {
            ///#access_token=3a40nw6tj6ww4gjzgu2sedebyfaano&scope=user_read+user_blocks_edit+user_blocks_read+user_follows_edit+channel_read+channel_editor+channel_subscriptions+user_subscriptions+channel_check_subscription+chat_login
            //iolu0kdknr34ul5db6hxbc3lar5x7y

            let access_token = request.URLString.substringWithRange(Range<String.Index>(start: request.URLString.startIndex.advancedBy(32), end: request.URLString.startIndex.advancedBy(62)))
            complete(data: access_token)
            webView.removeFromSuperview()
            return false
        }
        
        return true
    }
}