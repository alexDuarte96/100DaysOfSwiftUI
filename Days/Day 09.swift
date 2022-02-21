import Cocoa
import os
import Foundation

// --------
// Closures
// --------
// Closures let us asign a block of code to a variable and pass it around as such. It is a function with no name that can be assigned to a variable.
// Closures are a way to store functionallity when you don't know what must be done.

// Closure with NO parameters.
/*
 var closureName = {
    ... some code
 }
 */

// Closure with parameters and Return Type.
/*
 var closureName = { (parameter:Type) -> Type in
    ... some code
 }
 */

// Closure with NO parameters and Return Type.
/*
 var closureName = { () -> Type in
    ... some code
 }
 */

//To assign a  function to a variable, you must equal to variable to the name of the function without the '()' at the end.
func greeting(){
    print("Hello world!")
}
var newGreet = greeting

// And just like variables, Functions have an specific type associated to it.
let greetCopy: () -> Void = greeting

// But when we have a Function that has parameter names, and assign it to a variable, the paramater names are lost.
func changePassword(to password: String) -> Bool {
    if password.count > 8 {
        print("Valid Password.")
        return true
    }else{
        print("Password to short.")
        return false
    }
}

let modifyPassword: (String) -> Bool = changePassword
let isValid = modifyPassword("Hello")
print(isValid)

// We can use Closures to modify another Function behavior when we send it to it.
// For example, we can modify the 'sorted()' function to sort an element first.
func zeroFirst(first:Int, second:Int) -> Bool {
    if first == 0 {
        return true
    } else if second == 0 {
        return false
    }
    return first < second
}

let myList:[Int] = [9,4,1,2,0,3,0,4,8,-1,-5,-12]
// We send the 'zeroFirst' closure to the 'sorted()' function.
let newList = myList.sorted(by: zeroFirst)
print(newList)

// We can also add the Closure directly in the function call. The closure we send MUST comply with the expected behavior.
let anotherList = myList.sorted(by: { (first: Int, second: Int) -> Bool in
    if first == 0 {
        return true
    } else if second == 0 {
        return false
    }
    return first < second
})
print(anotherList)

// Because the Closure must match the expected behaviour, Swift can infer its Parameter and Return types so we can symplify our code.
/*
 let yetAnotherList = myList.sorted({ a,b in
    ... Rest of code.
 })
*/

// -----------------
// Short Hand Syntax
// -----------------
// Because the Function only recieves one Closure, you can skip the function Arguments names ('by:') and also the Parameters that the Closure needs.
// When we skip the Closure Parameter names, they'll be replaced to numerical names starting with '0', like: '$0', '$1', and so on.
/*
 let inverseSortedList = myList.sorted {
    return $0 > $1
 }
*/

// As the code of the Closure is just one line, we can skip 'Return' and be simplified even more to just an expression.
let inverseSortedList = myList.sorted {$0 > $1}
print(inverseSortedList)

// Example with 'filter()' function.
let names = ["Alex", "Brendan", "Daniel", "Fran", "Andy"]

let startsWithA = names.filter{ word in
    return word.hasPrefix("A")
}
print(startsWithA)

let onlyA = names.filter{ $0.hasPrefix("A") }
print(onlyA)

// Example with 'map()' function.
let upperCased = names.map { word in
    return word.uppercased()
}
print(upperCased)

let upperCasedNames = names.map{ $0.uppercased() }
print(upperCasedNames)

// Closures are Widely used in Swift and SwiftUI. And example is when you click a button, it will ask for a Closure to define what to do after clicking it.

// -----------------------
// Functions as Parameters
// -----------------------

// To recive a Function as a Parameter, we use:
/*
 func fuctionName(label closure: (Type) -> Type) -> Type {
    ... some code.
 }
 */

// Example. A function that generates a list of Ints. The function recieves a size, and a closure that defines the way Integer values are generated.
func generateIntList(size: Int, algorithm generator: () -> Int) -> [Int] {
    var intList: [Int] = []
    for _ in 1...size {
        intList.append(generator())
    }
    return intList
}

let loteryNumbers = generateIntList(size: 8){
    Int.random(in: 1...100)
}

let diceRoll = { Int.random(in: 0...6) }
let monopolyTurn = generateIntList(size: 2, algorithm: diceRoll)


print(monopolyTurn)
print(loteryNumbers)

// To recive Multiple Functions as Parameters, we use:
/*
 func name(label closure1: (Type) -> Type, ... , label closureN: (Type) -> Type) {
    ... some code.
 }
 */

func doMultipleThings(a:Int, b:String, first: () -> Void, second: (Int) -> Void, third: (String) -> Bool){
    print("First Closure:")
    first()
    print("Second Closure:")
    second(a)
    print("Third Closure:")
    print(third(b))
}

// To call and send multiple closures, we must send each closure between curly braces.
let one = {
    print("Doing the first thing!")
}

let bark = { (times: Int) in
    for _ in 1...times {
        print("Barf!")
    }
}

func isStrongPassword(_ password: String) -> Bool{
    return password.count > 8
}

doMultipleThings(a:5, b:"1234567"){
    one()
} second: { a in
    bark(a)
} third: { b in
    isStrongPassword(b)
}



func repeatAction(count: Int, action: () -> Void) {
    for _ in 0..<count {
        action()
    }
}
repeatAction(count: 5) {
    print("Hello, world!")
}
