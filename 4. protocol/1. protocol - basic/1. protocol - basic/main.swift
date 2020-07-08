//
//  main.swift
//  1. protocol - basic
//
//  Created by Huy on 7/3/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import Foundation

class Person{
    var name: String
    var age: Int
    var moneys: Int = 0
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
// giai quyet theo OOP
//// chủ nơ
//class Lender: Person{
//    var borrower: Borrower? // chu no co 1 con no
//    func requestPayment(){
//        if let borrower = self.borrower {
//            if borrower.moneys >= borrower.debt {
//                borrower.moneys -= borrower.debt
//                self.moneys += borrower.debt
//                borrower.debt = 0
//                print("so tien vay da tra \(borrower.moneys)")
////                print("so tien con no: \(borrower.debt)")
//            }
//        }
//    }
//}
//// con no
//class Borrower: Person {
//    weak var lender: Lender?
//    var debt: Int = 0 // no bang =
//    func borrowMoney(lender: Lender, money: Int){
//        if lender.moneys >= money {
//
//            lender.moneys -= money
//            print("so tien con lai cua chu no \(lender.moneys)")
//            self.moneys += money
//            debt = money
//
//            self.lender = lender
//            lender.borrower = self
//            print("so tien vay debt: \(money)")
//
//        }
//    }
//}
////khoi tao doi tuong chu no va nguoi vay
//let lenderOBJ = Lender(name: "Teo em", age: 22)
//lenderOBJ.moneys = 20000
//let borrowerOBJ = Borrower(name: "Huy", age: 23)
//// muon tin chi no
//borrowerOBJ.borrowMoney(lender: lenderOBJ, money: 2000)
//print("so tien muon vay:\(borrowerOBJ.moneys)")
//print("yeu cau tra tien lai:")
//borrowerOBJ.debt = 1000
//lenderOBJ.requestPayment()

// giai quyet
protocol LenderBehavior: class {
    func lendMoney(borrower: BorrowerBehavior, money : Int) -> Bool
    func requestPayment()
}
protocol BorrowerBehavior {
    func askForMoney(lender: LenderBehavior, money: Int)
    func receiveMoney(lender: LenderBehavior, money: Int)
    func payMoneyBack() -> Int?
}
// chu no
class Lender: Person, LenderBehavior {
    var borrower: BorrowerBehavior?
    func lendMoney(borrower: BorrowerBehavior, money: Int) -> Bool {
        <#code#>
    }
    
    func requestPayment() {
        <#code#>
    }
}
class Borrower: Person, BorrowerBehavior {
    weak var lender: LenderBehavior?
    var debt: Int = 0
    func askForMoney(lender: LenderBehavior, money: Int) {
        <#code#>
    }
    
    func receiveMoney(lender: LenderBehavior, money: Int) {
        <#code#>
    }
    
    func payMoneyBack() -> Int? {
        <#code#>
    }
    
    
}
