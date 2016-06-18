//
//  M3U8Parser.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on 6/7/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation

public enum M3U8Error: ErrorType {
    case Empty
    case WrongFormat
}

public class M3U8Parser : IM3U8Parser {
    
    public var m3u8 : String?
    
    public init() {}
    
    public init(_ data : String?)
    {
        self.m3u8 = data
    }
    
    public func Parse() throws ->  [M3u8Media]
    {
        
        guard let x = m3u8 where x.characters.count > 0 else {
            return []
        }
        let data = m3u8!
        var lines = data.stringByReplacingOccurrencesOfString("\r", withString: "").componentsSeparatedByString("\n")
        var result = [M3u8Media]();
        if(lines.count > 0){
            let firstLine = lines[0];
            if (firstLine != "#EXTM3U") {
                throw M3U8Error.WrongFormat
            }
            
            var streamInfo : M3u8Media? = nil
            var mediaDetected = false
            
            for i in (1..<lines.count) {
                let line = lines[i]
                if(line.hasPrefix("#")) {
                    let lineData = line.substringFromIndex(line.startIndex.advancedBy(1))
                    let split = lineData.componentsSeparatedByString(":")
                    let name = split[0]
                    let suffix = split[1]
                    
                    if(name == "EXT-X-MEDIA") {
                        mediaDetected = true
                        streamInfo = M3u8Media()
                    }
                    let attributes = suffix.componentsSeparatedByString(",")
                    for attribute in attributes {
                        let keyvalue = attribute.componentsSeparatedByString("=")
                        if(keyvalue.count > 1) {
                            switch keyvalue[0] {
                                case "TYPE":
                                    streamInfo?.Type = keyvalue[1].stringByTrimmingCharactersInSet(NSCharacterSet.init(charactersInString: "\""))
                                case "NAME":
                                    streamInfo?.Name = keyvalue[1].stringByTrimmingCharactersInSet(NSCharacterSet.init(charactersInString: "\""))
                                case "BANDWIDTH":
                                    streamInfo?.Bandwidth = Int64.init(keyvalue[1])
                                case "RESOLUTION":
                                    do {
                                        streamInfo?.Resolution = ResolutionData()
                                        let size = keyvalue[1].componentsSeparatedByString("x")
                                        if (size.count > 1)
                                        {
                                            streamInfo?.Resolution?.Width = Int(size[0])
                                            streamInfo?.Resolution?.Height = Int(size[1])
                                        }
                                    } catch {
                                        
                                    }
                                case "CODECS":
                                    streamInfo?.Codecs = keyvalue[1].stringByTrimmingCharactersInSet(NSCharacterSet.init(charactersInString: "\""))
                                case "VIDEO":
                                    streamInfo?.Video = keyvalue[1].stringByTrimmingCharactersInSet(NSCharacterSet.init(charactersInString: "\""))
                                default: break
                                
                            }
                        }
                    }
                }
                else
                {
                    //Url ?
                    if (mediaDetected)
                    {
                        if var stream = streamInfo {
                            stream.Url = line
                            mediaDetected = false
                            result += [stream]
                        }
                    }
                }
            }
        }
        
        return result
    }
    
    public func Load(text : String)
    {
        m3u8 = text;
    }
}

public struct M3u8Media
{
    var Type : String?
    var Name : String?
    var Bandwidth : Int64?
    var Resolution : ResolutionData?
    var Codecs : String?
    var Video : String?
    var Url : String?
    
    public init() {
        
    }
}

public struct ResolutionData
{
    var Width : Int?
    var Height : Int?
    
    public init(){}
}