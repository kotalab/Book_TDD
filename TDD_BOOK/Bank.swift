//
//  Bank.swift
//  TDD_BOOK
//
//  Created by 小島徹也 on 2018/01/31.
//  Copyright © 2018年 小島徹也. All rights reserved.
//

import Foundation

struct Bank {
    func reduce(source: Expression, to: String) -> Money {
        let sum = source as! Sum

        return sum.reduce(to)
    }
}
