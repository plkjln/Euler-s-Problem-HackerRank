//
//The sum of the primes below 10 is: 2+3+5+7 = 17.
//Find the sum of all the primes not greater than given 'N'.
//

var limit = Int(readLine()!)! //N
var sum = 0
var arrPrime: [Int] = [2,3]

for var i in 2...limit {
  var root = Int(sqrt(Double(i)))
  for var j = 2; j*j <= i; j += 1 {
    if (i%j == 0) {
       break
    } else if (j+1 > root) {
       arrPrime.append(i) // Collecting all prime numbers
    }
  }
}
sum = arrPrime.reduce(0,combine: +) //Adding all the prime numbers in the array
print(sum) // Sum of Prime numbers

/*INPUT
-> 10
OUTPUT
-> 17
INPUT
-> 21
OUTPUT
-> 77
*/
