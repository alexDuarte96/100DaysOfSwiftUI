import Cocoa

// Problem: Write a Function that accepts an integer from 1 to 10,000 and returns the integer Square Root of that number. You can't use 'sqrt()' (Brute Force).
enum rootError:Error{
    case outOfBounds, noRoot
}

func squareRoot(of number: Int) throws -> Int{
    if number < 0 || number > 10_000 { throw rootError.outOfBounds }
    
    if number == 1{
        return 1
    }else{
        for i in 1 ... Int(number/2){
            if i*i == number {
                return i
            }
        }
    }
    throw rootError.noRoot
}

do{
    try print("Square Root: \(squareRoot(of: 9025))")
} catch rootError.outOfBounds {
    print("Sorry, value out of bounds. Try values between 1 and 10,000.")
} catch rootError.noRoot {
    print("No square root found.")
}
