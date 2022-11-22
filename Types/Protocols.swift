// A protocol enforces minimum functionality for a struct or class

protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }

    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    let name = "Car"
    var currentPassengers = 2

    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }

    func travel(distance: Int) {
        print("I'm driving \(distance)km")
    }

    func openSunroof() {
        print("It's a nice day")
    }
}

// structs can conform to multiple protocols. Seperate them by commas. If we want to inherit from a super class and adhere to protocols, list the parent first, then comma, followed by protocols seperated by commas.

