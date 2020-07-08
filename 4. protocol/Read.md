# protocol la gì : 
 - là thành phần trừu tượng mà trong đó - cho phép khai báo thuộc tính + phương thức
 - khi sử dụng khai báo protocol bắt buộc phải thực thi hết thuộc tính phương thức của nó - không có thân hàm
 - đặc trưng của nó là get - set 
 
 
# cú pháp khai báo và thực thi:
 - khai báo protocol (như class):
     protocol: <tên protocol>{
        //.khai báo phương thức(method) và thuộc tính(property)
      }
 - khai báo sử dụng (tương tự như kế thừa):
    class (struct, enum, class): <tên protocol> {
        // thực thi các property và method của protocol
     }
## thuộc tính - phương thức - khởi tạo
- thuộc tính :
    protocol Student {
        var Name: String {get}
        var ID : String {get, set}
    }
- phương thức: 
    protocol Strudent {
        func fullName()
        func fullAddress() -> String?
    }
