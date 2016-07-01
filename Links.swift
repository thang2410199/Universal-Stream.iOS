//
//  Links.swift
//
//  Created by Ngo Quoc Thang on 7/1/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import ObjectMapper

public class Links: Mappable {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kLinksSelfKey: String = "self"


    // MARK: Properties
	public var self: String?



    // MARK: ObjectMapper Initalizers
    /**
    Map a JSON object to this class using ObjectMapper
    - parameter map: A mapping from ObjectMapper
    */
    required init?(_ map: Map){

    }

    /**
    Map a JSON object to this class using ObjectMapper
    - parameter map: A mapping from ObjectMapper
    */
    func mapping(map: Map) {
		self <- map[kLinksSelfKey]

    }

    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if self != nil {
			dictionary.updateValue(self!, forKey: kLinksSelfKey)
		}

        return dictionary
    }

}
