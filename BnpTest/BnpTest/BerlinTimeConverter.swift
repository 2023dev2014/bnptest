//
//  BerlinTimeConverter.swift
//  BnpTest
//
//  Created by BNP Test on 06/09/2024.
//

import Foundation

struct BerlinTimeConverter {

    func secondsTimeState(for seconds: Int) -> TimeState {
        return .O
    }

    func hoursTimeState(for hours: Int) -> [TimeState] {
        return []
    }

    func minutesTimeState(for minutes: Int) -> [TimeState] {
        return []
    }
}

private extension BerlinTimeConverter {

    func minutesTimeState(for index: Int) -> TimeState {
        return .O
    }
}

extension BerlinTimeConverter {

    enum Constants {
        static let hoursPerBlock = 5
        static let numberOfHoursUpperBlocks = 4
        static let numberOfHoursLowerBlocks = 4
        static let minutesPerBlock = 5
        static let numberOfMinutesUpperBlocks = 11
        static let numberOfMinutesLowerBlocks = 4
        static let blockIntervalForMinutesStateChange = 3
    }
}
