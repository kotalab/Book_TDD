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
        let five = Doller(amount: 5)

        XCTAssertEqual(Doller(amount: 10), five.times(multiplier: 2))
        XCTAssertEqual(Doller(amount: 15), five.times(multiplier: 3))
    }

    func testEquality() {
        XCTAssertEqual(Doller(amount: 5), Doller(amount: 5))
        XCTAssertNotEqual(Doller(amount: 5), Doller(amount: 6))
    }

    func testFrancMultiplication() {
        let five = Franc(amount: 5)

        XCTAssertEqual(Franc(amount: 10), five.times(multiplier: 2))
        XCTAssertEqual(Franc(amount: 15), five.times(multiplier: 3))
    }
}
