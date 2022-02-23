import Cocoa

// Problem. Recibe a list to a function that applies the following transformations with Closures.
// Filter out any numbers that are even
// Sort the array in ascending order
// Map them to strings in the format “7 is a lucky number”
// Print the resulting array, one item per line

let numbers:[Int] = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

numbers.filter { $0 % 2 != 0 }
       .sorted(by: <)
       .map { number in print("\(number) is a Lucky number.") }
