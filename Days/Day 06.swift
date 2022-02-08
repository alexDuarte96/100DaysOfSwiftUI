import Cocoa

// -----
// Loops
// -----

// We use Loops to repeat an action for as much as needed or while a condition is met.

// --------
// For Loop
// --------
// We use a 'For' loop, when we know exactly how many times we must do something or when we want to iterate over all the elements in arrays/sets/dictionaries.

// To iterate over all elements in an array, we use:
/*
for element in array{
    ... for each iteration, 'element' will be the value of one element in the array.
}
 */
let flavours = ["chocolate", "vainilla", "strawberry", "coffee"]
for flavour in flavours {
    print("I like \(flavour) ice-cream.")
}

// If we want to iterate an specific amount of times, we use the range operator.
/*
for iterator in firstValue...lastValue{
    ... for each iteration, 'iterator' will be the value from the 'firstValue' all the way up to (and including) the 'lastValue'. One at a time.
        If we don't need the last value, we can use '..<'
}
 */

for i in 1...3{
    print("I have \(i) lollipops.")
}
print("")
for i in 1..<6{
    print("I have \(i) apples.")
}

// There is also the times when we don't need or care about the value of the iterator.
print("My dog always go:")
for _ in 1...3{
    print("Woof!")
}

// There are even more uses for the 'Range' operator. For example, to print directly an array without using a 'For Loop'.
let names = ["Alex", "Tiffany", "Erik", "Lilia", "Geraldine"]
// Using the range operator normaly, elements from 1 through 3.
print(names[1...3])

// Or using it without the 'start' or 'end' value, meaning it will go all the way through the last element.
print(names[...])

// ------------
// Nested Loops
// ------------
// Nested Loops are simply a Loop, within a Loop. So each iteration of the outer Loop, the inner Loop will run. A perfect example is the Multiplication tables.

for x in 2...10{
    for y in 2...10{
        print("\(x) * \(y) = \(x*y)")
    }
    print("")
}

// -----------
// While Loops
// -----------
// We use 'While Loops' we need to repeat an action, but don't know how many times it needs to be executed. So we stablish a condition that while True, will repeat the code inside the Loop.
/*
while condition{
    ... inner code.
}
*/

var counter = 0
while counter < 10{
    print("Counting Sheeps: Sheep #\(counter)")
    counter += 1
}
print("ZzZz...")

// To generate random values, we use: '.random()'
// Example: Roll a dice, until it rolls a 6.

var dice:Int = 0
while dice != 6{
    dice = Int.random(in: 1...6)
    print("Dice roll: \(dice)")
}

// ----------------
// Break & Continue
// ----------------

// Complete - exits only the current iteration of the Loop.
// Break - allows to exit the Loop completely.

// Find files that end with '.jpg'
let files = ["code.py", "picture.jpg", "vector.svg", "app.swift", "song.mp3"]

for file in files {
    if !file.hasSuffix(".jpg"){
        continue
    }
    print("Printing \(file)...")
}

// Get the first 10 multiple values of 3 and 7.
var multiples:[Int] = []
var iterator = 1

while true{
    if iterator % 3 == 0 && iterator % 7 == 0{
        multiples.append(iterator)
    }
    iterator += 1
    
    if multiples.count == 10{
        break
    }
}
print(multiples)
