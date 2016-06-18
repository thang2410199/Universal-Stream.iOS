//
//  JsonInitable.swift
//  ApiClient
//
//  Created by Ngo Quoc Thang on May/17/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import SwiftyJSON

public protocol JsonInitable {
    init()
    init(data: JSON)
}