//
//  LocalizedString.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on May/20/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation

internal func LocalizedString(key: String, comment: String?) -> String {
    struct Static {
        static let bundle = NSBundle(identifier: "owned.Suto-Stream")!
    }
    return NSLocalizedString(key, bundle: Static.bundle, comment: comment ?? "")
}
