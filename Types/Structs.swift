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
