//
//  TwitchPlayerViewModel.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on Jun/02/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation

class PlayerViewModel {
    
    var stream : TwitchStream!
    var streamInfoService :TwitchStreamInfoSerice
    var settingService :ISettingService
    
    init(streamInfoService : TwitchStreamInfoSerice, settingService : ISettingService)
    {
        self.streamInfoService = streamInfoService
        self.settingService = settingService
    }
    
    func GetData(onComplete: (data : [M3u8Media]) -> Void) {
        self.streamInfoService.channelName = stream.channel?.name
        self.streamInfoService.GetData({result in
            onComplete(data: result)
        })
    }
}