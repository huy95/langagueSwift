class MyGenericClass<Type: Equatable>{
    var value: Type
    init(value: Type){
      self.value = value
    }
    func getValue() -> Type{
      return self.value
		}
    func valueEquals(anotherValue: Type) -> Bool{
    	return self.value == anotherValue
		}
}

let myFloatGeneric = MyGenericClass<Double>(value: 2.71828) // valid
let myStringGeneric = MyGenericClass<String>(value: "My String") // 
valid
// "Type [Int] does not conform to protocol 'Equatable'"
let myInvalidGeneric = MyGenericClass<[Int]>(value: [2])
let myIntGeneric = MyGenericClass<Int>(value: 72)
print(myIntGeneric.valueEquals(72)) // true
print(myIntGeneric.valueEquals(-274)) // false
// "Cannot convert value of type 'String' to expected argument type 
'Int'"
print(myIntGeneric.valueEquals("My String"))
