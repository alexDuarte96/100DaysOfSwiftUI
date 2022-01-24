// Written by: Alejandro Duarte

import Cocoa

// ----------------
// Naming Variables
// ----------------
// 'var' creates a variable that is mutable.
var name = "Ted"
name = "Keeley"

// 'let' creates a variale that is inmutable. Once its created you can't change it.
let character = "Daphne"
// character = "Julia"

// We can print out information using the 'print()' function. It is caseSensitive.
var playerName = "Alex"
var playername = "Fran"
print(playerName)
print(playername)

playerName = "Erik"
print(playerName)

// The best practice to name variables is camelCassing.
let lollipopFlavour = "Vainilla"
let interestRateOfPremiumClient = 0.12
let meaningOfLife = 42

// -------
// Strings
// -------
// Strings are created by placing text between double quotes '"text"', Swift if really flexible and allows the use of emoji natively.
let myString = "This is a String example. Yay! 🐳"

// To add a new line inside the string we use '\n'
let newLine = "First Line\nSecond Line"
print(newLine)

// We can add double quotes in our string by using '\"' in the string.
let quote = "\"Here's to the crazy ones...\""
print(quote)

// To declare string in multiple lines, we use triple double quotes.
let multipleLineString = """
An iPod,
a phone,
and an internet communicator.
"""

// To get the amount of characters in a string, or its size, you use '.count'.
let myName = "Alejandro Duarte"
print(myName.count)

// If you want to transform your text, like uppercasing it, you can use '.uppercased()'
print(myName.uppercased())

// To check prefixes and suffixes, we use '.hasPrefix()' or '.hasSuffix()', these are also caseSensitive.
let filename = "photo01.png"
print(filename.hasSuffix(".png"))

// --------
// Integers
// --------
// You can create number variables just as with strings. If the number is to big to read, using '_' between numbers can help.
let number = 10
let bigNumber = 1_000_000_000

// We have all aritmetic operations in Swift.
let plus = number + 2
let minus = number - 3
let doubled = number * 2
let halved = number / 2
let modulo = number % 4

// And just as on C/C++, there are compound assignment operators in Swift.
var counter = 0
//counter = counter + 1
counter += 1
print(counter)

// Just as with Strings, Integers have functionality built within them.
print(number.isMultiple(of: 2))

// -------
// Doubles
// -------

// Floats and Doubles are numbers with decimal points. In Swift, they are still susceptible to precision errors.
let floatNum = 0.1 + 0.2
print(floatNum)

// Swift variables are type-safe language, this means you can't mix variable types. Once a variable has a type, it must always hold that type of data.
let a = 1
let b = 2.0
//let b = "Hello"
//let c = a + b

// To make operations between different data types, you must first transform your variable types to be the same by 'Casting' them with 'Int()' or 'Double()'.
let c = a + Int(b)
print(c)
