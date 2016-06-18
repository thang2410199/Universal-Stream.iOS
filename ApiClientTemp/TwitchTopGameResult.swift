//
//  TwitchTopGameResult.swift
//
//  Created by Ngo Quoc Thang on May/20/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import ObjectMapper

public class TwitchTopGameResult: Mappable, INextProvider {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kTwitchTopGameResultLinksKey: String = "_links"
	internal let kTwitchTopGameResultTopKey: String = "top"
	internal let kTwitchTopGameResultTotalKey: String = "_total"


    // MARK: Properties
	public var links: TwitchLink?
	public var top: [TwitchTopGame]? = []
	public var total: Int? = 0



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
		links <- map[kTwitchTopGameResultLinksKey]
		top <- map[kTwitchTopGameResultTopKey]
		total <- map[kTwitchTopGameResultTotalKey]

    }
    
    public func GetNext() -> String? {
        return links!.next
    }

    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if links != nil {
			dictionary.updateValue(links!.dictionaryRepresentation(), forKey: kTwitchTopGameResultLinksKey)
		}
		if top?.count > 0 {
			var temp: [AnyObject] = []
			for item in top! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kTwitchTopGameResultTopKey)
		}
		if total != nil {
			dictionary.updateValue(total!, forKey: kTwitchTopGameResultTotalKey)
		}

        return dictionary
    }

}
