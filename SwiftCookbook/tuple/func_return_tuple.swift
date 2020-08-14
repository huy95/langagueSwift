func tupleReturner() -> (Int, String) {
    return (3, "Hello")
}
let myTuple = tupleReturner()
print(myTuple.0) // 3
print(myTuple.1) // "Hello"

func tupleReturner2() -> (anInteger: Int, aString: String) {
    return (3, "Hello")
}

let myTuple2 = tupleReturner2()
print(myTuple2.anInteger) // 3
print(myTuple2.aString) // "Hello"
