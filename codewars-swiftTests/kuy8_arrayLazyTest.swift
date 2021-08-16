// thanks to https://www.avanderlee.com/swift/lazy-collections-arrays/
import XCTest

class kuy8_arrayLazyTest: XCTestCase {
	
	func testRegularFilter() {
		var numbers = [1, 2, 3, 4, 5]
		let modified = numbers.filter { i in
			print("Even number filtered")
			return i % 2 == 0
		}.map { i -> Int in
			print("Doubling the number")
			return i * 2
		}
		print(modified)
	}
	
	func testLazyFilter() {
		var numbers = [1, 2, 3, 4, 5]
		let modified = numbers.lazy.filter { i in
			print("Even number filtered")
			return i % 2 == 0
		}.map { i -> Int in
			print("Doubling the number")
			return i * 2
		}
		print(modified)
	}
	
	func testLazyFilterWithACall() {
		var numbers = [1, 2, 3, 4, 5]
		let modified = numbers.lazy.filter { i in
			print("Even number filtered")
			return i % 2 == 0
		}.map { i -> Int in
			print("Doubling the number")
			return i * 2
		}
		print(modified.first!)
	}
	
	func testFetchingAvatars() {
		let usernames = ["Antoine", "Maaike", "Jaap", "Amber", "Lady", "Angie"]
		usernames.filter { username in
			print("Filtering \(username)")
			return username.lowercased().first == "a"
		}.forEach { username in
			print("Fetched avatar for \(username)")
		}
	}
	
	func testLazyFetchingAvatars() {
		let usernames = ["Antoine", "Maaike", "Jaap", "Amber", "Lady", "Angie"]
		usernames.lazy.filter { username in
			print("Filtering \(username)")
			return username.lowercased().first == "a"
		}.forEach { username in
			print("Fetched avatar for \(username)")
		}
	}
	
	func testRegularCollectionsCache() {
		var numbers = [1, 2, 3, 4, 5]
		let modified = numbers.filter { i in
			print("Even number filtered")
			return i % 2 == 0
		}.map { i -> Int in
			print("Doubling the number")
			return i * 2
		}
		print(modified.first!)
		print(modified.first!)
	}
	
	func testLazyCollectionsDontCache() {
		var numbers = [1, 2, 3, 4, 5]
		let modified = numbers.lazy.filter { i in
			print("Even number filtered")
			return i % 2 == 0
		}.map { i -> Int in
			print("Doubling the number")
			return i * 2
		}
		print(modified.first!)
		print(modified.first!)
	}
	
	func testBadCaseForLazy() {
		let numbers = (1...100000)
		let lazyFirst = numbers.lazy.filter {
			print("filter \($0)")
			return $0 % 2 == 0
		}.first
		print(lazyFirst!)
	}
	
	func testSwiftAPIIsBetter() {
		let numbers = (1...100000)
		let firstWhere = numbers.first(where: { $0 % 2 == 0 })
		print(firstWhere)
	}
	
}
