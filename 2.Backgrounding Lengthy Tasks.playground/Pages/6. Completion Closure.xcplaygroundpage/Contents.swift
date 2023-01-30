//: [Previous](@previous)

// MARK: 6. Completion Closure
// 00:10 writing a method that takes a closure as a parameter has a tricky syntax, but do not worry, we have a geat tool called http://goshdarnclosuresyntax.com Let's take a look at it

// 00:25 this is http://goshdarnclosuresyntax.com and it is a list of all the different ways we can declare a closure. The one we are now interested in is 5th one:

// Declaring a Closure in Swift as an argument to a function call. So we want a function that takes a Closure as one of its parameters or arguments.

// func({(parameterTypes) -> (returnType) in statements})

// 00:51 Ther is another web site of this version with far more memorable name, but ... have to find it

// https://www.donnywals.com/closures-in-swift-explained/ ...

// 01:00 Now we are going to write a method called "withBigImage" that takes a completioin handler as a parameter.
// What will this method do? It is going to:
    // download the image in background
    // once its done, we'll run the *completion handler

// completion function or closure or handler, hoever you want to call it, is what is should do with this image once it has it downloaded. So let's get started.

// see Xcode project "FatImages" 

//: [Next](@next)
