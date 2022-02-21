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
