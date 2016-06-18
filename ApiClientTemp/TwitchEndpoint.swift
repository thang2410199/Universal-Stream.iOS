
//
//  TwitchLinksswift.swift
//  ApiClient
//
//  Created by Ngo Quoc Thang on May/20/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import ObjectMapper

public struct TwitchEndpoint : Mappable {
    public var user : String = ""
    public var channel : String = ""
    public var search : String = ""
    public var streams : String = ""
    public var ingests : String = ""
    public var teams : String = ""
    
    public init(){}
    
    public init?(_ map: Map) {
        
    }
    
    // Mappable
    mutating public func mapping(map: Map) {
        user    <- map["user"]
        channel <- map["channel"]
        search    <- map["search"]
        streams <- map["streams"]
        ingests    <- map["ingests"]
        teams <- map["teams"]
        
    }
}