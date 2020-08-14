//
//  main.swift
//  test 123
//
//  Created by Huy on 7/26/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import Foundation

// optional Blinding : if let dùng để mở khóa optional một cách an
//let optionalString: String? = "A String"
//let valueNil: String? = nil
//if let str = optionalString { // nếu có giá trị thì được thực thi// if có giá trị chạy luôn
//    print (str)
//} else { // nếu nil thì là
//    print("sai")
//}
//if let str = valueNil {
//    print (str)
//} else {
//    print("neu ma nil thi bo qua")
//}
// guard let : nếu y không nil, chúng ta gán nó vào x, còn nếu không, khối lệnh else sẽ thực thi
 // đảm bảo rằng nếu không thì { return }

func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }
        print("Hello \(name)!")
    
    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }
    print("I hope the weather is nice in \(location).")
}
greet(person: ["name": "John"])
// Prints "Hello John!"
// Prints "I hope the weather is nice near you."
//greet(person: ["name": "Jane", "location": "Cupertino"])
// Prints "Hello Jane!"
// Prints "I hope the weather is nice in Cupertino."
 
