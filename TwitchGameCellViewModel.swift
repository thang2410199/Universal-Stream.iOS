//
//  TwitchGameCellViewModel.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on May/20/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import ReactiveCocoa
import enum Result.NoError

// Inherits NSObject to use rac_willDeallocSignal.
public final class TwitchGameCellViewModel: NSObject, TwitchGameCellModeling {
    public var game: TwitchTopGame?
    
    public var Title : AnyProperty<String> {
        get {
            return AnyProperty(self._Title)
        }
    }
    
    public var _Title : MutableProperty<String>

    
    public init(game : TwitchTopGame) {
        self.game = game
        _Title = MutableProperty<String>("")
        _Title.value = (game.game?.name)!
    }
}
