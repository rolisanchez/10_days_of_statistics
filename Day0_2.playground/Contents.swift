//: Playground - noun: a place where people can play

import UIKit
import Foundation


// The first line contains an integer, , denoting the number of elements in arrays  and .
// The second line contains  space-separated integers describing the respective elements of array .
// The third line contains  space-separated integers describing the respective elements of array .
//
//let numElements = readLine()!
//let stringElements = readLine()!
//let stringWeights = readLine()!

/*
 5
 10 40 30 50 20
 1 2 3 4 5
 */
let numElements = "5"
let stringElements = "10 40 30 50 20"
let stringWeights = "1 2 3 4 5"

let arrayElements = stringElements.components(separatedBy: " ")
let arrayWeights = stringWeights.components(separatedBy: " ")
let doubleElementsArray = arrayElements.map { Double($0)!}
let doubleWeightsArray = arrayWeights.map { Double($0)!}

var weightedSum = Double()

for index in 0..<arrayElements.count {
    weightedSum += doubleElementsArray[index]*doubleWeightsArray[index]
}

// 10 80 90 200 100 = 480
// 1 2 3 4 5 = 15
// 480 / 15 = 32


let total = weightedSum/(doubleWeightsArray.reduce(0, +))

print(round(total*10)/10)

