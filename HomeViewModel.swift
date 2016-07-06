//
//  HomeViewModel.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on May/19/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import ReactiveCocoa
import Result

public final class HomeViewModel : HomeViewModeling {
    
    //public property for Reactivecocoa
    public var cellModels: AnyProperty<[TwitchGameCellModeling]> { return AnyProperty(_cellModels) }
    public var searching: AnyProperty<Bool> { return AnyProperty(_searching) }
    public var errorMessage: AnyProperty<String?> { return AnyProperty(_errorMessage) }
    
    private let _cellModels = MutableProperty<[TwitchGameCellModeling]>([])
    private let _searching = MutableProperty<Bool>(false)
    private let _errorMessage = MutableProperty<String?>(nil)
    
    //Send load next page signal
    public var loadNextPage: Action<(), (), NoError> {
        return Action(enabledIf: nextPageLoadable) { _ in
            return SignalProducer { observer, disposable in
                if let (_, observer) = self.nextPageTrigger.value {
                    self._searching.value = true
                    observer.sendNext(())
                }
            }
        }
    }
    
    // check if has more to load
    public var nextPageLoadable: AnyProperty<Bool> {
        return AnyProperty(
            initialValue: false,
            producer: searching.producer.combineLatestWith(nextPageTrigger.producer).map { searching, trigger in
                !searching && trigger != nil
            })
    }
    private let nextPageTrigger = MutableProperty<(SignalProducer<(), NoError>, Observer<(), NoError>)?>(nil) // SignalProducer buffer
    
    private var foundGames = [TwitchTopGame]()
    
    private var topGameResult : TwitchTopGameResult?
    private let endpointService : DataSource<TwitchEndpointResult>
    private let topGameService : DataSource<TwitchTopGameResult>
    
    public func refresh() -> Void {
        self.topGameService.Reset()
        _cellModels.value.removeAll()
        GetData()
    }
    
    public init(endpointService : DataSource<TwitchEndpointResult>,
                topGameService : DataSource<TwitchTopGameResult>) {
        self.endpointService = endpointService
        self.topGameService = topGameService
    }
    
    public func GetData() {
        func toCellModel(game : TwitchTopGame) -> TwitchGameCellModeling {
            return TwitchGameCellViewModel(game: game) as TwitchGameCellModeling
        }
        
        _searching.value = true
        nextPageTrigger.value = SignalProducer<(), NoError>.buffer(2)
        let (trigger, _) = nextPageTrigger.value!
        
        topGameService.GetData(nextPageTrigger: trigger)
            .map { response in
                (response.top, response.top!.map { toCellModel($0) })
            }
            .observeOn(UIScheduler())
            .on(next: { games, cellModels in
                self.foundGames += games!
                self._cellModels.value += cellModels
                self._searching.value = false
            })
            .on(failed: { error in
                self._errorMessage.value = error.description
            })
            .on(event: { event in
                switch event {
                case .Completed, .Failed, .Interrupted:
                    self.nextPageTrigger.value = nil
                    self._searching.value = false
                default:
                    break
                }
            })
            .start()
    }
    
    public func Authorize(onComplete: CompleteBlock, onError: ErrorBlock, context : AnyObject) {
        let oauth_service : Oauth2Service? = getInstance()
        oauth_service?.Authorize(onComplete, onError: onError, context: context)
        
    }
    
    //process event at ViewModel
    public func selectCellAtIndex(index: Int) {
//        imageDetailViewModel?.update(foundImages, atIndex: index)
    }
    
    public func EditTitleAtIndex(index : Int) {
        _cellModels.value[index]._Title.value = "haha"
    }
}