//
//  BerlinTimeConverter.swift
//  BnpTest
//
//  Created by BNP Test on 06/09/2024.
//

import Foundation

struct BerlinTimeConverter {

    func secondsTimeState(for seconds: Int) -> TimeState {
        let isOn = seconds % 2 == 0
        let timeState: TimeState = isOn ? .Y : .O
        return timeState
    }

    func hoursTimeState(for hours: Int) -> [TimeState] {
        let upperHoursCount = hours / Constants.hoursPerBlock
        let lowerHoursCount = hours % Constants.hoursPerBlock

        let upperHoursStates: [TimeState] = Array(repeating: .R, count: upperHoursCount) + Array(repeating: .O, count: Constants.numberOfHoursUpperBlocks - upperHoursCount)
        let lowerHoursStates: [TimeState] = Array(repeating: .R, count: lowerHoursCount) + Array(repeating: .O, count: Constants.numberOfHoursLowerBlocks - lowerHoursCount)
        return upperHoursStates + lowerHoursStates
    }

    func minutesTimeState(for minutes: Int) -> [TimeState] {
        let upperMinutesCount = minutes / Constants.minutesPerBlock
        let lowerMinutesCount = minutes % Constants.minutesPerBlock

        var upperStates: [TimeState] = []
        for index in 1...Constants.numberOfMinutesUpperBlocks {
            let state = index <= upperMinutesCount ? minutesTimeState(for: index) : .O
            upperStates.append(state)
        }

        let lowerMinutesStates: [TimeState] = Array(repeating: .Y, count: lowerMinutesCount) + Array(repeating: .O, count: Constants.numberOfMinutesLowerBlocks - lowerMinutesCount)
        return upperStates + lowerMinutesStates
    }
}

private extension BerlinTimeConverter {

    func minutesTimeState(for index: Int) -> TimeState {
        return index % Constants.blockIntervalForMinutesStateChange == 0 ? .R : .Y
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
