//: [Previous](@previous) / [Next](@next)
//: # Colour
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 ## Hue-Saturation-Brightness (HSB)
 For details on how this works, [review the following PDF file](http://russellgordon.ca/lcs/HSB_Color_Model_Summary_Swift.pdf).
 
 To summarize:
 * hue: the "shade" of the colour
 * saturation: colour intensity
 * brightness: colour brightness
 
 This is best explored interactively by [downloading and running this program](http://russellgordon.ca/lcs/c3d.zip).
 ### Analogous colour
 Analogous colours are nearby each other on the colour wheel.
 
 The HSB colour model makes it very easy to program colour changes.
 
 For example:
 */
// Create canvas
let canvas = Canvas(width: 360, height: 300)

// Line width
canvas.defaultLineWidth = 5

// Draw lines next to each other with analogous colours
// NOTE: Try changing the "from" and "to" arguments on the line below
for i in stride(from: 180, through: 240, by: 10) {
    
    // Set line colour
    canvas.lineColor = Color(hue: Float(i), saturation: 80, brightness: 90, alpha: 100)
    
    // Draw the line
    canvas.drawLine(from: Point(x: i, y: 0), to: Point(x: i, y: canvas.height))
    
}

/*:
 ### Basic colours
 
 The Color class provided in this playground (and in the exam environment) also makes it possible to use basic colours with a "shortcut".
 
 For example:
 */
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true

// Set the fill color using a predefined color – a shortcut – on the Color class
canvas.fillColor = Color.red
canvas.drawEllipse(at: Point(x: 25, y: canvas.height / 2), width: 50, height: 50)

// Draw a blue circle
canvas.fillColor = Color.blue
canvas.drawEllipse(at: Point(x: 75, y: canvas.height / 2), width: 50, height: 50)

// Draw a green circle
canvas.fillColor = Color.green
canvas.drawEllipse(at: Point(x: 125, y: canvas.height / 2), width: 50, height: 50)

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas
