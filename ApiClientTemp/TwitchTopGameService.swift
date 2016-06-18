//
//  TwitchTopGameService.swift
//  ApiClient
//
//  Created by Ngo Quoc Thang on May/23/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import ReactiveCocoa
import enum Result.NoError

public class TwitchTopGameService : DataSource<TwitchTopGameResult>
{    
    public override init(webService : IWebService)
    {
        super.init(webService: webService)
    }
    
    public override func Reset() {
        self.nextPage = nil
    }
    
    public override func GetData(nextPageTrigger trigger: SignalProducer<(), NoError>) ->
        SignalProducer<TwitchTopGameResult, NetworkError> {
            
            return SignalProducer { observer, disposable in
                let firstSearch = SignalProducer<(), NoError>(value: ())
                var loadedItem = 0
                let load = firstSearch.concat(trigger)
                
                load.on(
                    next: {
                        var target : String
                        if let url = self.nextPage
                        {
                            target = url
                        }
                        else
                        {
                            target = "https://api.twitch.tv/kraken/games/top";
                        }
                        
                        let request = NetworkRequest(method: .GET, url: target)
                        self.webService.SendRequestObject(request, customHeader: nil,
                            onComplete: { (data : TwitchTopGameResult?) in
                                
                                if let dataNoNil = data
                                {
                                    observer.sendNext(dataNoNil)
                                    if dataNoNil.total <= loadedItem || dataNoNil.top?.count == 0 {
                                        observer.sendCompleted()
                                    }
                                    print(self.nextPage);
                                    loadedItem += dataNoNil.top!.count
                                    self.nextPage = dataNoNil.GetNext()
                                }
                                else
                                {
                                    observer.sendFailed(.IncorrectDataReturned)
                                }
                                
                            },
                            onError: { error in
                                observer.sendFailed(.NotReachedServer)
                        })
                    }).start()
            }
    }
}