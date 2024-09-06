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
        return BerlinTimeModel(
            seconds: .O,
            hours: [],
            minutes: [])
    }
}
