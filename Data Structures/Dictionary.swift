let employee = [
    "name": "Bob",
    "job": "teacher"
]

<!-- if the "job" key doesn't exist, return a default value of "Unknown" -->
print(employee["job", default: "Unknown"])
