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
