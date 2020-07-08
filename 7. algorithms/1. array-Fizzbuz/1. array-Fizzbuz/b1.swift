//
//  b1.swift
//  1. array-Fizzbuz
//
//  Created by Huy on 7/5/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import Foundation

func Basic() {
    let number = [1,2,3,4,5,6,7,8,9,0,11,12,13,14,15,16]
    for i in number {
        if i % 3 == 0 {
        print("\(i) sexy")
        }
        else if i % 4 == 0 {
            print("best")
        }
        else {
            print(i)
        }
    }
}
func Basic1() {
    var onethoundNumber = [Int]()
for ij in 0 ..< 100 {
    if ij % 2 == 0{
        onethoundNumber.append(ij)
    }else if ij % 3 == 0 {
        onethoundNumber.append(ij)
    }else{
        print(ij)
    }
}
}

func Basic2(){
    for index in stride(from: 0, to: 20, by: 3){
        if index % 2 == 0{
            print("\(index) Best")
        }
    }
}
