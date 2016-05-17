//
//Problem 16: Power digit sum
//What is the sum of the digits of the number 2^N ?
// example: 2^9 = 512 and the sum of the digits = 5 + 1 + 2 = 8

import Foundation

var power = Float80(readLine()!)! //Inputting the value of N in 2^N.
var res = String(powf(2.0, Float(power))) //pow() works with float or double
var arrSum = res.characters.filter({ Int(String($0)) != nil }).map({ Int(String($0))! })
print(arrSum)
var sum = arrSum.reduce(0,combine: +)
print(sum)

/*
INPUT: 20
OUTPUT
[1, 0, 4, 8, 5, 8, 0, 6]
32 //Sum of the digits
*/
