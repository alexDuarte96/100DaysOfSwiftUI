import Cocoa

// --------
// Booleans
// --------

// Booleans lets store the logic values of True or False.
let weAreCoding = true
let twoIsBiggerThanTen = false
let isMultiple = 120.isMultiple(of: 3)

//You can flip the value of a boolean using the NOT '!' operator.
var isAuthenticated = false
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)

// Or by using the '.toogle()' function.
var isHappy = false
isHappy.toggle()
print(isHappy)


// --------------------
// String Concatenation
// --------------------

// You can join strings by using the '+' operator. However, the '+' operator does not add spaces between the strings, it just joins them.
let name = "Alex"
let surname = "Duarte"
let fullName = name + surname
print(fullName)

// We can also join any type of variables withing a String using '\(variable)' inside the String.
let age = 25
let message = "Hi my name is: \(name) and I'm \(age) years old."
print(message)

// Using '\(variable)' lets us even make operations inside the parenthesis.
print("5 * 5 = \(5*5)")
