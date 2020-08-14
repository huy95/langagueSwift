let tuple = ("one", 2, "three")
// Values are read using index numbers starting at zero
print(tuple.0) // one
print(tuple.1) // 2
print(tuple.2) // three

let namedTuple = (first: 1, middle: "dos", last: 3)
// Values can be read with the named property
print(namedTuple.first)  // 1
print(namedTuple.middle) // dos
// And still with the index number
print(namedTuple.2)      // 3


let userinfo =  (name: "John", id: "OX-13")
let (username, userid) = userinfo
print("username = \(username), userid = \(userid)")
