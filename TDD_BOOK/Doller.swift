//
//  Doller.swift
//  TDD_BOOK
//
//  Created by 小島徹也 on 2018/01/31.
//  Copyright © 2018年 小島徹也. All rights reserved.
//

import Foundation

class Doller: Money {
    private let currency: String

    override init(amount: Int) {
        currency = "USD"
        super.init(amount: amount)
    }

    override func times(multiplier: Int) -> Money {
        return Doller(amount: amount * multiplier)
    }

    override func getCurrency() -> String {
        return currency
    }
}
