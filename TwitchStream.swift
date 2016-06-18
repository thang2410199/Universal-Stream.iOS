//
//  TwitchStream.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on Jun/02/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import ObjectMapper

public class TwitchStream : Mappable {
    
    // MARK: Declaration for string constants to be used to decode and also serialize.
    internal let kStreamsAverageFpsKey: String = "average_fps"
    internal let kStreamsCreatedAtKey: String = "created_at"
    internal let kStreamsChannelKey: String = "channel"
    internal let kStreamsInternalIdentifierKey: String = "_id"
    internal let kStreamsDelayKey: String = "delay"
    internal let kStreamsViewersKey: String = "viewers"
    internal let kStreamsGameKey: String = "game"
    internal let kStreamsVideoHeightKey: String = "video_height"
    internal let kStreamsPreviewKey: String = "preview"
    internal let kStreamsIsPlaylistKey: String = "is_playlist"
    internal let kStreamsLinksKey: String = "_links"
    
    
    // MARK: Properties
    public var averageFps: Float?
    public var createdAt: String?
    public var channel: TwitchChannel?
    public var internalIdentifier: Int?
    public var delay: Int?
    public var viewers: Int?
    public var game: String?
    public var videoHeight: Int?
    public var preview: TwitchStreamPreview?
    public var isPlaylist: Bool = false
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
        averageFps <- map[kStreamsAverageFpsKey]
        createdAt <- map[kStreamsCreatedAtKey]
        channel <- map[kStreamsChannelKey]
        internalIdentifier <- map[kStreamsInternalIdentifierKey]
        delay <- map[kStreamsDelayKey]
        viewers <- map[kStreamsViewersKey]
        game <- map[kStreamsGameKey]
        videoHeight <- map[kStreamsVideoHeightKey]
        preview <- map[kStreamsPreviewKey]
        isPlaylist <- map[kStreamsIsPlaylistKey]
        links <- map[kStreamsLinksKey]
        
    }
    
    /**
     Generates description of the object in the form of a NSDictionary.
     - returns: A Key value pair containing all valid values in the object.
     */
    public func dictionaryRepresentation() -> [String : AnyObject ] {
        
        var dictionary: [String : AnyObject ] = [ : ]
        if averageFps != nil {
            dictionary.updateValue(averageFps!, forKey: kStreamsAverageFpsKey)
        }
        if createdAt != nil {
            dictionary.updateValue(createdAt!, forKey: kStreamsCreatedAtKey)
        }
        if channel != nil {
            dictionary.updateValue(channel!.dictionaryRepresentation(), forKey: kStreamsChannelKey)
        }
        if internalIdentifier != nil {
            dictionary.updateValue(internalIdentifier!, forKey: kStreamsInternalIdentifierKey)
        }
        if delay != nil {
            dictionary.updateValue(delay!, forKey: kStreamsDelayKey)
        }
        if viewers != nil {
            dictionary.updateValue(viewers!, forKey: kStreamsViewersKey)
        }
        if game != nil {
            dictionary.updateValue(game!, forKey: kStreamsGameKey)
        }
        if videoHeight != nil {
            dictionary.updateValue(videoHeight!, forKey: kStreamsVideoHeightKey)
        }
        if preview != nil {
            dictionary.updateValue(preview!, forKey: kStreamsPreviewKey)
        }
        dictionary.updateValue(isPlaylist, forKey: kStreamsIsPlaylistKey)
        if links != nil {
            dictionary.updateValue(links!.dictionaryRepresentation(), forKey: kStreamsLinksKey)
        }
        
        return dictionary
    }
    
}
