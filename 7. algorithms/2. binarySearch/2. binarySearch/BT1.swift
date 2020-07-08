//
//  BT1.swift
//  2. binarySearch
//
//  Created by Huy on 7/5/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import Foundation
func BT1() {
    let number = [1,2,3,4,5,6,7,8,2,3,3,3,2,42,42,4,23,42,34]
    func linearSearchValue(searchValue: Int, array: [Int]) -> Bool{
        for i in array {
            if i == searchValue {
                return true
            }
        }
        return false
    }
    print(linearSearchValue(searchValue: 35, array: number))
}
func BT2() {
    let number = [1,2,7,9]
    
    func linearSearchValue(searchValue: Int, array: [Int]) -> Bool{
    var rightIndex = array.count - 1
    var leftIndex = 0
    while leftIndex < rightIndex {
        
        let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = array[middleIndex]
        print("middleValue = \(middleValue), middleIndex = \(middleIndex)")
        if middleValue == searchValue {
            return true
        }
        else {
            leftIndex = leftIndex + 1
        }
        
    }
        return false
}
        var huner = [Int]()
    for i in 0 ... 100 {
        huner.append(i)
    }
        print(huner)
        
        print(linearSearchValue(searchValue: 5, array: number))
}
