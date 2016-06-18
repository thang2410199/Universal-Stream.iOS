//
//  BaseViewModel.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on Jun/02/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation

class BaseViewModel {
    var parameters : [String : String]! = [:]
    
    func SetParameter(key : String, value : String){
        parameters[key] = value
    }
    
    func GetParameter(key : String) -> String? {
        if(parameters.keys.contains(key))
        {
            return parameters[key]
        }
        
        return nil
    }
}