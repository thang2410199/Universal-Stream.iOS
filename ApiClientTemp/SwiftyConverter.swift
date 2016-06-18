//
//  SwiftyConverter.swift
//  ApiClient
//
//  Created by Ngo Quoc Thang on May/18/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import SwiftyJSON

public class SwiftyConverter : IJsonConverter{
    
    public init(){}
    
    public func Converte<T : JsonInitable>(data : NSData) -> T {
        let json = JSON(data: data)
        let item : T = T(data: json)
        return item
    }
}