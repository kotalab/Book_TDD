//
//  Sum.swift
//  TDD_BOOK
//
//  Created by 小島徹也 on 2018/01/31.
//  Copyright © 2018年 小島徹也. All rights reserved.
//

import Foundation

struct Sum: Expression {
    func plus(_ addend: Expression) -> Expression {
        return addend
    }

    let augend: Expression
    let addend: Expression

    func reduce(_ bank: Bank, to: String) -> Money {
        let amount = augend.reduce(bank, to: to).amount + addend.reduce(bank, to: to).amount

        return Money(amount: amount, currency: to)
    }
}
