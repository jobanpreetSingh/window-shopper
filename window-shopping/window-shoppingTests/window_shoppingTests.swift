//
//  window_shoppingTests.swift
//  window-shoppingTests
//
//  Created by Joban Dhot on 2019-01-07.
//  Copyright © 2019 Joban Dhot. All rights reserved.
//

import XCTest

class window_shoppingTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testgetHours(){
    XCTAssert(Wage.getHours(forWages: 25, andPrice: 100) == 4)
        XCTAssert(Wage.getHours(forWages: 15.50, andPrice: 250.53) == 17)
        
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
