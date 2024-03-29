//
//  Expression.swift
//  TDD_BOOK
//
//  Created by 小島徹也 on 2018/01/31.
//  Copyright © 2018年 小島徹也. All rights reserved.
//

import Foundation

protocol Expression {
    func reduce(_ bank: Bank, to: String) -> Money
    func plus(_ addend: Expression) -> Expression
    func times(multiplier: Int) -> Expression
}
