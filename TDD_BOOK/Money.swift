//
//  Money.swift
//  TDD_BOOK
//
//  Created by 小島徹也 on 2018/01/31.
//  Copyright © 2018年 小島徹也. All rights reserved.
//

import Foundation

class Money {
    let amount: Int
    let currency: String

    init(amount: Int, currency: String) {
        self.amount = amount
        self.currency = currency
    }

    func times(multiplier: Int) -> Money {
        fatalError("need to override.")
    }

    func getCurrency() -> String {
        return currency
    }

    static func doller(amount: Int) -> Money {
        return Doller(amount: amount, currency: "USD")
    }

    static func franc(amount: Int) -> Money {
        return Franc(amount: amount, currency: "CHF")
    }
}

extension Money: Equatable {
    static func ==(lhs: Money, rhs: Money) -> Bool {
        return lhs.amount == rhs.amount && lhs.getCurrency() == rhs.getCurrency()
    }
}
