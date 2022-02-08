import Cocoa

// --
// If
// --
// 'If statements' let us define the Flow Control of our code when we need make decisions. If a condition is met, a block of code will be executed.
// The condition can be stablished with: >, >=, <=, <=, ==, !=
/*
 if condition{
    ...someCode
 }
*/
let grade = 95

if grade >= 60 {
    print("Approved.")
}

// While we can compare numerical values, we can also use those operators to compare Strings alphabetically.
let state = "Alabama"
let animal = "Zebra"

if state < animal {
    print("'\(state)' goes first, and then '\(animal)' alphabetically.")
}

// Conditions can use any type of values, not only variables.
// Delete the oldest element of an Array when it has more than 3 values.
var myArray = [1,2,3]
myArray.append(4)

if myArray.count > 3{
    myArray.remove(at: 0)
}
print(myArray)

//To check if a String, Array, Dictionary or Set is empty we can use '.isEmpty'.
let surName = ""
if surName.isEmpty {
    print("Please insert your surname.")
}

// -------
// Else If
// -------
// 'Else If Statements' lets us provide an alternate block of code to execute in case the condition wasn't met. When a condition is met, the specific block is executed and it exits the whole If statement.
/*
 if condition{
    ... condition met Code
 }else{
    ... alternate Code
 }
*/

let balance = 1000

if balance > 0{
    print("Positive Balance.")
}else{
    print("Negative Balance.")
}

// However, we can place another condition after 'else' to check multiple conditions.
enum Sandwich{
    case basic, double, premium
}

let order = Sandwich.double

if order == .basic{
    print("Price: $5")
}else if order == .double{
    print("Price: $10")
}else if order == .premium{
    print("Price: $18")
}else{
    print("Invalid.")
}

// -----------------
// Logical Operators
// -----------------
// To check for multiple conditions at the same time, we can use Logical Operators: && (And) and || (Or)
// && - requires both conditions to be true, to return a True value. Else it will be false.
// || - requires only one condition to be true to return a True value. To get a false, you need both conditions to be False.

let temperature = 36.3

if temperature >= 35.5 && temperature < 37.0{
    print("Normal temperature.")
}else{
    print("Call your doctor.")
}

let isClosed = false
let isWeekend = true

if isClosed || isWeekend{
    print("Sorry. We are not open.")
}

// ------
// Switch
// ------
// Switch cases can simplify our code when we need to check many conditions. It must be exhaustive, meaning it must cover every possible value a variable can get.
enum Flavours{
    case chocoalte, vainilla, strawberry, coffee, oreo
}

let iceCream = Flavours.coffee

switch iceCream{
    case .chocoalte:
        print("Not the best flavour.")
    case .vainilla:
        print("Such a classic.")
    case .strawberry:
        print("This one is underrated.")
    case .coffee:
        print("Best one. Bar none.")
    case .oreo:
        print("Not my favorite. But you are not wrong.")
}

// When we 'Switch' to a variable that can have infinite values like a String or a Number, we use 'Default:' to make our Switch exhaustive. It will always be executed if none of the conditions are matched.
let size = "XXL"

switch size {
    case "XL":
        print("Extra Large")
    case "L":
        print("Large")
    case "M":
        print("Medium")
    case "S":
        print("Small")
    default:
        print("Not valid.")
}

// There is the 'fallthrough' keyword that changes the behaviour of the Switch: If a Case condition is met, then every other Case below it will be executed. However, this isn't that useful or widely used.

// ----------------
// Ternary Operator
// ----------------
// The Ternary Operator allows to compress a full 'If Else Statement' in just one line of code, using: 'condition ? valueIfTrue : valueIfFalse'

let age = 25

let canVote = age >= 18 ? true : false
print(canVote)

// Check the amount of elements in an array.
let people = ["Jez", "Ilian", "George"]
print(people.isEmpty ? "We are empty." : "There's \(people.count) people.")
