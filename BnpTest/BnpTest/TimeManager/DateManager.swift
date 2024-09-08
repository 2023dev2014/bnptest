//
//  DateManager.swift
//  BnpTest
//
//  Created by BNP Test on 08/09/2024.
//

import Combine
import Foundation

final class DateManager: DateManagerProtocol {

    private var cancellable: Cancellable?
    var timeChangeNotifier = PassthroughSubject<Date, Never>()

    func start() {
        cancellable = Timer.publish(every: 1, on: .main, in: .common)
            .autoconnect()
            .sink() { [weak self] in
                guard let self = self else { return }
                self.timeChangeNotifier.send($0)
            }
    }

    func stop() {
        cancellable?.cancel()
    }
}
