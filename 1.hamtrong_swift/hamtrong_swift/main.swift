//
//  main.swift
//  hamtrong_swift
//
//  Created by Huy on 6/9/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import Foundation
func printAddress(atAdress p: UnsafePointer<Int>){
    print(p)
}



func sum2Number(a: Int, b: Int) ->Int {
    return a * b/3
}
// ham co ban - func viet tat cua function : ham
//  thong so dau vao a,b kieu int -> tra ve kieu int voi a*b
print(sum2Number(a: 11, b: 11))
func sayHello() -> String{
    return "hello word"
}

// ham co ban khong co thong so dau vao + co gia tri tra ve String
func sayBest() {
    print("say hello")
}
// ham khong co gia tri dau vao + khong co ham tra ve
func calSum(a: Double, b: Double) -> (sum: Double, mul: Double){
    let sum = a+b
    let mul = a*b
    return (sum,mul)
}// ham truyen vao a,b tra ve  -> (sum: double - mul: double)goi la tupurle
print(calSum(a: 12, b: 10))// khong co dau '_'

func mul2Number(_ a: Float,_ b : Float) -> Float{
    return a*b
} // dau '_' dung de khong can neu ten bien khi goi ham nua
print(mul2Number(12,31))

func sumMulNumber(_ number: Double...) -> Double{
    var total: Double = 0.0
    for i in number {
        total = total+i
    }
    return total
}
// variadic :ngau nhien dau vao khong co dinh co nhieu so - khong gioi han
print(sumMulNumber(1,23.4,234,4,23,423,42,423,4))

//var aString = 120
//print("String before: \(aString)")
//printAddress(atAdress: &aString)
//func inoutFunction(_ a: inout Int) {
//    a = 1000
//}
//// inout la tu khoa cho phep trỏ đến vùng nhớ - dẫn đến cùng biến nhưng trước và sau lại khác nhau "
//print(inoutFunction(&aString))// con tro den aString
//// '&' truyen con tro
//printAddress(atAdress: &aString)
//
//print("String before: \(aString)")




