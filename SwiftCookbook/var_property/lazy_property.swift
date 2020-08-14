import Foundation

func getAvartarFromSlowNetwork() -> String {
   print("call to slow network in 5 minutes")
   return "photo.png"
}
struct Person {
    var name = ""
    lazy var avartar = getAvartarFromSlowNetwork()
}

var person = Person(name: "Tom", avartar: nil)
print(person.name)
print(sizeOf(person))
print(person.avartar)
