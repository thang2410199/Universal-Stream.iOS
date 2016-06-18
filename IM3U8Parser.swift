//
//  IM3U8Parser.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on 6/8/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation

public protocol IM3U8Parser {
    func Parse() throws ->  [M3u8Media]
    func Load(text : String)
}