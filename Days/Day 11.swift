import Cocoa

// --------------
// Access Control
// --------------
// We can change who can read/write the Properties of our Structs. This allows to have more control on the values of each Property.
/*
 struct Name {
     private var name:Type
     private(set) var name:Type
     fileprivate var name:Type
     public var name:Type
 }

 // private: only the struct can read and write the Property.
 // private(set): only the Struct can modify the Property, but everyone can read it.
 // fileprivate: nothing outside the file the Struct is, can read/write the Property.
 // public: anyone can read/write the Property,
 
*/

struct FrequentCustomer {
    private(set) var creditCard:Int
    private(set) var email:String
    private(set) var points:Int {
        didSet{
            print("Remaining points: \(points)")
        }
    }
    
    mutating func addPoints(ammount:Int){
        points += ammount
    }
    
    mutating func withdrawPoints(ammount:Int) -> Bool{
        if ammount >= points {
            print("Not enough points.")
            return false
        }else{
            points -= ammount
            return true
        }
    }
}

var newUser = FrequentCustomer(creditCard: 555, email: "mail@mail.com", points: 10)

newUser.addPoints(ammount: 12)
newUser.withdrawPoints(ammount: 18)
