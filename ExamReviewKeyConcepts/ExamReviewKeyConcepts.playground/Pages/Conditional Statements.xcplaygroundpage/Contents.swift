//: [Previous](@previous) / [Next](@next)
//: # Conditional Statements
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
//: NOTE: Parts of this page are adapted from [The Swift Programming Language Guide - Control Flow](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ControlFlow.html#//apple_ref/doc/uid/TP40014097-CH9-ID120).
/*:
 ## If
 ### Simplest form
 In it's simplest form, an *if* statement tests a single condition.
 
 When that condition is *true*, a block of statement(s) is run.
 
 For example:
 */
let hairColor = getRandomHairColor()
if hairColor == "Purple" {
    print("Ravishing! I love it!")
} else {
    print("Well, it's still very nice.")
}
/*:
 ### Comparison operators
 
 A variety of comparison operators can be used:
 
 * Equal to (a == b)
 * Not equal to (a != b)
 * Greater than (a > b)
 * Less than (a < b)
 * Greater than or equal to (a >= b)
 * Less than or equal to (a <= b)
 
 ### Alternative statement
 
 An *if* statement can provide a "catch all" option, known as an *else clause*, for situations when the *if* condition is false.
 
 For example:
 */

// Generate a random number between 1 and 10
var number = Int.random(in: 1...10)

// State whether the number is "high"
if number > 5 {
    print("high")
} else {
    print("low")
}

/*:
 ### Checking multiple clauses
 You can chain multiple *if* statements together if needed:
 */
// Generate a random number between 10 and 40
var anotherNumber = Int.random(in: 10...40)
if anotherNumber < 20 {
    print("low")
} else if anotherNumber < 30 {
    print("medium")
} else {
    print("high")
}
//: **NOTE**: Run the playground several times and study the results from this *if* structure. 
//: What does it imply about the order the statements are evaluated in?
/*:
 ### Boolean operators
 Boolean operators are used to test multiple conditions.
 
 The *and* operator returns true when both conditions are true:
 */
true  && true      // true
true  && false     // false
false && true      // false
false && false     // false
//: The *or* operator returns true when either condition is true:
true  || true      // true
true  || false     // true
false || true      // true
false || false     // false

//: Here's another example:
let speaks = "French"
let disposition = "Cheerful"
if speaks == "French" && disposition == "Cheerful" {
    print("Must be Mr. Doucet!")
} else {
    print("Not sure who that might be")
}

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */

// Create canvas
let canvas = Canvas(width: 200, height: 200)

PlaygroundPage.current.liveView = canvas
