//Read an integer and make sure it is valid number
//Nếu chuỗi đọc vào không thể chuyển đổi sang integer
//Cách 1:
let a: Int? =  Int(readLine(strippingNewline: true)!)
let b: Int? =  Int(readLine(strippingNewline: true)!)
if a != nil && b != nil  {
		print("\(a!) + \(b!) = \(a!+b!)")
}

//Cách 2: sử dụng guard, nhập lỗi bỏ qua luôn
func use_guard() {
	guard let a = Int(readLine(strippingNewline: true)!) else {		
			return
	}

	guard let b = Int(readLine(strippingNewline: true)!) else {		
			return
	}

	print("\(a) + \(b) = \(a + b)")
}
use_guard()

//Cách 3: sử dụng try catch và custom error
enum MyError : Error {
   case conversionError(string: String)
}
extension String {
	public func toInt() throws -> Int {
		guard let result = Int(self) else { throw MyError.conversionError(string: self) }
    return result
	}
}

do {
	let c = try readLine(strippingNewline: true)!.toInt()
	let d = try readLine(strippingNewline: true)!.toInt()
	print("\(c) + \(d) = \(c+d)")
} catch let error as MyError {
	switch error {
		case .conversionError(let string):
			print("Fail to convert \(string)")
	}
}


