//
//  Window_ShopperTests.swift
//  Window ShopperTests
//
//  Created by Osama Mac on 11/10/17.
//  Copyright © 2017 Osama Mac. All rights reserved.
//

import XCTest

class Window_ShopperTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testGetHours(){
        XCTAssert(Wage.getHours(forWage: 15.21, andPrice: 2556.4) == 169)
        XCTAssert(Wage.getHours(forWage: 1.23, andPrice: 16.2) == 14)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
