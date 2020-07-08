//
//  main.swift
//  5. ARC-Swift
//
//  Created by Huy on 6/11/20.
//  Copyright © 2020 Huy. All rights reserved.
//
/*ARC : automatic reference counting - quan li bo nho tu dong*/
import Foundation

class Customer{
    var name: String = "has"
    init(name1: String) {
        self.name = name1
        print("initalized customer")
    }
    deinit {
        print("deinitialized")
    }
}
// strong
//var customer1 : Customer?
//var customer2 : Customer?
//var customer3 : Customer?
//customer1 = Customer(name1: "huy")
//customer2 = customer1
//customer3 = customer1
//customer1 = nil
//customer2 = nil
//customer3 = nil



//print("test1 : \(customer1)")
//print("test1 : \(String(describing: customer2))")
//print("test2 : \(String(describing: customer3))")
//print("test3 : \(String(describing: customer1))")
//print("test4 : \(customer1?.name)")
//print("test6 : \(customer3?.name)")
//customer1?.name = "Test"

class House {
    var address : String // strong +> refernt counter+0
    init (address: String){
        self.address = address
        print("intalized house")
    }
    weak var author : Customer? // weak var -> refernt counter+0
    deinit {
        print("house \(address) denitialized") // referent counter == 0 -> deinit duoc goi
    }
}
/*var mrHuy : Customer?
var hisHouse: House?
mrHuy = Customer(name1: "huy vcl")
hisHouse = House(address: "bach mai Ha noi - Viet nam")
/* mrHuy -> Customer(Strong) -> House(weak) -> refernt counter(a)
 hisHouse -> House(strong) +> refernt counter(a) + 1
 => neu muon giai phong chi can ghan hisHouse = nil
 */
hisHouse = nil*/


class Users {
    let name : String
    var card: Credit?
    init(name: String){
        self.name = name
        print("init - credit")
    }
    deinit {
        print("check denit \(name)")
    }
}
class Credit {
    let number: Int
    unowned var user: Users
    init(number: Int, user: Users){
        self.number = number
        self.user = user
        print("init - credit")
    }
    deinit {
        print("denit\(number)")
    }
}
//var mrAlex : Users?
var creditCard : Credit?

var mrAlex: Users? = Users(name: "huy")
creditCard = Credit(number: 1000, user: mrAlex!)
mrAlex = nil
creditCard = nil






