//
//  String.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on Jun/03/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation

func EncodeUrl(value : String) -> String {
    return value.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLQueryAllowedCharacterSet())!
}
