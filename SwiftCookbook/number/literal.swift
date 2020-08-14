let x = 42 // x is Int by default
let y = 42.0 // y is Double by default
let z: UInt = 42 // z is UInt
let w: Float = -1 // w is Float
let q = 100 as Int8 // q is Int8

//print(MemoryLayout.size(ofValue: q))

func sizeof<T>(_ value: T) {
	print(MemoryLayout.size(ofValue: value))
}
sizeof(x)
sizeof(y)
sizeof(z)
sizeof(w)
sizeof(q)
