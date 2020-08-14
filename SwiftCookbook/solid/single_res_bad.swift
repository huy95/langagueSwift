protocol  IShape: class {
	func area() -> Double
}

class Rectangle: IShape {
	var width, height:  Double
	init (width: Double, height: Double) {
		self.width = width
		self.height = height
	}

	func area() -> Double {
		return width * height
	}
}

class Circle: IShape {
	var radius: Double
	init (radius: Double) {
		self.radius = radius
	}

	func area() -> Double {
		return Double.pi * self.radius * self.radius
	}
}

let rec = Rectangle(width: 10, height:2)
let cir = Circle(radius: 10)

class AreaCalculator {
	var shapes: [IShape]?
	init (shapes: [IShape]) {
		self.shapes = shapes
	}
	func sumTotalArea() -> Double {
		var total: Double = 0.0
		for shape in shapes! {
			total += shape.area()
		}
		return total
	}

//Đoạn code sau đây đã trộn lẫn chức năng tính tổng diện tích và chức năng xuất chuỗi theo các định
//dạng khác nhau.
//Nếu muốn outputHTML một đối tượng Person thì làm thế nào ?
//Trường hợp này rất tệ vì các hàm output... bị gắn chặt AreaCalculator mất rồi
	func outputHTML() -> String {
		return "<html><body>\(sumTotalArea())</body></html>"
	}

	func outputJSON() -> String {
		return "{sumTotalArea: \(sumTotalArea())}"
	}

	func outputXML() -> String {
		return "<xml><totalarea>\(sumTotalArea())</totalarea></xml>"
	}
}

let areaCalculator = AreaCalculator(shapes: [rec, cir])
print(areaCalculator.outputXML())
print(areaCalculator.outputHTML())

