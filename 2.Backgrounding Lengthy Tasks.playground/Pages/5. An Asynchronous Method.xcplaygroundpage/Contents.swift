//: [Previous](@previous)

// MARK: 5. An Asynchronous Method
// 00:00 could you whrite a method that downloads in the background and then returns the image once its done? Try to write one, I'll wait.

// It's impossible, let's see why:
// MARK: Synchronous vs Asynchronous
// when you call a function and wait for it to return you are making an assumption you probably never paid attention to, you assume the function knows where to return. This is fine in serial .sync code. where the calling code will be blocked until the function returns.

// 00:41 In .async code however, the calling code may continue, doing something else, therefore we need to provide the function with an information on what it needs to do once it is finished. In Swift that information can be passed in a closure, a completion closure.

// let's check next page for 6. Completion Closure

//: [Next](@next)
