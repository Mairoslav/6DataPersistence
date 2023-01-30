//: [Previous](@previous)

// MARK: 8. Beware of UIKit and Core Data!

// 00:00 when the framework can run it the background it is said to be thread safe. However there are several frameworks that are not thread safe and can only run in the main queue. There are two notable cases in the apple stack. These are A) UIKit and B) CoreData.

// A) You cannot run anything from UIKit in the background, or app will crash intermittently. Thats a beauty of concurrency bugs. Sometimes they show up, sometimes they don't. The bottom line is never use anything who's name ends with view in the background.

// B) CoreData is bit more complicated and we will deal with it in more detail later. THe thing to remember here is that NS Manage Object COntext can only be used in the same queue it was created. Therefore if you created the context in the main queue, you may only use it in the main queue. However if you crate context in the background queue you can only use it in the background. My recommendation is to wait until we feel really confident with core data and GCD before you try to mix them together. 

//: [Next](@next)
