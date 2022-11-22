func isUppercase(_ string: String) -> Bool {
    string == string.uppercase()
}

let string = "Hello world"
let result = isUppercase(string)



func printTimestable(for number: Int) {
    for i in 1...12 {
        print(" \(i) x \(number) is \(i * number)")
    }
}

printTimesTable(for: 5)




func greet(_ person: String, formal: Bool = false) {
    if formal {
        print("Welcome, \(person)")
    } else {
        print("Hi, \(person)")
    }
}

greet("Tim", formal: true)
greet("Taylor")