//
//  StreamListViewModel.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on Jun/02/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import ReactiveCocoa
import SDWebImage

class StreamListViewModel : BaseViewModel, StreamListViewModeling {
    var dataBinding: AnyProperty<[TwitchStream]> { return AnyProperty(_dataBinding) }
    var isBusyBinding : AnyProperty<Bool> { return AnyProperty(_isBusyBinding) }
    
    private var _dataBinding = MutableProperty<[TwitchStream]>([])
    private var _isBusyBinding = MutableProperty<Bool>(false)
    
    var total : Int = 0
    
    var streamService : DataSource<TwitchStreamResult>
    
    init(streamService : DataSource<TwitchStreamResult>)
    {
        self.streamService = streamService
    }
    
    func GetData(onComplete : () -> Void) {
        if(self.isBusyBinding.value)
        {
            return
        }
        _isBusyBinding.value = true
        streamService.GetData({(result) -> Void in

            self._dataBinding.value += result.streams
            self.total = result.total!
            self._isBusyBinding.value = false
            onComplete()
        })
    }
    
    func Reset() -> Void {
        //streamService.ClearParameter()
        streamService.ResetNextPage()
        _dataBinding.value.removeAll()
        total = 0
        self._isBusyBinding.value = false
    }
}