//
//  TwitchGameCellViewModel.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on May/20/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import ReactiveCocoa
import ApiClient

// Inherits NSObject to use rac_willDeallocSignal.
public final class TwitchGameCellViewModel: NSObject, TwitchGameCellModeling {
    public var game: TwitchTopGame?
    
    public init(game : TwitchTopGame) {
        self.game = game
    }
}
