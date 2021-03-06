//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)


//Given a string and a non-negative int n, return a larger string that is n copies of the original string.

func stringTimes(_ input: String, _ n: Int) -> String {
    let newInput = input.characters
    var newString: String = ""
    for _ in 0..<n {
        newString.append(contentsOf: newInput)
    }
    return newString
    }
    




stringTimes("Hi", 2) //→ "HiHi"
stringTimes("Hi", 3) //→ "HiHiHi"
stringTimes("Hi", 1) //→ "Hi"






//Given a string and a non-negative int n, we'll say that the front of the string is the first 3 chars, or whatever is there if the string is less than length 3. Return n copies of the front;

func frontTimes(_ input: String, _ n: Int) -> String {
    let newInput = input.characters
    var newString: String = ""
    let firstThree = newInput.prefix(3)
    for _ in 0..<n {
        newString.append(contentsOf: firstThree)
    }
    return newString
}



frontTimes("Chocolate", 2) //→ "ChoCho"
frontTimes("Chocolate", 3) //→ "ChoChoCho"
frontTimes("Abc", 3) //→ "AbcAbcAbc"





//Count the number of "xx" in the given string. We'll say that overlapping is allowed, so "xxx" contains 2 "xx".

func countXX(_ input: String) -> Int {
    var count = 0
    let newInput = input
    if newInput.contains("xx") == true {
        count += 1
    }
    
    return count
}



countXX("abcxx") //→ 1
countXX("xxx") //→ 2
countXX("xxxx") //→ 3






//Given a string, return true if the first instance of "x" in the string is immediately followed by another "x".

func doubleX(_ input: String) -> Bool {
    let chars = input.characters
    var answer: Bool = false
    
    for i in chars {
        let foundIndex = chars.index(of: i)
        let nextIndex = chars.index(after: foundIndex!)
        
        if i == "x" && chars[nextIndex] == "x" {
            answer = true
        }
    }
    return answer
}






doubleX("axxbb") //→ true
doubleX("axaxax") //→ false
doubleX("xxxxx") //→ true






//Given a string, return a new string made of every other char starting with the first, so "Hello" yields "Hlo".

func stringBits(_ input: String) -> String {
    var newString = ""
    let chars = input.characters
    
    for (index, char) in chars.enumerated() {
        if index % 2 == 0 {
            newString.append(char)
        }
    }
    
    return newString
}



stringBits("Hello") //→ "Hlo"
stringBits("Hi") //→ "H"
stringBits("Heeololeo") //→ "Hello"






//Given a non-empty string like "Code" return a string like "CCoCodCode".

func stringSplosion(_ input: String) -> String {
    
    guard input.characters.count > 1 else {
        return input
    }
    
    
    var chars = input.characters
    var newString = ""
    
    while chars.count != 0 {
        newString.insert(contentsOf: chars, at: newString.startIndex)
        chars.removeLast()
    }
    return newString
}



stringSplosion("Code") //→ "CCoCodCode"
stringSplosion("abc") //→ "aababc"
stringSplosion("ab") //→ "aab"






//Given a string, return the count of the number of times that a substring length 2 appears in the string and also as the last 2 chars of the string, so "hixxxhi" yields 1 (we won't count the end substring).

func last2(_ input: String) -> Int {
    guard input.characters.count > 3 else {
        return 0
    }
    
    var count = 0
    var chars = input.characters
    let lastTwo = chars.suffix(2)
    let lastTwoString = String(lastTwo)
    chars.removeLast(2)
    var newWord = String(chars)
    
    while newWord.contains(lastTwoString) {
        count += 1
        newWord.remove(at: (newWord.range(of: lastTwoString)!.lowerBound))
        
    }
    
    return count
}


last2("hixxhi") //→ 1
last2("xaxxaxaxx") //→ 1
last2("axxxaaxx") //→ 2







//Given an array of ints, return the number of 9's in the array.

func arrayCount9(_ input: [Int]) -> Int {
    var count = 0
    
    for num in input {
        if num == 9 {
            count += 1
        }
    }
    return count
}


arrayCount9([1, 2, 9]) //→ 1
arrayCount9([1, 9, 9]) //→ 2
arrayCount9([1, 9, 9, 3, 9]) //→ 3






//Given an array of ints, return true if one of the first 4 elements in the array is a 9. The array length may be less than 4.

func arrayFront9(_ input: [Int]) -> Bool {
    guard input.count > 3 else {
        return false
    }
    
    if input.prefix(4).contains(9) {
        return true
    }
    return false
}


arrayFront9([1, 2, 9, 3, 4]) //→ true
arrayFront9([1, 2, 3, 4, 9]) //→ false
arrayFront9([1, 2, 3, 4, 5]) //→ false






//Given an array of ints, return true if the sequence of numbers 1, 2, 3 appears in the array somewhere.

func array123(_ input: [Int]) -> Bool {
    
    for (index, number) in input.enumerated() {
        let thirdIndex = index + 2
        let secondIndex = index + 1
        
        if secondIndex < input.endIndex && number == 1 && input[secondIndex] == 2 && input[thirdIndex] == 3 {
            return true
        }
    }
    return false
}



array123([1, 1, 2, 3, 1]) //→ true
array123([1, 1, 2, 4, 1]) //→ false
array123([1, 1, 2, 1, 2, 3]) //→ true






//Given 2 strings, a and b, return the number of the positions where they contain the same length 2 substring. So "xxcaazz" and "xxbaaz" yields 3, since the "xx", "aa", and "az" substrings appear in the same place in both strings.

func stringMatch(_ input: String, _ input2: String) -> Int {
    var firstInput = input
    var secondInput = input2
    var count = 0
    
    while firstInput.characters.count > 1 && secondInput.characters.count > 1 {
        if String(firstInput.characters.prefix(2)) == String(secondInput.characters.prefix(2)) {
            count += 1
        }
        firstInput.characters.removeFirst()
        secondInput.characters.removeFirst()
    }
    return count
}


stringMatch("xxcaazz", "xxbaaz") //→ 3
stringMatch("abc", "abc") //→ 2
stringMatch("abc", "axc") //→ 0







//Given a string, return a version where all the "x" have been removed. Except an "x" at the very start or end should not be removed.

func stringX(_ input: String) -> String {
    var chars = input
    let indexOfStart = chars.index(after: chars.startIndex)
    let indexOfEnd = chars.index(before: chars.endIndex)
    let middleRange = indexOfStart ..< indexOfEnd
    
    var subString = chars.substring(with: middleRange)
    
    while subString.characters.contains("x") {
        subString.remove(at: subString.characters.index(of: "x")!)
    }
    
    chars.replaceSubrange(middleRange, with: subString)
    
    return String(chars)
}


stringX("xxHxix") //→ "xHix"
stringX("abxxxcd") //→ "abcd"
stringX("xabxxxcdx") //→ "xabcdx"







//Given a string, return a string made of the chars at indexes 0,1, 4,5, 8,9 ... so "kittens" yields "kien".

func altPairs(_ input: String) -> String {
    var newString = input
    var count = 2
    
    while count < (newString.characters.count - 1) {
        newString.remove(at: newString.index(newString.startIndex, offsetBy: count))
        newString.remove(at: newString.index(newString.startIndex, offsetBy: count))
        count += 2
    }
    
    
    return newString
}


altPairs("kitten") //→ "kien"
altPairs("Chocolate") //→ "Chole"
altPairs("CodingHorror") //→ "Congrr"







//Suppose the string "yak" is unlucky. Given a string, return a version where all the "yak" are removed, but the "a" can be any char. The "yak" strings will not overlap.

func stringYak(_ input: String) -> String {
    var newString = input
    
    while newString.contains("yak") {
        newString.removeSubrange(newString.range(of: "yak")!)
        
    }
    
    return newString
}


stringYak("yakpak") //→ "pak"
stringYak("pakyak") //→ "pak"
stringYak("yak123ya") //→ "123ya"






//Given an array of ints, return the number of times that two 6's are next to each other in the array. Also count instances where the second "6" is actually a 7.

func array667(_ input: [Int]) -> Int {
    var count = 0
    
    for (index, number) in input.enumerated() {
        let nextIndex = index + 1
        
        if nextIndex < input.endIndex && number == 6 && (input[nextIndex] == 6 || input[nextIndex] == 7) {
            count += 1
        }
    }
    return count
}

array667([6, 6, 2]) //→ 1
array667([6, 6, 2, 6]) //→ 1
array667([6, 7, 2, 6]) //→ 1






//Given an array of ints, we'll say that a triple is a value appearing 3 times in a row in the array. Return true if the array does not contain any triples.

func noTriples(_ input: [Int]) -> Bool {
    
    for (index, number) in input.enumerated() {
        let thirdIndex = index + 2
        let secondIndex = index + 1
        
        if secondIndex < input.endIndex && number == input[secondIndex] && number == input[thirdIndex] {
            return false
        }
    }
    return true
}


noTriples([1, 1, 2, 2, 1]) //→ true
noTriples([1, 1, 2, 2, 2, 1]) //→ false
noTriples([1, 1, 1, 2, 2, 2, 1]) //→ false






//Given an array of ints, return true if it contains a 2, 7, 1 pattern -- a value, followed by the value plus 5, followed by the value minus 1. Additionally the 271 counts even if the "1" differs by 2 or less from the correct value.

func has271(_ input: [Int]) -> Bool {
    
    for (index, number) in input.enumerated() {
        let thirdIndex = index + 2
        let secondIndex = index + 1
        
        if secondIndex < input.endIndex && input[secondIndex] == number + 5 && (input[thirdIndex] == number - 1 || input[thirdIndex] == number - 2 || input[thirdIndex] == number - 3 || input[thirdIndex] == number + 1 || input[thirdIndex] == number + 2) {
            return true
        }
    }
    
    return false
}


has271([1, 2, 7, 1]) //→ true
has271([1, 2, 8, 1]) //→ false
has271([2, 7, 1]) //→ true




//Given three ints, a b c, one of them is small, one is medium and one is large. Return true if the three values are evenly spaced, so the difference between small and medium is the same as the difference between medium and large.

func evenlySpaced(_ a: Int, _ b: Int, _ c: Int) -> Bool {
    let array = [a, b, c].sorted()
    let spaceOne = array[1] - array[0]
    let spaceTwo = array[2] - array[1]
    
    return spaceOne == spaceTwo
}


evenlySpaced(2, 4, 6) //→ true
evenlySpaced(4, 6, 2) //→ true
evenlySpaced(4, 6, 3) //→ false



