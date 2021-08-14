//
//  kuy6_LinkedLists_IterativeReverseTest.swift
//  codewars-swiftTests
//
//  Created by Eduard Streltsov on 30.07.2021.
//

import XCTest

class kuy6_LinkedLists_IterativeReverseTest: XCTestCase {
	
	override func setUpWithError() throws {
		// Put setup code here. This method is called before the invocation of each test method in the class.
	}
	
	override func tearDownWithError() throws {
		// Put teardown code here. This method is called after the invocation of each test method in the class.
	}
	
	class Node {
		var data: Int
		var next: Node?
		
		init(_ data: Int) {
			self.data = data
		}
	}
	
	func toString(_ list: Node?) -> String {
		if list == nil { "" }
		var text = ""
		var iter = list
		while iter != nil {
			text = text + String(iter!.data) + " "
			iter = iter?.next
		}
		return text
	}
	
	func reverse(list: inout Node?) {
		if list == nil { return }
		var reversedList: Node?
		var current = list
		var previous: Node?
		
		while current != nil {
			reversedList = Node(current!.data)
			reversedList?.next = previous
			previous = reversedList
			current = current?.next
		}
		list = reversedList
	}
	
	func buildListFromArray(_ arr: [Int]) -> Node? {
		var head: Node?
		var current: Node?
		var prev: Node?
		
		for i in 0 ... arr.count - 1 {
			if head == nil {
				head = Node(arr[i])
				current = head
			}
			if i < arr.count - 1 {
				current?.next = Node(arr[i + 1])
				current = current?.next
			}
		}
		print("built \(toString(head))")
		return head
	}
	
	func linkedListsEqual(first: Node?, second: Node?) -> Bool {
		print("comparing \(toString(first)) and \(toString(second))")
		var current1 = first
		var current2 = second
		while current1?.next != nil {
			if current1?.data != current2?.data
				   || current2?.next == nil {
				return false
			}
			current1 = current1?.next
			current2 = current2?.next
		}
		return true
	}
	
	func testIterativeReverseEmptyList() {
		var list: Node?
		reverse(list: &list)
		XCTAssertNil(list)
	}
	
	func testIterativeReverseOneItem() {
		var list: Node? = Node(2)
		reverse(list: &list)
		XCTAssertTrue(linkedListsEqual(first: list, second: buildListFromArray([2])))
	}
	
	func testIterativeReverseTwoItems() {
		var list: Node? = buildListFromArray([4, 9])
		reverse(list: &list)
		XCTAssertTrue(linkedListsEqual(first: list, second: buildListFromArray([9, 4])))
	}
	
	func testIterativeReverseFiveItems() {
		var list: Node? = buildListFromArray([1, 2, 3, 4, 5])
		reverse(list: &list)
		XCTAssertTrue(linkedListsEqual(first: list, second: buildListFromArray([5, 4, 3, 2, 1])))
	}
	
	func testIterativeReverseThreeItems() {
		var list: Node? = buildListFromArray([1, 2, 3])
		reverse(list: &list)
		XCTAssertTrue(linkedListsEqual(first: list, second: buildListFromArray([3, 2, 1])))
	}
	
	func testIterativeReverseFourItems() {
		var list: Node? = buildListFromArray([1, 2, 3, 4])
		reverse(list: &list)
		XCTAssertTrue(linkedListsEqual(first: list, second: buildListFromArray([4, 3, 2, 1])))
	}
	
	func testIterativeReverseSeveralItems() {
		var list: Node? = buildListFromArray([9, 32, 4, 1, 35, 13, 41, 9, 42, 1, 7, 5, 4])
		reverse(list: &list)
		XCTAssertTrue(linkedListsEqual(first: list, second: buildListFromArray(
			[4, 5, 7, 1, 42, 9, 41, 13, 35, 1, 4, 32, 9]))
		)
	}
	
	func testPerformanceExample() throws {
		// This is an example of a performance test case.
		self.measure {
			// Put the code you want to measure the time of here.
		}
	}
	
}
