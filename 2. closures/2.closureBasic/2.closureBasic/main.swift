//
//  main.swift
//  2.closureBasic
//
//  Created by Huy on 7/4/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import Foundation
// biến check hứng closure - không có kiểu trả vể 2 cách
//c1
let check = { () in
    print(" I LOVE U")
}
check()
//c2
let check2 = { () -> Void in
    print("check girl beautiful")
}
check2()
// kiểu trả về number int
let numbers = { (number: Int, test: Int) -> Int in
    print(number + test )
    return number + test
}
numbers(7, 12)
// không muốn biến nào hứng(hay còn gọi closure không tên) thì chỉ cần sd như sau
({ (name: String) -> Void in
    print(name)
})("check hang nao ace")

//cách sử dụng nữa
var number : (Int, Int) -> (Int) = {
    return $0 + $1
}
print(number(10,23))

var number2 : (Int, Int) -> (Int) = {
    $0 + $1
}
print(number2(10,23))

// clusure thêm vào function
func TestClosure(name: String, myClosure: (String) -> Void ){
    print("TestClosure")
    myClosure(name)
}
TestClosure(name: "1234", myClosure: {(name) -> Void in print(name)})

// *** traling closure : - tham số truyền vào cho 1 function + đứng cuối cùng function
// chức năng làm gì đó ngoài chức năng chính mà closure mang lại - tùy chiến chức năng hàm theo ý mình
TestClosure(name: "HUY"){ (ten) in
    print(ten)
    print("Hello word ")
}
TestClosure(name: "Check") { (check) in
    print(check)
}
// vi dụ tiếp về closure
func getIntcrement(step: Int) -> () -> Int{
    var number = 0
    func handleInctcrement() -> Int {
        number += step
        return number
    }
    return handleInctcrement
}
let instage = getIntcrement(step: 12)
instage()
print(instage())
instage()
print(instage())

var a = instage()// chính tỏ nó tham chiếu đến nên kq nó tính tiếp vào bộ nhớ đó
print(a)

// đây dùng hàm nó tham tri đây
func getIntcrement1(step: Int)  -> Int{
    var number = 0
    func handleInctcrement() -> Int {
        number += step
        return number
    }
    return handleInctcrement()
}
let instage1 = getIntcrement1(step: 12)
instage1
print(instage1)
var a1 = instage1// chính tỏ nó tham trị đến
print(a1)
