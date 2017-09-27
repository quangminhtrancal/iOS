//: [Back to page 2 of 3 ...](@previous)

//: ## Classes and Structures
//:

//: Write a class `IntegerStack` that represents a stack of integers, with push() and pop() methods.
//: _(7 points)_
class IntegerStack{
    var items = [Int]()
    var element = 0
    func push(_ item: Int) {
        items.append(item)
        element += 1
    }
    func pop() -> (Int?, String?) {
        element -= 1
        if element < 0 {
            return (0," Empty stack")
        }
        else {
            return (items.removeLast(),"Stack has \(element) element")
        }
    }
}


//: Test your IntegerStack class to show that it works
let stack = IntegerStack()
stack.push(1)
stack.push(2)
stack.push(3)
print(stack.pop())
print(stack.pop())
print(stack.pop())
print(stack.pop())

//: Extend the `String` class to add the method `reverseWords()`. 
//:
//: You should then be able to get an output of `true` for the following input:
//:
//: `"mary had a little lamb".reverseWords() == "lamb little a had mary"`
//:
//: _(8 points)_
extension String{
    func reverseWords() -> String? {
        let split = self.split(separator: " ")
        var rarray = [String]()
        
        let total = split.count
        for i in 0...total-1 {
            let s = String(split[total-1-i])
            rarray.append(s)
        }
        split[1]
        let reverse = rarray.joined(separator: " ")
        return (reverse)

    }
}
"mary had a little lamb".reverseWords()
"mary had a little lamb".reverseWords() == "lamb little a had mary"
//: Add a subclass of Vehicle called Car which implements makeNoise()
//:
//: Car should be initializable like this:
//:
//: `let car = Car(seats: 5)`
//: `car.motionType == Vehicle.MotionType.Driving`
//:
//: _(9 points)_
class Vehicle {
    enum MotionType { case Driving, Flying, Sailing }
    
    let motionType: MotionType
    
    init(motionType: MotionType) {
        self.motionType = motionType
    }
    
    func makeNoise() {
        // Nothing here yet
    }
}

class Car: Vehicle {
    var seats: Int
    init(seats: Int) {
        self.seats = seats
        super.init(motionType: MotionType.Driving)
    }
    override func makeNoise() {
        print ("Noise from car")
    }
    
}

let car = Car(seats: 5)
car.motionType == Vehicle.MotionType.Driving
//: [You are done! Return to first page ...](Overview)
