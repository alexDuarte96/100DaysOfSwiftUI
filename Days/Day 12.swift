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
}

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
