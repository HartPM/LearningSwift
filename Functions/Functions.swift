func printTimesTable(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTable(number: 8)



func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)