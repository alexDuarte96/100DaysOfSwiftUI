import Cocoa

// Problem: Write a Function that accepts an integer from 1 to 10,000 and returns the integer Square Root of that number. You can't use 'sqrt()'.

enum rootError:Error{
    case outOfBounds, noRoot
}

func squareRoot(of number: Int) throws -> Int{
    if number < 0 { throw rootError.outOfBounds }
    
    if number == 1{
        return 1
    }else{
        var right = Int(number/2)
        var left = 1
        
        while left < right - 1 {
            let mid = Int((right+left)/2)
            let guess = mid * mid
            
            print("Left: \(left) Right:\(right) Guess: \(mid)")

            if guess == number{
                return mid
            } else if guess > number{
                right = mid
            } else if guess < number{
                left = mid
            }
        }
    }
    throw rootError.noRoot
}

do{
    try print("Square Root: \(squareRoot(of: 256))")
} catch rootError.outOfBounds {
    print("Sorry, value out of bounds. Try values between 1 and 10,000.")
} catch rootError.noRoot {
    print("No square root found.")
}
