import XCTest

class kyu6_LinkedListFromAString: XCTestCase {
	
	class Node {
		var data: Int
		var next: Node?
		
		init(_ data: Int) {
			self.data = data
			self.next = nil
		}
		
		init(_ data: Int, _ next: Node?) {
			self.data = data
			self.next = next
		}
	}
	
	func parse(_ str: String) -> Node? {
		var head: Node? = nil
		var next: Node? = nil
		for dataAsString in str.components(separatedBy: " -> ").reversed() {
			if dataAsString == "nil" { continue }
			head = Node(Int(dataAsString) ?? 0, next)
			next = head
		}
		return head
	}
	
	func linkedListEqual(_ l1: Node?, _ l2: Node?) -> Bool {
		if l1 == nil && l2 == nil { return true }
		if l1 == nil || l2 == nil { return false }
		var p1 = l1
		var p2 = l2
		while p1 != nil {
			if p1?.data != p2?.data { return false }
			p1 = p1?.next
			p2 = p2?.next
			if (p1 == nil && p2 != nil) || (p1 != nil && p2 == nil) { return false }
		}
		return true
	}
	
	func testExample() {
		XCTAssertEqual(linkedListEqual(Node(1, Node(2, Node(3))), parse("1 -> 2 -> 3 -> nil")), true)
		XCTAssertEqual(linkedListEqual(Node(0, Node(1, Node(4, Node(9, Node(16))))), parse("0 -> 1 -> 4 -> 9 -> 16 -> nil")), true)
		XCTAssertEqual(linkedListEqual(nil, parse("nil")), true)
	}
	
}
