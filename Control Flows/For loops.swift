let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works on \(os)")
}


for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

1...12 is from 1 to 12 (inclusive)
1..<12 is from 1 to 11 (excludes 12)


var lyric = "Haters gonna"
for _ in 1...5 {
    lyric += " hate"
}