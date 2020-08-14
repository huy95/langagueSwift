/*
Mô tả sự khác biệt giữa map và compactMap
*/
let stringArray = readLine(strippingNewline: true)!.split {$0 == " "}
print(stringArray)

//Đoạn lệnh này sẽ crash nếu người dùng nhập sai định dạng.
let intArray = stringArray.compactMap {Int($0)!}
print(intArray)

//Sử dụng compactMap sẽ chỉ trả về thành phần convert được Int thành công
let intArray2 = stringArray.compactMap {Int($0)}
print(intArray2)