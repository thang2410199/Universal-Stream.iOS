//
//  StreamListViewModeling.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on 6/17/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import ReactiveCocoa

protocol StreamListViewModeling {
    var dataBinding: AnyProperty<[TwitchStream]> { get }
    var isBusyBinding : AnyProperty<Bool> { get }
    
    func GetData(onComplete : () -> Void) -> Void
    func Reset() -> Void
}