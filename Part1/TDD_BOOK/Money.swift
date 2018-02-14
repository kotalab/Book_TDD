//
//  Money.swift
//  TDD_BOOK
//
//  Created by 小島徹也 on 2018/01/31.
//  Copyright © 2018年 小島徹也. All rights reserved.
//

import Foundation

class Money: Expression {
    let amount: Int
    let currency: String

    init(amount: Int, currency: String) {
        self.amount = amount
        self.currency = currency
    }

    func times(multiplier: Int) -> Expression {
        return Money(amount: amount * multiplier, currency: currency)
    }

    func getCurrency() -> String {
        return currency
    }

    static func doller(amount: Int) -> Money {
        return Money(amount: amount, currency: "USD")
    }

    static func franc(amount: Int) -> Money {
        return Money(amount: amount, currency: "CHF")
    }

    func plus(_ addend: Expression) -> Expression {
        return Sum(augend: self, addend: addend)
    }

    func reduce(_ bank: Bank, to: String) -> Money {
        let rate = bank.rate(from: currency, to: to)
        return Money(amount: amount / rate, currency: to)
    }
}

extension Money: Equatable {
    static func ==(lhs: Money, rhs: Money) -> Bool {
        return lhs.amount == rhs.amount && lhs.getCurrency() == rhs.getCurrency()
    }
}
