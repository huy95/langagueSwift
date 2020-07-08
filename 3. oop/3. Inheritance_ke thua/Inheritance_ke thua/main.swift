//
//  main.swift
//  Inheritance_ke thua
//
//  Created by Huy on 6/11/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import Foundation
/*ke thua cho phep thang con co đầy đủ các thuộc tính - phương thức của thằng cha - phương thức read only ~ getter
 - không kế thừa được final
 */
class Animal {// lop cha khong duoc ke tua tu thang nao ca
    var name: String = "" // thuoc tinh
    func eat(){ // phuong thuc an
        print("animal is eating...")
    }
    var description: String { // thuoc tinh
        return "this is an animal \(self.name)"
    }
}

class Cat: Animal {// Cat lop con ke thua tu Animal
    var canClimb : Bool = true // them thuoc tinh canClimb
    func sayMeoMeo(){ // them phuong thuc moi - saymeomeo
        print("I am say meo meo")
    }
    
    override func eat() { // mo rong phuong thuc cua lop cha Animal
        super.eat() // ke thua lai cha no + print cant
        print("Cat eating ...")
    }
    override var description: String { // mo rong thuoc tinh va ko co ke thua cha no( super.description)
        return "this is an Cat \(self.name), can climb: \(canClimb)"
    }
}
let animal = Animal()
var myCat = Cat()
myCat.sayMeoMeo()// phuong thuc saymeoeo - duoc viet
//myCat.name = "Mina"

animal.eat()
myCat.eat() // 
print(myCat.description)


