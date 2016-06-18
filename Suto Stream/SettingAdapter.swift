//
//  SettingAdapter.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on Jun/03/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation

protocol ISetingAdapter : ISettingService {
    func OpenFistTime() -> Bool
}

class SettingAdapterBase : ISetingAdapter {
    let settingService : ISettingService
    
    init(settingService : ISettingService)
    {
        self.settingService = settingService
    }
    
    func OpenFistTime() -> Bool
    {
        return true
    }

    func SetValue(value: AnyObject, key: String) {
        settingService.SetValue(value, key: key)
    }
    
    func GetValue<T>(key: String) -> T? {
        return settingService.GetValue(key)
    }
}

class SettingAdapter : SettingAdapterBase {
    
    override func OpenFistTime() -> Bool
    {
        let result : Bool? = settingService.GetValue(AppConstant.FirstTimeOpen)
        if let resultRaw = result {
            return resultRaw
        }
        
        return true
    }
}

class SettingAdapterMockup : SettingAdapterBase {
    
    override func OpenFistTime() -> Bool
    {
        return true
    }
}