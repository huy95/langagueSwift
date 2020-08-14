//Chương trình nhập liệu thông tin cá nhân

// Sử dụng guard, xử lý tốt trường hợp người dùng nhập ký tự không hợp lệ khi nhập age
func readInput() {
	print("Hãy gõ tên của bạn dài hơn 3 ký tự, ít hơn sẽ báo lỗi đó")
	guard let name = readLine(strippingNewline: true), name.count > 3 else {
		print("Tên bạn ngắn hơn 3 ký tự")
		return
	}
	print(name)

	print("Hãy gõ tuổi của bạn")
	guard let age = Int(readLine(strippingNewline: true)!), age > 0 && age < 110 else {
		print("Tuổi không hợp lệ")
		return
	}

	print(age)
}

//Không sử dụng guard, viết code dài hơn, không cẩn thận còn bị crash khi convert
func readInputOldWay() {
	print("Hãy gõ tên của bạn dài hơn 3 ký tự, ít hơn sẽ báo lỗi đó")
	let name = readLine(strippingNewline: true)!
	if name.count < 3 {
		print("Tên bạn ngắn hơn 3 ký tự")
    return
	}

	print(name)

  print("Hãy gõ tuổi của bạn")
	if let age = Int(readLine(strippingNewline: true)!) {
		if age < 0 || age >= 110 {
			print("Tuổi không hợp lệ")
    	return
		}
		print(age)
	} else {
		print("Tuổi không hợp lệ. Lần 2 rồi đó nhé !")
	}
}

readInputOldWay()
//readInput()
