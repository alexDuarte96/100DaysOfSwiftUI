import Cocoa

// --------
// Closures
// --------
// Closures let us asign a block of code to a variable and pass it around as such. It is a function with no name that can be assigned to a variable.

// Closure without parameters.
/*
 var closureName = {
    ... some code
 }
 */

// Closure with parameters.
/*
 var closureName = { (parameter:Type) -> Type in
    ... some code
 }
 */

//To assign a  function to a variable, you must equal to variable to the name of the function without the '()' at the end.
func greeting(){
    print("Hello world!")
}
var newGreet = greeting

// And just like variables, Functions have an specific type associated to it.
let greetCopy: () -> Void = greeting

// But when we have a Function that has parameter names, and assign it to a variable, the paramater names are lost.
func changePassword(to password: String) -> Bool {
    if password.count > 8 {
        print("Valid Password.")
        return true
    }else{
        print("Password to short.")
        return false
    }
}

let modifyPassword: (String) -> Bool = changePassword
let isValid = modifyPassword("Hello")
print(isValid)
