//
//  BerlinClockViewModelTests.swift
//  BnpTestTests
//
//  Created by BNP Test on 08/09/2024.
//

@testable import BnpTest
import XCTest

final class BerlinClockViewModelTests: XCTestCase {

    var sut: BerlinClockViewModel!
    var dateManager: DateManagerMock!

    override func setUp() {
        dateManager = DateManagerMock()
        sut = BerlinClockViewModel(dateManager: dateManager)
    }

    func testInit() {
        XCTAssertEqual(sut.digitalTime, "")
        XCTAssertFalse(dateManager.hasCalledStart)
        XCTAssertFalse(dateManager.hasCalledStop)
        XCTAssertEqual(sut.seconds, .unset)
        XCTAssertEqual(sut.upperHours, [])
        XCTAssertEqual(sut.lowerHours, [])
        XCTAssertEqual(sut.upperMinutes, [])
        XCTAssertEqual(sut.lowerMinutes, [])
    }

    func testStart() {
        sut.start()
        dateManager.simulateNewDate(DateHelper().heightSeptemberTwentyTwentyFour)

        XCTAssertEqual(sut.digitalTime, "09-08-2024 15:21:14")
        XCTAssertTrue(dateManager.hasCalledStart)
        XCTAssertFalse(dateManager.hasCalledStop)
        XCTAssertEqual(sut.seconds, .Y)
        XCTAssertEqual(sut.upperHours, [.R, .R, .R, .O])
        XCTAssertEqual(sut.lowerHours, [.O, .O, .O, .O])
        XCTAssertEqual(sut.upperMinutes, [.Y, .Y, .R, .Y, .O, .O, .O, .O, .O, .O, .O])
        XCTAssertEqual(sut.lowerMinutes, [.Y, .O, .O, .O])
    }

    func testStop() {
        sut.stop()

        XCTAssertFalse(dateManager.hasCalledStart)
        XCTAssertTrue(dateManager.hasCalledStop)
    }
}
