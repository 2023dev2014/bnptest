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
        return Array(hours[..<BerlinTimeConverter.Constants.numberOfHoursUpperBlocks])
    }

    var lowerHours: [TimeState] {
        return Array(hours[BerlinTimeConverter.Constants.numberOfHoursUpperBlocks...])
    }

    var upperMinutes: [TimeState] {
        return Array(minutes[..<BerlinTimeConverter.Constants.numberOfMinutesUpperBlocks])
    }

    var lowerMinutes: [TimeState] {
        return Array(minutes[BerlinTimeConverter.Constants.numberOfMinutesUpperBlocks...])
    }
}
