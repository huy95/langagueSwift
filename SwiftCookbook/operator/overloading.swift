struct Vector2D : CustomStringConvertible {
	var x = 0.0, y = 0.0
	var description: String {
		return "(\(x), \(y))"
	}
}

extension Vector2D {
		static func == (left: Vector2D, right: Vector2D) -> Bool {
        return (left.x == right.x) && (left.y == right.y)
    }

    static func + (left: Vector2D, right: Vector2D) -> Vector2D {
        return Vector2D(x: left.x + right.x, y: left.y + right.y)
    }

		static prefix func - (vector: Vector2D) -> Vector2D {
        return Vector2D(x: -vector.x, y: -vector.y)
    }

		static func += (left: inout Vector2D, right: Vector2D) {
        left = left + right
    }

		static prefix func ++ (vector: inout Vector2D) -> Vector2D {
        vector = vector + vector
        return vector
    }
}

let vecA = Vector2D(x: 3.0, y: 1.0)
let vecAA = Vector2D(x: 3.0, y: 1.0)
let vecB = Vector2D(x: 2.0, y: 4.0)
let vecC =  vecA + vecB
let vecD = -vecC
var vecE = vecA
vecE += vecB
if vecA == vecAA {
	print("vecA == vecAA")
}
print(vecA)
print(vecB)
print(vecC)
print(vecD)
print(vecE)

var vecAAA = vecA
print(++vecAAA)
