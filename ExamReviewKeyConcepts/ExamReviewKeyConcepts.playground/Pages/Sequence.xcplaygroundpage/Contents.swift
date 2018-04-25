//: [Previous](@previous) / [Next](@next)
//: # Sequence
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 ## Consider
 Read the code below.
 Try to predict the results before running the program.
 */
// Create the canvas
let canvas = Canvas(width: 400, height: 300)

// No borders on shapes
canvas.drawShapesWithBorders = false

// Draw circles
canvas.fillColor = Color.blue
canvas.drawEllipse(centreX: 175, centreY: canvas.height / 2, width: 100, height: 100)
canvas.fillColor = Color.red
canvas.drawEllipse(centreX: 225, centreY: canvas.height / 2, width: 100, height: 100)

/*:
 ## Notes
 The red circle overlaps the blue circle because the red circle is drawn after the blue circle. This is because the statement that draws the red circle (line 21) occurs after the statement that draws the blue circle (line 19).
 
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
