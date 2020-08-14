extension Array where Element: StringProtocol {
  func toUpperCase() -> [String] {
      var result = [String]()
      for value in self {
          result.append(value.uppercased())
      }
      return result
    }
}

let array = ["trump","kim jong un","hello World", "roBinson"]
let result = array.toUpperCase()
print(result)

