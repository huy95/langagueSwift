class Dog: Equatable {
    let name: String
    init(name: String) { self.name = name }
}
// Consider two dogs equal if their names are equal.
func ==(lhs: Dog, rhs: Dog) -> Bool {  //lhs: left hand side, toán tử trái, 
//rhs: right hand side toán tử phải
    return lhs.name == rhs.name
}
// Create two Dog instances which have the same name.
let spot1 = Dog(name: "Spot")
let spot2 = Dog(name: "Spot")

print(spot1 == spot2)   // true, because the dogs are equal
print(spot1 != spot2)   // false
print(spot1 === spot2)  // false, because the dogs are different instances
print(spot1 !== spot2)  // true
