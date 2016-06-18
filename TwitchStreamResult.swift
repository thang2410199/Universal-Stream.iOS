//
//  TwitchStream.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on Jun/02/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import ObjectMapper

public class TwitchStreamResult : Mappable, INextProvider {
    
    // MARK: Declaration for string constants to be used to decode and also serialize.
    internal let kTwitchStreamTotalKey: String = "_total"
    internal let kTwitchStreamStreamsKey: String = "streams"
    internal let kTwitchStreamLinksKey: String = "_links"
    
    
    // MARK: Properties
    public var total: Int?
    public var streams: [TwitchStream]! = []
    public var links: TwitchLink?
    
    
    
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
        total <- map[kTwitchStreamTotalKey]
        streams <- map[kTwitchStreamStreamsKey]
        links <- map[kTwitchStreamLinksKey]
        
    }
    
    /**
     Generates description of the object in the form of a NSDictionary.
     - returns: A Key value pair containing all valid values in the object.
     */
    public func dictionaryRepresentation() -> [String : AnyObject ] {
        
        var dictionary: [String : AnyObject ] = [ : ]
        if total != nil {
            dictionary.updateValue(total!, forKey: kTwitchStreamTotalKey)
        }
        if streams?.count > 0 {
            var temp: [AnyObject] = []
            for item in streams! {
                temp.append(item.dictionaryRepresentation())
            }
            dictionary.updateValue(temp, forKey: kTwitchStreamStreamsKey)
        }
        if links != nil {
            dictionary.updateValue(links!.dictionaryRepresentation(), forKey: kTwitchStreamLinksKey)
        }
        
        return dictionary
    }
    
    public func GetNext() -> String? {
        return links!.next
    }
}
