import Cocoa

// ---------
// Functions
// ---------
// We use Functions when we need to reuse a block of code mulitple times. By saving code in a Function, we can modify it and be update wherever it is used.
/*
 func name(parameter:Type, ... , parameter:Type){
     ...someCode
 }
 ...Parameters are optional.
*/

//Function with just one parameter.
func addTip(price: Double){
    print("Your tip is: \(price * 0.15)")
}
addTip(price: 25)

//Function with Arrays as parameter.
func listSum(values:[Int]){
    var sum = 0
    for value in values{
        sum += value
    }
    print("The sum of your list is: \(sum)")
}
listSum(values: [1,2,3,4,5])

// Function with multiples parameters.
func dogBarking(sound:String, times:Int){
    for _ in 1...times{
        print(sound)
    }
}
dogBarking(sound: "Barf!", times: 3)

// One thing to remember, is that functions are isolated from the general code. When they are called, all the variables in are created, but once it has finished, all the values and code being executed dissappears from memory.

// ------
// Return
// ------
// We can use the term 'return' on a function to return a value when a function is called. This value can be anything from an Int, Double, String, Array and so on.
// Just be aware, that once 'return' is executed, the function will be exited.
/*
 func name(parameter:Type, ... , parameter:Type){
     ...someCode
     return value
 }
 ...Parameters are optional.
*/
func rollDice() -> Int{
    let dice:Int = Int.random(in: 1...6)
    return dice
}
let diceRoll:Int = rollDice()
print("Throw a dice: \(diceRoll)")

func earlyExit() -> Void{
    return
    //let x:Int
    //print("This won't print.")
}

earlyExit()

// ---------------------------
// Return with Multiple Values
// ---------------------------
// We can use 'Tuples' to return multiple values on a Function.
/*
 func name(parameter:Type, ... , parameter:Type)->(name:Type, name:Type, ... , name:Type){
     ...someCode
     return (name:Type, name:Type, ... , name:Type)
 }
 ...Parameters are optional.
*/

func parseUser(anId:String, aName:String) -> (id:String, name:String) {
    return (id:anId, name:aName)
}
// When we get the return value, we obtain a Tuple.
let user = parseUser(anId:"00257308", aName:"Alex")
// We can print the whole Tuple, or access its individual values with 'tuple.value'
print(user)
print("User ID: \(user.id) - Name: \(user.name)")

//We can also save the individual elements directly on the declaration.
let (id, name) = parseUser(anId: "12345", aName: "Lisa")
print("New User ID: \(id) - Name: \(name)")


// ----------------------
// Label Parameter Names
// ----------------------
// We can have 2 parameter names on our functions: one for inner use in the function, and one for outer use when calling the function. This can help in readability or to simplify it's calling.
/*
 func name(label parameter:Type)->(...){
     ...someCode
 }
 ...Parameters are optional.
*/
// For example, when using a parameter name is redundant, we can custom its name to '_' to exempt us from using it when calling the function.
func isEven(_ number:Int) -> Bool{
    number % 2 == 0
}
print(isEven(12))

// Or we can use it to be more clear when calling the function, but be legible on its inner use.
func greeting(for person:String, from location:String){
    print("Hi \(person), thanks for coming from \(location)!")
}
greeting(for: "Erik", from: "Norway")

func printMultiplicationTables(of number:Int){
    for i in 1...10{
        print("\(number) * \(i) = \(number*i)")
    }
}
printMultiplicationTables(of: 7)
