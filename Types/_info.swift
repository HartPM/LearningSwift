Types: String, Int, Double, Bool, Array, Dictionary, Set

var score: Double = 0
var name: String = "Bob"

var albums: Array<String> = ["red", "green", "blue"]
          : [String] =
var user: Dictionary<String, String> = ["id": "hello"]
        : [String: String] = 

var books: Set<String> = Set(["Harry Potter", "The LWW"])

- To declare empty arrays...

    var teams: [String] = [String]()
    or
    var teams = [String]()

enum UIStyle {
    case light, dark, system
}

var style: UIStyle = .light


// Extensions allow us to add functionality to any type
    extension String {
        func trimmed() -> String {
            self.trimmingCharacters(in: .whitespacesAndNewlines)
        }

        mutating func trim() {
            self = self.trimmed()
        }

        var lines: [String] {
            self.components(separatedBy: .newlines)
        }
    }

    var quote = "   The truth is rarely simple    "
    let trimmedQuote = quote.trimmed()

    // Can also include a method inside the extension...

