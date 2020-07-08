//
//  class-struct.swift
//  struct-class
//
//  Created by Huy on 6/10/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import Foundation
func printAdress(adAdress p: UnsafePointer<Int>){
    print(p)
}
// struct - class la 2 kieu du lieu oop
struct Shape {
    var width : Int = 0
    var height = 0
}
var ashape = Shape()
var ashape1 = ashape
print(ashape)
print(ashape1)
printAdress(adAdress: &ashape1.height)
printAdress(adAdress: &ashape.height)
//dd struct: khi gan 2 gia tri thi o 2 vung nho khac nhau - tham tri
// vi vay struct : kieu du lieu values
class User {
    var name = "dep trai vl"
    var university: String?
}

var user1 = User()
var user2 = user1
user1.name = "de vl"
print(user2.name)
// de thay user1 va user2 cung tham chieu de cung gia tri o nho (o day la gia tri user1) - thay doi user1 -> user2
var user3 = User()
// gan lai user3 vao User tao vung nho moi khac user kiem trung dong nhat o duoi
if(user1 === user2){
    print("identical")
}
// hai dau '=' tra ve kieu bool
// 3 dau '=' kiem tra dong nhat hay khong - nghia la(cung 1 o nho - 1gia tri)
if(user1 === user3){
    print("identical")
}else {
    print("not identical")
}


class UserCheck {
    var name = "dep trai vl"
    var university: String?
    var mybook = Shape(width: 100, height: 40)
}
print("bai 3")
var user4 = UserCheck()
var user5 = user4
user4.mybook.height = 50
print(user5.mybook.height)
var user6 = user5
print(user6.mybook.height)

if(user4 === user5){
    print("identical")
}
if(user6 === user4){
    print("identical")
}


// trong do doi tuong la : Shape, User , UserCheck
// thuoc tinh : - (height - width) cua doi tuong Shape
// - (name , university) cua doi tuong User
// - (name , university, mybook) cua doi tuong UserCheck - trong do mybook doi tuong duoc khoi tao thuoc tinh tu struck
