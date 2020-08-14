for i in 0..<3 {  //Exclude last elememnt
    print(i)
}
for i in 0...2 {
    print(i)
}

let names = ["James", "Emily", "Miles"]
//Loop through all elements in array
for name in names {
   print(name)
}

//loop with index and item
for (index, name) in names.enumerated() {
   print("The index of \(name) is \(index).")
}

//Iterating over a dictionary
let ages = ["James": 29, "Emily": 24, "Cuong": 44]
for (name, age) in ages {
    print(name, "is", age, "years old.")
}

//Đảo thứ tự
var names2 = names
for name in names2.reversed() {
    print(name)
}
//Duyệt theo bước
for i in stride(from: 4, to: 0, by: -2) { //bước -2
    print(i)
}
for i in stride(from: 4, through: 0, by: -2) {
    print(i)
}


//Loop with filter
print("Loop with filter")
for i in 0..<9 where i % 2 == 0 {
    print(i)
}

//case clause
let points = [(5, 0), (31, 0), (5, 31)]
for case (_, 0) in points {
    print("point on x-axis")
}

//for each
print("foreach")
names.forEach {print($0)}
