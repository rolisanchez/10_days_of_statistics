//: Playground - noun: a place where people can play

import UIKit
import Foundation

let arrayNumber = Int("5")!
let arrayElementsString = "10 40 30 50 20"

//let arrayNumber = Int(readLine()!)!
//let arrayElementsString = readLine()!

let arrayElements = arrayElementsString.components(separatedBy: " ").map({Int($0)!})

var sum = arrayElements.reduce(0, +)

let mean = sum/arrayNumber

let squaredDistanceArray = (arrayElements.map({pow(Double($0 - mean),2.0)}))

let std = (((squaredDistanceArray.reduce(0, +))/Double(arrayNumber)).squareRoot())

print(round(std*10)/10)


