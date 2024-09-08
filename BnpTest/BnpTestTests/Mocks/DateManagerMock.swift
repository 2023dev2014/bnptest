//
//  DateManagerMock.swift
//  BnpTestTests
//
//  Created by BNP Test on 08/09/2024.
//

@testable import BnpTest

import Combine
import Foundation

final class DateManagerMock: DateManagerProtocol {

    var hasCalledStart: Bool = false
    var hasCalledStop: Bool = false
    var timeChangeNotifier = PassthroughSubject<Date, Never>()

    func start() {
        hasCalledStart = true
    }

    func stop() {
        hasCalledStop = true
    }
}

extension DateManagerMock {

    func simulateNewDate(_ date: Date) {
        timeChangeNotifier.send(date)
    }
}
