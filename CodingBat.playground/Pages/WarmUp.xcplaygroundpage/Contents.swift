//The parameter weekday is true if it is a weekday, and the parameter vacation is true if we are on vacation. We sleep in if it is not a weekday or we're on vacation. Return true if we sleep in.

func sleepIn(weekday: Bool, vacation: Bool) -> Bool {
    if vacation == true || weekday == false {
        return true
    } else {
        return false
    }
}



sleepIn(weekday: false, vacation: false) //→ true
sleepIn(weekday: true, vacation: false) //→ false
sleepIn(weekday: false, vacation: true) //→ true



//We have two monkeys, a and b, and the parameters aSmile and bSmile indicate if each is smiling. We are in trouble if they are both smiling or if neither of them is smiling. Return true if we are in trouble.




func monkeyTrouble(aSmile: Bool, bSmile: Bool) -> Bool {
    if aSmile == true && bSmile == false {
        return false
    } else if aSmile == false && bSmile == true {
        return false
    } else {
        return true
    }
}


monkeyTrouble(aSmile: true, bSmile: true) //→ true
monkeyTrouble(aSmile: false, bSmile: false) //→ true
monkeyTrouble(aSmile: true, bSmile: false) //→ false
monkeyTrouble(aSmile: false, bSmile: true) //→ false


//Given two int values, return their sum. Unless the two values are the same, then return double their sum.

func sumDouble(x: Int, y: Int) -> Int {
    if x == y {
        return (x + y) * 2
    } else {
        return x + y
    }
}


sumDouble(x: 1, y: 2) //→ 3
sumDouble(x: 3, y: 2) //→ 5
sumDouble(x: 2, y: 2) //→ 8


//Given an int n, return the absolute difference between n and 21, except return double the absolute difference if n is over 21.


func diff21(x: Int) -> Int {
    if x > 21 {
        return (x - 21) * 2
    } else {
        return 21 - x
    }
}

diff21(x: 19) //→ 2
diff21(x: 10) //→ 11
diff21(x: 21) //→ 0


//We have a loud talking parrot. The "hour" parameter is the current hour time in the range 0..23. We are in trouble if the parrot is talking and the hour is before 7 or after 20. Return true if we are in trouble.

func parrotTrouble(isTalking: Bool, hour: Int) -> Bool {
    if hour < 7 && isTalking == true || hour > 20 && isTalking == true {
        return true
    } else if isTalking == false {
        return false
    } else {
        return false
    }
}


parrotTrouble(isTalking: true, hour: 6) //→ true
parrotTrouble(isTalking: true, hour: 7) //→ false
parrotTrouble(isTalking: false, hour: 6) //→ false


//Given 2 ints, a and b, return true if one if them is 10 or if their sum is 10.

func makes10(a: Int, b: Int) -> Bool {
    if a + b == 10 || a == 10 || b == 10 {
        return true
    } else {
        return false
    }
}

makes10(a: 9, b: 10) //→ true
makes10(a: 9, b: 9) //→ false
makes10(a: 1, b: 9) //→ true


//Given an int n, return true if it is within 10 of 100 or 200. Note: Math.abs(num) computes the absolute value of a number.

func nearHundred(n: Int) -> Bool {
    if n > 89 && n < 111 {
        return true
    } else if n > 189 && n < 211 {
        return true
    } else {
        return false
    }
}

nearHundred(n: 93) //→ true
nearHundred(n: 90) //→ true
nearHundred(n: 89) //→ false


//Given 2 int values, return true if one is negative and one is positive. Except if the parameter "negative" is true, then return true only if both are negative.


func posNeg(firstValue: Int, secondValue: Int, negative: Bool) -> Bool {
    if firstValue > 0 && secondValue < 0 {
        return true
    } else if firstValue < 0 && secondValue > 0 {
        return true
    } else if firstValue < 0 && secondValue < 0 && negative == true {
        return true
    } else {
        return false
    }
}


//Given a string, return a new string where "not " has been added to the front. However, if the string already begins with "not", return the string unchanged. (If the string already has "not" in front then return the String)

func notString(word: String) -> String {
    if word.hasPrefix("not") == true {
        return word
    } else {
        return "not \(word)"
    }
}

notString(word: "candy") //→ "not candy"
notString(word: "x") //→ "not x"
notString(word: "not bad") //→ "not bad"


//Given a non-empty string and an int n, return a new string where the char at index n has been removed. The value of n will be a valid index of a char in the original string (i.e. n will be in the range 0..str.length()-1 inclusive).

func missingChar(word: String, n: Int) -> String {
    let count = word.characters.count
    var newWord = word
    let index = word.index(word.startIndex, offsetBy: n)
    if count > 0 {
        newWord.remove(at: index)
    }
    return newWord
}


missingChar(word: "kitten", n: 1) //→ "ktten"
missingChar(word: "kitten", n: 0) //→ "itten"
missingChar(word: "kitten", n: 4) //→ "kittn"


//Given a string, return a new string where the first and last chars have been exchanged.

func frontBack(word: String) -> String {
    let count = word.characters.count
    
    if count <= 1 {
        return word
    }
    var newWord = word
    let firstLetter = newWord.remove(at: newWord.startIndex)
    let findLast = newWord.index(before: newWord.endIndex)
    let lastLetter = newWord.remove(at: findLast)
    
    newWord.append(firstLetter)
    newWord.insert(lastLetter, at: (newWord.startIndex))
    
    return newWord
}





frontBack(word: "code") //→ "eodc"
frontBack(word: "t")
frontBack(word: "ab") //→ "ba"





//Given a string, we'll say that the front is the first 3 chars of the string. If the string length is less than 3, the front is whatever is there. Return a new string which is 3 copies of the front.

func front3(word: String) -> String {
    let count = word.characters.count
    if count <= 3 {
        return word + word + word
    } else {
        let firstThree = word.characters.prefix(3)
        return String(firstThree + firstThree + firstThree)
        
        
    }
    
}



front3(word: "Hello")
front3(word: "Java") //"JavJavJav"
front3(word: "Chocolate")  //"ChoChoCho"
front3(word: "abc")  //"abcabcabc"




//Given a string, take the last char and return a new string with the last char added at the front and back, so "cat" yields "tcatt". The original string will be length 1 or more.

func backAround(word: String) -> String {
    var newWord = word
    let last = newWord.characters.removeLast()
    let lastString = String(last)
    return lastString + word + lastString
}


backAround(word: "cat") //→ "tcatt"
backAround(word: "Hello") //→ "oHelloo"
backAround(word: "a") //→ "aaa"





//Return true if the given non-negative number is a multiple of 3 or a multiple of 5. Use the % "mod" operator

func or35(x: Int) -> Bool {
    if x % 3 == 0 || x % 5 == 0 {
        return true
    } else {
        return false
    }
}

or35(x: 3) //→ true
or35(x: 10) //→ true
or35(x: 8) //→ false


//Given a string, take the first 2 chars and return the string with the 2 chars added at both the front and back, so "kitten" yields"kikittenki". If the string length is less than 2, use whatever chars are there.

func front22(input: String) -> String {
    let newInput = input.characters
    let first2Values = newInput.prefix(2)
    let firstTwo = String(first2Values)
    return firstTwo + input + firstTwo
}

front22(input: "kitten") //→ "kikittenki"
front22(input: "Ha") //→ "HaHaHa"
front22(input: "abc") //→ "ababcab"







//Given a string, return true if the string starts with "hi" and false otherwise.

func startHi(input: String) -> Bool {
    let newInput = input.characters
    let hello = "hi"
    let first2Values = newInput.prefix(2)
    let firstTwo = String(first2Values)
    
    if hello == firstTwo {
        return true
    } else {
        return false
    }
}


startHi(input: "hi there") //→ true
startHi(input: "hi") //→ true
startHi(input: "hello hi") //→ false





//Given 2 int values, return true if either of them is in the range 10..20 inclusive.

func in1020(x: Int, y: Int) -> Bool {
    if x >= 10 && x <= 20 {
        return true
    } else if y >= 10 && y <= 20 {
        return true
    } else {
        return false
    }
}


in1020(x: 12, y: 99) //→ true
in1020(x: 21, y: 12) //→ true
in1020(x: 8, y: 99) //→ false


//We'll say that a number is "teen" if it is in the range 13..19 inclusive. Given 2 int values, return true if one or the other is teen, but not both.

func loneTeen(x: Int, y: Int) -> Bool {
    if x >= 13 && x <= 19 && y >= 13 && y <= 19 {
        return false
    } else if x >= 13 && x <= 19 || y >= 13 && y <= 19 {
        return true
    } else {
        return false
    }
}


loneTeen(x: 13, y: 99) //→ true
loneTeen(x: 21, y: 19) //→ true
loneTeen(x: 13, y: 13) //→ false



//Given a string, if the string "del" appears starting at index 1, return a string where that "del" has been deleted. Otherwise, return the string unchanged.

func delDel(_ input: String) -> String {
    var newInput = input
    let startIndex = newInput.startIndex
    let firstChar = newInput.remove(at: startIndex)
    
    if newInput.hasPrefix("del") == true {
        newInput.characters.removeFirst(3)
        newInput.insert(firstChar, at: startIndex)
    }
    return newInput
}





delDel("adelbc") //→ "abc"
delDel("adelHello") //→ "aHello"
delDel("adedbc") //→ "adedbc"





//Return true if the given string begins with "mix", except the 'm' can be anything, so "pix", "9ix" .. all count.


func mixStart(_ input: String) -> Bool {
    var newInput = input
    let startIndex = newInput.startIndex
    let firstChar = newInput.remove(at: startIndex)
    
    if newInput.hasPrefix("ix") == true {
        newInput.characters.removeFirst(3)
        newInput.insert(firstChar, at: startIndex)
        return true
    } else {
        return false
    }
}



mixStart("mix snacks") //→ true
mixStart("pix snacks") //→ true
mixStart("piz snacks") //→ false




//Given a string, return a string made of the first 2 chars (if present), however include first char only if it is 'o' and include the second only if it is 'z', so "ozymandias" yields "oz".

func startOz(_ input: String) -> String? {
    var newInput = input
    let secondIndex = newInput.index(after: newInput.startIndex)
    var newString: String = ""
    if input.hasPrefix("oz") == true  {
        newString.insert("o", at: newString.startIndex)
        let secondIndex = newString.index(after: newString.startIndex)
        newString.insert("z", at: secondIndex)
        return newString
        
    } else if newInput.characters.index(of: "z")  == secondIndex  {
        newString.insert("z", at: newString.startIndex)
        return newString
        
    } else if input.hasPrefix("o") == true  {
        newString.insert("o", at: newString.startIndex)
        return newString
    }
    return nil
}



startOz("ozymandias") //→ "oz"
startOz("bzoo") //→ "z"
startOz("oxx") //→ "o"



//Given three int values, a b c, return the largest.

func intMax(_ a: Int, _ b: Int, _ c: Int) -> Int {
    if a > b, a > c {
        return a
    } else if b > c, b > a {
        return b
    } else if c > b, c > a {
        return c
    } else if a == b, b > c {
        return a
    } else if b == c, c > a {
        return b
    } else {
        return a
    }
}

intMax(1, 2, 3) //→ 3
intMax(1, 3, 2) //→ 3
intMax(3, 2, 1) //→ 3



//Given 2 int values, return whichever value is nearest to the value 10, or return 0 in the event of a tie. Note that Math.abs(n) returns the absolute value of a number.


func close10(_ x: Int, _ y: Int) -> Int {
    if abs(10 - y) > abs(10 - x)  {
        return x
    } else if abs(10 - y) < abs(10 - x) {
        return y
    } else {
        return 0
    }
}





close10(8, 13) //→ 8
close10(13, 8) //→ 8
close10(13, 7) //→ 0



//Given 2 int values, return true if they are both in the range 30..40 inclusive, or they are both in the range 40..50 inclusive.


func in3050(_ x: Int, _ y: Int) -> Bool {
    if x >= 30 && x <= 40 && y >= 30 && y <= 40 {
        return true
    } else if x >= 40 && x <= 50 && y >= 40 && y <= 50 {
        return true
    } else {
        return false
    }
}


in3050(30, 31) //→ true
in3050(30, 41) //→ false
in3050(40, 50) //→ true



//Given 2 positive int values, return the larger value that is in the range 10..20 inclusive, or return 0 if neither is in that range.


func max1020(_ x: Int, _ y: Int) -> Int {
    if (x >= 10 && x <= 20 && y >= 10 && y <= 20) && x == y {
        return x
    } else if x >= 10 && x <= 20 && x > y {
        return x
    } else if y >= 10 && y <= 20 && y > x {
        return y
    } else if x >= 10 && x <= 20 && y > 20 {
        return x
    } else if y >= 10 && y <= 20 && x > 20 {
        return y
    } else {
        return 0
    }
}


max1020(11, 19) //→ 19
max1020(19, 11) //→ 19
max1020(11, 9) //→ 11
max1020(12, 30) //→ 12




//Return true if the given string contains between 1 and 3 'e' chars.


func stringE(_ input: String) -> Bool {
    var chars = input.characters
    var tempString: String = ""
    
    for item in chars {
        
        if item == "e" {
            let eIndex = chars.index(of: item)
            let removed = chars.remove(at: eIndex!)
            tempString.append(removed)
        }
    }
    if tempString.characters.count < 4 {
        return true
    } else {
        return false
    }
    
}




stringE("Hello") //→ true
stringE("Heelle") //→ true
stringE("Heelele") //→ false




//Given two non-negative int values, return true if they have the same last digit, such as with 27 and 57. Note that the % "mod" operator computes remainders, so 17 % 10 is 7.

func lastDigit(_ x: Int, _ y: Int) -> Bool {
    guard x < 0, y < 0 else {
        if x % 10 == y % 10 {
            return true
        } else {
            return false
        }
    }
    return false
}



lastDigit(7, 17) //→ true
lastDigit(6, 17) //→ false
lastDigit(3, 113) //→ true*




//Given a string, return a new string where the last 3 chars are now in upper case. If the string has less than 3 chars, uppercase whatever is there. Note that str.toUpperCase() returns the uppercase version of a string.

func endUp(_ input: String) -> String {
    if input.characters.count < 3 {
        return input.uppercased()
    } else {
        var newInput = input.characters
        var newString: String = ""
        let lastThree = newInput.suffix(3)
        newInput.removeLast(3)
        let lastThreeUpper = String(lastThree).uppercased()
        newString.append(contentsOf: newInput)
        newString.append(lastThreeUpper)
        return newString

    }
}


endUp("Hello") //→ "HeLLO"
endUp("hi there") //→ "hi thERE"
endUp("hi") //→ "HI*/
endUp("Workaholic")


//Given a non-empty string and an int N, return the string made starting with char 0, and then every Nth char of the string. So if N is 3, use char 0, 3, 6, ... and so on. N is 1 or more.

func everyNth(_ input: String, _ n: Int) -> String {
    var chars = input.characters
    var newString: String = ""
    let indexNumbers = chars.enumerated()
    for item in indexNumbers {
        if item.offset % n == 0 {
        let itemIndex = chars.index(of: item.element)
        let removed = chars.remove(at: itemIndex!)
            newString.append(removed)
        }
    }
    return newString
}


everyNth("Miracle", 2) //→ "Mrce"
everyNth("abcdefg", 2) //→ "aceg"
everyNth("abcdefg", 3) //→ "adg"





