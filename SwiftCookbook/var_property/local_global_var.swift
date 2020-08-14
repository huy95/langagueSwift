func printSomething() {
	let localString = "I'm local!"
	print(localString)
}

/*
func printSomethingAgain() {
	//Không thể truy cập biến local !
	print(localString)
}
*/

let globalString = "I'm global!"
print(globalString)

func useGlobalString() {
	print(globalString) // works!
}

for _ in 0..<2 {
	print(globalString) // works!
}

class GlobalStringUser {
	var computeGlobalString:String {
		return globalString // works!
	}
}

