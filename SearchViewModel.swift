//
// Created by Ngo Quoc Thang on 7/5/16.
// Copyright (c) 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import ReactiveCocoa

class SearchViewModel {
    public var userModels : AnyProperty<[TwitchUserModeling]> { return AnyProperty(_userModels) }
    
    private var _userModels : MutableProperty<[TwitchUserModeling]> = MutableProperty<[TwitchUserModeling]>([])
    
    public func Search(keyword : String, scope : String) {
        _userModels.value.removeAll()
        
        let diceRoll = Int(arc4random_uniform(6) + 1)
        // Random data
        for _ in 0...diceRoll {
            _userModels.value.append(TwitchUserModel())
        }
        
    }
}
