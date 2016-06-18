//
//  TwitchStreamInfoSerice.swift
//  ApiClient
//
//  Created by Ngo Quoc Thang on May/23/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import ReactiveCocoa
import enum Result.NoError

public class TwitchStreamInfoSerice {
    let webService : IWebService
    var channelName : String?
    var parser : IM3U8Parser
    
    public init(webService : IWebService, parser : IM3U8Parser)
    {
        self.webService = webService
        self.parser = parser
    }
    
    public func GetData(onComplete: (result : [M3u8Media]) -> Void) {
        guard channelName != nil else {
            return
        }
        
        let target = String.init(format: "https://api.twitch.tv/api/channels/%@/access_token", channelName!)
        let request = NetworkRequest(method: .GET, url: target)
        self.webService.SendRequestObject(
            request, customHeader: nil,
            onComplete: { (data : TwitchChannelAccess?) in
                if let dataNotNil = data {
                    let token = dataNotNil.token!.stringByReplacingOccurrencesOfString("\\\"", withString: "\"").stringByAddingPercentEncodingWithAllowedCharacters(.URLHostAllowedCharacterSet());
                    
                    let step2url = String.init(format: "http://usher.twitch.tv/api/channel/hls/%@.m3u8?player=twitchweb&token=%@&sig=%@&allow_audio_only=true&allow_source=true&type=any&p=2",
                        self.channelName!,
                        token!,
                        dataNotNil.sig!)
                    
                    self.webService.SendRequest(NetworkRequest(method: .GET, url: step2url), customHeader: nil,
                        onComplete: { response, header in
                            let m3u8String = String.init(data: response, encoding: NSUTF8StringEncoding)
                            self.parser.Load(m3u8String!)
                            do {
                                onComplete(result: try self.parser.Parse())
                            }
                            catch{
                                onComplete(result: [])
                            }
                        }, onError: { error in })
                }
            },
            onError : { error in
            }
        )
    }
}