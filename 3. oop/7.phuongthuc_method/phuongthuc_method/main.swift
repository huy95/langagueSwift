//
//  main.swift
//  phuongthuc_method
//
//  Created by Huy on 6/11/20.
//  Copyright © 2020 Huy. All rights reserved.
//

//import UIKit

//class Point {
//    var x : Float = 0.0
//    var y : Float = 0.0
//    var color: UIColor = UIColor.green
//    func moveTo(x: CGFloat, y: CGFloat, color: UIColor){
//        //func - day la phuong thuc
//        self.x = Float(x)
//        self.y = Float(y)
//        self.color = color
//    }
//}
//var myPoint = Point()
//myPoint.moveTo(x: 10, y: 20, color: UIColor.red)

class Calculator {
    static let pi: Float = 3.1412 // thuoc tinh
    static func sum2Number(a: Int, b: Int) -> Int {
        return a+b
    }// phuong thuc
    class func circleArea(radius : Float) -> Float{
        return pi * radius * radius
    }// phuong thuc
}
print("tong 2 so \(Calculator.sum2Number(a: 10, b: 20))")
print("tich \(Calculator.circleArea(radius: 12))")
