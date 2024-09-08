//
//  BerlinTimeAdapter.swift
//  BnpTest
//
//  Created by BNP Test on 06/09/2024.
//

import Foundation

struct BerlinTimeAdapter {

    private let timeConverter: BerlinTimeConverter = BerlinTimeConverter()

    func convertToBerlin(date: Date) -> BerlinTimeModel {
        let components = Calendar.current.dateComponents([.hour, .minute, .second], from: date)
        return BerlinTimeModel(
            seconds: timeConverter.secondsTimeState(for: components.second ?? 0),
            hours: timeConverter.hoursTimeState(for: components.hour ?? 0),
            minutes: timeConverter.minutesTimeState(for: components.minute ?? 0))
    }
}
