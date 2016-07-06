//
//  serviceLocate.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on May/19/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import Swinject

func getInstance<T>() -> T? {
    return AppDelegate.CurrentApp.container.resolve(T)
}

func serviceLocate(container : Container) -> Void {
    
    //Service
    
    container.register(IWebService.self){ r in
        WebService(jsonConverter: SwiftyConverter())
    }
    
    container.register(DataSource<TwitchEndpointResult>.self){ r in
        TestTwitch(webService: r.resolve(IWebService)!)
    }
    
    container.register(DataSource<TwitchTopGameResult>.self){ r in
        TwitchTopGameService(webService: r.resolve(IWebService)!)
    }
    
    container.register(DataSource<TwitchStreamResult>.self){ r in
        TwitchStreamService(webService: r.resolve(IWebService)!)
    }
    
    container.register(ISettingService.self){ r in
        SettingService()
    }
    
    container.register(ISetingAdapter.self){ r in
        SettingAdapter(settingService: r.resolve(ISettingService)!)
    }
    
    container.register(IM3U8Parser.self) { r in
        M3U8Parser()
    }
    
    container.register(TwitchStreamInfoSerice.self) { r in
        TwitchStreamInfoSerice(webService: r.resolve(IWebService)!, parser: r.resolve(IM3U8Parser)!)
    }
    
    container.register(Oauth2Service.self) {
        r in
        Oauth2Service()
    }.inObjectScope(.Container)
    
    // Models
//    container.register(Networking.self) { _ in Network() }
//    container.register(ImageSearching.self) { r in ImageSearch(network: r.resolve(Networking.self)!) }
//    container.register(ExternalAppChanneling.self) { _ in ExternalAppChannel() }
    
    // View models
    container.register(HomeViewModeling.self) { r in
        let viewModel = HomeViewModel(
            endpointService : r.resolve(DataSource<TwitchEndpointResult>.self)!,
            topGameService: r.resolve(DataSource<TwitchTopGameResult>.self)!
        )
        return viewModel
        }.inObjectScope(.None)
    
    container.register(SearchViewModel.self) { r in
        let viewModel = SearchViewModel()
        return viewModel
        }.inObjectScope(.None)

    
    container.register(StreamListViewModel.self) { r in
        let viewModel = StreamListViewModel(
            streamService: r.resolve(DataSource<TwitchStreamResult>.self)!
        )
        return viewModel
        }.inObjectScope(.None)
    
    container.register(PlayerViewModel.self) { r in
        let viewModel = PlayerViewModel(streamInfoService: r.resolve(TwitchStreamInfoSerice.self)!, settingService: r.resolve(ISettingService)!)
        return viewModel
        }.inObjectScope(.None)
    
//    container.register(ImageDetailViewModelModifiable.self) { _ in
//        ImageDetailViewModel(
//            network: container.resolve(Networking.self)!,
//            externalAppChannel: container.resolve(ExternalAppChanneling.self)!)
//        }.inObjectScope(.Container)
//    container.register(ImageDetailViewModeling.self) { r in
//        r.resolve(ImageDetailViewModelModifiable.self)!
//    {

    // Views
    
    container.register(SWRevealViewController.self) { r in
        let viewController = SWRevealViewController(rearViewController: SideMenuViewController(), frontViewController: SutoTabBarController())
        viewController.rearViewRevealWidth = 300
        return viewController
    }
    
//    container.registerForStoryboard(HomeViewController.self) { r, c in
//        c.viewModel = r.resolve(HomeViewModeling.self)!
//    }
//    container.registerForStoryboard(HomeCollectionViewController.self) { r, c in
//        c.viewModel = r.resolve(HomeViewModeling.self)!
//    }
    
//    container.registerForStoryboard(StreamListController.self, initCompleted: {r ,c in
//        c.viewModel = r.resolve(StreamListViewModel.self)!
//    })
    
//    container.registerForStoryboard(ImageDetailViewController.self) { r, c in
//        c.viewModel = r.resolve(ImageDetailViewModeling.self)!

}