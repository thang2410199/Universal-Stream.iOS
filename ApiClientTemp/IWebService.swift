//
//  IWebService.swift
//  ApiClient
//
//  Created by Ngo Quoc Thang on May/17/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import ObjectMapper
import ReactiveCocoa
import enum Result.NoError

public protocol IWebService{
    init(jsonConverter : IJsonConverter)
    
    func SetHeader(header : [NSObject : AnyObject])
    
    func SendRequest(
        request : NetworkRequest,
        customHeader : [String : String]?,
        onComplete : (response : NSData, header : NSHTTPURLResponse) -> Void,
        onError : (response : NSHTTPURLResponse) -> Void)
    
    // Get object from source
    func SendRequest<T : JsonInitable>(
        request : NetworkRequest,
        customHeader : [String : String]?,
        onComplete : (value : T) -> Void,
        onError : (response : NSHTTPURLResponse) -> Void)
    
    func SendRequestObject<T : Mappable>(
        request : NetworkRequest,
        customHeader : [String : String]?,
        onComplete : (value : T?) -> Void,
        onError : (response : NSHTTPURLResponse) -> Void)

}