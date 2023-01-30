//: [Previous](@previous)

import Foundation
import PlaygroundSupport

// MARK: 9. Will it Crash: The Toughest Bugs Ever
// tell if it will crash or no or maybe...probably yes
// maybe...probably yes is correct, why???
// whe I run it did crrash with error: see in console.

// create a queue
let downloadQueue = DispatchQueue(label: "download")

// add a closure that encapsulates the blocking operation
// run it asynchronously: some time in the near future
downloadQueue.async { () -> Void in
    // Obtain the Data with the image
    let imgData = try? Data(contentsOf: url!)

    // Turn it into a UIImage
    let image = UIImage(data: imgData!)

    // Display it
    photoView.image = image
}

//: [Next](@next)
