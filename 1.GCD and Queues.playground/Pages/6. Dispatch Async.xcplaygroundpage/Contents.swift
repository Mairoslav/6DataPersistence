//: [Previous](@previous)

// MARK: 6. Dispatch Async

import Foundation
import PlaygroundSupport

// we crate a queue of the highest priority possible.
let queue = DispatchQueue.global(qos: .userInteractive)

// then we add a block which prints tic to this queue
queue.async { () -> Void in
    print("tic")
}

// and then we call print tac
print("tac")

// Quiz question: which text will print first? Tac will print first according to quiz solution, however when run, tic is printed out first.
// if understand it correctly then simply they have the same importance because whichever I run first, it is printed as first. Thats because in case I do not define quque it is by default of the highest importance. 
