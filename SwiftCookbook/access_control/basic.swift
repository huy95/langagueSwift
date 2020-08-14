//https://docs.swift.org/swift-book/LanguageGuide/AccessControl.html

class Person {
	public let name: String
	private var bankaccount: String
	
	init (name: String) {
		self.name = name
		//self.name = "Rock" không được phép gán lần 2.
	}
}

var tom = Person(name: "Tom")
print(tom.name)
//tom.name = "John" will fail


