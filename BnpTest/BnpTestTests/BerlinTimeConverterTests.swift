//
//  BerlinTimeConverterTests.swift
//  BnpTestTests
//
//  Created by BNP Test on 06/09/2024.
//

@testable import BnpTest
import XCTest

final class BerlinTimeConverterTests: XCTestCase {

    var sut: BerlinTimeConverter!

    override func setUp() {
        sut = BerlinTimeConverter()
    }


    func testSecondsTimeStates() {
        XCTAssertEqual(sut.secondsTimeState(for: 00), .Y)
        XCTAssertEqual(sut.secondsTimeState(for: 59), .O)
    }

    func testMinutesTimeStates() {
        XCTAssertEqual(sut.minutesTimeState(for: 00), [.O, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 01), [.O, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O, .Y, .O, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 02), [.O, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O, .Y, .Y, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 03), [.O, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O, .Y, .Y, .Y, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 04), [.O, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O, .Y, .Y, .Y, .Y])
        XCTAssertEqual(sut.minutesTimeState(for: 05), [.Y, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 06), [.Y, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O, .Y, .O, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 07), [.Y, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O, .Y, .Y, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 08), [.Y, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O, .Y, .Y, .Y, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 09), [.Y, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O, .Y, .Y, .Y, .Y])
        XCTAssertEqual(sut.minutesTimeState(for: 10), [.Y, .Y, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 11), [.Y, .Y, .O, .O, .O, .O, .O, .O, .O, .O, .O, .Y, .O, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 12), [.Y, .Y, .O, .O, .O, .O, .O, .O, .O, .O, .O, .Y, .Y, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 13), [.Y, .Y, .O, .O, .O, .O, .O, .O, .O, .O, .O, .Y, .Y, .Y, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 14), [.Y, .Y, .O, .O, .O, .O, .O, .O, .O, .O, .O, .Y, .Y, .Y, .Y])
        XCTAssertEqual(sut.minutesTimeState(for: 15), [.Y, .Y, .R, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 16), [.Y, .Y, .R, .O, .O, .O, .O, .O, .O, .O, .O, .Y, .O, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 17), [.Y, .Y, .R, .O, .O, .O, .O, .O, .O, .O, .O, .Y, .Y, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 18), [.Y, .Y, .R, .O, .O, .O, .O, .O, .O, .O, .O, .Y, .Y, .Y, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 19), [.Y, .Y, .R, .O, .O, .O, .O, .O, .O, .O, .O, .Y, .Y, .Y, .Y])
        XCTAssertEqual(sut.minutesTimeState(for: 20), [.Y, .Y, .R, .Y, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 21), [.Y, .Y, .R, .Y, .O, .O, .O, .O, .O, .O, .O, .Y, .O, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 22), [.Y, .Y, .R, .Y, .O, .O, .O, .O, .O, .O, .O, .Y, .Y, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 23), [.Y, .Y, .R, .Y, .O, .O, .O, .O, .O, .O, .O, .Y, .Y, .Y, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 24), [.Y, .Y, .R, .Y, .O, .O, .O, .O, .O, .O, .O, .Y, .Y, .Y, .Y])
        XCTAssertEqual(sut.minutesTimeState(for: 25), [.Y, .Y, .R, .Y, .Y, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 26), [.Y, .Y, .R, .Y, .Y, .O, .O, .O, .O, .O, .O, .Y, .O, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 27), [.Y, .Y, .R, .Y, .Y, .O, .O, .O, .O, .O, .O, .Y, .Y, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 28), [.Y, .Y, .R, .Y, .Y, .O, .O, .O, .O, .O, .O, .Y, .Y, .Y, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 29), [.Y, .Y, .R, .Y, .Y, .O, .O, .O, .O, .O, .O, .Y, .Y, .Y, .Y])
        XCTAssertEqual(sut.minutesTimeState(for: 30), [.Y, .Y, .R, .Y, .Y, .R, .O, .O, .O, .O, .O, .O, .O, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 31), [.Y, .Y, .R, .Y, .Y, .R, .O, .O, .O, .O, .O, .Y, .O, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 32), [.Y, .Y, .R, .Y, .Y, .R, .O, .O, .O, .O, .O, .Y, .Y, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 33), [.Y, .Y, .R, .Y, .Y, .R, .O, .O, .O, .O, .O, .Y, .Y, .Y, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 34), [.Y, .Y, .R, .Y, .Y, .R, .O, .O, .O, .O, .O, .Y, .Y, .Y, .Y])
        XCTAssertEqual(sut.minutesTimeState(for: 35), [.Y, .Y, .R, .Y, .Y, .R, .Y, .O, .O, .O, .O, .O, .O, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 36), [.Y, .Y, .R, .Y, .Y, .R, .Y, .O, .O, .O, .O, .Y, .O, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 37), [.Y, .Y, .R, .Y, .Y, .R, .Y, .O, .O, .O, .O, .Y, .Y, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 38), [.Y, .Y, .R, .Y, .Y, .R, .Y, .O, .O, .O, .O, .Y, .Y, .Y, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 39), [.Y, .Y, .R, .Y, .Y, .R, .Y, .O, .O, .O, .O, .Y, .Y, .Y, .Y])
        XCTAssertEqual(sut.minutesTimeState(for: 40), [.Y, .Y, .R, .Y, .Y, .R, .Y, .Y, .O, .O, .O, .O, .O, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 41), [.Y, .Y, .R, .Y, .Y, .R, .Y, .Y, .O, .O, .O, .Y, .O, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 42), [.Y, .Y, .R, .Y, .Y, .R, .Y, .Y, .O, .O, .O, .Y, .Y, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 43), [.Y, .Y, .R, .Y, .Y, .R, .Y, .Y, .O, .O, .O, .Y, .Y, .Y, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 44), [.Y, .Y, .R, .Y, .Y, .R, .Y, .Y, .O, .O, .O, .Y, .Y, .Y, .Y])
        XCTAssertEqual(sut.minutesTimeState(for: 45), [.Y, .Y, .R, .Y, .Y, .R, .Y, .Y, .R, .O, .O, .O, .O, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 46), [.Y, .Y, .R, .Y, .Y, .R, .Y, .Y, .R, .O, .O, .Y, .O, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 47), [.Y, .Y, .R, .Y, .Y, .R, .Y, .Y, .R, .O, .O, .Y, .Y, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 48), [.Y, .Y, .R, .Y, .Y, .R, .Y, .Y, .R, .O, .O, .Y, .Y, .Y, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 49), [.Y, .Y, .R, .Y, .Y, .R, .Y, .Y, .R, .O, .O, .Y, .Y, .Y, .Y])
        XCTAssertEqual(sut.minutesTimeState(for: 50), [.Y, .Y, .R, .Y, .Y, .R, .Y, .Y, .R, .Y, .O, .O, .O, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 51), [.Y, .Y, .R, .Y, .Y, .R, .Y, .Y, .R, .Y, .O, .Y, .O, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 52), [.Y, .Y, .R, .Y, .Y, .R, .Y, .Y, .R, .Y, .O, .Y, .Y, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 53), [.Y, .Y, .R, .Y, .Y, .R, .Y, .Y, .R, .Y, .O, .Y, .Y, .Y, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 54), [.Y, .Y, .R, .Y, .Y, .R, .Y, .Y, .R, .Y, .O, .Y, .Y, .Y, .Y])
        XCTAssertEqual(sut.minutesTimeState(for: 55), [.Y, .Y, .R, .Y, .Y, .R, .Y, .Y, .R, .Y, .Y, .O, .O, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 56), [.Y, .Y, .R, .Y, .Y, .R, .Y, .Y, .R, .Y, .Y, .Y, .O, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 57), [.Y, .Y, .R, .Y, .Y, .R, .Y, .Y, .R, .Y, .Y, .Y, .Y, .O, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 58), [.Y, .Y, .R, .Y, .Y, .R, .Y, .Y, .R, .Y, .Y, .Y, .Y, .Y, .O])
        XCTAssertEqual(sut.minutesTimeState(for: 59), [.Y, .Y, .R, .Y, .Y, .R, .Y, .Y, .R, .Y, .Y, .Y, .Y, .Y, .Y])
    }

    func testHoursTimeStates() {
        XCTAssertEqual(sut.hoursTimeState(for: 00), [.O, .O, .O, .O, .O, .O, .O, .O])
        XCTAssertEqual(sut.hoursTimeState(for: 01), [.O, .O, .O, .O, .R, .O, .O, .O])
        XCTAssertEqual(sut.hoursTimeState(for: 02), [.O, .O, .O, .O, .R, .R, .O, .O])
        XCTAssertEqual(sut.hoursTimeState(for: 03), [.O, .O, .O, .O, .R, .R, .R, .O])
        XCTAssertEqual(sut.hoursTimeState(for: 04), [.O, .O, .O, .O, .R, .R, .R, .R])
        XCTAssertEqual(sut.hoursTimeState(for: 05), [.R, .O, .O, .O, .O, .O, .O, .O])
        XCTAssertEqual(sut.hoursTimeState(for: 06), [.R, .O, .O, .O, .R, .O, .O, .O])
        XCTAssertEqual(sut.hoursTimeState(for: 07), [.R, .O, .O, .O, .R, .R, .O, .O])
        XCTAssertEqual(sut.hoursTimeState(for: 08), [.R, .O, .O, .O, .R, .R, .R, .O])
        XCTAssertEqual(sut.hoursTimeState(for: 09), [.R, .O, .O, .O, .R, .R, .R, .R])
        XCTAssertEqual(sut.hoursTimeState(for: 10), [.R, .R, .O, .O, .O, .O, .O, .O])
        XCTAssertEqual(sut.hoursTimeState(for: 11), [.R, .R, .O, .O, .R, .O, .O, .O])
        XCTAssertEqual(sut.hoursTimeState(for: 12), [.R, .R, .O, .O, .R, .R, .O, .O])
        XCTAssertEqual(sut.hoursTimeState(for: 13), [.R, .R, .O, .O, .R, .R, .R, .O])
        XCTAssertEqual(sut.hoursTimeState(for: 14), [.R, .R, .O, .O, .R, .R, .R, .R])
        XCTAssertEqual(sut.hoursTimeState(for: 15), [.R, .R, .R, .O, .O, .O, .O, .O])
        XCTAssertEqual(sut.hoursTimeState(for: 16), [.R, .R, .R, .O, .R, .O, .O, .O])
        XCTAssertEqual(sut.hoursTimeState(for: 17), [.R, .R, .R, .O, .R, .R, .O, .O])
        XCTAssertEqual(sut.hoursTimeState(for: 18), [.R, .R, .R, .O, .R, .R, .R, .O])
        XCTAssertEqual(sut.hoursTimeState(for: 19), [.R, .R, .R, .O, .R, .R, .R, .R])
        XCTAssertEqual(sut.hoursTimeState(for: 20), [.R, .R, .R, .R, .O, .O, .O, .O])
        XCTAssertEqual(sut.hoursTimeState(for: 21), [.R, .R, .R, .R, .R, .O, .O, .O])
        XCTAssertEqual(sut.hoursTimeState(for: 22), [.R, .R, .R, .R, .R, .R, .O, .O])
        XCTAssertEqual(sut.hoursTimeState(for: 23), [.R, .R, .R, .R, .R, .R, .R, .O])
    }
}
