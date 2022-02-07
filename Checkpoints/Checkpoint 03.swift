import Cocoa

// Problem: Obtain the biggest number given 3 numbers.
// Only use 'If', don't use 'Loops'.

let myList:[Int] = [1,3,2]
var biggestIndex:Int = 0

if myList[0] > myList[1] {
    if myList[0] > myList[2]{
        biggestIndex = 0
    }else{
        biggestIndex = 2
    }
}else{
    if myList[1] > myList[2]{
        biggestIndex = 1
    }else{
        biggestIndex = 2
    }
}

print("The biggest number is in myList[\(biggestIndex)] = \(myList[biggestIndex])")
