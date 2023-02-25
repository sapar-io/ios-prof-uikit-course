//
//  CurrencyFormatterTests.swift
//  BankeyUnitTests
//
//  Created by Sapar Jumabekov on 21.02.2023.
//

import Foundation
import XCTest

@testable import Bankey

class Test: XCTestCase {
    var formatter: CurrencyFormatter!
    
    override func setUp() {
        super.setUp()
        formatter = CurrencyFormatter()
    }
    
    func testBreakDollarsIntoCents() throws {
        let result = formatter.breakIntoDollarsAndCents(929466.23)
        XCTAssertEqual(result.0, "929,466")
        XCTAssertEqual(result.1, "23")
    }
    
    func testDollarsFormatted() throws {
        let locale = Locale(identifier: "en_US")
        let currencySymbol = locale.currencySymbol!
        
        let result = formatter.dollarsFormatted(929466)
        XCTAssertEqual(result, "\(currencySymbol)929,466.00")
    }
    
    func testZeroDollarsFormatted() throws {
        let locale = Locale(identifier: "en_US")
        let currencySymbol = locale.currencySymbol!
        
        let result = formatter.dollarsFormatted(0)
        XCTAssertEqual(result, "\(currencySymbol)0.00")
    }
}
