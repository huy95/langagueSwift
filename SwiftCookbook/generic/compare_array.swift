//So sánh hai mảng của kiểu có thể so sánh được

extension Array where Element:Equatable {
	static func == (left: [Element], right: [Element]) -> Bool {
		if left.count != right.count {
			return false
		}

		for i in  0..<left.count {
				if left[i] != right[i] {
					return false
				}
		}
		return true
  }

}

var arrayIntA = [1, 2, 3, 5, 9, 6]
var arrayIntB = [1, 2, 3, 5, 9, 6]

if arrayIntA == arrayIntB {
	print("Equal !")
} else {
	print("Not equal !")
}
