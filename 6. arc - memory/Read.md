# Memory trong ios
- nói về memory trong ios thì có 2 vấn đề chính:
+ adandoned: vùng nhớ cấp phát không sử dụng nữa nhưng vẫn tồn tại -> khi sử dụng nhiều lên -> cấp phát bộ nhớ sẽ không ngừng tăng lên
+ leak memory :  vùng nhớ chiếm vĩnh viễn không sử dung lại nữa.
leak : rò rỉ - adandoned: bị bỏ rơi
 - dù trong swift đã hạn chế đến memory leak rồi nhưng vẫn có thể xảy ra
 # ARC - automatic reference counting 
  -> khi một object(đôi tượng được khởi tạo) sẽ được quản lí bởi ARC -> dựa vào việc reference đến mà gán 1 số được gọi là reference counting(RC) 
  
   -> môi object reference đến object khác RC + 1 - nếu object giảm không được reference RC - 1 -> khi RC về 0 thì bộ nhớ sẽ giải phóng + đố tượng xóa bỏ trả lại bộ nhớ cho hệ thống( đơn giản RC = 0 đối tượng sẽ được hủy)   
   -> Việc sử dụng strong weak, hoặc unowned liên quan đến việc quản lý bộ nhớ trong Swift gọi là Automatic Reference Counting (ARC) . Định nghĩa trong Khoa học máy tính thì Reference Counting là kĩ thuật lưu lại số tham chiếu, con trỏ, hoặc sử lý liên quan đến resource như là đối tương, block hoặc bộ nhớ. Nói ngắn gọn, ARC giúp bạn lưu các tham chiếu vào trong bộ nhớ và giúp giải thoát nó đi khi không được dùng nữa.
# weak - Strong - Unowned
 - khi nói đến 3 cái trên thì nói đến vấn đề bộ nhớ, các kiểu dữ liệu tham chiếu (mà tham chiếu xuất hiện trong class và closure)
 - kết nối mạnh : Strong - RC + 1 
 - kết nối yếu :  Weak - RC + 0 
                        unowed - RC + 0
                        - khác nhau giữa weak có thể trỏ đến nil còn unowed thì không
                        
 -  lưu ý nếu logic không tốt mà sử dụng weak - anowed - dính crash app
  - vì nó là tham chiếu  - phải đặc biệt chú ý nếu dùng weak vì nó mà giải phóng các giá trị = nil về sau hết
  - đã có đi phải có lại chứ không chỉ có 1 hướng thì sẽ denit được
  
  # Heap - stack
   - Heap được sử dung khi thực thi thread -> khi gọi hàm thì biến cục bộ lưu trữ block của stack 
     -> tồn tại đến khi được giải phóng
     
    - stack vùng nhớ được cố đinh 
    -> Nếu không đủ vùng nhớ stack, gây ra stack overflow. Hiện tượng này xảy ra khi nhiều hàm lồng nhau hoặc đệ quy nhiều lần dẫn đến không đủ vùng nhớ.
