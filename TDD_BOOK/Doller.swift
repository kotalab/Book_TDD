//
//  Doller.swift
//  TDD_BOOK
//
//  Created by 小島徹也 on 2018/01/31.
//  Copyright © 2018年 小島徹也. All rights reserved.
//

import Foundation

struct Doller {

    var amount: Int

    init(amount: Int) {
        self.amount = amount
    }

    mutating func times(multiplier: Int) {
        amount *= multiplier
    }

}
