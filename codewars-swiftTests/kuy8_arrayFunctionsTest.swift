import XCTest

class ArrayFunctionsTest: XCTestCase {
	
	func testMap() {
		var arr = [1, 2, 3]
		//arr = arr.map { i -> Int in i+1 }
		arr = arr.map { $0 + 1 }
		print(arr)
		XCTAssertEqual([2, 3, 4], arr)
	}
	
	func testFlatMap() {
		var arr = [[1, 2], [3, 4]]
		var flat = arr.flatMap { Array($0) }
		print(flat)
		XCTAssertEqual([1, 2, 3, 4], flat)
	}
	
	func testCompactMap() {
		var arr = ["1", "2", "text", "3.1"]
		var compact = arr.compactMap { s -> Int? in Int(s) }
		print(compact)
		var arr2 = ["1", "2", "text", nil, "3.1"]
		var compact2 = arr.compactMap { s -> Int? in Int(s) }
		print(compact2)
	}
	
	func testReduce() {
		var arr = [1, 2, 3, 4]
		var result = arr.reduce(1) { (x: Int, y: Int) -> Int in x + y }
		print(result)
		XCTAssertEqual(11, result)
	}
	
	func testCountDifferentWithReduceInto() {
		var arr = [1, 2, 2, 3, 3, 4]
		var result = arr.reduce(into: []) { (result: inout [Int], i: Int) in
			result.contains(i) ? () : result.append(i)
		}
		print(result)
		XCTAssertEqual([1, 2, 3, 4], result)
	}
	
	func testFilter() {
		var arr = [1, 2, 2, 3, 3, 4]
		//arr = arr.filter { i in i == 3 }
		arr = arr.filter { $0 == 3 }
		print(arr)
		XCTAssertEqual([3, 3], arr)
	}
	
}
