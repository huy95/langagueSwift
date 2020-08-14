// Create an immutable array of type [Int] containing 2, 4, and 7
let arrayOfInts = [2, 4, 7]
let arrayOfUInt8s1: [UInt8] = [2, 4, 7] // type annotation on the variable
let arrayOfUInt8s2 = [2, 4, 7] as [UInt8] // type annotation on the initializer expression
let arrayOfUInt8s3 = [2 as UInt8, 4, 7] // explicit for one element, inferred for the others

// An immutable array of type [String], containing ["Example", "Example", "Example"]
let arrayOfStrings = Array(repeating: "Example",count: 3)
print(arrayOfStrings[1])


let dictionary = ["foo" : 4, "bar" : 6]
// An immutable array of type [(String, Int)], containing [("bar", 6), ("foo", 4)]
let arrayOfKeyValuePairs = Array(dictionary)
for item in arrayOfKeyValuePairs {
	print(item)
}

