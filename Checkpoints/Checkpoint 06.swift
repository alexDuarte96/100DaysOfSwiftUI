import Cocoa

// Problem: Find if two strings contain the same letters, regardless of their order?
func hasSameLetters(first:String, second:String) -> Bool{
    //Check if both Strings are the same length.
    if first.count == second.count{
        // Sort strings and compare them.
        return first.sorted() == second.sorted()
    }else{
        return false
    }
}

hasSameLetters(first: "vaca", second: "cava")
hasSameLetters(first: "Hello", second: "Fellow")
hasSameLetters(first: "abcd", second: "cdba")
