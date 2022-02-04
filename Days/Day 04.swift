import Cocoa

// ----------------
// Type Annotations
// ----------------

// Swift is capable of infering the Data Type by a variable when you assign a value.
let surname = "Duarte" // String
let number = 5         // Int

// But you can specify the Type of data you want with ':Type' after the variable name.
let amount:Int = 1
let average:Float = 7.2
let name:String = "Alex"
let isOpen:Bool = true
// let value:Int = "Bunch of text."


// This can also be applied to Arrays, Dictionarie and Sets.
// ':[Type]'      for Arrays.
// ':[Type:Type]' for Dictionaries
// ':Set<Type>'   for Sets.
var RGBcolors:[String] = ["FF0000","FF5900","0012AB"]
var balances:[String:Float] = ["Julian":123.45, "Kassie":9283.2]
var chocolates:Set<String> = Set([
    "Crunch",
    "Ferrero",
    "Milka"
])

// With Type Annotations you can create empty arrays while also defining which data type will use. This improves your code readability.
var firstArray:[String] = []
var secondArray = [String]()

// Type Annotations can be useful when you want to create a constant which does not has a value yet. Just remember that onces you've written something to it, you cannot change it later on.
let user:String
// Some code.
user = "coolUsername"
print(user)
