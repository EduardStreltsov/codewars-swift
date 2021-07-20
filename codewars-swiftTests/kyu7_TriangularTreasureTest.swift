//
//  kyu7_TriangularTreasureTest.swift
//  codewars-swiftTests
//
//  Created by Eduard Streltsov on 20.07.2021.
//

import XCTest

class kyu7_TriangularTreasureTest: XCTestCase {
	
	override func setUpWithError() throws {
		// Put setup code here. This method is called before the invocation of each test method in the class.
	}
	
	override func tearDownWithError() throws {
		// Put teardown code here. This method is called after the invocation of each test method in the class.
	}
	
	func testExample() throws {
		XCTAssertEqual(TriangularTreasure.triangular(0), 0)
		XCTAssertEqual(TriangularTreasure.triangular(-1), 0)
		XCTAssertEqual(TriangularTreasure.triangular(1), 1)
		XCTAssertEqual(TriangularTreasure.triangular(2), 3)
		XCTAssertEqual(TriangularTreasure.triangular(3), 6)
		
		// This is an example of a functional test case.
		// Use XCTAssert and related functions to verify your tests produce the correct results.
	}
	
	func testPerformanceExample() throws {
		// This is an example of a performance test case.
		self.measure {
			// Put the code you want to measure the time of here.
		}
	}
	
}
