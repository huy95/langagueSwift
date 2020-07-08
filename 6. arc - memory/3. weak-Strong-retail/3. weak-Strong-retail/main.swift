//
//  main.swift
//  3. weak-Strong-retail
//
//  Created by Huy on 7/4/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import Foundation
class Pet {
    var name: String
    init(name: String) {
        self.name = name
    }
    deinit {
        print("dealloc")
    }
}
//var myPet: Pet? = Pet(name: "Go Go")
//print(myPet?.name)
//weak var yourPet = myPet
//myPet = nil
//print(myPet?.name)
//
//var myPet2: Pet? = Pet(name: "Go Go")
//var yourPet2: Pet? = myPet
//yourPet = nil
//myPet = nil
//print(myPet?.name)


// tham chieeus cheo nhau
class Author {
    var book: Book?
    init() {
        print("init Author")
    }
    deinit {
        print("dead log Author")
    }
}
class Book {
   weak var author: Author?
    init() {
        print("init Book")
    }
    deinit {
        print("dead log book")
    }
}
var authorobj : Author? = Author()
authorobj!.book = Book()
authorobj!.book!.author = authorobj
authorobj = nil

