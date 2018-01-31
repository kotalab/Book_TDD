//
//  TDD_BOOKTests.swift
//  TDD_BOOKTests
//
//  Created by 小島徹也 on 2018/01/31.
//  Copyright © 2018年 小島徹也. All rights reserved.
//

import XCTest
@testable import TDD_BOOK

class TDD_BOOKTests: XCTestCase {
    
    func testMultiplication() {
        let five = Money.doller(amount: 5)

        XCTAssertEqual(Money.doller(amount: 10), five.times(multiplier: 2))
        XCTAssertEqual(Money.doller(amount: 15), five.times(multiplier: 3))
    }

    func testEquality() {
        XCTAssertEqual(Money.doller(amount: 5), Money.doller(amount: 5))
        XCTAssertNotEqual(Money.doller(amount: 5), Money.doller(amount: 6))
        XCTAssertEqual(Franc(amount: 5), Franc(amount: 5))
        XCTAssertNotEqual(Franc(amount: 5), Franc(amount: 6))

        XCTAssertNotEqual(Franc(amount: 5), Money.doller(amount: 5))
    }

    func testFrancMultiplication() {
        let five = Franc(amount: 5)

        XCTAssertEqual(Franc(amount: 10), five.times(multiplier: 2))
        XCTAssertEqual(Franc(amount: 15), five.times(multiplier: 3))
    }

}
