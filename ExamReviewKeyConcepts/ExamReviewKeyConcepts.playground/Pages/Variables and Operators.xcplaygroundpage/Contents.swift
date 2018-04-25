//: [Previous](@previous) / [Next](@next)
//: # Variables and Operators
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
//: NOTE: Parts of this page are adapted from [The Swift Programming Language Guide – Basic Operators](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/BasicOperators.html).
/*:
 ## Constants vs. Variables
 Consider the following statements.
 Is *a* the constant, or the variable?
 What is *b*?
 */
var a = 10
let b = 50
//: If you are not sure, trying uncommenting the code below. What happens?
// a = 20
// b = 15
/*:
 ## Assignment statements
 The *assignment operator* initializes or updates the value of a with b, in this case:
 */
a = b
/*:
 ## Arithmetic operators
 Swift supports the four standard *arithmetic operators* for all number types:
 * Addition (+)
 * Subtraction (-)
 * Multiplication (*)
 * Division (/)
 */
1 + 8           // equals 9
5 - 2           // equals 3
2 * 4           // equals 8
10.0 / 5.0      // equals 2.0
/*:
 ## Remainder operator
 The remainder operator (a % b) works out how many multiples of *b* will fit inside *a* and returns the value that is left over (known as the *remainder*).
 
 Here's how the remainder operator works. To calculate 9 % 4, you first work out how many 4's will fit in 9:
 
 ![remainder](remainder.png "Remainder")
 
 Two 4's fit inside 9, so the remainder is 1 (shown in orange).
 
 In Swift, this is written as:
 */
9 % 4           // equals 1
/*:
 The remainder operator can be very useful for alternating things like color.
 
 For example...
 */
// Create the canvas
let canvas = Canvas(width: 400, height: 300)

// No borders
canvas.drawShapesWithBorders = false

// Draw circles with alternating colours
for counter in 1...7 {
    
    // Determine x position
    let x = counter * 50
    
    // Set the fill colour
    let remainder = x % 100
    if remainder == 0 {   // When the x position is a multiple of 100
        canvas.fillColor = Color.purple
    } else {
        canvas.fillColor = Color.green
    }
    
    // Draw the circle
    canvas.drawEllipse(centreX: x, centreY: canvas.height / 2, width: 50, height: 50)
    
}
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
