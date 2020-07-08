//
//  main.swift
//  denit_basic
//
//  Created by Huy on 6/11/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import Foundation

class Stock {
    static var moneyStock = 20_000_000
    static func distribute(minusmoney: Int)-> Int{
        let numberMoney = min(minusmoney, moneyStock)
        moneyStock -= numberMoney
        return moneyStock
    }
    static func receiveAdd(moneyAddstock: Int) -> Int{
        moneyStock += moneyAddstock
        print(moneyStock)
        return moneyStock
    }
    static func StockReceive(moneys: Int){
        moneyStock += moneys
    }
}

class test {
    var outMoney : Int
    init(moneys: Int){
        outMoney = Stock.distribute(minusmoney: moneys)
    }
    func inPutMoney(moneys: Int){
        outMoney += Stock.distribute(minusmoney: moneys)
    }
    deinit {
        Stock.StockReceive(moneys: outMoney )
    }
}
var player: test? = test(moneys: 100_000)
player!.inPutMoney(moneys: 2000_200)
print(Stock.moneyStock)



