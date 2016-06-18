//
//  TwitchGameBox.swift
//  ApiClient
//
//  Created by Ngo Quoc Thang on May/24/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import ObjectMapper

public class TwitchGameBox: Mappable {
    
    // MARK: Declaration for string constants to be used to decode and also serialize.
    internal let kBoxLargeKey: String = "large"
    internal let kBoxMediumKey : String = "medium"
    internal let kBoxSmallKey: String = "small"
    internal let kBoxTemplateKey: String = "template"
    
    // MARK: Properties
    public var large: String?
    public var medium: String?
    public var small: String?
    public var template: String?
    
    
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
        large <- map[kBoxLargeKey]
        medium <- map[kBoxMediumKey]
        small <- map[kBoxSmallKey]
        template <- map[kBoxTemplateKey]
    }
}
