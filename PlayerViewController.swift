//
//  PlayerViewController.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on Jun/02/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import UIKit
import MediaPlayer
import AVKit
import MobilePlayer
import PureLayout
//import Player
//import DFVideoPlayer

class PlayerViewController : UIViewController
{
    var viewModel : PlayerViewModel!
    var player : AVPlayer!
    var playerLayer : AVPlayerLayer!
    
    var playerController : AVPlayerViewController? = AVPlayerViewController()
    var IsPlaying  = false
    
    var playerViewContainer : UIView!
    
    //var StreamQualities = [StreamQuality]
    
    //var player1 : Player!
    //var player2 : DFVideoPlayer!
    
    init()
    {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return .AllButUpsideDown
    }
    
    override func viewDidAppear(animated: Bool) {
        //let value = UIInterfaceOrientation.LandscapeLeft.rawValue
        //UIDevice.currentDevice().setValue(value, forKey: "orientation")
    }
    
    override func viewDidDisappear(animated: Bool) {
        
    }
    
    override func viewWillLayoutSubviews() {
        playerLayer.frame = playerViewContainer.bounds
    }
    
    override func viewWillDisappear(animated: Bool) {
        player.pause()
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func didMoveToParentViewController(parent: UIViewController?) {
        if(parent == nil)
        {
            //Handle removing player

//            playerController?.view.removeFromSuperview()
//            playerController?.removeFromParentViewController()
            
        }
    }
    
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        if UIDevice.currentDevice().orientation.isLandscape.boolValue {
            print("Landscape")
            self.SetFullScreen(true, animated: true)
        } else {
            print("Portrait")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title:"<", style:.Plain, target:self, action: #selector(PlayerViewController.backButtonHit))
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        self.view.backgroundColor = AppConstant.AppWhite
        //self.tabBarController?.hidesBottomBarWhenPushed = true
        
        //self.setUpViewControllerExpands()
        //var url = NSURL(string:"http://video-edge-8e2c4c.arn01.hls.ttvnw.net/hls-83395c/dotamajor_21721419360_465654376/chunked/index-live.m3u8?token=id=2642192424157186774,bid=21721419360,exp=1465380730,node=video-edge-8e2c4c-1.arn01.hls.justin.tv,nname=video-edge-8e2c4c.arn01,fmt=chunked&sig=eae85f67180ad267300c607f74f26f4e7e3b58ba")
        
//        self.player2 = DFVideoPlayer(URL: url)
//        self.player2.showInWindow()
        
        
//        let playerVC = MobilePlayerViewController(contentURL: url!)
//        playerVC.title = "Vanilla Player"
//        playerVC.activityItems = [url!] // Check the documentation for more information.
//        presentMoviePlayerViewControllerAnimated(playerVC)

        
//        self.player1 = Player()
//        self.player1.delegate = self
//        self.player1.view.frame = self.view.bounds
//        
//        self.addChildViewController(self.player1)
//        self.view.addSubview(self.player1.view)
//        self.player1.didMoveToParentViewController(self)
//        
//        self.player1.setUrl(url!)
//        self.player1.playFromCurrentTime()
        
        player = AVPlayer()
        playerLayer = AVPlayerLayer(player: player)
        
//        playerController = AVPlayerViewController()
//        playerController.player = player
//        playerController.view.backgroundColor = AppConstant.TwitchDarkGray
//        playerController.view.layer.zPosition = 5
        //playerController.showsPlaybackControls = true
//        playerController.title = "testing"
        
        playerViewContainer = UIView()
        //playerViewContainer.addSubview(playerController.view)
        
        //self.addChildViewController(playerController)
        self.view.addSubview(playerViewContainer)
        
        playerViewContainer.layer.insertSublayer(playerLayer, atIndex: 0)
        
        //Layout
        self.SetFullScreen(false, animated: false)
        //playerController.view.autoPinEdgesToSuperviewEdges()
        
        
        viewModel.GetData({ data in
            if(data.count > 0) {
            
                let nsurl = NSURL(string: data[0].Url!)
                let item = AVPlayerItem(URL: nsurl!)
                self.player.replaceCurrentItemWithPlayerItem(item)
                //self.SetFullScreen(true, animated: true)
                self.player.play()
            }
            else
            {
                let alertController = UIAlertController(title: "Error", message:
                    "Cannot getting stream data", preferredStyle: UIAlertControllerStyle.Alert)
                alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
                
                self.presentViewController(alertController, animated: true, completion: nil)
            }
        })
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    var constraints : [NSLayoutConstraint] = []
    
    func SetFullScreen(value : Bool, animated : Bool) {
        if(constraints.count > 0) {
            playerViewContainer.removeConstraints(constraints)
            constraints.removeAll()
        }
        
        if(value) {
            constraints = playerViewContainer.autoPinEdgesToSuperviewEdges()
            //playerController.modalPresentationStyle = .FullScreen
        }
        else
        {
            constraints += [playerViewContainer.autoPinEdgeToSuperviewEdge(.Top)]
            constraints += [playerViewContainer.autoPinEdgeToSuperviewEdge(.Left)]
            constraints += [playerViewContainer.autoPinEdgeToSuperviewEdge(.Right)]
            constraints += [playerViewContainer.autoSetDimension(.Height, toSize: AppConstant.AppWidth * 9 / 16 + 100)]

            //playerController.modalPresentationStyle = .None
        }
        
        playerLayer.frame = playerViewContainer.bounds
        //player.setFullscreen(value, animated: animated)
    }
    
    func TogglePlayPause() {
        if(IsPlaying){
            player.pause()
        }
        else {
            player.play()
        }
    }
    
    func backButtonHit()
    {
        self.navigationController?.popViewControllerAnimated(true)
    }
}