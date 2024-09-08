//
//  DateHelper.swift
//  BnpTestTests
//
//  Created by BNP Test on 08/09/2024.
//

import Foundation

struct DateHelper {

    var sixSeptemberTwentyTwentyFour: Date {
        return formatTimestampToDate(1725636129) // 06 september 2024 17:22:09
    }

    var heightSeptemberTwentyTwentyFour: Date {
        return formatTimestampToDate(1725801674) // 08 september 2024 13:21:14
    }
}

private extension DateHelper {

    func formatTimestampToDate(_ timestampInSeconds: Int) -> Date {
        return Date(timeIntervalSince1970: TimeInterval(timestampInSeconds))
    }
}
