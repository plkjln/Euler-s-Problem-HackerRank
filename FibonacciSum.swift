//
// Fibonacci Series: sum of Even trems only
// By considering the terms in the Fibonacci sequence whose values do not exceed N, find the sum of the EVEN-valued terms.
//

import Foundation

// First line contains T that denotes the number of test cases. This is followed by T lines, each containing an integer, N. 

var t = 1//Int(readLine()!)! // Total numbers to be entered

while t-- > 0 {
    var sum = 0,res = 0
    var num = Int(readLine()!)! // Current limit from which the fibonacci is to be calculated
    var first = 0, sec = 1
    
    while sum <= num {
        //print("First: \(first), Second: \(sec)")
        sum = first + sec
        if sum%2 == 0 && sum <= num {
            res = res + sum
        }
        first = sec
        sec = sum
    }
    print(res) // The sum of all even termed fibonacci numbers
}

/*INPUT
10
OUTPUT
10
INPUT
100
OUTPUT
44
*/
