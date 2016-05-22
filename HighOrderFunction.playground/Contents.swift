//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//let array = [10.0, 20.0, 30.0]
//var doubleArray = [Double]()
//for value in array {
//    doubleArray.append(value * 2.0)
//}
//print(doubleArray)

let array = [10.0, 20.0, 30.0]
//var doubleArray = array.map {$0 * 2.0}
var doubleArray = array.map {value in value * 2.0}
print(doubleArray)

array.forEach { value in
    print(value)
}

let dic = ["ios": "Swift", "Android": "Java"]

dic.forEach { (key, value) in
    print(key, value)
}

dic.forEach {
    print($0, $1)
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



