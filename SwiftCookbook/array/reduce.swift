let numbers = [2, 1, 3, 4]
let sum = numbers.reduce(0) {accumulator, element in
  return accumulator + element
}
print(sum) // 10

let multiply = numbers.reduce(1) {accumulator, element in
	return accumulator * element
}
print(multiply)  //24

let min = numbers.reduce(numbers[0]) {lessVal, element in
	return lessVal < element ? lessVal : element
}

print(min)

let sum2 = numbers.reduce(0, +)
print(sum2)

let mul2 = numbers.reduce(1, *)
print(mul2)
