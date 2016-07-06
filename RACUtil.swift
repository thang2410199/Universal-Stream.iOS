//
//  RACUtil.swift
//  Suto Stream
//
//  Created by Ngo Quoc Thang on 7/4/16.
//  Copyright © 2016 Ngo Quoc Thang. All rights reserved.
//

import Foundation
import UIKit
import enum Result.NoError
import ReactiveCocoa

internal extension UITableViewCell {
    internal var racutil_prepareForReuseProducer: SignalProducer<(), NoError>  {
        return self.rac_prepareForReuseSignal
            .toSignalProducer()
            .map { _ in }
            .flatMapError { _ in SignalProducer(value: ()) }
    }
}

internal extension UICollectionViewCell {
    internal var racutil_prepareForReuseProducer: SignalProducer<(), NoError>  {
        return self.rac_prepareForReuseSignal
            .toSignalProducer()
            .map { _ in }
            .flatMapError { _ in SignalProducer(value: ()) }
    }
}