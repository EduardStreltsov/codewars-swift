/*
Write a function that takes an array of numbers (integers for the tests) and a target number.
 It should find two different items in the array that, when added together,
 give the target value. The indices of these items should then be returned in a tuple like so:
 (index1, index2).

For the purposes of this kata, some tests may have multiple answers;
 any valid solutions will be accepted.

The input will always be valid (numbers will be an array of length 2 or greater,
 and all of the items will be numbers; target will always be the sum of
 two different items from that array).
*/

import XCTest

class kyu6_TwoSumTest: XCTestCase {
	
	func solution(numbers: [Int], target: Int) -> [Int] {
		for i in 0 ... numbers.count - 1 {
			if numbers[i] >= target { continue }
			for j in i + 1 ... numbers.count - 1 {
				if numbers[i] + numbers[j] == target {
					return [i, j]
				}
			}
		}
		fatalError()
	}
	
	func testExample() throws {
		let actual = [2, 3]
		XCTAssertEqual(actual, solution(numbers: [1, 54, 24, 35], target: 59))
	}
	
}
