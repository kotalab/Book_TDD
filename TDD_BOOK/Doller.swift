//
//  Doller.swift
//  TDD_BOOK
//
//  Created by 小島徹也 on 2018/01/31.
//  Copyright © 2018年 小島徹也. All rights reserved.
//

import Foundation

class Doller: Money {

    override init(amount: Int, currency: String) {
        super.init(amount: amount, currency: currency)
    }

    override func times(multiplier: Int) -> Money {
        return Doller(amount: amount * multiplier, currency: "USD")
    }
}
