// https://medium.com/@bestiosdevelope/what-do-mean-escaping-and-nonescaping-closures-in-swift-d404d721f39d
/*
An escaping closure is a closure that’s called after the function it was passed to returns. In other words, it outlives the function it was passed to.
A non-escaping closure is a closure that’s called within the function it was passed into, i.e. before it returns
*/

import Foundation

class Demo {
    var result: Int!

    //@non-escaping
    func getSumOf(array:[Int], handler: ((Int)->Void)) {
        //step 2
        var sum: Int = 0
        for value in array {
            sum += value
        }
            
        //step 3
        handler(sum)
     }
        
    func doSomething() {
        //setp 1
        self.getSumOf(array: [0,1,2,3,4]) {[weak self](sum) in
            print("@non-escape sum = \(sum)")
            //step 4, finishing the execution
            guard let self = self else { return }
            print(self)
            self.result = sum
        }
    }
}



class Demo2 {
    var result: Int!

    var completionHandler: ((Int)->Void)?
    //@escaping dùng trong trường hợp closure chạy khi hàm gọi nó đã thoát
    func getSumOf(array:[Int], handler:@escaping ((Int)->Void)) {
        //step 2
        //here I'm taking for loop just for example, in real case it'll be something else like API call
        var sum: Int = 0
        for value in array {
            sum += value
        }
        //step 3        
        DispatchQueue.global(qos: .userInitiated).async {
            sleep(1)
            handler(sum)
            
        }
       
        
    }
    
    func doSomething() {
        //setp 1
        self.getSumOf(array: [0, 1, 2, 3, 4]) { [weak self](sum) in
            
            print("@escape sum = \(sum)")
            //step 4, finishing the execution
            guard let self = self else { return }            
            self.result = sum
            print(self)
        }
    }
    //Here we are storing the closure for future use.
    //It will print the sumof all the passed numbers.
}

//-------------------
func runDemo() {
    let demo = Demo()
    demo.doSomething()
    //print(demo.result)

    if demo.result != nil {
        print(demo.result) //Optional(10)
    }

    // Sử dụng guard để kiểm tra khi gán
    guard let result = demo.result else { return }
    print(result) //10, vì đã được unwrap


    let demo2 = Demo2()
    demo2.doSomething()
    print("doSomething exists but closure still wait to run")
    sleep(2)    
}
runDemo()


