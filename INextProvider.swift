//
//  INextProvider.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on May/23/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation

public protocol INextProvider {
    func GetNext() -> String
}