func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")

or with destructuring for just those keys that we want access to and none other

let (firstName, _) = getUser()
print("Name: \(firstName)")