//
//  Dictionary.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on Jun/02/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation

extension Dictionary where Key:StringLiteralConvertible, Value:StringLiteralConvertible {
    
    init(_ elements: [Element]){
        self.init()
        for (k, v) in elements {
            self[k] = v
        }
    }
    
    func ToQuery() -> String
    {
        guard self.count > 0 else
        {
            return ""
        }
        
        var query : String = ""
        
        for (key, value) in self {
            query += "&\(key)=\(value)"
        }
        query = "?" + String(query.characters.dropFirst())
        return query
    }
}