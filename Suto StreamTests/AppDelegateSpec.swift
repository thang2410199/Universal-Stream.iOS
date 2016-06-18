//
//  AppDelegateSpec.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on May/20/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import Quick
import Nimble
import Swinject
import Suto_Stream
import ApiClient

@testable import Suto_Stream

class AppDelegateSpec: QuickSpec {
    override func spec() {
        var container: Container!
        beforeEach {
            container = AppDelegate().container
        }
        
        describe("Container") {
            it("resolves every service type.") {
                // Models
                expect(container.resolve(IWebService.self)).notTo(beNil())
                
                // ViewModels
                expect(container.resolve(HomeViewModeling.self))
                    .notTo(beNil())
            }
            
            it("parse m3u8 file", closure: { () -> Void in
                let baseURL : String = "http://usher.twitch.tv/"
                let path : String = NSBundle.init(forClass: AppDelegateSpec.self)
.pathForResource("test", ofType: "m3u8")!
                var str = ""
                do {
                    str = try! String(contentsOfFile: path, encoding: NSUTF8StringEncoding)
                }
                catch _ {
                    
                }
                do {
                    let parser = M3U8Parser(str)
                    let playlist = try parser.Parse()
                    print(playlist)
                    expect(playlist.count > 0).to(beTrue())
                    print("create model ok")
                } catch {
                    print("cant parse m3u8")
                }
    
                
                
//                M3U8PlaylistModel *medel = [[M3U8PlaylistModel alloc] initWithString:str baseURL:baseURL error:NULL];
//                
//                NSLog(@"segments names: %@", [medel segmentNamesForPlaylist:medel.audioPl]);
//                
//                NSString *m3u8Path = [NSTemporaryDirectory() stringByAppendingPathComponent:@"str.m3u8"];
//                error = nil;
//                [medel savePlaylistsToPath:m3u8Path error:&error];
//                if (error) {
//                    NSLog(@"playlists save error: %@", error);
//                }
            })
            
            it("get channel stream url", closure: {
                var remoteData : [M3u8Media] = [M3u8Media]()
                
                let channelName = "onscreenlol"
                let service = container.resolve(TwitchStreamInfoSerice.self)
                service?.channelName = channelName
                service?.GetData({ data in
                    for i in data {
                        print(i.Url)
                    }
                    remoteData += data
                })
                
                waitUntil { done in
                    NSThread.sleepForTimeInterval(5)
                    done()
                }
                expect(remoteData.count).toEventually(beGreaterThan(0), timeout : 60)
            })
            
            
            
        }
    }
}