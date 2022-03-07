import Cocoa

//------
// Class
//------
// Classes are similar to Structs in the way that you can create a new Variable Type, with properties, methods, observers, access control and initializers.
// However, they are different by having Inheritance, which means a Class can be built up on all Properties and Methods for another Class. Also, Classes are sent By Reference, which means if you 'copy' a Class and modify that copy, you will change both the original and the copy.

class Zombie {
    var health:Int
    var defense = 0
    
    init(healt:Int){
        self.health = healt
    }
}
