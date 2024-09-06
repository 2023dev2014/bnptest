//
//  BerlinTimeModel.swift
//  BnpTest
//
//  Created by BNP Test on 06/09/2024.
//

import Foundation

struct BerlinTimeModel {

    private(set) var seconds: TimeState
    private(set) var hours: [TimeState]
    private(set) var minutes: [TimeState]

    var upperHours: [TimeState] {
        return []
    }

    var lowerHours: [TimeState] {
        return []
    }

    var upperMinutes: [TimeState] {
        return []
    }

    var lowerMinutes: [TimeState] {
        return []
    }
}
