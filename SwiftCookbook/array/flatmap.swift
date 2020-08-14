let things: [Any] = [1, "Hello", 2, true, false, "World", 3]
let numbers = things.compactMap { $0 as? Int }
print(numbers)

let nums = [10, 2, 4, 5, 7]
let even = nums.compactMap { $0 % 2 == 0 ? $0 : nil }
print(even)

let doubleArr = nums.map { $0 * 2 }
print(doubleArr)

let arrPlusOne = nums.compactMap { $0 + 1 }
print(arrPlusOne)

let seq = [1, 2, 3, 4]

let mapped = seq.map { Array(repeating: $0, count: $0) }
// [[1], [2, 2], [3, 3, 3], [4, 4, 4, 4]]
print(mapped)

let flatMapped = seq.flatMap { Array(repeating: $0, count: $0) }
// [1, 2, 2, 3, 3, 3, 4, 4, 4, 4]
print(flatMapped)

