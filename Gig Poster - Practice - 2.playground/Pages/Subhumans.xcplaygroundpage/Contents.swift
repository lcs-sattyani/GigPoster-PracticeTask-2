//: # Gig Poster - Practice Task 2
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall. 
 
 Your goal is to precisely reproduce this image: 
 
 ![subhumans-no-grid](subhumans-no-grid.png "Subhumans")
 ![subhumans-with-grid](subhumans-with-grid.png "Subhumans")

 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 * arrays (a list of related objects or values)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let yellow = Color(hue: 45, saturation: 99, brightness: 100, alpha: 100)
let purple = Color(hue: 304, saturation: 40, brightness: 64, alpha: 100)
let brown = Color(hue: 38, saturation: 99, brightness: 38, alpha: 100)
let lightRed = Color(hue: 10, saturation: 80, brightness: 80, alpha: 75)


canvas.fillColor = yellow
canvas.drawRectangle(at: Point(x:0, y:0), width: 400, height: 600)
// Begin your solution here...

//Make a list of points

//made the polygons in the bottom row
for x in stride(from: -135, through: 345, by: 150 + 10) {
    x
    // Set the color
    if x == -135 || x == 185 {
         canvas.borderColor = brown
        canvas.fillColor = brown
    } else {
         canvas.borderColor = purple
        canvas.fillColor = purple
    }
    //make points for the polygon
    var polygonVertices: [Point] = []
    polygonVertices.append(Point(x: x, y: 50))
    polygonVertices.append(Point(x: x + 150, y: 50))
    polygonVertices.append(Point(x: x + 200, y: 150))
    polygonVertices.append(Point(x: x + 50, y: 150))
    
    canvas.drawCustomShape(with: polygonVertices)

}

for x in stride(from: -135, through: 345, by: 150 + 10) {
    x
    // Set the color
    if x == -135 || x == 185 {
        canvas.borderColor = brown
        canvas.fillColor = brown
    } else {
        canvas.borderColor = purple
        canvas.fillColor = purple
    }
    
    var polygonVertices: [Point] = []
    polygonVertices.append(Point(x: x, y: 225))
    polygonVertices.append(Point(x: x + 150, y: 225))
    polygonVertices.append(Point(x: x + 200, y: 325))
    polygonVertices.append(Point(x: x + 50, y: 325))
    
    canvas.drawCustomShape(with: polygonVertices)

}

for x in stride(from: -145, through: 345, by: 150 + 10){
var polygonVertices: [Point] = []
    canvas.borderColor = lightRed
canvas.fillColor = lightRed
polygonVertices.append(Point(x: x, y: 140))
polygonVertices.append(Point(x: x + 150, y: 140))
polygonVertices.append(Point(x: x + 200, y: 240))
polygonVertices.append(Point(x: x + 50, y: 240))

canvas.drawCustomShape(with: polygonVertices)

}

canvas.drawText(message: "subhumans", at: Point(x: 15, y:325), size: 50)


// Horizontal lines
//for y in stride(from: 0, through: 600, by: 50) {
    
    
    //canvas.drawLine(from: Point(x: 0, y: y), to: Point(x: 400, y: y))
    

    
//for x in stride(from: 0, through: 600, by: 50) {
    
    //canvas.drawLine(from: Point(x: x, y: 0), to: Point(x: x, y: 600))
    


/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 Be sure to commit your work multiple times as you make progress on completing this task.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

