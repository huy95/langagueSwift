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
}

//Tách hàm output ra class khác độc lập chuyên để output theo định dạng
class DataFormater {
    class func outputHTML (value: Double) -> String {
        return "<html><body>\(value)</body></html>"
    }

    class func outputJSON (value: Double) -> String {
        return "{sumTotalArea: \(value)}"
    }

    class func outputXML (value: Double) -> String {
        return "<xml><totalarea>\(value)</totalarea></xml>"
    }
}

let areaCalculator = AreaCalculator(shapes: [rec, cir])
let sum = areaCalculator.sumTotalArea()
print(DataFormater.outputHTML(value: sum))
print(DataFormater.outputJSON(value: sum))
print(DataFormater.outputXML(value: sum))