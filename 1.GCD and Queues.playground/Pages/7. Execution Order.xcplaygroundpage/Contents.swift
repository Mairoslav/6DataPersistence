//: [Previous](@previous)

import Foundation

// MARK: 7. Execution Order
// in which order would the print statement run:
// a) 1, 2, 3, end
// b) end, 1, 2, 3
// c) 1, end, 2, 3

// print order is 1, end, 2, 3 because async means continue the execution (do not block it) of current task, while new task will execute asyncronously.
// 1 is printed as 1st because is the 1st in order, and while it is being printed next queue is initiated asyncrronously outside of async one, thats why end is printed as the 2nd. While 2 and 3 must wait till 1 does finish its print. 
//

// in case of uncommented prints: a, 1, b, 2, c, 3, end

let q1 = DispatchQueue(label: "queue1")
let q2 = DispatchQueue(label: "queue2")
let q3 = DispatchQueue(label: "queue3")

// print("a")

q1.async { () -> Void in
    print(1)
}

// print("b")

q2.async { () -> Void in
    print(2)
}

// print("c")

q3.async { () -> Void in
    print(3)
}

print("end")



//: [Next](@next)
