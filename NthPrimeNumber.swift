
//
//By listing the first six prime numbers: 2,3,5,7,11 and 13, we can see that the 6th prime is 13. 
//Find the Nth Prime number.
//

    var res = 0
    var k = Int(readLine()!)! // the Nth position of prime number that is to be found
    var range = k * k
    var arrPrime: [Int] = [2,3]
    if k == 0 {
        res = 0
    } else if k == 1{
        res = 2
    } else {
    for var i in 2...range {
        if arrPrime.count <= k {
        var root = Int(sqrt(Double(i)))
        for var j = 2; j*j <= i; j += 1 {
            if (i%j == 0) {
                break
            }else if (j+1 > root) {
                arrPrime.append(i)
            }
        }
        } else {
            break
        }
    }
    res = arrPrime[k-1] //Array always starts with index 0 (zero)
    }
    print(arrPrime) // The entire array of prime numbers collected till the K + 1 th Position 
    print(res)
    
/*INPUT
->10
OUTPUT
[2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31]
29
*/
