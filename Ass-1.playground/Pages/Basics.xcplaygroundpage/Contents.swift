//: [Back to Overview ...](@previous)
//:
//: ## Basics
//:
//: Declare a variable called 'string' that holds the value "This is my string!".
//: _(1 point)_
var string:String="This is my string!"
//: Print the length of variable 'string'.
//: _(1 point)_
print(string.count)
//: Print the first character in 'string'.
//: _(1 point)_
print(string.prefix(1))
//: Print the 9th character in 'string'
//: _(1 point)_

var index=string.index(string.startIndex, offsetBy: 8)
print(string[index])
//: Print the first 4 characters in 'string'.
//: _(2 points)_
//var firstfour=string.remove(at: string.index(string.startIndex, offsetBy: 8))
//var index = string.index(of: " ")

print(string.prefix(4))

//: Print the last 5 characters in 'string'.
//: _(2 points)_
print(string.suffix(5))
//: Print the last 6 characters in 'string', but in reverse order.
//: _(2 points)_
var array=Array(string.suffix(6))
let reverse=array.reversed()
print(String(reverse))
//: Print the 3rd word in 'string'.
//: _(2 point)_
let split = string.split(separator: " ")
print(split[2])
//: Create an array that contains "a", "b", "c", called 'myArray'.
//: _(1 point)_
var myArray: [String] = ["a","b","c"]
//: Get the length of 'myArray'.
//: _(1 point)_
print(myArray.count)
//: Get the 2nd item in 'myArray'.
//: _(1 point)_
print(myArray[1])
//: Print "long" if the length of 'myArray' is more than 5, else print "short".
//: _(2 point)_
if myArray.count>5 {
    print("long")
}
else {
    print ("short")
}
//: Print each element in 'myArray' on a line by itself.
//: _(2 point)_
for i in 0...(myArray.count-1){
    print(myArray[i])
}
//: Create a constant array called 'myStrings' that contains the strings: "these" "are" "my" "strings".
//: _(1 point)_
let myStrings: [String] = ["these","are","my","strings"]
//: Print the index of "my" in 'myStrings', if it is in the array
//: _(2 point)_
for i in 0...(myStrings.count-1){
    if myStrings[i]=="my"{
        print(i)
    }
}
//: Print each key and value in the following dictionary. Sort your output alphabetically by the capital cities.
//: _(2 point)_
let capitals = ["Israel": "Jerusalem", "Germany": "Berlin", "France": "Paris", "England": "London", "Canada": "Ottawa"]
var capitalcity = [String](capitals.values)
capitalcity.sort()
for name in capitalcity{
    for key in capitals.keys{
        if capitals[key]==name{
                print(" Country \(key) has \(name) as the capital city")
        }
    }
}
//capitals.mapValues(<#T##transform: (String) throws -> T##(String) throws -> T#>)
//: Add "a" to the value in the key "hello" in this dictionary. You can only add one line of code!
//: _(2 point)_
var someDictionary = ["hello": ["b", "c"]]
someDictionary.updateValue(["a","b","c"], forKey: "hello")

//: [To page 2 of 3 ...](@next)
