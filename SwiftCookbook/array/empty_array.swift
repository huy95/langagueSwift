// A mutable array of Strings, initially empty.
var arrayOfStrings1: [String] = [] // type annotation + array literal
var arrayOfStrings2 = [String]() // invoking the [String] initializer
var arrayOfStrings3 = Array<String>() // without syntactic sugar

print(arrayOfStrings1.count)
print(arrayOfStrings2.count)
print(arrayOfStrings3.count)

