//: Playground - noun: a place where people can play

import UIKit
import Foundation

let numberElements = Double("10")!
let numberElementsInt = Int("10")!
let stringElements = "64630 11735 14216 99233 14470 4978 73429 38120 51135 67060"
let arrayElements = stringElements.components(separatedBy: " ")
let doubleArray = arrayElements.map { Double($0)!}

var sum : Double = 0

 for element in doubleArray {
    sum += element
 }

 let mean = sum/numberElements
 print(mean)

let sortedArray = doubleArray.sorted()

let median = ((sortedArray[4]+sortedArray[5])/2)

print(median)

//let mode = Int(sortedArray[0])

//print(mode)

var counts = [Int: Int]()
// Count the values with using forEach
let sortedIntArray = arrayElements.map { Int($0)!}.sorted()
sortedIntArray.forEach { counts[$0] = (counts[$0] ?? 0) + 1 }
//print(sortedIntArray)
print(counts)
print(counts.sorted(by: {$0 < $1}))
// Find the most frequent value and its count with max(isOrderedBefore:)

var maxCount = 0
if let (value, count) = counts.max(by: {$0.1 < $1.1}){
    maxCount = count
}

var maxCountArray : [Int] = [Int]()

for (value, count) in counts {
    if count == maxCount {
        maxCountArray.append(value)
    }
}

print(maxCountArray.min()!)
