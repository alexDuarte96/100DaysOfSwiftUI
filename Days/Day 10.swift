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

// ------------
// Initializers
// ------------
// When we 'Initialize' a Struct, it looks a lot like a Function. And that's because  Swift automatically creates a 'init' function that 'Initializes' a Struct in a variable.
var newStore = CookieShop.init(name: "Shop 02")
var anotherShop = CookieShop.init(name: "Shop 03", cookiesLeft: 123)

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
        savings - spendings
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
            stock - sold
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
