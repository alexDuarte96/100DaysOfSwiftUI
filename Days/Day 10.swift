import Cocoa

// -------
// Structs
// -------

// With Structs, we can create new variable types by mixing existing ones.
// Its internal variables are called 'Properties'.
// Its internat functions are called 'Methods'.
// And when we declare a new Struct to assign it to a variable, it is called 'Initialize'
/*
 struct Name {
    let variable: Type
    ...
    var variable: Type
    
    func functionName() {
        ... some code.
    }
 }
*/
struct Student {
    let name: String
    let ID: String
    let age: Int
    
    func printStudent() {
        print("Student: \n\(ID) - \(name)")
        print("Age: \(age) years")
    }
}

// To 'Initialize' a new Struct, we use the following sintax:
// let variable = Struct(variable: value, ..., variable: value)
let alex = Student(name: "Alejandro", ID: "00123456", age: 25)

// To refer to the 'Properties' or 'Methods', we use the 'dot' notation. Meaning we write the variable name, a dot, and the 'Properties'/'Methods' we want to use.
// struct.propiety
// struct.method()
print(alex.age)
alex.printStudent()

// ------------------
// Mutating Functions
// ------------------
// As Structs can be 'Initialized' as Constants, that means that every 'Property' within it would also become a constant.
// So, to modify a 'Property' of a Struct with a 'Method', we must indicate it when declaring said 'Method' with: 'mutating'.
/*
 struct Name {
    var variable: Type
 
    mutating func Name() {
        ... code to modify an internal variable.
    }
 }
*/
struct CookieShop {
    let name: String
    var cookiesLeft: Int = 0
    
    mutating func sellCookies(amount cookiesToSell: Int){
        if cookiesLeft < cookiesToSell {
            print("Not enough cookies.")
        }else{
            print("Sold \(cookiesToSell) cookies!")
            cookiesLeft -= cookiesToSell
        }
    }
}
// In order to use Mutating Functions, Structs must be 'Initialized' as 'var'.
var store = CookieShop(name: "Store 01", cookiesLeft: 80)
store.sellCookies(amount: 4)
print(store.cookiesLeft)


// -------------------
// Computed Properties
// -------------------
// This type of property are calculated each it's called. They can be accesed as normal Properties, but work as Functions as they run some code before they get a value.

/*
 struct Name{
    let variable:Type
    var computedVar:Type{
        ...someCode
    }
 }
*/

struct SavingsAccount {
    let name:String
    var savings:Int
    var spendings:Int
    
    var remainingFunds: Int {
        return savings - spendings
    }
}

// Everytime we modify a Propierty that is involved in a Computed Property, it is recalculated.
var myAccount = SavingsAccount(name: "Piggy Bank", savings: 1000, spendings: 256)
print("Remaining Funds: \(myAccount.remainingFunds)")
myAccount.spendings += 15
print("Remaining Funds: \(myAccount.remainingFunds)")

// ---------------
// Getter & Setter
// ---------------
// In order to properly read and modify Computed Values, we must use 'get' to read the value, and 'set' to assign a new value.
/*
 struct Name{
    let variable:Type
    var computedVar:Type{
        get { ... someCode }
        set { ... someCode }
    }
 }
*/
struct Inventory {
    var stock: Int
    var sold: Int
    
    var remaining: Int {
        get {
            return stock - sold
        }
        set{
            stock = newValue + sold
        }
    }
}

var storageRoom = Inventory(stock: 10, sold: 0)
storageRoom.sold += 2
print("Stock Remaining:\(storageRoom.remaining)")

storageRoom.remaining = 20
print("Stock:\(storageRoom.stock)")
print("Stock Remaining:\(storageRoom.remaining)")

// ------------------
// Property Observers
// ------------------
// Property Obersvers allows us to run some code each time a Property: is changed or is about to be changed.
/*
 struct Name {
    var property: Type{
        willSet{ ...code to run before assignment }
        didSet{ ...code to run after assignment }
    }
 }
*/
struct Bonds {
    var moneyAmount: Int {
        didSet {
            print("Succesful Transaction!")
            print("Old balance: \(oldValue)")
            print("Current balance: \(moneyAmount)")
        }
        willSet {
            print("Trying to access account information...")
            print("Current balance: \(moneyAmount)")
            
            print("Difference in balance: ")
            if newValue > moneyAmount {
                print("+ \(newValue - moneyAmount)")
            }else{
                print("- \(moneyAmount - newValue)")
            }
        }
    }
}

var myBonds = Bonds(moneyAmount: 10)
myBonds.moneyAmount = 25

// ------------
// Initializers
// ------------
// When we 'Initialize' a Struct, it looks a lot like a Function. And that's because  Swift automatically creates a 'init' function that 'Initializes' a Struct in a variable. This default Initializers are called 'Memberwise Initializer'.
struct User {
    var name: String
    var points: Int = 0
}

let first = User(name: "Alex", points: 3)
let second = User.init(name: "Jessica", points: 5)


// Initializers will only be valid if every Property has a value assigned before initializing the Struct.
// let invalid = User(points: 0)
let third = User(name: "John")

// We can create custom Initializers for our Structs. We use the prefix '.self' to refer to the properties of the Struct itself, and not the parameters sent to the initializer.
/*
 struct Name {
    var property:Type
    
    init(property:Type){
        self.property = property
    }
 }
*/
struct Account {
    let name:String
    let lastName:String
    let email:String
    let ID:Int
    var balance:Int = 0 {
        willSet {
            print("Trying to access account...")
            if balance > newValue {
                print("Extracting \(balance - newValue) from account.")
            } else {
                print("Adding \(newValue - balance) from account.")
            }
        }
        didSet {
            print("Transaction complete!")
        }
    }
    
    init(name:String, lastName:String) {
        self.name = name
        self.lastName = lastName
        self.email = "\(name).\(lastName)@company.com".lowercased()
        self.ID = Int.random(in: 0...Int.max)
    }
}

var senior = Account(name: "Alex", lastName: "Duarte")
senior.balance = 100
senior.balance = 80
print(senior)
