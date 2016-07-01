//
//  AppSetting.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on 6/30/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import ObjectMapper

class SutoStreamSetting : NSObject, Mappable {
    static let SettingKey : String! = "sutostream.dat"
    
    var Quality : VideoQuality!
    var Notification : Bool
    var ChatEnable : Bool
    
    var AccessToken : String?
    var AuthorizedUser : TwitchUser?
    var IsAuthorized : Bool {
        if self.AccessToken != nil {
            return true
        }
        return false
    }
    
    override init() {
        self.Quality = VideoQuality.Source
        self.Notification = true
        self.ChatEnable = true
        self.AuthorizedUser = nil
        self.AccessToken = nil
    }
    
    // MARK: Mappable
    required init?(_ map: Map) {
        Quality = VideoQuality.Source
        Notification = true
        ChatEnable = true
    }
    
    func mapping(map: Map) {
        self.Notification <- map["notification"]
        self.ChatEnable  <- map["chat"]
        self.Quality <- map["quality"]
        self.AccessToken <- map["access_token"]
        self.AuthorizedUser <- map["user"]
    }
    
    
    func SaveSetting() -> Void {
        // Serialize to string
        let JSONString = Mapper().toJSONString(self, prettyPrint: true)
        
        // Write string to file sutostream.dat
        let filename = SutoStreamSetting.getDocumentsDirectory().stringByAppendingPathComponent(SutoStreamSetting.SettingKey)
        
        do {
            try JSONString!.writeToFile(filename, atomically: true, encoding: NSUTF8StringEncoding)
        } catch {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    static func LoadSetting() -> SutoStreamSetting {
        // Load string from file
        let filename = getDocumentsDirectory().stringByAppendingPathComponent(SutoStreamSetting.SettingKey)
        
        //reading
        do {
            // Deserialize to object
            let JSONString = try NSString(contentsOfFile: filename, encoding: NSUTF8StringEncoding)
            return Mapper<SutoStreamSetting>().map(JSONString)!
        }
        catch {
            return SutoStreamSetting()
        }
    }
    
    static func getDocumentsDirectory() -> NSString {
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)
        let documentsDirectory = paths[0]
        return documentsDirectory
    }
}

enum VideoQuality {
    case Source
    case High
    case Medium
    case Low
    case Mobile
}