var pi = 3.14
class Circle {
 var radius = 0.0
 var circumference: Double {
 	get {  //Nếu lấy giá trị chu vi thì tính từ giá trị của bán kính
 		return pi * radius * 2
 	}
 	set {  //Nếu gán cho chu vi giá trị thì tính lại bán kính
 		radius = newValue / pi / 2
 	}
 }
}

let circle = Circle()
circle.radius = 1
print(circle.circumference) // Prints "6.28"
circle.circumference = 14
print(circle.radius) // Prints "2.229..."

//Bài tập hãy xây dựng đối tượng Temperature  (nhiệt độ) chuyển đổi giữa 
// độ Celcius và Fareinheit
