protocol ISwim {
	func swim()
}

class Dolphin : ISwim {
	func swim() {
		print("dolphine swim")
	}

}

class Tiger : ISwim {
  func swim() {
    print("tiger swim")
  }

	func croach() {
		print("tiger croach")
	}
}

//Ví dụ tính đa hình Polymorphism
let dolphine = Dolphin()
let tiger = Tiger()

let swimAnimals:[ISwim] = [dolphine, tiger]
for animal in swimAnimals {
	animal.swim()
}


