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
import BFPaperButton
//import Player
//import DFVideoPlayer

protocol PlayerControllDelegate {
    func OnPlayerTapped()
}

class PlayerViewController : UIViewController, PlayerControllDelegate
{
    var viewModel : PlayerViewModel!
    var player : AVPlayer!
    var playerLayer : AVPlayerLayer!
    
    var playerController : AVPlayerViewController? = AVPlayerViewController()
    var IsPlaying  = false
    
    var playerViewContainer : SutoPlayerContainer!
    var playerControlContainer : UIView!
    
    var PlayPauseButton : BFPaperButton!
    var ToggleFullScreenButton : BFPaperButton!
    
    // Chat area
    var FooterContainerView : UIView!
    
    var statusBarHidden : Bool = true
    var isLockFullScreen : Bool = false
    var isFullScreen : Bool = false
    
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
        if(isFullScreen) {
            return .Landscape
        }
        else {
            return .Portrait
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        //let value = UIInterfaceOrientation.LandscapeLeft.rawValue
        //UIDevice.currentDevice().setValue(value, forKey: "orientation")
    }
    
    override func viewDidDisappear(animated: Bool) {
        
    }
    
    override func viewDidLayoutSubviews() {
    }
    
    override func viewWillDisappear(animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func didMoveToParentViewController(parent: UIViewController?) {
        if(parent == nil)
        {
            //Handle removing player
            player.pause()
            self.showStatusBar()
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
            if(isLockFullScreen) {
                self.SetFullScreen(false, animated: true)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hideStatusBar()
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title:"<", style:.Plain, target:self, action: #selector(PlayerViewController.backButtonHit))
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        //extend the view to screen
        self.edgesForExtendedLayout = .All
        
        self.view.backgroundColor = AppConstant.AppWhite
        //self.tabBarController?.hidesBottomBarWhenPushed = true
        
        //self.setUpViewControllerExpands()
        //var url = NSURL(string:"http://video-edge-8e2c4c.arn01.hls.ttvnw.net/hls-83395c/dotamajor_21721419360_465654376/chunked/index-live.m3u8?token=id=2642192424157186774,bid=21721419360,exp=1465380730,node=video-edge-8e2c4c-1.arn01.hls.justin.tv,nname=video-edge-8e2c4c.arn01,fmt=chunked&sig=eae85f67180ad267300c607f74f26f4e7e3b58ba")
        
//        self.player2 = DFVideoPlayer(URL: url)
//        self.player2.showInWindow()
        
        
//        let playerVC = MobilePlayerViewController(contentURL: url!)
//        playerVC.title = "Vanilla Player"
//        playerVC.activityItems = [url!] // Check the documentation for xmore information.
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
        
        playerViewContainer = SutoPlayerContainer()
        playerViewContainer.delegate = self
        //playerViewContainer.addSubview(playerController.view)
        
        //self.addChildViewController(playerController)
        
        playerViewContainer.layer.insertSublayer(playerLayer, atIndex: 0)
        
        PlayPauseButton = BFPaperButton(raised: false)
        PlayPauseButton.cornerRadius = 0
        PlayPauseButton.setImage(UIImage.airPlaneIcon(size: CGSize(width: 40, height: 40), color: AppConstant.AppWhite), forState: .Normal)
        PlayPauseButton.backgroundFadeColor = AppConstant.TwitchDarkGray050
        PlayPauseButton.addTarget(self, action: #selector(PlayerViewController.OnPlayPauseTapped), forControlEvents: .TouchUpInside)
        
        ToggleFullScreenButton = BFPaperButton(raised: false)
        ToggleFullScreenButton.cornerRadius = 0
        ToggleFullScreenButton.setImage(UIImage.cameraIcon(size: CGSize(width: 40, height: 40), color: AppConstant.AppWhite), forState: .Normal)
        ToggleFullScreenButton.backgroundFadeColor = AppConstant.TwitchDarkGray050
        ToggleFullScreenButton.addTarget(self, action: #selector(PlayerViewController.OnToggleFullScreen), forControlEvents: .TouchUpInside)
        
        playerControlContainer = UIView()
        playerControlContainer.backgroundColor = AppConstant.TwitchDarkGray
        playerControlContainer.addSubview(playerViewContainer)
        playerControlContainer.addSubview(PlayPauseButton)
        playerControlContainer.addSubview(ToggleFullScreenButton)
        
        self.view.addSubview(playerControlContainer)
        
        
        FooterContainerView = UIView()
        FooterContainerView.backgroundColor = AppConstant.AppColor
        
        self.view.addSubview(FooterContainerView)
        
        //Layout
        self.SetFullScreen(false, animated: false)
        //playerController.view.autoPinEdgesToSuperviewEdges()
        
        playerViewContainer.autoPinEdgeToSuperviewEdge(.Top)
        playerViewContainer.autoPinEdgeToSuperviewEdge(.Left)
        playerViewContainer.autoPinEdgeToSuperviewEdge(.Right)
        playerViewContainer.autoMatchDimension(.Height, toDimension: .Width, ofView: playerViewContainer, withMultiplier: 9/16)
        
        PlayPauseButton.autoSetDimensionsToSize(CGSize(width: 44, height: 44))
        PlayPauseButton.autoPinEdgeToSuperviewEdge(.Left, withInset: 8)
        PlayPauseButton.autoPinEdgeToSuperviewEdge(.Bottom, withInset: 8)
        
        ToggleFullScreenButton.autoSetDimensionsToSize(CGSize(width: 44, height: 44))
        ToggleFullScreenButton.autoPinEdgeToSuperviewEdge(.Right, withInset: 8)
        ToggleFullScreenButton.autoPinEdgeToSuperviewEdge(.Bottom, withInset: 8)
        
        FooterContainerView.autoPinEdge(.Top, toEdge: .Bottom, ofView: playerControlContainer)
        FooterContainerView.autoPinEdgeToSuperviewEdge(.Bottom)
        FooterContainerView.autoPinEdgeToSuperviewEdge(.Left)
        FooterContainerView.autoPinEdgeToSuperviewEdge(.Right)
        
        
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
    
    func hideStatusBar(){
        statusBarHidden = true
        self.setNeedsStatusBarAppearanceUpdate()
    }
    
    func showStatusBar(){
        statusBarHidden = false
        self.setNeedsStatusBarAppearanceUpdate()
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return statusBarHidden
    }
    
    override func preferredStatusBarUpdateAnimation() -> UIStatusBarAnimation {
        return .Slide
    }
    
    var constraints : [NSLayoutConstraint] = []
    
    func SetFullScreen(value : Bool, animated : Bool) {
        if(constraints.count > 0) {
            playerControlContainer.removeConstraints(constraints)
            self.view.removeConstraints(constraints)
            constraints.removeAll()
        }
        var orientation = UIInterfaceOrientation.LandscapeRight.rawValue
        if(value) {
            constraints += playerControlContainer.autoPinEdgesToSuperviewEdges()
            orientation = UIInterfaceOrientation.LandscapeRight.rawValue
            //playerController.modalPresentationStyle = .FullScreen
        }
        else
        {
            constraints += [playerControlContainer.autoPinEdgeToSuperviewEdge(.Top)]
            constraints += [playerControlContainer.autoPinEdgeToSuperviewEdge(.Left)]
            constraints += [playerControlContainer.autoPinEdgeToSuperviewEdge(.Right)]
            constraints += [playerControlContainer.autoSetDimension(.Height, toSize: 500)]
            orientation = UIInterfaceOrientation.Portrait.rawValue
            //playerController.modalPresentationStyle = .None
        }
        UIDevice.currentDevice().setValue(orientation, forKey: "orientation")
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

extension PlayerViewController {
    
    func OnPlayPauseTapped() {
        
    }
    
    func OnToggleFullScreen() {
        isFullScreen = !isFullScreen
        SetFullScreen(isFullScreen, animated: true)
        UIViewController.attemptRotationToDeviceOrientation()
    }
    
    func OnPlayerTapped() {
        
    }
}