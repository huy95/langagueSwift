let addOne = { [] (x: Int) -> Int in return x + 1 }
//let addOne = { [] (x: Int) -> Int in x + 1 }
//let addOne = { (x: Int) -> Int in x + 1 }
//let addOne = { x -> Int in x + 1 }
//let addOne = { x in x + 1 }
//let addOne = { $0 + 1 }

let arr = [1, 2, 3, 4]
var arr2 = arr.map(addOne)
print(arr2)


//let addOneOrThrow = { [] (x: Int) throws -> Int in return x + 1 }
//let addOneOrThrow = { [] (x: Int) throws -> Int in x + 1 }
//let addOneOrThrow = { (x: Int) throws -> Int in x + 1 }
//let addOneOrThrow = { x throws -> Int in x + 1 }
let addOneOrThrow = { x throws in x + 1 }

do {
	let arr3 = try arr.map(addOneOrThrow)
	print(arr3)
} catch {
	print("Error when add one")
}
