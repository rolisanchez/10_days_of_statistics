//: Playground - noun: a place where people can play

import UIKit
import Foundation

//Question: The ratio of boys to girls for babies born in Russia is 1.09 : 1.
//If there is 1 child born per birth, what proportion of Russian families with
//exactly 6 children will have at least 3 boys?

func factorial(n: Int) -> Int{
    
    var returnNumber = 0
    if (n == 1) || (n == 0){
        returnNumber = 1
    }
    
    if (n > 1){
        returnNumber = (factorial(n: n-1)*n)
    }
    
    return returnNumber
}

func binomial(x: Int, n: Int, p: Double) -> Double {
    let f = factorial(n: n) / (factorial(n: n - x) * factorial(n: x))
    
    return (Double(f) * pow(p,Double(x)) * pow((1.0-p),Double(n-x)) )
}


let p = 1.09 / (1.09 + 1) //Ratio

let n = 6 // Families

// At least 3, so could be 3, 4, 5 or 6 boys
let result = binomial(x: 3, n: n, p: p) + binomial(x: 4, n: n, p: p) + binomial(x: 5, n: n, p: p) + binomial(x: 6, n: n, p: p)

print((Double(Int(result*1000))/1000.0))
