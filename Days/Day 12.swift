import Cocoa

//------
// Class
//------
// Classes are similar to Structs in the way that you can create a new Variable Type, with properties, methods, observers, access control and initializers.
// However, they are different by having Inheritance, which means a Class can be built up on all Properties and Methods for another Class. Also, Classes are sent By Reference, which means if you 'copy' a Class and modify that copy, you will change both the original and the copy.
/*
    class Name{
        ...Properties
        .. Initializer
    }
*/

class Zombie {
    var health:Int
    var defense = 0
    
    init(healt:Int){
        self.health = healt
    }
    
    func greet(){
        print("Ughhh.")
    }
}
var zombie = Zombie(healt: 10)
zombie.greet()

// -----------
// Inheritance
// -----------
// A class can be built upon the Properties and Methods of another existing class. This new class gets all the functionality of the first class, but can be modyfied and customised.
/*
    class Name: ClassToInheritFrom {
        ...some code.
    }
*/

class Employee {
    var workingHours:Int
    
    init (workingHours: Int){
        self.workingHours = workingHours
    }
    func drinkCoffee() {
        print("*Sips coffee*")
    }
}

class Manager: Employee {
    func work(){
        print("I'm having meetings for \(workingHours) hours!")
    }
}

let dafne = Manager(workingHours: 8)
dafne.work()
dafne.drinkCoffee()

// To customize a Method that is on a parent Class, you must use the 'override' expression before the function name.
/*
    class Name:ClassToInheritFrom {
        override func parentClassFunction(){
            ... some code.
        }
    }
*/

class Coder: Employee {
    func work(){
        print("I'm going to code for \(workingHours) hours!")
    }
    override func drinkCoffee() {
        print("*Drinks a ton of coffee*")
    }
}
let alex = Coder(workingHours: 8)
alex.drinkCoffee()

// To make a Class uninheritable, we use the 'final' expression before 'class' when declaring it.
/*
    final class Name:ClassToInheritFrom {
        ... some code.
    }
*/

final class Intern:Coder {
    override func work(){
        print("Part of my \(workingHours) hours of work is to learn and study.")
    }
    func studyforFinals(){
        print("I'm still a student so I need to study for my finals.")
    }
}

let heidi = Intern(workingHours: 6)
heidi.studyforFinals()

// ------------
// Initializers
// ------------
// When we have additional custom Properties on the child classes, we must always call the Parent or 'super' class Initializer if we want to create one.
class Drink {
    var size: Int
    
    init(size: Int){
        self.size = size
    }
}

class Soda:Drink {
    var flavour: String
    init(size:Int, flavour:String){
        self.flavour = flavour
        super.init(size: size)
    }
}

// ---------------
// Copying Classes
// ---------------
// Because Classes are sent by reference, this means that if we try to copy an Instance of a Class, we will only be having two 'Pointers' to the same data. If we change one, we modify the other.
class Person {
    var name: String
    init(name: String) {
        self.name = name
    }
}

var person1 = Person(name: "Erik")
var person2 = person1
person2.name = "Alejandra"

print("Person 1: \(person1.name)")
print("Person 2: \(person2.name)")

// In order to copy a Class, we must create a function that returns a new Instance of the same Class with the same values as the Original one.
class Dog {
    var breed: String
    init(breed:String){
        self.breed = breed
    }
    
    func copy() -> Dog {
        let newDog = Dog(breed: self.breed)
        return newDog
    }
}

var firstDog = Dog(breed: "Collie")
var secondDog = firstDog.copy()

secondDog.breed = "Dashound"
print("First Dog: \(firstDog.breed)")
print("Second Dog: \(secondDog.breed)")

// --------------
// De-Initializer
// --------------
// A Deinitializer is a block of code that runs only after there is nothing left poiniting at an Instance of a Class withing a Scope of the code. Where a Scope is the part of the code where the information is available. (Ex. Inside a Loop, inside a Function, inside a File).
class Program {
    var name: String
    
    init(name:String) {
        self.name = name
        print("Loading \(self.name)...")
    }
    
    deinit {
        print("Closing \(self.name).")
    }
}

let softwareNames = ["Safari", "VS Studio", "Xcode"]
for software in softwareNames {
    let activeSoftware = Program(name: software)
    print("Current app: \(activeSoftware.name)")
}

// -----------------
// Classes Variables
// -----------------
// Because a Classes variable is just a Pointer that leads to an Object, when we Initialize a Class as a Constant, the constant part is the Pointer itself, not the values of the Object. This means, that even if we declare a Class as a Constant, we can change its Properties if they are created as variable.

class User {
    
}
