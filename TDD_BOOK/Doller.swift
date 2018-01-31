//
//  Doller.swift
//  TDD_BOOK
//
//  Created by 小島徹也 on 2018/01/31.
//  Copyright © 2018年 小島徹也. All rights reserved.
//

import Foundation

struct Doller {

    private let amount: Int

    init(amount: Int) {
        self.amount = amount
    }

    func times(multiplier: Int) -> Doller {
        return Doller(amount: amount * multiplier)
    }

}

extension Doller: Equatable {
    static func ==(lhs: Doller, rhs: Doller) -> Bool {
        return lhs.amount == rhs.amount
    }
}

