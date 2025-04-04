import UIKit

class Pizza {
    private var hasPep: Bool = false
    private var hasCheese: Bool = false
    var isPizza = true
    
    init() {}
    
    func getPep() -> Void {
        self.hasPep = true
    }
    
    func getCheese() -> Void {
        self.hasCheese = true
    }
    
    func showToppings() -> Void {
        if (hasPep) {
            print("Has pep")
        }
        
        if (hasCheese) {
            print("Has cheese")
        }
        
        if (!hasPep && !hasCheese) {
            print("No toppings")
        }
    }
    
}

var myPizza = Pizza()
//myPizza.getCheese()
//myPizza.getPep()
print("Is a pizza: \(myPizza.isPizza)")
myPizza.showToppings()

class Person {
    private var name: String
    private var age: Int
    
    init(name:String, age: Int) {
        self.age = age
        self.name = name
    }
    
    func setName(name: String) {
        self.name = name
    }
    
    func greet() -> Void {
        print("Hello my name is \(self.name)")
    }
    
    private func printAge() -> Void {
        print("My age is: \(self.age)")
    }
}

// nil coalescing
var authorOfBook: String? = nil
print(authorOfBook ?? "No author")

// structs
struct Book {
    var title: String
    var author: String
    
    //Use the `mutating` keyword to write/edit properties of struct instances.
    mutating func changeTitle(newTitle: String) {
        self.title = newTitle
    }
    
    func printBookDetails() {
        print("\(title) by \(author)")
    }
    
}

var book = Book(title: "Diary of the wimpy kid", author: "Frank Ocean" )
book.changeTitle(newTitle: "Matilda")
book.printBookDetails() //prints "Matilda by Roald Dahl"
