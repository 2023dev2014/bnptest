//
//  DateManagerProtocol.swift
//  BnpTest
//
//  Created by BNP Test on 08/09/2024.
//

import Combine
import Foundation

protocol DateManagerProtocol {

    var timeChangeNotifier: PassthroughSubject<Date, Never> { get }

    func start()
    func stop()
}
