func perimeterAreaOfRectangle(length: Double, width: Double) -> (perimeter: Double, area: Double) {

    return (2 * (length + width), length * width)
}

let rectangleDimensions = perimeterAreaOfRectangle(length: 5, width: 10)
