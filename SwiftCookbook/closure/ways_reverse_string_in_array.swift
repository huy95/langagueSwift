//Closure vẫn chấp nhận inout nhé
let reverse = { (name: inout String) in
  name = String(name.reversed())
}

var name = "Hello"
reverse(&name)
print(name)

var arr = ["abc", "def", "mnk"]
//arr.map {//Closure vẫn chấp nhận inout nhé
let reverse = { (name: inout String) in
  name = String(name.reversed())
}

var name = "Hello"
reverse(&name)
print(name)

var arr = ["abc", "def", "mnk"]
//arr.map {reverse(&$0)} //sẽ báo lỗi Cannot pass immutable value as inout argument: '$0' is immutable

let arr2 = arr.map{String($0.reversed())}
print(arr2)reverse(&$0)} //sẽ báo lỗi
Cannot pass immutable value as inout argument: '$0' is immutable

let arr2 = arr.map{String($0.reversed())}
print(arr2)
