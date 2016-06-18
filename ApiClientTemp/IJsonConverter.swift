//
//  IJsonConverter.swift
//  ApiClient
//
//  Created by Ngo Quoc Thang on May/18/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import ObjectMapper

public protocol IJsonConverter {
    func Converte<T : JsonInitable>(data : NSData) -> T
}