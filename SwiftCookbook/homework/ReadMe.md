# Chú ý cách nhập vào một mảng các số interger

```swift
let stringArray = readLine(strippingNewline: true)!.split {$0 == " "}
let intArray = stringArray.map {Int($0)!}
print(intArray)
```
# Tìm index 2 số trong mảng để tổng bằng giá trị yêu cầu
[two sum](https://leetcode.com/problems/two-sum/)
> Input Array
2 7 11 15
> Input Target Value
9
> Result
[0, 1]

# Cộng 2 số
[add-two-numbers](https://leetcode.com/problems/add-two-numbers/)
Dữ liệu nhập vào sẽ như sau:
> Input first array of Int
2 4 3
> Input second array of Int
5 6 4
> Result
8 0 7

