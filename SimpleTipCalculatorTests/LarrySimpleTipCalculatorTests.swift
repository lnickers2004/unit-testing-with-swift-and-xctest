//
//  SimpleTipCalculatorTests.swift
//  SimpleTipCalculatorTests
//
//  Created by Derek Jensen on 5/3/15.
//  Copyright (c) 2015 Derek Jensen. All rights reserved.
//

import UIKit
import XCTest

class LarrySimpleTipCalculatorTests: XCTestCase {
    
    var calc: TipCalculator!
    
    override func setUp() {
        calc = TipCalculator()
    }
    
    override func tearDown() {
        print("Finished a test.")
    }
    
    func testAllZerosShouldReturnZero() {
        let result = calc.calculateTip(0, taxPercentage: 0, tipPercentage: 0)
        
        XCTAssertEqual(result!, 0, "Value should be 0")
    }
    
    func testNonZeroBillWithZeroTaxAndTipShouldReturnZero() {
        let result = calc.calculateTip(20, taxPercentage: 0, tipPercentage: 0)
        
        XCTAssertEqual(result!, 0, "Value should be 0")
    }
    
    func testShouldThrowException() {
        assertThrows({
            calc.calculateTip( -1, taxPercentage: 0, tipPercentage: 0)
        })
    }
    
    func assertThrows(closure: () -> ()) {
        XCTAssertTrue(throwsException(closure), "This operations should throw an exception")
    }
    
    func testSamplePerformance() {
        self.measureBlock({
            NSThread.sleepForTimeInterval(1.0)
            self.calc.calculateTip(20, taxPercentage: 0, tipPercentage: 0)
            })
    }

}
