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
        XCTAssertEqual(sut.currentDigitTime, "")
        XCTAssertFalse(dateManager.hasCalledStart)
        XCTAssertFalse(dateManager.hasCalledStop)
    }

    func testStart() {
        sut.start()
        dateManager.simulateNewDate(DateHelper().heightSeptemberTwentyTwentyFour)

        XCTAssertEqual(sut.currentDigitTime, "09-08-2024 15:21:14")
        XCTAssertTrue(dateManager.hasCalledStart)
        XCTAssertFalse(dateManager.hasCalledStop)
    }

    func testStop() {
        sut.stop()

        XCTAssertFalse(dateManager.hasCalledStart)
        XCTAssertTrue(dateManager.hasCalledStop)
    }
}
