// Structs let us make our own data types 
// if we want a built in method to be able to change any of the structs params, must use the "mutating" keyword

struct Album {
    let title: String
    let artist: String
    var isReleased = true

    func printSummary() {
        print("\(title) by \(artist)")
    }

    mutating func removeFromSale() {
        isReleased = false
    }
}

let red = Album(title: "Red", artist: "Taylor Swift")
print(red.title)
red.printSummary()



// Computed values within a struct

struct Employee {
    let name: String
    var vacationAllowed = 14
    var vacationTaken = 0

    var vacationRemaining: Int {
        vacationAllowed - vacationTaken
    }
}

// above vacationRemaining param cannot be changed. If we want to change it, look at the following code:
struct Employee {
    let name: String
    var vacationAllowed = 14
    var vacationTaken = 0

    var vacationRemaining: Int {
        get {
            vacationAllowed - vacationTaken
        }
        set {
            vacationAllowed = vacationTaken + newValue
        }
    }
}

// NewValue is interpreted by swift as whatever the user passes in to set the value


// Property Reservers: pieces of code that run when a property changes
    // didSet: runs after the change has taken place
    // willSet: runs before the change has taken place

struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3



// Access Control
// - Private: Let nothing outside of the struct read or write this...
// - Private Set: Anything outside can read but only the struct can set it...
// - File Private: Anything inside the current file can read an write...
// - Public: anything can read or write...

struct BankAccount {
    private(set) var funds = 0

    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdrawal(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

let account = BankAccount(funds: 100)
// we can read account.funds outside of the struct
print(account.funds)
// but we can't write account.funds from outside the struct so 
account.funds += 100 
// will throw an error