//
//  main.swift
//  extension
//
//  Created by Huy on 6/12/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import Foundation
/* extension dung de lam gi :
 - thêm thuộc tính (tính toan + ..) + phương thức -> khong can ke thua
 - Cung cấp khởi tạo mới
 - Xác định đăng ký
 - Xác định và sử dụng các loại lồng nhau mới(nested types)
 - Tạo một kiểu hiện có phù hợp với một giao thức(protocol)
 */

//loai1- exten computed property :
//extension Double { // read only ~ getter
//    var meter: Double {
//        return self
//    }
//    var kilometer : Double {
//        return self * 1000.0
//    }
//    var centimeter : Double {
//        return self/100.0
//    }
//    var milimeter: Double {
//        return self/1000.0
//    }
//}
//let aDistace = 42.kilometer + 20.centimeter + 100.0.meter
//print(aDistace)

//Extend Initializers - khoi tao

struct Point { // nhung trong class lai sai
    var x : Double = 0
    var y : Double = 0
//    init(xValue: Double, yValue: Double) { //chuyen phan khoi tao xuong
//        self.x = xValue
//        self.y = yValue
//    }
}
extension Point {
    init(xValue: Double, yValue: Double) {
            self.x = xValue
            self.y = yValue
        }
}
var checkPoid = Point(xValue: 100, yValue: 200)
print(checkPoid)

struct Rectangle{
    var width, height: Double
}
// exten instance Method
extension Rectangle {
    func cal() -> Double{
        return width*height
    }
}

var checkRec = Rectangle(width: 20, height: 40)
print(checkRec.cal())
//exten mutating instance Method
extension Double{
    mutating func square(){
        self = self*self // mutating(thay doi) method = method change self
    }
}
var someDouble = 10.0
print(someDouble.square())
