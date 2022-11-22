var count = 10

while count > 0 {
    print("\(count)...")
    count -= 1
}
print("Go")



let files = ["me.jpg, "work.txt", "sophie.jpg"]

for file in files {
    if file.hasSuffix(".jpg") == false {
        continue
    }
    print("Found picture : \(file)")
}

break
