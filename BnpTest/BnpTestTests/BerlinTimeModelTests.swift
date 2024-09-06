//
//  BerlinTimeModelTests.swift
//  BnpTestTests
//
//  Created by BNP Test on 06/09/2024.
//

@testable import BnpTest
import XCTest

final class BerlinTimeModelTests: XCTestCase {

    var sut: BerlinTimeModel!

    override func setUp() {
        sut = BerlinTimeModel(
            seconds: .O,
            hours: [.R, .R, .R, .O, .R, .R, .R, .R],
            minutes: [.O, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O])
    }

    func testInit() {
        XCTAssertEqual(sut.upperHours, [.R, .R, .R, .O])
        XCTAssertEqual(sut.lowerHours, [.R, .R, .R, .R])
        XCTAssertEqual(sut.upperMinutes, [.O, .O, .O, .O, .O, .O, .O, .O, .O, .O, .O])
        XCTAssertEqual(sut.lowerMinutes, [.O, .O, .O, .O])
        XCTAssertEqual(sut.seconds, .O)
    }
}
