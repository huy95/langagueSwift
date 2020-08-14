/*
Mở rộng mà không cần tạo class kế thừa. Chuyên để mở rộng kiểu có sẵn
*/
extension Bool {
	public mutating func revert() -> Bool {
		self = !self
		return self
	}
}
var sheIsGirl = true
print("before sheIsGirl = \(sheIsGirl)")
print("toogle sheIsGirl = \(sheIsGirl.revert())")



extension Int {
	var square : Int {
		return self * self
	}
	var factorial: Int {
    return (1..<self+1).reduce(1, *)
  }
}
let val1: Int = 4
print(val1.square)
print(val1.factorial)  // returns 3628800

extension String {
    subscript(offset: Int) -> Character {
        let newIndex = self.index(self.startIndex, offsetBy: offset)
        return self[newIndex]
    }
}
var myString = "StackOverFlow"
print(myString[2]) // a
print(myString[3]) // c
