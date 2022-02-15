import Cocoa

// --------------
// Default Values
// --------------
// 'Default' values are the values that parameters will get in functions when they don't recieve something sent to them. When you call a function with 'Default' values in its parameters, you can skip that parameter when calling it.
// To stablish a Default value, you must assign as 'parameter:Type = value'.

func greetings(to: String, place: String = "your Home"){
    print("Hello \(to)!, welcome to \(place).")
}

greetings(to: "Alex")
greetings(to: "Erik", place:"Norway")

// --------------
// Error Handling
// --------------
// In Swift it is necessary to handle errors or at least acknowledge them when writing our code. To 'throw' an error on a function we use:
/*
 func name(...) throws -> Type{
 }
 The return type is optional.
*/

/*
 do{
    try riskyFunction()
 }catch enum:Error {
    ... Handling an specific error.
 }catch{
    ... Handling any other error.
 }
*/


enum passwordError: Error{
    case short, common
}

func checkPassword(_ password: String) throws -> String {
    if password.count <= 5 { throw passwordError.short }
    if password == "password" { throw passwordError.common }
    
    if password.count < 8 {
        return "OK"
    }else if password.count < 12 {
        return "Good"
    }else{
        return "Strong"
    }
}

var userPassword = "Hello"
/*do {
    let passwordStrenght = try checkPassword(userPassword)
    print("'\(userPassword)' is a \(passwordStrenght) password.")
} catch {
    print("ERROR.")
}*/

do {
    let passwordStrenght = try checkPassword(userPassword)
    print("'\(userPassword)' is a \(passwordStrenght) password.")
} catch passwordError.short {
    print("Password too short.")
} catch passwordError.common {
    print("Password found on data breach.")
} catch {
    print("We don't know what happened. Try Again.")
}

// When using Apple's own errors, 'error.localizedDescription' will return an Error in plain but meaningful language.

enum myError:Error {
    case notValid
}

func divide(this dividend:Int, with divisor:Int) throws{
    if divisor == 0 {throw myError.notValid}
    print("\(divisor) / \(dividend) = \(divisor/dividend)")
}

do {
    try divide(this: 8, with: 0)
} catch {
    print("Sorry. \(error.localizedDescription)")
}
