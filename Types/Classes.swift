// Classes let us create custom data types like structs but they are different from structs in 5 ways

// 1. can inherit from another parent class
    class Employee {
        let hours: Int
        init(hours: Int) {
            self.hours = hours
        }

        func printSummary() {
            print("I work \(hours) hours a day.")
        }
    }

    class Developer: Employee {
        func work() {
            print("I'm coding for \(hours) hours a day.")
        }

        override func printSummary() {
            print("I spend hours fighting over tabs vs spaces.")
    }

    // If a child wants to change a method it inherited from a parent, use the "override" keyword

// 2. Swift does not generate an initializer for classes like it does for structs. If a class inherits from a super class, it must call the initializer from the parent after it's finished running it's own properties. If a subclass has no custom initializers it will automatically inherit all properties from it's parent
    class Vehicle {
        let isElectric: Bool

        init(isElectric: Bool) {
            self.isElectric = isElectric
        }
    }

    class Car: Vehicle {
        let isConvertible: Bool

        init(isElectric: Bool, isConvertible: Bool) {
            self.isConvertible = isConvertible
            super.init(isElectric: isElectric)
        }
    }

// 3. Classes are mutable while structs are immutable
    class Actor {
        var name = "Nicholas Cage"
    }

    var actor1 = Actor()
    var actor2 = actor1

    actor2.name = "Tom Cruise"
    print(actor1.name) ==> "Tom Cruise"

// 4. Classes can have a de-initializer 
    class Site {
        let id: Int

        init(id: Int) {
            self.id = id
            print("Site \(id): I've been created")
        }

        deinit {
            print("Site \(id): I've been destroyed")
        }
    }


// 5. Classes let us change variable properties even if the class instance itself is constant
    class Singer {
        var name = "Adele"
    }

    let singer = Singer()
    singer.name = "Justin"
    print(singer.name)
    