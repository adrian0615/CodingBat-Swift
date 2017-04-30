//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

/*Given an array of ints, return true if 6 appears as either the first or last element in the array. The array will be length 1 or more.*/

func firstLast6( _ a:[Int]) -> Bool {
    if a.first == 6 || a.last == 6 {
        return true
    } else {
        return false
    }
}
 
firstLast6([1, 2, 6]) //→ true
firstLast6([6, 1, 2, 3]) //→ true
firstLast6([13, 6, 1, 2, 3]) //→ false



/*Given an array of ints, return true if the array is length 1 or more, and the first element and the last element are equal.*/

func sameFirstLast(_ a: [Int]) -> Bool {
    guard a.count > 0 else {
        return false
    }
    if a.first == a.last {
        return true
    } else {
        return false
    }
}

sameFirstLast([1, 2, 3]) //→ false
sameFirstLast([1, 2, 3, 1]) //→ true
sameFirstLast([1, 2, 1]) //→ true






/*Return an int array length 3 containing the first 3 digits of pi, {3, 1, 4}.*/

func makePi() -> [Int] {
    return [3, 1, 4]
}

makePi() //→ [3, 1, 4]




/*Given 2 arrays of ints, a and b, return true if they have the same first element or they have the same last element. Both arrays will be length 1 or more.*/

func commonEnd(_ a: [Int], _ b: [Int]) -> Bool {
    guard a.count > 0, b.count > 0 else {
        return false
    }
    
    if a.first == b.first || a.last == b.last {
        return true
    } else {
        return false
    }
}

commonEnd([1, 2, 3], [7, 3]) //→ true
commonEnd([1, 2, 3], [7, 3, 2]) //→ false
commonEnd([1, 2, 3], [1, 3]) //→ true





/*Given an array of ints length 3, return the sum of all the elements.*/

func sum3(_ a: [Int]) -> Int {
    return a.reduce(0, +)
}

sum3([1, 2, 3]) //→ 6
sum3([5, 11, 2]) //→ 18
sum3([7, 0, 0]) //→ 7





/*Given an array of ints length 3, return an array with the elements "rotated left" so {1, 2, 3} yields {2, 3, 1}.*/

func rotateLeft3(_ a: [Int]) -> [Int] {
    var newA = a
    
    newA.removeFirst()
    newA.append(a.first!)
    
    return newA
}

rotateLeft3([1, 2, 3]) //→ [2, 3, 1]
rotateLeft3([5, 11, 9]) //→ [11, 9, 5]
rotateLeft3([7, 0, 0]) //→ [0, 0, 7]



/*Given an array of ints length 3, return a new array with the elements in reverse order, so {1, 2, 3} becomes {3, 2, 1}.*/

func reverse3 (_ a: [Int]) -> [Int] {
    return a.reversed()
}

reverse3([1, 2, 3]) //→ [3, 2, 1]
reverse3([5, 11, 9]) //→ [9, 11, 5]
reverse3([7, 0, 0]) //→ [0, 0, 7]



/*Given an array of ints length 3, figure out which is larger, the first or last element in the array, and set all the other elements to be that value. Return the changed array.*/

func maxEnd3(_ a: [Int]) -> [Int] {
    var newA = a
    
    if newA.first! > newA.last! {
        newA[1] = newA.first!
        newA[2] = newA.first!
    } else {
        newA[0] = newA.last!
        newA[1] = newA.last!
    }
    return newA
}

maxEnd3([1, 2, 3]) //→ [3, 3, 3]
maxEnd3([11, 5, 9]) //→ [11, 11, 11]
maxEnd3([2, 11, 3]) //→ [3, 3, 3]*/



/*Given an array of ints, return the sum of the first 2 elements in the array. If the array length is less than 2, just sum up the elements that exist, returning 0 if the array is length 0.*/

func sum2(_ a: [Int]) -> Int {
    return a[0] + a[1]
}

sum2([1, 2, 3]) //→ 3
sum2([1, 1]) //→ 2
sum2([1, 1, 1, 1]) //→ 2


/*Given 2 int arrays, a and b, each length 3, return a new array length 2 containing their middle elements.*/

func middleWay(_ a: [Int], _ b: [Int]) -> [Int] {
    var newArray: [Int] = []
    newArray.append(a[1])
    newArray.append(b[1])
    
    return newArray
}

middleWay([1, 2, 3], [4, 5, 6]) //→ [2, 5]
middleWay([7, 7, 7], [3, 8, 0]) //→ [7, 8]
middleWay([5, 2, 9], [1, 4, 5]) //→ [2, 4]



/*Given an array of ints, return a new array length 2 containing the first and last elements from the original array. The original array will be length 1 or more.*/

func makeEnds(_ a: [Int]) -> [Int] {
    var newArray: [Int] = []
    
    newArray.append(a[0])
    newArray.append(a.last!)
    
    return newArray
}

makeEnds([1, 2, 3]) //→ [1, 3]
makeEnds([1, 2, 3, 4]) //→ [1, 4]
makeEnds([7, 4, 6, 2]) //→ [7, 2]



/*Given an int array length 2, return true if it contains a 2 or a 3.*/

func has23(_ a: [Int]) -> Bool {
    if a.contains(2) || a.contains(3) {
        return true
    } else {
        return false
    }
}

has23([2, 5]) //→ true
has23([4, 3]) //→ true
has23([4, 5]) //→ false



/*Given an int array length 2, return true if it does not contain a 2 or 3.*/

func no23(_ a: [Int]) -> Bool {
    if a.contains(2) || a.contains(3) {
        return false
    } else {
        return true
    }
}

no23([4, 5]) //→ true
no23([4, 2]) //→ false
no23([3, 5]) //→ false



/*Given an int array, return a new array with double the length where its last element is the same as the original array, and all the other elements are 0. The original array will be length 1 or more. Note: by default, a new int array contains all 0's.*/

func makeLast(_ a: [Int]) -> [Int] {
    var newArray: [Int] = [a.last!]
    
    for _ in a {
        newArray.insert(0, at: newArray.startIndex)
        newArray.insert(0, at: newArray.startIndex)
    }
    newArray.remove(at: 0)
    
    return newArray
}

makeLast([4, 5, 6]) //→ [0, 0, 0, 0, 0, 6]
makeLast([1, 2]) //→ [0, 0, 0, 2]
makeLast([3]) //→ [0, 3]




/*Given an int array, return true if the array contains 2 twice, or 3 twice. The array will be length 0, 1, or 2.*/

func double23(_ a: [Int]) -> Bool {
    if a == [2, 2] || a == [3, 3] {
        return true
    } else {
        return false
    }
}

double23([2, 2]) //→ true
double23([3, 3]) //→ true
double23([2, 3]) //→ false




/*Given an int array length 3, if there is a 2 in the array immediately followed by a 3, set the 3 element to 0. Return the changed array.*/

func fix23(_ a: [Int]) -> [Int] {
    var newA = a
    
    if newA[0] == 2 && newA[1] == 3 {
        newA[1] = 0
    }
    if newA[1] == 2 && newA[2] == 3 {
        newA[2] = 0
    }
    
    return newA
}

fix23([1, 2, 3]) //→ [1, 2, 0]
fix23([2, 3, 5]) //→ [2, 0, 5]
fix23([1, 2, 1]) //→ [1, 2, 1]




/*Start with 2 int arrays, a and b, of any length. Return how many of the arrays have 1 as their first element.*/

func start1(_ a: [Int], _ b: [Int]) -> Int {
    var count = 0
    
    if a.first == 1 {
        count += 1
    }
    
    if b.first == 1 {
        count += 1
    }
    
    return count
}

start1([1, 2, 3], [1, 3]) //→ 2
start1([7, 2, 3], [1]) //→ 1
start1([1, 2], []) //→ 1




/*Start with 2 int arrays, a and b, each length 2. Consider the sum of the values in each array. Return the array which has the largest sum. In event of a tie, return a.*/

func biggerTwo(_ a: [Int], _ b: [Int]) -> [Int] {
    if (a[0] + a[1]) >= (b[0] + b[1]) {
        return a
    } else {
        return b
    }
 }

biggerTwo([1, 2], [3, 4]) //→ [3, 4]
biggerTwo([3, 4], [1, 2]) //→ [3, 4]
biggerTwo([1, 1], [1, 2]) //→ [1, 2]




/*Given an array of ints of even length, return a new array length 2 containing the middle two elements from the original array. The original array will be length 2 or more.*/

func makeMiddle(_ a: [Int]) -> [Int] {
    var newArray: [Int] = []
    
    if a.count % 2 == 0 {
        let secondIndex = a.count / 2
        let firstIndex = secondIndex - 1
        newArray = [a[firstIndex], a[secondIndex]]
    }
    return newArray
}

makeMiddle([1, 2, 3, 4]) //→ [2, 3]
makeMiddle([7, 1, 2, 3, 4, 9]) //→ [2, 3]
makeMiddle([1, 2]) //→ [1, 2]





/*Given 2 int arrays, each length 2, return a new array length 4 containing all their elements.*/

func plusTwo(_ a: [Int], _ b: [Int]) -> [Int] {
    var newArray: [Int] = []
    newArray.append(contentsOf: a)
    newArray.append(contentsOf: b)
    
    return newArray
}

plusTwo([1, 2], [3, 4]) //→ [1, 2, 3, 4]
plusTwo([4, 4], [2, 2]) //→ [4, 4, 2, 2]
plusTwo([9, 2], [3, 4]) //→ [9, 2, 3, 4]




/*Given an array of ints, swap the first and last elements in the array. Return the modified array. The array length will be at least 1.*/

func swapEnds(_ a: [Int]) -> [Int] {
    var newA = a
    let first = newA.removeFirst()
    let last = newA.removeLast()
    newA.insert(last, at: newA.startIndex)
    newA.append(first)
    
    return newA
}

swapEnds([1, 2, 3, 4]) //→ [4, 2, 3, 1]
swapEnds([1, 2, 3]) //→ [3, 2, 1]
swapEnds([8, 6, 7, 9, 5]) //→ [5, 6, 7, 9, 8]




/*Given an array of ints of odd length, return a new array length 3 containing the elements from the middle of the array. The array length will be at least 3.*/

func midThree(_ a: [Int]) -> [Int] {
    var newArray = a
    
    if a.count % 2 == 1 {
        let lessCount = a.count
        let secondIndex = lessCount / 2
        let thirdIndex = secondIndex + 1
        let firstIndex = secondIndex - 1
        
        newArray = [a[firstIndex], a[secondIndex], a[thirdIndex]]
    }
    
    return newArray
}

midThree([1, 2, 3, 4, 5]) //→ [2, 3, 4]
midThree([8, 6, 7, 5, 3, 0, 9]) //→ [7, 5, 3]
midThree([1, 2, 3]) //→ [1, 2, 3]





/*Given an array of ints of odd length, look at the first, last, and middle values in the array and return the largest. The array length will be a least 1.*/

func maxTriple(_ a: [Int]) -> Int {
    guard a.count % 2 == 1 else {
        return 0
    }
    
    let lessCount = a.count
    let middleIndex = lessCount / 2
    
    if a.first! > a.last! && a.first! > a[middleIndex] {
        return a.first!
    } else if a.last! > a.first! && a.last! > a[middleIndex] {
        return a.last!
    } else {
        return a[middleIndex]
    }
}

maxTriple([1, 2, 3]) //→ 3
maxTriple([1, 5, 3]) //→ 5
maxTriple([5, 2, 3]) //→ 5




/*Given an int array of any length, return a new array of its first 2 elements. If the array is smaller than length 2, use whatever elements are present.*/

func frontPiece(_ a: [Int]) -> [Int] {
    guard a.count > 1 else {
        return a
    }
    
    return Array(a.prefix(2))
}

frontPiece([1, 2, 3]) //→ [1, 2]
frontPiece([1, 2]) //→ [1, 2]
frontPiece([1]) //→ [1]




/*We'll say that a 1 immediately followed by a 3 in an array is an "unlucky" 1. Return true if the given array contains an unlucky 1 in the first 2 or last 2 positions in the array.*/

func unlucky1(_ a: [Int]) -> Bool {
    
    if Array(a.prefix(2)) == [1, 3] || Array(a.suffix(2)) == [1, 3] {
        return true
    } else if a[1] == 1 && a[2] == 3 {
        return true
    } else {
        return false
    }
}

unlucky1([1, 3, 4, 5]) //→ true
unlucky1([2, 1, 3, 4, 5]) //→ true
unlucky1([1, 1, 1]) //→ false*/





/*Given 2 int arrays, a and b, return a new array length 2 containing, as much as will fit, the elements from a followed by the elements from b. The arrays may be any length, including 0, but there will be 2 or more elements available between the 2 arrays.
*/

func make2(_ a: [Int], _ b: [Int]) -> [Int] {
    var newA = a
    newA.append(contentsOf: b)
    
    return Array(newA.prefix(2))
}

make2([4, 5], [1, 2, 3]) //→ [4, 5]
make2([4], [1, 2, 3]) //→ [4, 1]
make2([], [1, 2]) //→ [1, 2]*/





/*Given 2 int arrays, a and b, of any length, return a new array with the first element of each array. If either array is length 0, ignore that array.*/

func front11(_ a: [Int], _ b: [Int]) -> [Int] {
    
    if a.count == 0 && b.count == 0 {
        return []
    } else if a.count == 0 && b.count != 0 {
        return [b.first!]
    } else if a.count != 0 && b.count == 0 {
        return [a.first!]
    } else {
        return [a.first!, b.first!]
    }
}

front11([1, 2, 3], [7, 9, 8]) //→ [1, 7]
front11([1], [2]) //→ [1, 2]
front11([1, 7], []) //→ [1]
