//
//  SettingService.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on Jun/03/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation

protocol ISettingService {
    func GetValue<T>(key : String) -> T?
    func SetValue(value : AnyObject, key : String) -> Void
}

class SettingService : ISettingService {
    func GetValue<T>(key : String) -> T? {
        if let value = NSUserDefaults.standardUserDefaults().objectForKey(key) {
            return value as? T
        }
        return nil
    }
    
    func SetValue(value : AnyObject, key : String) {
        NSUserDefaults.standardUserDefaults().setObject(value, forKey: key)
    }
}