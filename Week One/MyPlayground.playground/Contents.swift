//: Playground - noun: a place where people can play

import UIKit

var emptyString = ""               // empty string literal
var anotherEmptyString = String()

var str = "Hello, playground"

var integer1 = 2

print("\(integer1)")

// var sring1 = "test"

/*
 var sring1 = "test0"
 var sring2 = "test1"
 
 */

print(str.characters.count)


let fullName    = "First Last"
let fullNameArr = fullName.components(separatedBy: " ")

let name    = fullNameArr[0]
let surname = fullNameArr[1]



let world = "Hello, world!".characters.suffix(6).dropLast()
print(String(world))

let str2 = "Sunday, monday, Happy Days"
print(str2.lowercased())
print(str2.uppercased())

print(str2.capitalized)


let reversed = String(str2.characters.reversed())
print(reversed)

let angle = 45.6789
let formatted = String(format: "Angle: %.2f", angle)


let str4 = "  Taylor Swift  "
let trimmed = str4.trimmingCharacters(in: .whitespacesAndNewlines)

let name1 = "Paul"
let age = 35
let longestPi = 3.141592654

let combined = "This person's name is \(name1.uppercased()), their age is \(age) so in \(age) years time they'll be \(age + age), and they know π up to \(longestPi)"


for character in "Dog!".characters {
    print(character)
}

let greeting = "Guten Tag!"
greeting[greeting.startIndex]
// G
greeting[greeting.index(before: greeting.endIndex)]
// !
greeting[greeting.index(after: greeting.startIndex)]
// u
let index = greeting.index(greeting.startIndex, offsetBy: 3)
greeting[index]

let candidate = "raman@braindigit.com"
let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}"
let val = NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: candidate)


for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

for (index,val) in fullNameArr.enumerated() {
    print("\(index) - \(val)")
}

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}

var square = 0
while square < 20 {
    square += 2
}
var square1 = 0
repeat {
   square1 += 2
} while square1 < 20

//=,==,>=,<=,>,<


let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("The first letter of the alphabet")
case "a", "A":
    print("The letter A")
    break
case "z":
    print("The last letter of the alphabet")
    break
case "q":
    break
default:
    print("Some other character")
}

let somePoint = (1, 1)
print(somePoint.0)
print(somePoint.1)

if #available(iOS 10, macOS 10.12, *) {
    // Use iOS 10 APIs on iOS, and use macOS 10.12 APIs on macOS
} else {
    // Fall back to earlier iOS and macOS APIs
}
//The last argument, *, is required and specifies that on any other platform, the body of the if executes on the minimum deployment target specified by your target.


#if DEBUG
let a = 2
#else
let a = 3
#endif




