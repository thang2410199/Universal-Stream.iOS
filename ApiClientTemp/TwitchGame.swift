//
//  Game.swift
//
//  Created by Ngo Quoc Thang on May/20/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import ObjectMapper

public class TwitchGame: Mappable {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kGameNameKey: String = "name"
	internal let kGameInternalIdentifierKey: String = "_id"
	internal let kGameBoxKey: String = "box"
	internal let kGameLogoKey: String = "logo"
	internal let kGameGiantbombIdKey: String = "giantbomb_id"
	internal let kGameLinksKey: String = "_links"


    // MARK: Properties
	public var name: String?
	public var internalIdentifier: Int?
	public var box: TwitchGameBox?
	public var logo: TwitchGameLogo?
	public var giantbombId: Int?
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
		name <- map[kGameNameKey]
		internalIdentifier <- map[kGameInternalIdentifierKey]
		box <- map[kGameBoxKey]
		logo <- map[kGameLogoKey]
		giantbombId <- map[kGameGiantbombIdKey]
		links <- map[kGameLinksKey]

    }

    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if name != nil {
			dictionary.updateValue(name!, forKey: kGameNameKey)
		}
		if internalIdentifier != nil {
			dictionary.updateValue(internalIdentifier!, forKey: kGameInternalIdentifierKey)
		}
		if box != nil {
			dictionary.updateValue(box!, forKey: kGameBoxKey)
		}
		if logo != nil {
			dictionary.updateValue(logo!, forKey: kGameLogoKey)
		}
		if giantbombId != nil {
			dictionary.updateValue(giantbombId!, forKey: kGameGiantbombIdKey)
		}
		if links != nil {
			dictionary.updateValue(links!.dictionaryRepresentation(), forKey: kGameLinksKey)
		}

        return dictionary
    }

}
