//Problem 17: Number to Words
/*The numbers 1 to 5 written out in words are One, Two, Three, Four, Five
First character of each word will be capital letter for example: 
104382426112 is One Hundred Four Billion Three Hundred Eighty Two Million Four Hundred Twenty Six Thousand One Hundred Twelve
*/
//Extending Int to convert to its corresponding words
extension Int {
    var asWord:String{
        let numberValue = NSNumber(integer: self)
        var formatter = NSNumberFormatter()
        formatter.numberStyle = .SpellOutStyle
        return "\(formatter.stringFromNumber(self)!)"
    }
}
var t = 1//Int(readLine()!)! // Can take mutiple inputs from the user
while t-- > 0 {
    var res = ""
    var value = Int(readLine()!)! // Current number that is to be converted to words
    var arrWord = value.asWord.characters.split(" ").map{String($0)} //dividing the number by each digit-wise word.
    var array = [String]()
    print(arrWord)

    for (i,char) in arrWord.enumerate() {
        if char.containsString("-") {
            array.append(String(char.characters.split("-").map{String($0)}.first!))
            array.append(String(char.characters.split("-").map{String($0)}.last!))
        } else {
            array.append(char)
        }
    }
    print(array)
    for var i in array {
        var text = String(i.characters.first!)
        i = String(text.characters.first!).uppercaseString + String(i.characters.dropFirst())
        res += i + " "
    }
    print(res)
}

/*
INPUT: 10
OUTPUT: Ten
 
INPUT: 104382426112
ARRWORD: ["one", "hundred", "four", "billion", "three", "hundred", "eighty-two", "million", "four", "hundred", "twenty-six", "thousand", "one", "hundred", "twelve"]
ARRAY: ["one", "hundred", "four", "billion", "three", "hundred", "eighty", "two", "million", "four", "hundred", "twenty", "six", "thousand", "one", "hundred", "twelve"]
OUTPUT: One Hundred Four Billion Three Hundred Eighty Two Million Four Hundred Twenty Six Thousand One Hundred Twelve
*/
