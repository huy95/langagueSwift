//
//  main.swift
//  khoitao_init_convenient init
//
//  Created by Huy on 6/11/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import Foundation
/*
 Khởi tạo đối tượng với hàm init có params, ko có params.
 - Sự khác nhau giữa hàm init thông thường và hàm convenience init.
 - Hàm init cho phép nil, Failable Initializer
 */
class test {
    var a = 3
}
var b = test()
print(b.a)

