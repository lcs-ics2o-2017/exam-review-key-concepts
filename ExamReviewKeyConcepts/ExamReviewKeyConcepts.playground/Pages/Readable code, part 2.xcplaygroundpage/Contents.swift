//: [Previous](@previous) / [Next](@next)
//: # Readable code, part 2
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 ## Consider
 Now read the following code.
 
 Try to predict the results before running the program.
 */
// Create the canvas
let canvas = Canvas(width: 200, height: 360)

// Draw lines with steadily increasing thickness
for position in stride(from: 0, through: 100, by: 10) {
    
    // What is the current value of position?
    position
    
    // Set thickness of lines
    let thickness = position / 10
    
    // Draw each line
    canvas.drawLine(from: Point(x: position, y: 0), to: Point(x: position, y: 360), lineWidth: thickness)
}

// Draw lines with steadily decreasing thickness
for position in stride(from: 110, through: 200, by: 10) {
    
    // What is the current value of position?
    position

    // Set thickness of lines
    let thickness = (200 - position) / 10
    
    // Draw each line
    canvas.drawLine(from: Point(x: position, y: 0), to: Point(x: position, y: 360), lineWidth: thickness)
}
/*:
 ## Reflect
 When you are under pressure during the exam, what code would you prefer to read?
 
 The code on this page?
 
 Or the code on the [prior page](@previous)?
 
 ## Notes
 Writing readable code is not just for others.
 
 Writing comments helps you focus on the immediate goal you are trying to achieve.
 
 When you get a *logical error* and the output from your program is not doing what you think it should be doing, *review your comments*.
 
 By reviewing what you intended to do (as described by your comments) you can often spot solutions to problems you are trying to solve.
 
 Readable code:
 * is indented correctly (remember the Command-A, Control-I shortcut)
 * has meaningful variable names
 * includes comments that describe intent
 
 The readability of your code is a factor in determining your grade on the final exam.
## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas
