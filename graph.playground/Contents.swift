//: Playground - noun: a place where people can play

import UIKit

var max = 100
var damping = 0.5 //減衰率
var velocity = 2.8 //間隔
var amplitude: Double = 0.4 //振幅

for i in 1...max {
    var ratio: Double = Double(i) / Double(max) // 0 ~ 1
    amplitude * abs(pow(M_E, -(ratio * 4 * M_PI * damping)) * Double(sin(ratio * 4 * M_PI * velocity)))
    amplitude * pow(M_E, -(ratio * 4 * M_PI * damping)) * Double(sin(ratio * 4 * M_PI * velocity))
    
}
