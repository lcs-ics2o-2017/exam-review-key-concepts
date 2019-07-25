//: [Previous](@previous) / [Next](@next)
//: # Readable code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 ## Consider
 What does the following code do?
 
 Try to predict the results before running the program.
 */
let c = Canvas(width: 200, height: 360)
for blah in 1...10 { let t = blah*10
c.drawLine(from: Point(x: t, y: 0), to: Point(x: t, y: 360), lineWidth: blah)
}; for asdf in 1...10 {
let junk = 10-asdf; let a = asdf*(100-90) + 100
c.drawLine(from: Point(x: a, y: 0), to: Point(x: a, y: c.height), lineWidth: junk)
}
//: ## Template code
//: The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = c
