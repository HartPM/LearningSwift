<!-- variable -->
var name = "Patrick"
name = "Bob"

<!-- constant -->
let name = "John"

print(name)

<!-- quotes in a string -->
let quote = "He tapped a sign saying \"Believe\" and walked away."

<!-- multiline string -->
let movie = """
a day
in the life
of an engineer
"""

<!-- String Interpolation -->
let name = "Taylor"
let age = "26"
let message = "I'm \(name) and I'm \(age) years old."


var name = "Elizabeth"

name.replaceSubrange(bounds: Range<String.Index>, with: Collection)

let replaced = name.replacingOccurrences(of: "Eliza", with "Mac") ==> "Macbeth"


// Ranges
var str = "Hello, playground"
// character
str[str.startIndex] // H
str[str.endIndex]   // error: after last character
// range
let range = str.startIndex..<str.endIndex
str[range]  // "Hello, playground"