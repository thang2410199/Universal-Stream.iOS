//
//  TwitchGameCellModeling.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on May/20/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import ReactiveCocoa
import enum Result.NoError

public protocol TwitchGameCellModeling {

    var game : TwitchTopGame? {get set}
    var Title : AnyProperty<String> {get}
    var _Title : MutableProperty<String> {get set}
}