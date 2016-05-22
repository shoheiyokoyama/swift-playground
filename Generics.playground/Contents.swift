//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func swapDoubledInts(inout a: Int, inout _ b: Int) {
    let temporaryA = a * 2
    a = b * 2
    b = temporaryA
}

func swapDoubledInts(a: Int, b: Int) -> (Int, Int) {
    return (b * 2, a * 2)
}

//var someInt = 3
//var anotherInt = 107
//swapDoubledInts(&someInt, &anotherInt)
//print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")



//var swapedDoubledInt = swapDoubledInts(someInt, b: anotherInt)
//print(swapedDoubledInt.0, swapedDoubledInt.1)

//var int = 1
//var anotherInt = 5

//var newInt = anotherInt
//newInt = 4
//
//print(anotherInt)

func swapTwoValues<T>(inout a: T, inout _ b: T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoValues(&someInt, &anotherInt)
print("someInt is \(someInt), anotherInt is \(anotherInt)")
// someInt is 107, anotherInt is 3

var someString = "hello"
var anotherString = "world"
swapTwoValues(&someString, &anotherString)
print("someString is \(someString), anotherString is \(anotherString)")
//someString is world, anotherString is hello

var someDouble: Double = 2.5
var someFloat: Float = 3.54
//swapTwoValues(&someDouble, &someFloat)
//Cannot convert value of type 'inout Double' to expected argument type 'inout _'



//Queue stract use Int
//struct Queue {
//    private var values = [Int]()
//
//    mutating func enqueue(newvalues: Int) {
//        values.append(newvalues)
//    }
//    mutating func dequeue() -> Int? {
//        guard !values.isEmpty else { return nil }
//        return values.removeAtIndex(0)
//    }
//}
//
//var q = Queue()
//q.enqueue(3)
//q.enqueue("value")
//Cannot convert value of type 'String' to expected argument type 'Int'


//Queue stract use Generic Types
//struct Queue<Element> {
//    private var elements = [Element]()
//    
//    mutating func enqueue(newElement: Element) {
//        elements.append(newElement)
//    }
//    mutating func dequeue() -> Element? {
//        guard !elements.isEmpty else { return nil }
//        return elements.removeAtIndex(0)
//    }
//}
//extension Queue {
//    func peek() -> Element? {
//        return elements.first
//    }
//}

//var intQueue = Queue<Int>()
//intQueue.enqueue(3)//[3]
//intQueue.enqueue(5)//[3, 5]
//
//print(intQueue.peek())
//
//intQueue.dequeue()//3 elements=>[5]
//intQueue.dequeue()//5 elements=>[]
//intQueue.dequeue()//nil
//
//var stringQueue = Queue<String>()
//stringQueue.enqueue("Generics")
//stringQueue.enqueue("Generic Types")
//print(stringQueue.elements)
//print(stringQueue.peek())



//Class Inheritance
class Box<T> {}
class Gift<T>: Box<T> {}
class StringBox: Box<String> {}

//Associated Types in Action
protocol Container {
    associatedtype ItemType
    mutating func append(item: ItemType)
    var count: Int { get }
    subscript(i: Int) -> ItemType { get }
}

struct IntStack: Container {
    var items = [Int]()
    
    typealias ItemType = Int
    mutating func append(item: Int) {
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }
    
    var count: Int {
        return items.count
    }
    subscript(i: Int) -> Int {
        return items[i]
    }
}

var intStack = IntStack()
intStack.append(2)
intStack.append(3)
intStack.append(4)
intStack.count
intStack[2]

//Generics Types using associated Types
struct Queue<Element>: Container {
    private var elements = [Element]()
    
    mutating func enqueue(newElement: Element) {
        elements.append(newElement)
    }
    mutating func dequeue() -> Element? {
        guard !elements.isEmpty else { return nil }
        return elements.removeAtIndex(0)
    }
    
    mutating func append(item: Element) {
        enqueue(item)
    }
    var count: Int {
        return elements.count
    }
    subscript(i: Int) -> Element {
        return elements[i]
    }
}

var intQueue = Queue<Int>()
intQueue.append(3)//[3]
intQueue.append(5)//[3, 5]
intQueue[1]
intQueue.count

var stringQueue = Queue<String>()
stringQueue.append("Generics")
stringQueue.append("Generic Types")
stringQueue[0]
stringQueue.count


//Generic types (enum)
enum Result<T, U> {
    case Success(T)
    case Failure(U)
}















