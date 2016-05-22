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


