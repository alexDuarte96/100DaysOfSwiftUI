import Cocoa

// Problem. Create a Struct that stores the information about a car: model, number of seats, current gear.
// Add a Method to change gears Up or Down. Don't allow invalid gears, range 1-6.

struct Car {
    let model:String
    let seats:Int
    private(set) var currentGear:Int
    
    init(model: String, seats:Int){
        self.model = model
        self.seats = seats
        self.currentGear = 1
    }
    
    mutating func changeGear(to gear: Int){
        if gear >= 1 && gear <= 6{
            self.currentGear = gear
        }else{
            print("Not a valid Gear.")
        }
    }
}

var newCar = Car(model: "Chevy", seats: 4)
print(newCar)
newCar.changeGear(to: 6)
print(newCar)
