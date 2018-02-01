//
//  Pair.swift
//  TDD_BOOK
//
//  Created by 小島徹也 on 2018/02/01.
//  Copyright © 2018年 小島徹也. All rights reserved.
//

import Foundation

struct Pair: Hashable {
    let hashValue: Int = 0

    static func ==(lhs: Pair, rhs: Pair) -> Bool {
        return lhs.from == rhs.from && lhs.to == rhs.to
    }

    init(from: String, to: String) {
        self.from = from
        self.to = to
    }

    private let from: String
    private let to: String
}
