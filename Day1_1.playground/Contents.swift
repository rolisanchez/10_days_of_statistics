//: Playground - noun: a place where people can play

import UIKit
import Foundation

//let arrayNumber = Int("9")!
//let arrayElementsString = "3 7 8 5 12 14 21 13 18"
let arrayNumber = Int("10")!
let arrayElementsString = "3 7 8 5 12 14 21 15 18 14"

//let arrayNumber = Int(readLine()!)!
//let arrayElementsString = readLine()!

let arrayElements = arrayElementsString.components(separatedBy: " ").map({Int($0)!}).sorted()

//let arrayElements = [3, 7, 8, 5, 12, 14, 21, 13, 18]
// If it's odd, grab the middle element. For ex in size 9 grab the element 4 9/2
// If it's even grab the 2 middle elements. For ex in size 10 grab 4 + 5 / 2
var q1 = Int()
var q2 = Int()
var q3 = Int()
if arrayNumber % 2 == 0 {
    let L = arrayElements[0..<(arrayNumber/2)]
    let U = arrayElements[(arrayNumber/2)..<arrayNumber].map({$0})
    
    q2 = (arrayElements[(arrayNumber/2)-1] + arrayElements[arrayNumber/2])/2
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
    let L = arrayElements[0..<(arrayNumber/2)]
    let U = arrayElements[(arrayNumber/2)+1..<arrayNumber].map({$0})
    q2 = arrayElements[(arrayNumber/2)]
    if L.count % 2 == 0 {
        q1 = (L[(L.count/2)-1] + L[L.count/2])/2
        q3 = (U[(U.count/2)-1] + U[U.count/2])/2
    }
    else {
        q1 = L[(L.count/2)]
        q3 = U[(U.count/2)]
    }
}

print(q1)
print(q2)
print(q3)
//7
//13
//15

