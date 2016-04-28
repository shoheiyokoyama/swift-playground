//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var someInts = [Int]()
someInts.append(3)
someInts += [2, 5]
someInts = []

var threeDouble = [Double](count: 3, repeatedValue: 0.0)
var anotherThreeDoubles = [Double](count: 3, repeatedValue: 2.3)

var sixDouble = threeDouble + anotherThreeDoubles

var shoppingList = ["Eggs", "Milk"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
shoppingList.count

if shoppingList.isEmpty {
    print("empty")
} else {
    print("include value")
}

shoppingList[0] = "two Eggs"
shoppingList

shoppingList[1...2] = ["Bananas", "Apples"]
shoppingList

shoppingList.insert("Maple Syrup", atIndex: 0)

let mapleSyrup = shoppingList.removeAtIndex(0)
mapleSyrup
shoppingList

let apples = shoppingList.removeLast()
shoppingList

//空のSet
var letters = Set<Character>()
letters.insert("a")
letters = []

//要素と一緒に初期化
var favoriteGenres: Set = ["Rock", "Classical", "Hip hop"]

favoriteGenres.count
favoriteGenres.insert("Jazz")

if let removedGenre = favoriteGenres.remove("Rock") {
    print("removed Rock")
}

if favoriteGenres.contains("Hip hop") {
    print("contain Hip hop")
}


if favoriteGenres.isEmpty {
    print("empty")
} else {
    print("include value")
}

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sort()
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oddDigits.intersect(evenDigits).sort()
// []
oddDigits.subtract(singleDigitPrimeNumbers).sort()
// [1, 9]
oddDigits.exclusiveOr(singleDigitPrimeNumbers).sort()
// [1, 2, 9]

var namesOfIntegers = [Int: String]()
namesOfIntegers[16] = "sixteen"
namesOfIntegers
namesOfIntegers = [:]

//要素と一緒に初期化
var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
airports.count

if airports.isEmpty {
    print("empty")
} else {
    print("contain elements")
}

airports["LHR"] = "London"
airports
airports["LHR"] = "London Heathrow"
airports

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue).")
}
print(airports)

if let airportName = airports["DUB"] {
    print(airportName)
}
airports["APL"] = "Apple International"
airports
airports["APL"] = nil
airports

if let removedValue = airports.removeValueForKey("DUB") {
    print(removedValue)
    print(airports)
}

let airportCodes = [String](airports.keys)
let airportNames = [String](airports.values)

let array = ["Qiita", "Swift", "Objective-C", "iOS"]

for value in array {
    print(value)
}

for (index, value) in array.enumerate() {
    print("index: \(index) value: \(value)")
}


let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
func backwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}
var reversed = names.sort(backwards)


reversed = names.sort({ (s1: String, s2: String) -> Bool in
    return s1 > s2
})
reversed = names.sort(>)
reversed = names.sort() { $0 > $1 }
reversed = names.sort { $0 > $1 }


let arr = [5,2,3,4,5]
let newArray = arr.map { $0 * 5 }
newArray

//let dictionary = ["SWIFT": 2.1, "XCODE": 7.2].map {
//    ($0.0.lowercaseString, $0.1 + 0.1)
//}

let dictionary = ["SWIFT": 2.1, "XCODE": 7.2].map { key, value in
    (key.lowercaseString, value + 0.1)
}

print(dictionary)

var st = ""
[0, 1, 2, 3, 4, 5, 6,].forEach { value in
    if value == 0 {return}
    
    if value % 2 == 0 {
//        st += "\(value)"
        print("\(value) is even value")
    }
}
st

["Swift": 2.2, "Xcode": 7.3].forEach { key, value in
    
    if key == "Swift" {
        print("Swift version is \(value)")
    }
}

["Swift": 2.2, "Xcode": 7.3].forEach { if $0 == "Swift" { print("Swift version is \($1)") } }

let filteredArray = [0, 5, 4, 3, 2, 1, 6, 7, 9, 8, 10].filter { value in
    value % 2 == 0 && value < 8
}

filteredArray

//let filteredDictionary = ["NewVersion": 3.0, "CurrentVersion": 2.2, "OldVersion": 1.0].filter { key, version in
//    version >= 2.2
//}

let filteredDictionary = ["NewVersion": 3.0, "CurrentVersion": 2.2, "OldVersion": 1.0].filter { $1 >= 2.2 }

print(filteredDictionary)
filteredDictionary

var string = "Math: {} ,Science: {}"
let result = [65, 78]
//let newString = result.reduce(string) { string, value in
//    guard let range = string.rangeOfString("{}") else { return string }
//    
//    return string.stringByReplacingCharactersInRange(range, withString: String(value))
//}
let newString = result.reduce(string) {
    guard let range = $0.0.rangeOfString("{}") else { return $0.0 }
    return $0.0.stringByReplacingCharactersInRange(range, withString: String($0.1))
}


print(newString)

let sum = [1, 2, 3, 4, 5].reduce(0, combine: +)
//let sum = [1, 2, 3, 4, 5].reduce(1, combine: *)
[1, 2, 3, 4, 5].reduce(0, combine: max)
[1, 2, 3, 4, 5].reduce(1, combine: min)

let numbers = [1, 2, 3, 4]
//let mapped = numbers.map { Array(count: $0, repeatedValue: $0) }
//print(mapped)
//let flatMapped = numbers.flatMap{ Array(count: $0, repeatedValue: $0) }
//print(flatMapped)


let possibleNumbers = ["1", "2", "three", "///4///", "5"]
let mapped: [Int?] = numbers.map { string in Int(string) }
//[1, 2, nil, nil, 5]
//let flatMapped: [Int] = numbers.flatMap { string in Int(string) }
// [1, 2, 5]

let flatMapped = [[1], [2, 3], nil].flatMap { $0 }
print(flatMapped)
let reFlatMapped = flatMapped.flatMap { $0 }
print(reFlatMapped)



