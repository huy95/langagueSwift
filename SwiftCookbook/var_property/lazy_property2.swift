import Foundation
class InterviewTest {
	var name: String
	lazy var greeting : String = { return "Hello \(self.name)" }()
	// No retain cycles here ..
	init(name: String) {
		self.name = name
	}
}
let testObj = InterviewTest(name:"Tom")
dump(testObj)
print(testObj.greeting)
dump(testObj)
