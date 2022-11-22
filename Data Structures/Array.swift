var colors = ["red", "green", "yellow"]
let numbers = [3, 2, 1, 1]
var readings = [0.1, 0.2, 0.3]

print(colors[0])

colors.append("blue")
colors.remove(at: 0)
print(colors.count)

colors.contains("maroon") ==> false