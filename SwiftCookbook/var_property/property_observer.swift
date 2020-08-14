var myProperty = 5 {
 willSet {
   print("Will set to \(newValue). It was previously \(myProperty)")
 }
 didSet {
   print("Did set to \(myProperty). It was previously \(oldValue)")
 }
}
myProperty = 7
