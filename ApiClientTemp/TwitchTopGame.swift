//
//  Top.swift
//
//  Created by Ngo Quoc Thang on May/20/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import ObjectMapper

public class TwitchTopGame : Mappable {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kTopViewersKey: String = "viewers"
	internal let kTopGameKey: String = "game"
	internal let kTopChannelsKey: String = "channels"


    // MARK: Properties
	public var viewers: Int?
	public var game: TwitchGame?
	public var channels: Int?



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
		viewers <- map[kTopViewersKey]
		game <- map[kTopGameKey]
		channels <- map[kTopChannelsKey]

    }

    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if viewers != nil {
			dictionary.updateValue(viewers!, forKey: kTopViewersKey)
		}
		if game != nil {
			dictionary.updateValue(game!.dictionaryRepresentation(), forKey: kTopGameKey)
		}
		if channels != nil {
			dictionary.updateValue(channels!, forKey: kTopChannelsKey)
		}

        return dictionary
    }

}
