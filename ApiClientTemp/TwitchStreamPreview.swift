//
//  TwitchGameLogo.swift
//  ApiClient
//
//  Created by Ngo Quoc Thang on May/24/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import ObjectMapper

public class TwitchStreamPreview : Mappable {
    
    // MARK: Declaration for string constants to be used to decode and also serialize.
    internal let kLogoLargeKey: String = "large"
    internal let kLogoMediumKey : String = "medium"
    internal let kLogoSmallKey: String = "small"
    internal let kLogoTemplateKey: String = "template"
    
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
        large <- map[kLogoLargeKey]
        medium <- map[kLogoMediumKey]
        small <- map[kLogoSmallKey]
        template <- map[kLogoTemplateKey]
    }
}
