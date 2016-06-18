//
//  TwitchLink.swift
//  ApiClient
//
//  Created by Ngo Quoc Thang on May/20/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import ObjectMapper

public class TwitchLink: Mappable {
    
    // MARK: Declaration for string constants to be used to decode and also serialize.
    internal let kLinksSelfKey: String = "self"
    internal let kLinksNextKey: String = "next"
    internal let kLinksStreamKeyKey: String = "stream_key"
    internal let kLinksFeaturesKey: String = "features"
    internal let kLinksChatKey: String = "chat"
    internal let kLinksVideosKey: String = "videos"
    internal let kLinksSubscriptionsKey: String = "subscriptions"
    internal let kLinksCommercialKey: String = "commercial"
    internal let kLinksTeamsKey: String = "teams"
    internal let kLinksEditorsKey: String = "editors"
    internal let kLinksFollowsKey: String = "follows"
    
    
    // MARK: Properties
    public var _self: String?
    public var next: String?
    public var streamKey: String?
    public var features: String?
    public var chat: String?
    public var videos: String?
    public var subscriptions: String?
    public var commercial: String?
    public var teams: String?
    public var editors: String?
    public var follows: String?
    
    
    
    // MARK: ObjectMapper Initalizers
    /**
     Map a JSON object to this class using ObjectMapper
     - parameter map: A mapping from ObjectMapper
     */
    required public init?(_ map: Map){
        
    }
    
    /**
     Map a JSON object to this class using ObjectMapper
     - parameter map: A mapping from ObjectMapper
     */
    public func mapping(map: Map) {
        _self <- map[kLinksSelfKey]
        next <- map[kLinksNextKey]
        streamKey <- map[kLinksStreamKeyKey]
        features <- map[kLinksFeaturesKey]
        chat <- map[kLinksChatKey]
        videos <- map[kLinksVideosKey]
        subscriptions <- map[kLinksSubscriptionsKey]
        commercial <- map[kLinksCommercialKey]
        teams <- map[kLinksTeamsKey]
        editors <- map[kLinksEditorsKey]
        follows <- map[kLinksFollowsKey]
        
    }
    
    /**
     Generates description of the object in the form of a NSDictionary.
     - returns: A Key value pair containing all valid values in the object.
     */
    public func dictionaryRepresentation() -> [String : AnyObject ] {
        
        var dictionary: [String : AnyObject ] = [ : ]
        if _self != nil {
            dictionary.updateValue(_self!, forKey: kLinksSelfKey)
        }
        if next != nil {
            dictionary.updateValue(next!, forKey: kLinksNextKey)
        }
        if streamKey != nil {
            dictionary.updateValue(streamKey!, forKey: kLinksStreamKeyKey)
        }
        if features != nil {
            dictionary.updateValue(features!, forKey: kLinksFeaturesKey)
        }
        if chat != nil {
            dictionary.updateValue(chat!, forKey: kLinksChatKey)
        }
        if videos != nil {
            dictionary.updateValue(videos!, forKey: kLinksVideosKey)
        }
        if subscriptions != nil {
            dictionary.updateValue(subscriptions!, forKey: kLinksSubscriptionsKey)
        }
        if commercial != nil {
            dictionary.updateValue(commercial!, forKey: kLinksCommercialKey)
        }
        if teams != nil {
            dictionary.updateValue(teams!, forKey: kLinksTeamsKey)
        }
        if editors != nil {
            dictionary.updateValue(editors!, forKey: kLinksEditorsKey)
        }
        if follows != nil {
            dictionary.updateValue(follows!, forKey: kLinksFollowsKey)
        }
        
        return dictionary
    }
    
}
