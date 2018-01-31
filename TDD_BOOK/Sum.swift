//
//  Sum.swift
//  TDD_BOOK
//
//  Created by 小島徹也 on 2018/01/31.
//  Copyright © 2018年 小島徹也. All rights reserved.
//

import Foundation

struct Sum: Expression {
    let augend: Money
    let addend: Money

    func reduce(_ to: String) -> Money {
        let amount = augend.amount + addend.amount

        return Money(amount: amount, currency: to)
    }
}
