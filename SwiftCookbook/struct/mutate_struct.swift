struct Counter {
    private var value = 0
    mutating func next() {  //Thử bỏ mutating xem thế nào
    	value += 1
		}
		func showValue() {
			print(value)
		}
}

var count = Counter()  //thử thay var bằng let
for _ in 1...3 {
	count.next()
}
count.showValue()
