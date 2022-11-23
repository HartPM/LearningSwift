// A way to signify that a variable may or may not contain a value

var name: String? = "Joe"
name = nil

// could not set name to nil without optional notation



var x: Int? = 3
var y: Int? = 12

// cannot simply write: var result = x + y. Must unwrap the optional...

if let value1 = x {
    if let value2 = y {
        let result = value1 + value2
        print(result)
    }
}


// Optionals allow us to declare a variable without an initial value

var price: Double? 

price = 1.23
print(price) ==> Optional(1.23)

// type(of: price) == Optional<Double>