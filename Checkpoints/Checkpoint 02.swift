import Cocoa

// Problem: Create an Array of Strings, then print:
// - The number of items in the array.
// - The number of UNIQUE items in the array.

let myStrings:[String] = ["a","b","b","b","c","d","d"]

// Print the amount of elements in the Array.
print("Array: \(myStrings)")
print("Elements in the Array: \(myStrings.count)")

// Print the amount of unique elements in the Array.
// 1. We make a Set out of our Strings.
let mySet = Set(myStrings)
print("Unique Elements in the Array: \(mySet)")
print("Number of Unique Elements in the Array: \(mySet.count)")
