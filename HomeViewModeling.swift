//
//  HomeViewModeling.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on May/19/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import ReactiveCocoa
import Result

public protocol HomeViewModeling {
    var cellModels: AnyProperty<[TwitchGameCellModeling]> { get }
    var searching: AnyProperty<Bool> { get }
    var errorMessage: AnyProperty<String?> { get }
    
    func startSearch()
    func refresh()
    var loadNextPage: Action<(), (), NoError> { get }
    
    func selectCellAtIndex(index: Int)
    
    func Authorize(onComplete: CompleteBlock, onError: ErrorBlock, context : AnyObject)
}

public typealias CompleteBlock = ((data : AnyObject?) -> Void)
public typealias ErrorBlock = (() -> Void)