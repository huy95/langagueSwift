//Closure vẫn chấp nhận inout nhé
let reverse = { (name: inout String) in
  name = String(name.reversed())
}

var arr = ["abc", "def", "mnk"]
//arr.map {reverse(&$0)} //sẽ báo lỗi Cannot pass immutable value as inout argument: '$0' is immutable

let arr2 = arr.map{String($0.reversed())}
print(arr2)

let reverse2 = { (name: String) -> String  in
  return String(name.reversed())
}
let arr3 = arr.map { reverse2($0) }
print(arr3)

//thay đổi nội dung từng phần tử của chính mảng mà không tạo ra mảng mới
var arr4 = arr
for i in 0..<arr4.count {
  reverse(&arr4[i])
}

print(arr4)
