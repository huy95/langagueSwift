class BankAccount : CustomStringConvertible{
	class func interestRate()-> Double {  //Đây là type method. Buộc phải gọi trực tiếp từ  class
		return 0.1
	}
	private var fullname : String
	private var balance : Double
	init (fullname _fullname: String, balance _balance: Double = 0) {
		fullname = _fullname
		balance = _balance
	}
	//Class phải adopt CustomStringConvertible thì thuộc tính description mới có tác dụng
	var description: String {
     return "<\(type(of: self)), fullname = \(fullname), balance = \(balance)>"
  }

	func deposit(amount: Double) {
		if (amount > 0) {
			balance += amount
		}
	}
}

var cuongAccount = BankAccount(fullname: "Cuong")
debugPrint(cuongAccount)
print(cuongAccount)
cuongAccount.deposit(amount: 100)
print(cuongAccount)

print(BankAccount.interestRate())

//------
class StudentAccount : BankAccount {
	override class func interestRate() -> Double {
		return 0.05
	}
}

var LongAccount = StudentAccount(fullname: "Long")
print(StudentAccount.interestRate())
