import Cocoa

// Problem: Write a single function that returns Min and Max values of a list.
func minMax(_ values:[Int]) -> (min:Int, max:Int){
    var maxValue = Int.min
    var minValue = Int.max
    
    for value in values{
        if value > maxValue {maxValue = value}
        if value < minValue {minValue = value}
    }
    return (min:minValue, max:maxValue)
}

let myList:[Int] = [1,9,2,8,3,7,4,6,5]
let (minimum, maximum) = minMax(myList)

print("The list: \(myList)")
print("Min: \(minimum) - Max: \(maximum)")
