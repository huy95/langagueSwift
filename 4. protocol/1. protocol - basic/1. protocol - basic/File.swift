//
//  File.swift
//  1. protocol - basic
//
//  Created by Huy on 7/3/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import Foundation
// cách sử dụng protôcl

// su dung OOP de giai quyet
//class Person {
//    var name: String
//    var age: Int
//    var money: Int = 0
//    init(name: String, age: Int, moneys : Int) {
//        self.name = name
//        self.age = age
//        self.money = moneys
//    }
//}
//
//// chủ nơ
//class Lender: Person {
//    var borrower: Borrower? // chu no co 1 con no
//    func requestPayment(){
//        if let borrower = self.borrower {
//            if borrower.money >= borrower.debt {
//                borrower.money -= borrower.debt
//                self.money += borrower.debt
//                borrower.debt = 0
//            }
//        }
//    }
//}
//// con no
//class Borrower: Person {
//    weak var lender: Lender?
//    var debt: Int = 0 // no bang = =
//    func borrowMoney(lender: Lender, money: Int){
//        if lender.money >= money {
//            lender.money -= money
//            self.money += money
//            debt = money
//            
//            self.lender = lender
//            lender.borrower = self
//        }
//    }
//}
//
////khoi tao doi tuong chu no va nguoi vay
//let lenderOBJ = Lender(name: "Teo em", age: 22, moneys: 20000)
////lenderOBJ.money = 200
//let borrowerOBJ = Borrower(name: "Huy", age: 23, moneys: 1000)



