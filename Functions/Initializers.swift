// Initializers are special functions that run when a new instance of a Struct is created
// Swift creates initializers automatically but we can also create custom initializers

struct Player {
    let name: String
    let number: Int

    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

// code above allows for a random number to be assigned when a new instance of a Player is created. 