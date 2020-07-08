//
//  main.swift
//  closures
//
//  Created by Huy on 6/9/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import Foundation
/*
closure la hàm không tên nó được hiểu như :
  - trong c nó là con trỏ hàm -> nó có khả năng tham chiếu
  - trong jvscript arrow function
dùng để :
  - truyên dữ liệu
  - suy ra các loại giá trị tham số và trả về ngữ cảnh
  - trả về ngầm đinhk từ các lần đóng dấu bt
  - tên đối số
  - cú pháp kin
 { (<#parameters#>) -> <#return type#> in // tham so dau vao -> kieu tra ve trong(in) cau lenh
     statements
 }
*/
func printAddress(atAdress p: UnsafePointer<Int>){
    print(p)
}

//var starWar = ["ledonoardo" , "luke skywalker", "Ray", "Wui-won", "Diana", "R2-D2", "Adam"]
//var sortedStarWar = starWar.sorted()
//print(sortedStarWar)
// chua sd closure

// c1 sd:
//var sortedStarWar1 = starWar.sorted(by: {
//    (s1: String, s2: String) ->Bool in
//    return s1 > s2      //s1, s2  co kieu du lieu String
//})
//print(sortedStarWar1)
//// c2 sd :
//var sortedStarWar2 = starWar.sorted(by: {
//    (s1,  s2) -> Bool in // s1, s2 khong co kieu du lieu
//    return s1 > s2
//})
//print(sortedStarWar2)

// su dung ham vao trong closure
//var someNumber = [12,23,3,4,5,6]
func handleSort(s1: Int, s2: Int) -> Bool {
    return s1 > s2
}
//var sortedStarWar3 = someNumber.sorted(by: handleSort)
//print(sortedStarWar3)
//someNumber = [123,3,41,23,54,1,23]
//print(sortedStarWar3)


//bai2
//var someNumber = [12,23,3,4,5,6]
////
//
//var sortedStarWar2 = someNumber.sorted(by: {
//    (s1: Int, s2: Int) -> Bool in // s1, s2 khong co kieu du lieu
//    return s1 < s2
//})
//print(sortedStarWar2)
//
//var sortedStarWar5 = sortedStarWar2
//print(sortedStarWar5)
//var someNumber = [1,2,3,4,5,7,8,9]
//print(sortedStarWar2)
//bai 3
// dung thong ke - ve do thi rat hieu qua - dung closues - tham so dau vao ko thay doi duoc
var someNumber = [1,2,3,4,1,23,4,5,1]
var squaredNumbers = someNumber.map{(someNumber) -> Int in
    return someNumber * someNumber
}

var testclosure = squaredNumbers
print(testclosure)
print(squaredNumbers)
someNumber = [13,3,1,4,5,1,5,1]
print(testclosure)
print(squaredNumbers)

//printAddress(atAdress: &testclosure) // chinh to closure la tham chieu
//printAddress(atAdress: &squaredNumbers) // vi tri bo nho cua no khong doi

//someNumber = [1,2,3,4,5,7,8,9]
//print(testclosure)
//print(squaredNumbers)

//var point = someNumber.map{(someNumber)-> String in
//    return  "\(someNumber) + points"
//}
//print(point)

//func doTask1(completion: () -> Void){
//    print("do task 1")
//    completion()
//}
//// goi tham số đầu vào rỗng -> không trả về giá trị - thực thi hàm và gọi lại chính nó
//doTask1 {
//    print("test1")
//}

// gọi closure trong closue sẽ lỗi cần thêm @scapeing fix lỗi đó // nhung swift 4 tro len da fix
//func doTask2(completion: (_ responseString: String,_ errorCode: Int) -> Void){
//    print("do task 1")
//    completion("succes", 200)
//}

//doTask2{(responseStr, errCode) in
//    print("this task do after task1.responeString = \(responseStr) ,error = \(errCode)")
//}

//bai3
 //khoi tao closue chua chay ngay ma khi nao sd moi dc goi
//var dohardWork = {
//    print("this is a hard work")
//} //cai nay rat quan trong khi toi uu - chi chay khi dc goi
//
//print("check closue tren co chay chua") // chinh to doharwork tren chua dc chay
//var anotherHard = dohardWork
//dohardWork() // khi chay khi dc goi- tiet kiem bo nho
//
//anotherHard()



//bai4
//func doSomeWork(hardWork: @autoclosure() -> Void) {// tu dong covert ham xu li thanh closure
//    print("test before")
//    hardWork()
//}
//var testclosure = doSomeWork(hardWork: print("i do can hard work , i am in side closure"))// print ben trong closure

