/*You are given an array (which will have a length of at least 3,
 but could be very large) containing integers.
 The array is either entirely comprised of odd integers
 or entirely comprised of even integers except for a single integer N.
 Write a method that takes the array as an argument and returns this "outlier" N.

Examples
[2, 4, 0, 100, 4, 11, 2602, 36]
Should return: 11 (the only odd number)

[160, 3, 1719, 19, 11, 13, -21]
Should return: 160 (the only even number)*/

import XCTest

class kuy6_FindTheParityOutlier: XCTestCase {
	
	func findOutlier(_ array: [Int]) -> Int {
		var evens = 0
		for i in 0 ... 2 {
			if array[i].isMultiple(of: 2) {
				evens += 1
			}
		}
		return array.filter { evens > 1 ? !$0.isMultiple(of: 2) : $0.isMultiple(of: 2) }.first!
	}
	
	func test() {
		XCTAssertEqual(findOutlier([1, 33, 10053359313, 2, 1, 1, 1, 1, 1, 1, -3, 9]), 2)
		XCTAssertEqual(findOutlier([8, 80, 14, 2, 20, 0, 21, 80]), 21)
		XCTAssertEqual(findOutlier([3, 80, 14]), 3)
	}
}
