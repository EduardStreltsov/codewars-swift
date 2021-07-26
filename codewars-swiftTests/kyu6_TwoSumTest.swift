//
//  kyu6_TwoSumTest.swift
//  codewars-swiftTests
//
//  Created by Eduard Streltsov on 26.07.2021.
//

import XCTest

class kyu6_TwoSumTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    static var allTests = [
            ("Test 1 - [1,54,24,35], 59 -> [2,3]", testExample)
        ]

    func testExample() throws {
        let actual = [2,3]
                XCTAssertEqual(actual, kyu6_TwoSum.solution(numbers: [1,54,24,35], target: 59))
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
