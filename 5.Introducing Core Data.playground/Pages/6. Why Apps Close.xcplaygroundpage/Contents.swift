//: [Previous](@previous)

import Foundation

// MARK: 6. Why Apps Close
// We know we need to persist the data before the App creashes, but we don't have always advanced notice. There are a few ways it could happen: a) device could run out of the battery, b) or the user could power it down, c) the Operating System (OS) could need to reclaim the memory so it terminates suspended (ongoing in background) apps, d) or the OS could also shut down an app that has bocome unresponsive, e) last but not least, user could manually terminate the app.

// 00:31 Since many of these scenarios could occur with no warning, it's important to save data to disk at reasonable intervals. Now that we know we need to persist data early and often, let's look at our storage options. 



//: [Next](@next)
