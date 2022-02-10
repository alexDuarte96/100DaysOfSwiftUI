import Cocoa

// Problem: Determine if a String is a palindrome.
let palindromes = ["racecar", "Hello!", "12344321", "Alex", "hannah", "taco cat", "a santa lived as a devil at nasa"]
var size:Int
var half:Int
var toList:Array<String.Element> = []
var noSpaces:Array<String.Element> = []
var isPalindrome:Bool

for palindrome in palindromes{
    toList = Array(palindrome)
    noSpaces = []
    isPalindrome = true
    
    // Remove spaces within the Array.
    for char in toList{
        if char != " "{
            noSpaces.append(char)
        }
    }
    
    // We get the size of the String without spaces.
    size = Int(noSpaces.count)
    half = Int(size/2)
    
    // Compare elements. Because it's a palindrome we only need to check the left half against the right half.
    for i in 0..<half{
        //print("[\(i)] : \(noSpaces[i]) - [\(size-1-i)] : \(noSpaces[size-1-i])")
        if noSpaces[i] != noSpaces[size-1-i]{
            isPalindrome = false
        }
    }
    
    // Print the result.
    if isPalindrome{
        print("\(palindrome) is a Palindrome.")
    }else{
        print("\(palindrome) is NOT a Palindrome.")
    }
}
