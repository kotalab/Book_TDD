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

    init(amount: Int) {
        self.amount = amount
    }

    func times(multiplier: Int) -> Money {
        fatalError()
    }

    static func doller(amount: Int) -> Money {
        return Doller(amount: amount)
    }

    static func franc(amount: Int) -> Money {
        return Franc(amount: amount)
    }
}

extension Money: Equatable {
    static func ==(lhs: Money, rhs: Money) -> Bool {
        return lhs.amount == rhs.amount && type(of: lhs) == type(of: rhs)
    }
}
