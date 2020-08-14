class Dog {
	static var noise = "Bark!"
	class var say: String {
 		return "Go Go"
 	}
}

class  VietnameseDog : Dog {
	override class var say: String {
    return "Gâu gâu oẳng oẳng"
  }
}
print(Dog.say) // Prints "Bark!"
print(VietnameseDog.say)
