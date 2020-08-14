struct Dog {
  var name: String
	static var noise = "Bark!"
}

print(Dog.noise) // Prints "Bark!"
//print(Dog.name) this will cause error

let dogA = Dog(name: "Lab")
let dogB = Dog(name: "Border Collie")

//dogA.noise = "Gau Gau"  noise is static, shared propery  stay with
//class not object

Dog.noise = "Gau Gau"
print(Dog.noise)
