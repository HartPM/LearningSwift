let sayHello = {
    print("Hi there!")
}

sayHello()

// OR

let sayHello = { (name: String) -> String in
    "Hi, \(name)!"
}



let team = ["Gloria", "Suzi", "Tiffany, "Tasha"]

let onlyT = team.filter({ (name: String) -> Bool in
    return name.hasPrefix("T")
})

print(onlyT)


-------Special Syntax------

let onlyT = team.filter { name in
    name.hasPrefix("T")
}

// or with param syntax

let onlyT = team.filter { $0.hasPrefix("T") }
