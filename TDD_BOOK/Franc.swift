//
//  Franc.swift
//  TDD_BOOK
//
//  Created by 小島徹也 on 2018/01/31.
//  Copyright © 2018年 小島徹也. All rights reserved.
//

import Foundation

class Franc: Money {

    init(amount: Int) {
        super.init(amount: amount, currency: "CHF")
    }

    override func times(multiplier: Int) -> Money {
        return Franc(amount: amount * multiplier)
    }
}

