import Cocoa
import Foundation

// return a random hair colour
public func getRandomHairColor() -> String {
    
    var hairColors : [String] = []
    hairColors.append("Red")
    hairColors.append("Purple")
    hairColors.append("Blonde")
    hairColors.append("Brown")
    hairColors.append("Black")
    
    let selection = Int.random(in: 0...hairColors.count - 1)
    
    return hairColors[selection]
    
}
