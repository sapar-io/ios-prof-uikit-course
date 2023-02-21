//
//  Decimal+Utils.swift
//  Bankey
//
//  Created by Sapar Jumabekov on 21.02.2023.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal:self).doubleValue
    }
}
