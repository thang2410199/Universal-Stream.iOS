//
//  TwitchChannelAccess.swift
//
//  Created by Ngo Quoc Thang on Jun/06/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import ObjectMapper

public class TwitchChannelAccess: Mappable {
    
    // MARK: Declaration for string constants to be used to decode and also serialize.
    internal let kTwitchChannelAccessSigKey: String = "sig"
    internal let kTwitchChannelAccessTokenKey: String = "token"
    internal let kTwitchChannelAccessMobileRestrictedKey: String = "mobile_restricted"
    
    
    // MARK: Properties
    public var sig: String?
    public var token: String?
    public var mobileRestricted: Bool = false
    
    
    
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
        sig <- map[kTwitchChannelAccessSigKey]
        token <- map[kTwitchChannelAccessTokenKey]
        mobileRestricted <- map[kTwitchChannelAccessMobileRestrictedKey]
        
    }
    
    /**
     Generates description of the object in the form of a NSDictionary.
     - returns: A Key value pair containing all valid values in the object.
     */
    public func dictionaryRepresentation() -> [String : AnyObject ] {
        
        var dictionary: [String : AnyObject ] = [ : ]
        if sig != nil {
            dictionary.updateValue(sig!, forKey: kTwitchChannelAccessSigKey)
        }
        if token != nil {
            dictionary.updateValue(token!, forKey: kTwitchChannelAccessTokenKey)
        }
        dictionary.updateValue(mobileRestricted, forKey: kTwitchChannelAccessMobileRestrictedKey)
        
        return dictionary
    }
    
}
