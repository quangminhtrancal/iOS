//: [Back to page 1 of 3 ...](@previous)
//: ## Functions & Closures
//:

func calculator(a: Int, b: Int) -> Int {
    return a + b
}

//: Call the `calculator()` function with 1 and 2
//: _(1 point)_
calculator(a: 1, b: 2)
//: Change `calculator` to return both a + b and a * b
//: _(2 points)_
func calculator2(a: Int, b: Int) -> (Int, Int) {
    return (a + b, a * b)
}
//: Write a function `average()` to calculate the average value of an Integer array.
//: _(2 point)_
func avarage(a: [Int]) -> Double{
    if a.isEmpty { return 0.0 }
    var sum: Int = 0
    for i in 0...(a.count-1){
        sum += a[i]
    }
    let ave: Double = Double(sum)/Double(a.count)
    return (ave)
}
avarage(a: [1,2,3,9])
//: Write a function `greet` that takes an array of names (as strings) and a `greeter` function with signature String -> String, so that, for example, a call of `greet(["Alice", "Bob"], greeting: greeter)` prints "Hello, Alice!" and "Hello, Bob!".
//: _(6 points)_

func greet(_ name: [String], greeting: (String) -> String){
    for x in name{
        greeter(x)
    }
}
func greeter(_ person: String) -> String {
    let message = "Hello, " + person + "!"
    print(message)
    return message
}
greet(["Alice","Bob"], greeting: greeter)
//: Use the map function on the following array of numbers to create an array of strings with the respective lengths.
//: _(2 points)_
let primeNumbers = [2, 3, 5, 7, 11, 13]
let primestring = primeNumbers.map{String($0)}

for x in primestring{
    print(x)
}
//: Write a function `updateEntry` that receives an array of integers and a closure to change the value of each entry in the array to a new value.
//: _(5 points)_
//:
func updateEntry(_ array: [Int], change: (Int) ->(Int)) -> [Int] {
    var update = [Int]()
    for i in 0...array.count-1{
        update.append(change(array[i]))
    }
    return update
}

//: Use the following code to see whether your implementation works.
//: _(1 point)_
//:
//: `let results = updateEntry(primeNumbers) { $0 * $0 }`
//: `print(results)`
let results = updateEntry(primeNumbers) { $0 * $0 }
print(results)
//: Create an enum of `TimeUnit` with appropriate values Second, Minute, Hour, Day and Week.
//: Add a method for converting between them, so that one could call:  `TimeUnit.Day.convertTo(TimeUnit.Hour) == 24.0`.
//: _(6 points)_
enum TimeUnit: Float{
    case Second = 1
    case Minute = 60
    case Hour = 3600
    case Day = 86400
    case Week = 604800
    func converTo(_ unit: TimeUnit)-> Float{
        return (Float(self.rawValue)/Float(unit.rawValue))
    }
}

var time = TimeUnit.Second
print(TimeUnit.Day.converTo(TimeUnit.Hour))

//: [To page 3 of 3 ...](@next)
