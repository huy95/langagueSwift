func swapTwoInts(_ a: inout Int, _ b: inout Int) {
  let temp = a
  a = b
  b = temp
}

func swapTwoDoubles(_ a: inout Double, _ b: inout Double) {
	let temp = a
	a = b
	b = temp
}

func swap<T>(_ a: inout T, _ b: inout T) {
	let temp = a
	a = b
	b = temp
}

var a = 10, b = 5
print("Before a=\(a), b=\(b)")
swap(&a, &b)
print("After a=\(a), b=\(b)")

/* Hãy thử chạy đoạn code này
var c = 10, d = "Hello"
swap(&c, &d) */


