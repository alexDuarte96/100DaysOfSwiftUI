import Cocoa

// Animal super class.
class Animal{
    var legs:Int
    
    init(legs:Int){
        self.legs = legs
    }
}

// Dog super classes. Inherits from: Animal.
class Dog: Animal{
    func bark(times:Int){
        for _ in 1...times{
            print("Woof!", terminator: " ")
        }
    }
}
    // Dog Races child classes. Inherits from Dog.
    final class Corgi: Dog{
        override func bark(times:Int){
            for _ in 1...times{
                print("Barf!", terminator: " ")
            }
        }
    }

    final class Poodle: Dog{
        override func bark(times:Int){
            for _ in 0...times{
                print("Ruff!", terminator: " ")
            }
        }
    }

// Cat super class. Inherits from Animal.
class Cat: Animal{
    var isTame: Bool
    
    init(legs:Int, isTame:Bool){
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak(times:Int){
        for _ in 1...times{
            print("Miau!", terminator: " ")
        }
    }
}
    // Cat races child classes. Inherits from Cat.
    class Persian: Cat{
        override func speak(times: Int) {
            for _ in 1...times{
                print("Mew!", terminator: " ")
            }
        }
    }

    class Lion: Cat {
        override func speak(times: Int) {
            for _ in 1...times{
                print("Growl!", terminator: " ")
            }
        }
    }
