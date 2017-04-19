//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

//Given a string name, e.g. "Bob", return a greeting of the form "Hello Bob!"

func helloName(_ input: String) -> String {
    return "Hello \(input)!"
}


helloName("Bob") //→ "Hello Bob!"
helloName("Alice") //→ "Hello Alice!"
helloName("X") //→ "Hello X!"



//Given two strings, a and b, return the result of putting them together in the order abba, e.g. "Hi" and "Bye" returns "HiByeByeHi".

func makeAbba(_ input: String, _ input2: String) -> String {
    return input+input2+input2+input
}


makeAbba("Hi", "Bye") //→ "HiByeByeHi"
makeAbba("Yo", "Alice") //→ "YoAliceAliceYo"
makeAbba("What", "Up") //→ "WhatUpUpWhat"



//The web is built with HTML strings like "<i>Yay</i>" which draws Yay as italic text. In this example, the "i" tag makes <i> and </i> which surround the word "Yay". Given tag and word strings, create the HTML string with tags around the word, e.g. "<i>Yay</i>".

func makeTags(_ input: String, _ input2: String) -> String {
    return "<\(input)>\(input2)</\(input)>"
}


makeTags("i", "Yay") //→ "<i>Yay</i>"
makeTags("i", "Hello") //→ "<i>Hello</i>"
makeTags("cite", "Yay") //→ "<cite>Yay</cite>"





//Given an "out" string length 4, such as "<<>>", and a word, return a new string where the word is in the middle of the out string, e.g. "<<word>>". Note: use str.substring(i, j) to extract the String starting at index i and going up to but not including index j.

func makeOutWord(_ input: String, _ input2: String) -> String {
    let indexOfStart = input.startIndex
    let indexOfOne = input.index(indexOfStart, offsetBy: 2)
    let firstTwo = indexOfStart ..< indexOfOne
    let indexOfEnd = input.endIndex
    let secondTwo = indexOfOne ..< indexOfEnd
    let subString1 = input.substring(with: firstTwo)
    let subString2 = input.substring(with: secondTwo)
    

    
    return subString1+input2+subString2

}



makeOutWord("<<>>", "Yay") //→ "<<Yay>>"
makeOutWord("<<>>", "WooHoo") //→ "<<WooHoo>>"
makeOutWord("[[]]", "word") //→ "[[word]]"



//Given a string, return a new string made of 3 copies of the last 2 chars of the original string. The string length will be at least 2.

func extraEnd(_ input: String) -> String {
    let chars = input.characters
    let lastTwo = chars.suffix(2)
    
    return String(lastTwo)+String(lastTwo)+String(lastTwo)
}



extraEnd("Hello") //→ "lololo"
extraEnd("ab") //→ "ababab"
extraEnd("Hi") //→ "HiHiHi"



//Given a string, return the string made of its first two chars, so the String "Hello" yields "He". If the string is shorter than length 2, return whatever there is, so "X" yields "X", and the empty string "" yields the empty string "". Note that str.length() returns the length of a string.

func firstTwo(_ input: String) -> String {
    let chars = input.characters
    let firstTwo = chars.prefix(2)
    
    return String(firstTwo)
}



firstTwo("Hello") //→ "He"
 firstTwo("abcdefg") //→ "ab"
 firstTwo("ab") //→ "ab"




//Given a string of even length, return the first half. So the string "WooHoo" yields "Woo".

func firstHalf(_ input: String) -> String {
    let chars = input.characters
    let firstHalf = chars.prefix(input.characters.count / 2)
    
    return String(firstHalf)
}





firstHalf("WooHoo") //→ "Woo"
firstHalf("HelloThere") //→ "Hello"
firstHalf("abcdef") //→ "abc"




//Given a string, return a version without the first and last char, so "Hello" yields "ell". The string length will be at least 2.

func withoutEnd(_ input: String) -> String {
    var newString = input.characters
    
    newString.removeFirst()
    newString.removeLast()
    
    return String(newString)
}



withoutEnd("Hello") //→ "ell"
withoutEnd("java") //→ "av"
withoutEnd("coding") //→ "odin"




//Given 2 strings, a and b, return a string of the form short+long+short, with the shorter string on the outside and the longer string on the inside. The strings will not be the same length, but they may be empty (length 0).

func comboString(_ input: String, _ input2: String) -> String {
    if input.characters.count > input2.characters.count {
        return input2+input+input2
    } else {
        return input+input2+input
    }
}




comboString("Hello", "hi") //→ "hiHellohi"
comboString("hi", "Hello") //→ "hiHellohi"
comboString("aaa", "b") //→ "baaab"




//Given 2 strings, return their concatenation, except omit the first char of each. The strings will be at least length 1.

func nonStart(_ input: String, _ input2: String) -> String {
    var chars = input.characters
    var chars2 = input2.characters
    chars.removeFirst()
    chars2.removeFirst()
    
    return String(chars)+String(chars2)
    
}



nonStart("Hello", "There") //→ "ellohere"
nonStart("java", "code") //→ "avaode"
nonStart("shotl", "java") //→ "hotlava"




//Given a string, return a "rotated left 2" version where the first 2 chars are moved to the end. The string length will be at least 2.

func left2(_ input: String) -> String {
    var chars = input.characters
    let first = chars.removeFirst()
    let second = chars.removeFirst()
    chars.append(first)
    chars.append(second)
    
    return String(chars)
}


left2("Hello") //→ "lloHe"
left2("java") //→ "vaja"
left2("Hi") //→ "Hi"




//Given a string, return a "rotated right 2" version where the last 2 chars are moved to the start. The string length will be at least 2.

func right2(_ input: String) -> String {
    var chars = input.characters
    let last = chars.removeLast()
    let secondToLast = chars.removeLast()
    chars.insert(last, at: chars.startIndex)
    chars.insert(secondToLast, at: chars.startIndex)
    
    return String(chars)
}


right2("Hello") //→ "loHel"
right2("java") //→ "vaja"
right2("Hi") //→ "Hi"




//Given a string, return a string length 1 from its front, unless front is false, in which case return a string length 1 from its back. The string will be non-empty.

func theEnd(_ input: String, _ relationship: Bool) -> String {
    var chars = input.characters
    
    if relationship == true {
        return String(chars.removeFirst())
    } else {
        return String(chars.removeLast())
    }
}



theEnd("Hello", true) //→ "H"
theEnd("Hello", false) //→ "o"
theEnd("oh", true) //→ "o"




//Given a string, return a version without both the first and last char of the string. The string may be any length, including 0.

func withoutEnd2(_ input: String) -> String {
    var chars = input.characters
    chars.removeFirst()
    chars.removeLast()
   
    
    return String(chars)
}


withoutEnd2("Hello") //→ "ell"
withoutEnd2("abc") //→ "b"
withoutEnd2("ab") //→ ""




//Given a string of even length, return a string made of the middle two chars, so the string "string" yields "ri". The string length will be at least 2.

func middleTwo(_ input: String) -> String {
    let chars = input.characters
    let firstNum = chars.count / 2 - 1
    let secondNum = chars.count / 2 + 1
    let secondIndex = input.index(chars.startIndex, offsetBy: secondNum)
    let firstIndex = input.index(chars.startIndex, offsetBy: firstNum)
    let middleRange = firstIndex ..< secondIndex
    let twoLetters = input.substring(with: middleRange)
    
    return twoLetters
}


middleTwo("string") //→ "ri"
middleTwo("code") //→ "od"
middleTwo("Practice") //→ "ct"





//Given a string, return true if it ends in "ly".

func endsLy(_ input: String) -> Bool {
    if input.hasSuffix("ly") {
        return true
    } else {
        return false
    }
}


endsLy("oddly") //→ true
endsLy("y") //→ false
endsLy("oddy") //→ false



//Given a string and an int n, return a string made of the first and last n chars from the string. The string length will be at least n.

func nTwice(_ input: String, _ n: Int) -> String {
    let firstString = String(input.characters.prefix(n))
    let secondString = String(input.characters.suffix(n))
    
    return firstString + secondString
}

nTwice("Hello", 2) //→ "Helo"
nTwice("Chocolate", 3) //→ "Choate"
nTwice("Chocolate", 1) //→ "Ce"




//Given a string and an index, return a string length 2 starting at the given index. If the index is too big or too small to define a string length 2, use the first 2 chars. The string length will be at least 2.

func twoChar(_ input: String, _ n: Int) -> String {
    var chars = input.characters
    var newString = ""
    
    if chars.count > 2 && n < chars.count - 1 {
       chars.removeFirst(n)
        let first = chars.removeFirst()
        let second = chars.removeFirst()
        newString.append(first)
        newString.append(second)
        
    } else {
        newString = String(input.characters.prefix(2))
    }
    
    return newString
}

twoChar("java", 0) //→ "ja"
twoChar("java", 2) //→ "va"
twoChar("java", 3) //→ "ja"*/




//Given a string of odd length, return the string length 3 from its middle, so "Candy" yields "and". The string length will be at least 3.

func middleThree(_ input: String) -> String {
    let chars = input.characters
    
    let middleNum = (chars.count - 1) / 2
    let firstNum = middleNum - 1
    let thirdNum = middleNum + 1
    
    let firstIndex = input.index(chars.startIndex, offsetBy: firstNum)
    let thirdIndex = input.index(chars.startIndex, offsetBy: thirdNum + 1)
    let middleRange = firstIndex ..< thirdIndex
    let twoLetters = input.substring(with: middleRange)
    
    return twoLetters
}



middleThree("Candy") //→ "and"
middleThree("and") //→ "and"
middleThree("solving") //→ "lvi"




//Given a string, return true if "bad" appears starting at index 0 or 1 in the string, such as with "badxxx" or "xbadxx" but not "xxbadxx". The string may be any length, including 0. Note: use .equals() to compare 2 strings.

func hasBad(_ input: String) -> Bool {
    var newInput = input
    newInput.characters.removeFirst()
    
    if input.hasPrefix("bad") || newInput.hasPrefix("bad") {
        return true
    }
    
    return false
}


hasBad("badxx") //→ true
hasBad("xbadxx") //→ true
hasBad("xxbadxx") //→ false




//Given a string, return a string length 2 made of its first 2 chars. If the string length is less than 2, use '@' for the missing chars.

func atFirst(_ input: String) -> String {
    if input.characters.count > 1 {
        return String(input.characters.prefix(2))
    } else {
        var newString = input
        newString.append("@")
        return newString
    }
}

atFirst("hello") //→ "he"
atFirst("hi") //→ "hi"
atFirst("h") //→ "h@"




//Given 2 strings, a and b, return a new string made of the first char of a and the last char of b, so "yo" and "java" yields "ya". If either string is length 0, use '@' for its missing char.

func lastChars(_ a: String, _ b: String) -> String {
    var newString = a
    var newString2 = b
    var newString3 = ""
    
    if newString.characters.count < 1 {
        newString.append("@")
    }
    
    if newString2.characters.count < 1 {
        newString2.append("@")
    }
    
    let firstChar = newString.characters.removeFirst()
    let secondChar = newString2.characters.removeLast()
    
    
    newString3.append(firstChar)
    newString3.append(secondChar)
    
    return newString3
}


lastChars("last", "chars") //→ "ls"
lastChars("yo", "java") //→ "ya"
lastChars("hi", "") //→ "h@"




//Given two strings, append them together (known as "concatenation") and return the result. However, if the concatenation creates a double-char, then omit one of the chars, so "abc" and "cat" yields "abcat".

func conCat(_ a: String, _ b: String) -> String {
    
    var newA = a
    var newB = b
    
    if newA.characters.last == newB.characters.first {
        newB.remove(at: newB.startIndex)
    }
    
    return newA + newB
}

conCat("abc", "cat") //→ "abcat"
conCat("dog", "cat") //→ "dogcat"
conCat("abc", "") //→ "abc"



//Given a string of any length, return a new string where the last 2 chars, if present, are swapped, so "coding" yields "codign".

func lastTwo(_ a:String) -> String {
    var newA = a
    
    let lastChar = newA.characters.removeLast()
    let secondToLastChar = newA.characters.removeLast()
    
    newA.append(lastChar)
    newA.append(secondToLastChar)
    
    return newA
}

lastTwo("coding") //→ "codign"
lastTwo("cat") //→ "cta"
lastTwo("ab") //→ "ba"




//Given a string, if the string begins with "red" or "blue" return that color string, otherwise return the empty string.

func seeColor(_ a:String) -> String {
    if a.hasPrefix("blue") {
        return String(a.characters.prefix(4))
    } else if a.hasPrefix("red") {
        return String(a.characters.prefix(3))
    } else {
        return ""
    }
}

seeColor("redxx") //→ "red"
seeColor("xxred") //→ ""
seeColor("blueTimes") //→ "blue"



//Given a string, return true if the first 2 chars in the string also appear at the end of the string, such as with "edited".

func frontAgain(_ a:String) -> Bool {
    
    if String(a.characters.prefix(2)) == String(a.characters.suffix(2)) {
        return true
    } else {
        return false
    }
}

frontAgain("edited") //→ true
frontAgain("edit") //→ false
frontAgain("ed") //→ true




//Given two strings, append them together (known as "concatenation") and return the result. However, if the strings are different lengths, omit chars from the longer string so it is the same length as the shorter string. So "Hello" and "Hi" yield "loHi". The strings may be any length.

func minCat(_ a:String, _ b:String) -> String {
    var newA = a
    var newB = b
    
    if a.characters.count > b.characters.count {
        newA = String(a.characters.suffix(b.characters.count))
    } else if a.characters.count < b.characters.count {
        newB = String(b.characters.suffix(a.characters.count))
    }
    
    return newA + newB
}


minCat("Hello", "Hi") //→ "loHi"
minCat("Hello", "java") //→ "ellojava"
minCat("java", "Hello") //→ "javaello"




//Given a string, return a new string made of 3 copies of the first 2 chars of the original string. The string may be any length. If there are fewer than 2 chars, use whatever is there.

func extraFront(_ a:String) -> String {
    var newString = ""
    
    if a.characters.count < 2 && a.characters.count > 0 {
        let firstChar = a.characters.first!
        newString.append(firstChar)
        newString.append(firstChar)
        newString.append(firstChar)
    } else {
        let firstTwo = String(a.characters.prefix(2))
        newString.append(firstTwo)
        newString.append(firstTwo)
        newString.append(firstTwo)
    }
    return newString
}

extraFront("Hello") //→ "HeHeHe"
extraFront("ab") //→ "ababab"
extraFront("H") //→ "HHH"



//Given a string, if a length 2 substring appears at both its beginning and end, return a string without the substring at the beginning, so "HelloHe" yields "lloHe". The substring may overlap with itself, so "Hi" yields "". Otherwise, return the original string unchanged.

func without2(_ a:String) -> String {
    var newA = a
    let firstTwo = String(newA.characters.prefix(2))
    let lastTwo = String(newA.characters.suffix(2))
    
    if firstTwo == lastTwo {
        newA.characters.removeFirst(2)
    }
    
    return newA
}

without2("HelloHe") //→ "lloHe"
without2("HelloHi") //→ "HelloHi"
without2("Hi") //→ ""



//Given a string, return a version without the first 2 chars. Except keep the first char if it is 'a' and keep the second char if it is 'b'. The string may be any length. Harder than it looks.

func deFront(_ a:String) -> String {
    var newA = a
    
    let firstLetter = newA.characters.removeFirst()
    let secondLetter = newA.characters.removeFirst()
    
    if  firstLetter == "a" && secondLetter == "b" {
        newA.insert(secondLetter, at: newA.characters.startIndex)
        newA.insert(firstLetter, at: newA.characters.startIndex)
    } else if firstLetter != "a" && secondLetter == "b" {
        newA.insert(secondLetter, at: newA.characters.startIndex)
    } else if firstLetter == "a" && secondLetter != "b" {
        newA.insert(firstLetter, at: newA.characters.startIndex)
    } else {
        return newA
    }
    
    
    return newA
}


deFront("Hello") //→ "llo"
deFront("java") //→ "va"
deFront("away") //→ "aay"




//Given a string and a second "word" string, we'll say that the word matches the string if it appears at the front of the string, except its first char does not need to match exactly. On a match, return the front of the string, or otherwise return the empty string. So, so with the string "hippo" the word "hi" returns "hi" and "xip" returns "hip". The word will be at least length 1.

func startWord(_ a:String, _ b:String) -> String {
    var newA = a
    newA.characters.removeFirst()
    var newB = b
    newB.characters.removeFirst()
    let bCount = b.characters.count
    
    
    if a.hasPrefix(b) {
        return String(a.characters.prefix(bCount))
    }
    
    if newA.hasPrefix(newB) {
        return String(a.characters.prefix(bCount))
    }
    
    return ""
}

startWord("hippo", "hi") //→ "hi"
startWord("hippo", "xip") //→ "hip"
startWord("hippo", "i") //→ "h"





//Given a string, if the first or last chars are 'x', return the string without those 'x' chars, and otherwise return the string unchanged.

func withoutX(_ a:String) -> String {
    var newA = a
    
    if newA.hasPrefix("x") {
        newA.characters.removeFirst()
    }
    
    if newA.hasSuffix("x") {
        newA.characters.removeLast()
    }
    
    return newA
}

withoutX("xHix") //→ "Hi"
withoutX("xHi") //→ "Hi"
withoutX("Hxix") //→ "Hxi"





//Given a string, if one or both of the first 2 chars is 'x', return the string without those 'x' chars, and otherwise return the string unchanged. This is a little harder than it looks.

func withoutX2(_ a:String) -> String {
    var newA = a
    let firstLetter = newA.characters.removeFirst()
    let secondLetter = newA.characters.removeFirst()
    
    if firstLetter == "x" && secondLetter == "x" {
        return newA
    } else if firstLetter == "x" && secondLetter != "x" {
        newA.insert(secondLetter, at: newA.startIndex)
    } else if firstLetter != "x" && secondLetter == "x" {
        newA.insert(firstLetter, at: newA.startIndex)
    } else {
        return a
    }
    return a
}

withoutX2("xHi") //→ "Hi"
withoutX2("Hxi") //→ "Hi"
withoutX2("Hi") //→ "Hi"































