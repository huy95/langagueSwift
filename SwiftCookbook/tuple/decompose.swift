let userinfo =  (name: "John", id: "OX-13")
let (username, userid) = userinfo
print("username = \(username), userid = \(userid)")

let unnamedTuple = ("uno", "dos")
let (one, two) = unnamedTuple
print(one) // "uno"
print(two) // "dos


let longTuple = ("ichi", "ni", "san")
let (_, _, third) = longTuple //Bỏ qua  phần tử 1 và 2
print(third) // "san"
