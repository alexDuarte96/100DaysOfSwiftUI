import Cocoa

// ------
// Arrays
// ------

// Arrays let yougroup together multiple values under one variable.
var genres = ["Rock", "Pop", "Punk", "Blues"]
let primes = [2,3,5,7,11,13,17,19]
var specialNums = [3.14159, 1.4142, 2.71828]

// You can access its values by using numeric indexes. Starting from 0.
print(genres[2])

// Adding elements to an array can be done with '.append()'. However, you cannot have different types of values in an array, this is called Type-safety.
genres.append("Post")
genres.append("Jazz")
// genres.append(1)

// Removing elements from the arrays is done with '.remove()'.
genres.remove(at: 5)
print(genres)

// To create an Empty Array, you must imply its type of data. 'Array<Type>()'
var integers = Array<Int>()
var names = Array<String>()

// There is a second and shorter way to create an Array. '[Type]()'
var otherIntegers = [Int]()
var otherNames = [String]()

// To get the size of the array, you can use '.count'
print("Size of the genres array: \(genres.count)")

// If you want to empty an Array, use the function '.removeAll()'.
genres.removeAll()
print("Size of the genres array: \(genres.count)")

// To find an specific element in an Array, use '.contains(value)'.
print(primes.contains(5))

// Finally to sort an array, '.sorted()' is used. This doesn't change your array, it returns a new array with the elements sorted.
print(specialNums.sorted())
print(specialNums)


// ------------
// Dictionaries
// ------------

// Unlike Arrays, Dictionaries don't use numerical indices, instead you can define any a value for those indices.
let dog = [
    "name": "Dexter",
    "age": "8",
    "color": "brown"
]

//To access its values, you just use the String that matches its index.
print("This dog name is: \(dog["name"])")

// However, because you can call any Index you want in Dictionaries, Swift protects this calls by making this values: Optionals. This are special values where there can be data, or not, it is optional.
// When you call an Optional variable that does not finds any data, it returns a 'nil', or you can send a 'default' value in case there is no data.
print(dog["bachelor"])
print(dog["email", default: "Not available"])

// Dictionaries can be of any sort of combination 'Type':'Type'.
let isBulbOn = [
    "kitchen":false,
    "bathroom":false,
    "main":true
]

let olympics = [
    2012:"London",
    2016:"Rio de Janeiro",
    2021:"Tokio"
]

print(olympics[2020, default: "Not valid."])

// Empty dictionaries can also be created just as with Arrays, by using ['Type':'Type']().
var promedios = [String:Float]()
promedios["Alex"] = 96.3
promedios["Raquel"] = 99.7
promedios["Caro"] = 92.1

// ----
// Sets
// ----

// Sets work similarly to Arrays, but they don't have indices (unordered) and don't have duplicated elements. If you create one with repeated values, it will discard the repeated ones.
let chars = Set(["a","b","b","c"])
print(chars)

// To create an empty set, you use: 'Set<Type>()'.
var superheroes = Set<String>()

// To add elements to a Set, you must use: 'insert()'.
superheroes.insert("Superman")
superheroes.insert("Batman")
print(superheroes)

// And because Sets uses Hash Values to find values, it is extremely efficient at it.

// -----
// Enums
// -----

// Enums are a way to establish a way to handle Categorical data. We can create Enums with a range of values a variable can have.
// So instead of managing Categorical data with Strings, which can vary a lot, we can narrow our values and be sure we use only those values.

//Instead of:
let dayString = "monday"

// We create an Enum and use it:
enum Weekdays{
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekdays.monday

// And because Swift knows what Type of variable 'day' is, it already knows that it is a Weekday Enum Type, so you can asign a new value like this.
day = .tuesday
day = .friday
