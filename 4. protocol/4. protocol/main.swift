//
//  main.swift
//  4. protocol
//
//  Created by Huy on 6/12/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import Foundation

/* protocol - định nghĩa : thuộc tính - phương thức - hàm bên trong
   bất kì lớp - class - struct khai báo sử dụng protocol đó phải thực thi hết những thứ bên trong protocol đó
 */
protocol DetailInforProtocol {
    // property
    var fullName : String {// get : khi thuc thi ham nay can dinh nghia ham getter cho no
        get
    }
    // method
    func showDetail() -> String
}
class user: DetailInforProtocol{
    
    func showDetail() -> String {
        return "first name:\(firstName) , last name: \(Name)"
    }
    
    var Name: String
    var firstName: String
    init(netName: String, netFirstName: String) {
        self.firstName = netName
        self.Name = netFirstName
    }
    var fullName : String {
        return firstName + Name
    }
}
//var mrHuy = user(netName: "Huy", netFirstName: "Ma")
//print(mrHuy.fullName)
//print(mrHuy.showDetail())
// excample "mutating" - thay doi
protocol TogglableProtocol {
    mutating func toggle()
}

enum Switcher: TogglableProtocol {
    case on, off
    mutating func toggle(){
        switch self {
        case .off:
            self = Switcher.on
            print("on")
        case .on :
            self = Switcher.off
            print("off")
        }
    }
}
//var light = Switcher.off
//light.toggle()
//light.toggle()
//light.toggle()
//light.toggle()

protocol InitializationProtocol {
    init(name: String)
}
class Animal {
    var chan : Int = 0

}
class bird: Animal, InitializationProtocol {
    var name : String
    
    required init(name: String) {
        self.name = name
    }
    func checkchan(chan: Int){
        if chan==2 {
            print("dv 2 chan")
        }
        else if (chan == 4 )
        {
            print("dv 4 chan")
        }
    }
}
var a = bird(name: "kiki")
a.checkchan(chan: 2)




