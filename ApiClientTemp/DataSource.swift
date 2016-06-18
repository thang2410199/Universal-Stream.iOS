//
//  ServiceBase.swift
//  ApiClient
//
//  Created by Ngo Quoc Thang on May/16/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//
import enum Result.NoError
import Foundation
import ObjectMapper
import ReactiveCocoa

public class DataSource<T : Mappable> : IDataSource{
    let webService : IWebService
    
    public var parameters : [String : String]! = [:]
    var nextPage : String?
    
    public func SetParameter(key : String, value : String){
        parameters[key] = value
    }
    
    public func GetParameter(key : String) -> String? {
        if(parameters.keys.contains(key))
        {
            return parameters[key]
        }
        
        return nil
    }
    
    public func ClearParameter(){
        self.parameters.removeAll()
    }
    
    public func ResetNextPage(){
        self.nextPage = nil
    }
    
    public init(webService : IWebService){
        self.webService = webService
    }
    
    public func GetData(nextPageTrigger trigger: SignalProducer<(), NoError>) -> SignalProducer<TwitchTopGameResult, NetworkError>
    {
        return SignalProducer { observer, disposable in
            observer.sendCompleted()
        }
    }
    
    public func GetData(onComplete : (T) -> Void)
    {
        
    }
    
    public func Reset(){
        
    }
}