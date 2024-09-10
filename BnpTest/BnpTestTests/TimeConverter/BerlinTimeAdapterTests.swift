//
//  BerlinTimeAdapterTests.swift
//  BnpTestTests
//
//  Created by BNP Test on 06/09/2024.
//

@testable import BnpTest
import XCTest

final class BerlinTimeAdapterTests: XCTestCase {

    var sut: BerlinTimeAdapter!

    override func setUp() {
        sut = BerlinTimeAdapter()
    }

    func testConvertToBerlinTime() {
        let model = sut.convertToBerlin(date: DateHelper().sixSeptemberTwentyTwentyFour)

        XCTAssertEqual(model.upperHours, [.R, .R, .R, .O])
        XCTAssertEqual(model.lowerHours, [.R, .R, .O, .O])
        XCTAssertEqual(model.upperMinutes, [.Y, .Y, .R, .Y, .O, .O, .O, .O, .O, .O, .O])
        XCTAssertEqual(model.lowerMinutes, [.Y, .Y, .O, .O])
        XCTAssertEqual(model.seconds, .O)
    }
}
