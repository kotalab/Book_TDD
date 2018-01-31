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

        XCTAssertNotEqual(Money.franc(amount: 5), Money.doller(amount: 5))
    }

    func testCurrency() {
        XCTAssertEqual("USD", Money.doller(amount: 1).getCurrency())
        XCTAssertEqual("CHF", Money.franc(amount: 1).getCurrency())
    }

    func testSimpleAddition() {

        let five = Money.doller(amount: 5)
        let sum = five.plus(five)

        let bank = Bank()
        let reduced = bank.reduce(source: sum, to: "USD")

        XCTAssertEqual(Money.doller(amount: 10), reduced)
    }

    func testPlusResultSum() {
        let five = Money.doller(amount: 5)
        let result = five.plus(five)

        let sum = result as! Sum

        XCTAssertEqual(five, sum.augend)
        XCTAssertEqual(five, sum.addend)
    }

    func testReduceSum() {
        let sum = Sum(augend: Money.doller(amount: 3), addend: Money.doller(amount: 4))

        let bank = Bank()
        let result = bank.reduce(source: sum, to: "USD")

        XCTAssertEqual(Money.doller(amount: 7), result)
    }
}
