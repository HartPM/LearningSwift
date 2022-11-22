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