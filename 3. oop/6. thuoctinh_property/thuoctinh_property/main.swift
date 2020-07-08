//
//  main.swift
//  thuoctinh_property
//
//  Created by Huy on 6/11/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import Foundation

class MovieManager { // doi tuong movieManager
    lazy var getOneMovie: String = {// lazy chi duoc khoi tao khi duoc goi get OneMovie - la thuoc tinh
        print("check lazy")
        return "Start War"
    }()
}
let manager = MovieManager()
print("gia tri manager: \(manager)")
print("sau khi goi lazy var : ")
print("gia tri manager: \(manager.getOneMovie)")

struct Calculation {
    var x: Double
    var squaredX : Double {
        get { //getter cua squaredX - nghia la da co x = n goi khi calculation.squaredX tra ve x*x
            return x*x
        }
        set { // setter cua squaredX - khi thay doi gia tri cua squaredX tra ve can bac 2 cua x
            // set co ngia gan no bang = gia tri nao do
            print("new value = \(newValue)")
            x = sqrt(newValue)
        }
    }
    var cubex: Double { // read only -> day la getter chi doc khong lay dc gia tri
        return x*x*x
    }
    
    var step : Int = 20 {
        willSet(newStep){// ham duoc goi truoc khi ham step duoc set gia tri - gia tri dau vao chua duoc tinh toan gi
            print("before set value: \(newStep)")
        }
        didSet{ // duoc goi sau khi duoc thay doi - set va tinh toan hien thi ra - muon xem ket qua ban dau thi phai viet  - oldValue
            print("after set value:\(step), old:\(oldValue)")
        }
    }
}

//var calculation = Calculation(x: 20)
//print(calculation.squaredX)
//// day la ham getter duoc goi
//calculation.squaredX = 100 // Thay doi gia tri cua x
//print("new x moi : \(calculation.x)")
//// ham setter duoc sd
//print(calculation.cubex)
//// read only
//// thu setter vao se loi nhu duoi day
////calculation.cubex = 100 // error Cannot assign to property: 'cubex' is a get-only property
//calculation.step = 123

class Computation { // doi tuong computation
    static var title = "this is calculation" // thuoc tinh static dung de luu chua du lieu
    static let pi: Float = 3.1412 // property static ~ property class
    static var quaredPi: Float { // thuoc tinh tinh su dung tinh toan
        return pi*pi
    }
    class var squaredPi1 : Float { // thuoc tinh class co the ke thua
        
           return pi*pi*pi
       }
       
    
}
print("title\(Computation.title)")
print(Computation.pi)
print(Computation.quaredPi)
print(Computation.squaredPi1)

