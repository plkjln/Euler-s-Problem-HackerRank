//
//Problem 20 : Factorial digit sum: 1...20
//Find the sum of the digits in the number N!

//Factorial function
func factorial(N: Int64) -> Int64 {
    if N >= 0 {
        return N == 0 ? 1 : (N * factorial(N - 1))
    } else {
        return 0
    }
}
    
var num: Int64 = Int64(readLine()!)!
var sum:IntMax = 0
var fact: String =  String(factorial(num))
print(fact)
var arrSum = fact.characters.filter({ Int(String($0)) != nil }).map({ Int(String($0))! }) //Separating the digits for adding
//print(arrSum)
sum = arrSum.reduce(0,combine: +)
print(sum) //Summation of N!

/*INPUT
20
OUTPUT
2432902008176640000 // Factorial of 20
54 // Sum of the above digits
*/
