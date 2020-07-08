//
//  main.swift
//  testthamchiue_tr
//
//  Created by Huy on 6/5/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import Foundation

func printAddress(atAdress p: UnsafePointer<Int>){
    print(p)
}
//BT1 : xem vung nho
var numberBT11 : Int = 164
var numberBT12 = numberBT11

//printAddress(atAdress: &numberBT11)
//printAddress(atAdress: &numberBT12)
class UserBT1{
    var age = 20
    var child: UserBT1?
    init(age: Int){
        self.age = age

    }
}
//var userBT11: UserBT1 = UserBT1(age: 20)
//var userBT12 = userBT11
//userBT12.age = 19
//print(userBT12.age)
//print(userBT11.age)

//BT2: gioi han vung nho dong
//var a = 1
//func incrementn(_ number: inout Int){ // inout truyen vao vung nho
//    number += 1
//    printAddress(atAdress: &number)
//}
//incrementn(&a)

//BT3: retain count
class UserBT3{
    var age = 20
    var child: UserBT3?
    init(age: Int){
        self.age = age

    }
}
//var user1: UserBT3? = UserBT3(age: 20) //RC user1 +1
//weak var user5: UserBT3? = UserBT3(age: 22) //RC user5 = 0 dù được khởi tạo nhưng không được cấp phát vì RC =0
//print(user5?.age)// count retain ko duoc them vao vung nho weak dan den nil
//weak var user2 = user1  //RC user1 +1 +0
//print(user2)
//weak var user3 = user1 //RC user1 +1 +0
//print(user3)
//user1 = nil //RC user1 +1 -1
//var user4 = user2
//print(user4)
//print(user2)
//print(user3)

// BT4
class WWDCGreeting{
    let Who: String
    init(Who: String){
        self.Who = Who
    }

    deinit {
        print("deinit")
    }

//    lazy var greetingMaker: () -> String = { [unowned self] in
//        return "Hello\(self.Who)"
//    }
//    lazy var greetingMaker: () -> String = {
//          return "Hello\(self.Who)"
//      }

     lazy var greetingMaker: () -> String = { [weak self] in
        return "Hello\(self?.Who)"
        }
}
let greetingMaker: () -> String

do { // scop
    let mermaid = WWDCGreeting(Who: "caffeinated mermaid")
    greetingMaker = mermaid.greetingMaker
}// qua day bo nho giai phong

print(greetingMaker())



//var x = 3
//var y = 4
//printAddress(atAdress: &x)
//printAddress(atAdress: &y)
//let someClosue = {
//    [x] in
//    print("\(x) - \(y)")
////    printAddress(atAdress: &x)
//    printAddress(atAdress: &y)
//}
//printAddress(atAdress: &x)
//printAddress(atAdress: &y)
//x = 6
//y = 7
//someClosue()
//print("\(x) , \(y)")
//printAddress(atAdress: &x)
//printAddress(atAdress: &y)






