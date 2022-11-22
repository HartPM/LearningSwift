- Similar to arrays except they can't store duplicate values and they don't store things in a particular order

var numbers = Set([1, 1, 2, 3, 4])
print(numbers) // "[1, 4, 2, 3]\n"

numbers.insert(10)

- The main advantage of a set is that searching runs almost instantaneously rather than running through all of the elements in an array.

numbers.contains(11) // false