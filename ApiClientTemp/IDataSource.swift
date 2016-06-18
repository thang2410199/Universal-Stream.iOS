//
//  IDataSource.swift
//  ApiClient
//
//  Created by Ngo Quoc Thang on May/16/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import ReactiveCocoa
import enum Result.NoError

public protocol IDataSource {
    var parameters : [String : String]! {get set}
    
    func SetParameter(key : String, value : String)
    
    func GetParameter(key : String) -> String?
    
    func GetData(nextPageTrigger trigger: SignalProducer<(), NoError>) -> SignalProducer<TwitchTopGameResult, NetworkError>
    func Reset()
}