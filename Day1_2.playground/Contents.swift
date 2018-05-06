//: Playground - noun: a place where people can play

import UIKit
import Foundation

//let arrayNumber = Int("9")!
//let arrayElementsString = "3 7 8 5 12 14 21 13 18"
let arrayNumber = Int("6")!
let arrayElementsString = "6 12 8 10 20 16"
let arrayFrequenciesString = "5 4 3 2 1 5"

//let arrayNumber = Int(readLine()!)!
//let arrayElementsString = readLine()!
//let arrayFrequenciesString = readLine()!

//let arrayElements = arrayElementsString.components(separatedBy: " ").map({Int($0)!})
//let arrayFrequencies = arrayFrequenciesString.components(separatedBy: " ").map({Int($0)!})

let arrayElements = [6, 12, 8, 10, 20, 16]
let arrayFrequencies = [5, 4, 3, 2, 1, 5]

var dataset : [Int] = []

for index in 0..<arrayNumber {
    for i in 0..<arrayFrequencies[index] {
        dataset.append(arrayElements[index])
    }
}

dataset.sort()

// If it's odd, grab the middle element. For ex in size 9 grab the element 4 9/2
// If it's even grab the 2 middle elements. For ex in size 10 grab 4 + 5 / 2
var q1 = Int()
var q2 = Int()
var q3 = Int()
if dataset.count % 2 == 0 {
    let L = dataset[0..<(dataset.count/2)]
    let U = dataset[(dataset.count/2)..<dataset.count].map({$0})
    q2 = (dataset[(dataset.count/2)-1] + dataset[dataset.count/2])/2
    if L.count % 2 == 0 {
        q1 = (L[(L.count/2)-1] + L[L.count/2])/2
        q3 = (U[(U.count/2)-1] + U[U.count/2])/2
    }
    else {
        q1 = L[(L.count/2)]
        q3 = U[(U.count/2)]
    }

}
else {
    let L = dataset[0..<(dataset.count/2)]
    let U = dataset[(dataset.count/2)+1..<dataset.count].map({$0})
    q2 = dataset[(dataset.count/2)]
    if L.count % 2 == 0 {
        q1 = (L[(L.count/2)-1] + L[L.count/2])/2
        q3 = (U[(U.count/2)-1] + U[U.count/2])/2
    }
    else {
        q1 = L[(L.count/2)]
        q3 = U[(U.count/2)]
    }
}

print(Double(q3-q1))


