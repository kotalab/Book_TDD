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
        var five = Doller(amount: 5)
        var product: Doller = five.times(multiplier: 2)

        XCTAssertEqual(10, product.amount)

        product = five.times(multiplier: 3)

        XCTAssertEqual(15, product.amount)
    }

    func testEquality() {
        XCTAssertEqual(Doller(amount: 5), Doller(amount: 5))
    }
}
