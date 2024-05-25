//
//  main.swift
//  syntax
//
//  Created by Jason Burns on 5/25/24.
//

import Foundation

print("Hello, World!")

var myNumber = 0
myNumber = 315

print("this is my number: \(myNumber)")

var text = "this is still my number: "
print(text + String(myNumber))

var myOtherNumber = 486
print("this is another of my numbers: " + String(myOtherNumber))

print("these are my numbers mashed together: \(String(myNumber) + String(myOtherNumber))")

let quote = 
    """
    The more you struggle to live, the less you live.
    Give up the notion that you must be sure of what you are doing.
    Instead, surrender to what is real within you, for that alone is sure....
    you are above everything distressing.
    """
print(quote)

var things = ["A", "B", "C"]
print(things[0]+things[1]+things[2])

var stuffs: [Int: String] = [
    0: "X",
    1: "Y",
    2: "Z"
]

for (key, value) in stuffs {
    print("key: \(key), value: \(value)")
}
//The order of key-value pairs in a dictionary is stable between mutations but is otherwise unpredictable. If you need an ordered collection of key-value pairs and don’t need the fast key lookup that Dictionary provides, see the KeyValuePairs type for an alternative.

stuffs[0] = "N"
//print(stuffs[0]) Expression implicitly coerced from ‘String?’ to ‘Any’- WHY SWIFT, WHY :(
print(stuffs[0]!)

var otherStuffs: [String:String] = [:]
var isEmpty = otherStuffs.isEmpty
print("otherStuffs is empty? " + String(isEmpty))

otherStuffs["a"] = "A"
print("what is it now? " + otherStuffs["a"]!)
print("otherStuffs is still empty? " + String(isEmpty))

otherStuffs["a"] = "changed"
print("otherStuffs is now changed? " + String(isEmpty))

otherStuffs.removeAll()
print("otherStuffs is empty again? " + String(isEmpty))

//modify in place for return:

var interestingNumbers: [String:Array] = ["primes": [2, 3, 5, 7, 11, 13, 17],
                                          "triangular": [1, 3, 6, 10, 15, 21, 28],
                                          "hexagonal": [1, 6, 15, 28, 45, 66, 91]]
for key in interestingNumbers.keys {
    interestingNumbers[key]?.sort(by: >)
}

print(interestingNumbers["primes"]!)
print(interestingNumbers["triangular"]!)
print(interestingNumbers["hexagonal"]!)

//control flow
let newArr = [1,2,3,4,5,6,7,8,9]
print(newArr)
var oddCounter = 0
var evenCounter = 0
for num in newArr{
    if num % 2 != 0 {
        //number is odd!
        oddCounter += 1
    }
    if num.isMultiple(of: 2){
        //number is even!
        evenCounter += 1
    }
    else{
        continue
    }
}
print("How many odd numbers are in this array? \(oddCounter)")
print("How many even numbers are in this array? \(evenCounter)")
