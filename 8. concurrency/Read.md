# Concurrency là gì? - tại sao phải dùng nó ?
- xử lí đồng thời - concurrency : xử lí nhiều task được sử lí cùng 1 lúc
- tại sao phải dùng : 
 + để giữ trong UI luôn trạng thái được đáp ứng -> mượt hơn
 + tăng tốc độ sử lý, tận dụng tối đa sức mạnh kiến trúc chip
# một số vấn đề cần lưu ý trước :
  - process là quá trình hoat động của một ứng dụng
  - thread là luồng bên trong process
  - task ({}) chạy trên thread
  - main thread : dùng để chạy UI nên hạn chế dùng nó để chạy những thứ khác
  - ứng dụng có thể chạy trên thread hệ thống hay tư tạo thread mới
# quản lí đa luồng trong ios :
   - Grand central dispatch(GCD)
   - NSOperation
   
