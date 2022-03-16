import Cocoa

func divide(_ dividend: Int, _ divisor: Int) -> Int {
    // Check for divisor = 1 or -1.
    if divisor == 1{
        return dividend
    }
    
    if divisor == -1{
        return -dividend
    }
    
    // Check for Return value of 0.
    let x:Int = abs(dividend)
    let y:Int = abs(divisor)
    
    if x < y {
        return 0
    }
    
    // Start binary search.
    var left:Int = 1
    var right:Int = x>>1
    let changeSign = (divisor < 0) != (dividend < 0)

    repeat{
        let mid:Int = (left+right) >> 1
        let modulo = x - multiply(mid, times: divisor)
        
        print("Trying with: \(mid). Modulo: \(modulo). Multiplication: \(multiply(mid, times: divisor))")
        
        if modulo < y && modulo >= 0{
            if changeSign {
                return -mid
            }else{
                return mid
            }
        }else{
            if modulo >= y {
                left = mid + 1
            }else{
                right = mid - 1
            }
        }
    } while left <= right
    
    return -1
}

func multiply(_ x:Int, times: Int) -> Int{
    var result = 0
    
    
    for _ in 1...abs(times){
        result += x
    }
    return result
}
print(divide(500,-3))
