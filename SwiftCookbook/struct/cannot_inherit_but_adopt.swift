protocol Move {
  mutating func moveTo(dX: Double, dY: Double)
}

protocol Debug {
	func debugInfo()
}

struct Point2D : Move, Debug {
	var x: Double
	var y: Double
	init (x: Double, y: Double) {
		self.x = x
		self.y = y
	}
	mutating func moveTo(dX: Double, dY: Double) {
		x += dX
		y += dY
	}

	func debugInfo() {
		debugPrint(self)
	}
}

/*
struct Point3D : Point2D {
	var z: Double
}
*/

var point = Point2D(x: 10, y: 20)
point.moveTo(dX: 2, dY: 3)
point.debugInfo()
