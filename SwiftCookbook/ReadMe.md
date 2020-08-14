# Cách lấy ví dụ về chạy thử
```
git clone https://github.com/TechMaster/SwiftCookbook
cd SwiftCookbook
cd loop
swift basic.swift
```

# Cách soạn thảo sửa đổi mã nguồn ví dụ

Bạn có thể dùng VSCode, SublimeText. Tuy nhiên tôi sử dụng editor nano chạy trực tiếp từ terminal rất tiện dụng.
Nếu chưa có thì cài nano bằng HomeBrew
```
brew install nano
```

Sửa đổi file cấu hình .nanorc để highlight syntax file *.swift.
```
git clone https://github.com/scopatz/nanorc.git ~/.nano
nano ~\.nanorc
```

Nội dung ~\.nanorc chứa đoạn lệnh để highlight syntax file mã nguồn Swift
```
set tabsize 2
include "~/.nano/swift.nanorc"
```

# Cảm ơn

80% ví dụ lấy từ quyển sách này đã được sửa lại để tương thích với Swift 4.x
[SwiftBook Goal Kicker](https://books.goalkicker.com/SwiftBook/)

Còn lại 20% là do tôi bổ xung thêm. Trong vài tuần tới có sẽ khoảng 30% ví dụ mới do tôi viết

Cảm ơn các tác giả trên StackOverflow. Toàn bộ code được soạn trên nano

cuong@techmaster.vn
