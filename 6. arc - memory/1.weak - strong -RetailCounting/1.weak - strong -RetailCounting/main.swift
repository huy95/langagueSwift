//
//  main.swift
//  1.weak - strong -RetailCounting
//
//  Created by Huy on 7/4/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import Foundation
// BT1 :
class User {
    init(){
        print("innitalized")
    }
    deinit {
        print("deinit")
    }
}
//EX1 : - kết nối mạnh thể hiện tăng RC
//var user: User?
//user = User() //RC + 1
//user = nil // RC + 1 - 1 = 0 bo nho giai phong

//EX2:  - kết nối mạnh thể hiện tăng RC
//var user2: User?//khai bao doi tuong
//user2 = User() //RC + 1
//var user3 = user2 //RC +1 +1
//user2 = nil //RC +1 +1 -1

//EX3: - kết nối yếu sẽ không làm tăng RC
//var user2: User?//khai bao doi tuong
//user2 = User() //RC + 1
//weak var user3 = user2 //RC +1 +0
//user2 = nil //RC +1 -1 ==0 gọi hàm denit hủy giải phóng bộ nhớ

//** BT2
protocol UserDelegate: class {
    func showName()
}
class TestARC: UserDelegate {
    func showName() {
        print("huy")
    }
    
    init() {
        print("inittalized  TestARC")
    }
    deinit {
        print("denit  TestARC")
    }
}
//EX1 : hủy bỏ ủy quyền sự kiện hàm - khi được tham chiếu bởi 1 class khác cần quan tâm đến weak
class UserIT {
    weak var delegat: UserDelegate? // được giữ tham chiếu bở delegat
    // nếu không có weak thì khi cứ gán là RC của TestARC +1
    init() {
        print("inittalized  UserIT")
    }
    deinit {
        print("denit   UserIT")
    }
}
//var user: TestARC? = TestARC() // RC cua TestARC + 1
//
//var userIT : UserIT? = UserIT()
//userIT?.delegat = user // RC cua TestARC +1 vì do userIT dùng weak
//
//user = nil //RC +1 -1 =0
//// rút ra được gì : - khi class không được hủy được dù cho object = nil nhưng nó vẫn còn bên trong bộ nhớ -> được sử dụng nhiều class như thế sẽ dẫn đế leak memory

// *** BT3
class TestBT3: UserDelegate {
    let name = "Huy"
    // lazy var chỉ được khởi tạo khi dùng lân đầu
    lazy var nameBT3 : () -> String = { [weak self] in
        return self!.name
    }
    func showName() {
        print("Huy BT3")
    }
    init() {
        print("inittalized  BT3")
    }
    deinit {
        print("denit   BT3")
    }
}
var userBT3 : TestBT3? = TestBT3()//khoi tao va gan RC + 1
// khi chưa gọi đến lazy nó vẫn chưa được khởi tạo vì vậy RC sẽ không tăng

userBT3?.nameBT3() // RC +1 +1 nếu không có [weak self]
// vì gọi đến phương thức nameBT3 sẽ được khởi tạo
//có [weak self] trên nếu có RC +1 +0
// [weak self] -> weak chính đối tương self => self là tham chiếu yếu
// trong log code nên để tham chiếu yếu đến chính đối tượng đó
userBT3 = nil


