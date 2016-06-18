//
//  WebService.swift
//  ApiClient
//
//  Created by Ngo Quoc Thang on May/16/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
import AlamofireObjectMapper
import ObjectMapper
import ReactiveCocoa
import enum Result.NoError

public class WebService : IWebService {

    
    public static var SharedManager : Manager? = nil
    let _jsonConverter : IJsonConverter
    
    let queue = dispatch_queue_create("network-manager-response-queue", DISPATCH_QUEUE_CONCURRENT)
    
    public required init(jsonConverter : IJsonConverter){
        WebService.SharedManager = Alamofire.Manager.sharedInstance
        self._jsonConverter = jsonConverter
    }
    
    public func int()
    {
        WebService.SharedManager = Alamofire.Manager.sharedInstance
    }
    
    public func SetHeader(header : [NSObject : AnyObject]){
        let configuration = NSURLSessionConfiguration.defaultSessionConfiguration()
        configuration.HTTPAdditionalHeaders = header;
        WebService.SharedManager = Alamofire.Manager(configuration: configuration)
    }
    
    public func SendRequest(
        request : NetworkRequest,
        customHeader : [String : String]?,
        onComplete : (response : NSData, header : NSHTTPURLResponse) -> Void,
        onError : (response : NSHTTPURLResponse) -> Void)
    {
        //WebService.SharedManager!.request(request.HttpMethod, request.Url)
        WebService.SharedManager!.request(request.HttpMethod, request.Url, parameters: request.Parameter, encoding: ParameterEncoding.URL, headers: customHeader)
            .validate()
            .response(
                queue: self.queue,
                completionHandler: { request, response, data, error in
                    guard error == nil else {
                        // handle error (including validate error) here, e.g.
                        onError(response: response!)
                        return
                    }
                    
                    // handle success here
                    onComplete(response: data!, header: response!)
                }
        
        )
    }
    
    // Get object from source
    public func SendRequest<T : JsonInitable>(
        request : NetworkRequest,
        customHeader : [String : String]?,
        onComplete : (value : T) -> Void,
        onError : (response : NSHTTPURLResponse) -> Void)
    {
        WebService.SharedManager!.request(request.HttpMethod, request.Url, parameters: request.Parameter, encoding: ParameterEncoding.URL, headers: customHeader)
            .validate()
            .response(
                queue: self.queue,
                completionHandler: { request, response, data, error in
                    guard error == nil else {
                        // handle error (including validate error) here, e.g.
                        onError(response: response!)
                        return
                    }
                    
                    //print("Parsing JSON on thread: \(NSThread.currentThread()) is main thread: \(NSThread.isMainThread())")
                    
                    //Map to object here
                    let item : T = self._jsonConverter.Converte(data!)
                    
                    // handle success here
                    onComplete(value: item)
                }
                
        )
    }
    
    public func SendRequestObject<T : Mappable>(
        request : NetworkRequest,
        customHeader : [String : String]?,
        onComplete : (value : T?) -> Void,
        onError : (response : NSHTTPURLResponse) -> Void)
    {
        WebService.SharedManager!.request(request.HttpMethod, request.Url, parameters: request.Parameter, encoding: ParameterEncoding.URL, headers: customHeader)
            .validate()
            .responseObject(
                queue: self.queue!,
                completionHandler: { (mapperResponse: Response<T, NSError>) in
                    guard mapperResponse.result.error == nil else {
                        // handle error (including validate error) here, e.g.
                        onError(response: mapperResponse.response!)
                        return
                    }
                    
                    print(request.Url)
                    //print("Parsing JSON on thread: \(NSThread.currentThread()) is main thread: \(NSThread.isMainThread())")
                    
                    //Map to object here
                    let item = mapperResponse.result.value
                    
                    // handle success here
                    onComplete(value: item)
                }
                
        )
    }


}

public struct NetworkRequest {
    public var HttpMethod : Alamofire.Method = .GET
    public var Url : String = ""
    public var Parameter : [String : AnyObject]? = nil
    
    init(method : Alamofire.Method, url : String, param : [String : AnyObject]? = nil){
        self.HttpMethod = method
        self.Url = url
        self.Parameter = param
    }
}

public struct DataResult<T>{
    public let IsSuccess : Bool
    public let Data : [T]
    public let StatusCode : Int
    
    init(isSuccess : Bool, data : [T], statusCode : Int) {
        self.IsSuccess = isSuccess
        self.Data = data
        self.StatusCode = statusCode
    }
}