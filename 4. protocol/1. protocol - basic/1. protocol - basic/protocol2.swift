//
//  protocol2.swift
//  1. protocol - basic
//
//  Created by Huy on 7/3/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import Foundation
// dự án yêu cầu bắt buộc phải có những thuộc tính hoặc phương thức bắt buộc phải có
// loài vật có khả năng kêu - nhưng không thể nói con người cũng kêu : mà dựa vào tính chất kế thừa tạo 1 cái protocol để sử dụng
// đơn giản protocol là list các chức năng sẽ sử dụng với đối tượng trong trương trình
// mục đích sử dụng : dễ bảo trì -  tái sử dụng - mở rộng các đối tượng sử dung nó
protocol CanMakeSound {
    func Sound()
}
protocol CanEat {
    var foodType: String{get set} // thuoc tinh
    func Eat(foodType: String) -> String // phuong thuc
    
    init(foodType: String)  // khoi tao
}
class Animal {
    func CanTakeAnimail(){
    }
}
class Dog: Animal,CanMakeSound,CanEat {
    
    
    var foodType: String = "meal"
    required init(foodType: String) {
        self.foodType = foodType
    }
    func Eat(foodType: String) -> String {
        return foodType
    }
    
    func Sound() {
        print("Go Go")
    }
}
class Cat: Animal,CanMakeSound {
    func Sound() {
        print("meo meo")
    }
}
class People: CanMakeSound,CanEat {
   
    var foodType: String = "every where"
    required init(foodType: String) {
        self.foodType = foodType
       }
       
    func Eat(foodType: String) -> String {
        return foodType
    }
    
    func Sound() {
        print("speaker VietNamese")
    }
}
var a = People(foodType: "why sm")
    
//enum DogStatus : CanMakeSound {
//    case Normal, BeHungry
//    func Sound() {
//        switch self {
//        case .Normal:
//            print("come baby ...")
//        case .BeHungry:
//            print("ấu dề ...")
//        }
//    }
//}
