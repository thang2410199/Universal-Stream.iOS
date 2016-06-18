//
//  TwitchEndpoint.swift
//  ApiClient
//
//  Created by Ngo Quoc Thang on May/16/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import SwiftyJSON
import ObjectMapper

public struct TwitchEndpointResult : JsonInitable, Mappable{
    public var identified : Bool = false
    public var _links : TwitchEndpoint?
    
    public init(){
        _links = TwitchEndpoint()
        identified = false
    }
    
    public init?(_ map: Map) {
        
    }

    // Mappable
    mutating public func mapping(map: Map) {
        identified    <- map["identified"]
        _links         <- map["_links"]
    }
    
    public init(data: JSON) {
        //Init the object
        if let _identified = data["identified"].bool {
            self.identified = _identified
        }
        self._links = TwitchEndpoint()
        if let _endpoint = data["_links"]["user"].string {
            self._links!.user = _endpoint
        }
        if let _endpoint = data["_links"]["channel"].string {
            self._links!.channel = _endpoint
        }
        if let _endpoint = data["_links"]["streams"].string {
            self._links!.streams = _endpoint
        }
        if let _endpoint = data["_links"]["ingests"].string {
            self._links!.ingests = _endpoint
        }
        if let _endpoint = data["_links"]["teams"].string {
            self._links!.teams = _endpoint
        }
        if let _endpoint = data["_links"]["search"].string {
            self._links!.search = _endpoint
        }
    }
}