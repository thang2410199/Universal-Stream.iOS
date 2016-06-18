//
//  TestTwitch.swift
//  ApiClient
//
//  Created by Ngo Quoc Thang on May/13/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation

public class TestTwitch : DataSource<TwitchEndpointResult> {
    public override init(webService : IWebService)
    {
        super.init(webService: webService)
    }
    
    public init(){
        super.init(webService: WebService(jsonConverter: SwiftyConverter()))
    }
    
//    public override func GetData(){
//        let request = NetworkRequest(method: .GET, url: "https://api.twitch.tv/kraken")
//        self.webService.SendRequestObject(request, customHeader: nil, onComplete: didGetData, onError: didError)
//    }
    
    func didGetData(data : TwitchEndpoint?){
        if let realData = data{
            print(realData)
        }
    }
    
    func didError(response : NSHTTPURLResponse){
        
    }
}