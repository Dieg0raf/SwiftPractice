import UIKit



var greeting = "Hello, playground"
let optionalName: String? = "Diego";

if optionalName != nil {
    print("I have a name")
}

//Swift wants you to explicitly unwrap an optional before using it.
if let name = optionalName {
    print("This is my name: \(name)")
} else {
    print("My name is set to nil") // can't use name variable here
}


// Functions
func addNumber(a: Int, b: Int) -> Int {
    return a + b
}
var returnVal = addNumber(a: 25, b: 13)

func printName(name: String) -> Void {
    print("Name passed in: \(name)")
}
printName(name: "Sofia")

func greet(_ name: String?) -> Void {
    guard let unwrappedName = name else { // checks if name equals nil (unwrapps name)
        print("name is nil")
        return // returns early
    }
    print("Hello, \(unwrappedName)!") // use variable outside of guard let
}

// For loops
for i in 1...10 {
    print("Number is: \(i)")
}

// For loops & Arrays
var languages = ["Swift", "Go", "Java", "C++"]
for language in languages where language != "Go" {
    print(language)
}

print("Size before appending: \(languages.count)")
languages.append("TypeScript")
print(languages[4])
print("Size after appending: \(languages.count)")

// Dictionaries
var ages: [String: Int] = ["Diego": 22, "Joe": 65]
for obj in ages {
    print("Name is \(obj.key) and age is \(obj.value)")
}

// Sets
var uniqueNums: Set<Int> = [1,2,3,3,4]
print(uniqueNums)




