//: [Previous](@previous)

import Foundation

// MARK: 7. Sync vs. Async
// 00:00 unlike DispatchQueue.async, DispatchQueue.sync will not return immediatelly and will not run the closure sometime in near feature.
// Actually DispatchQueue.sync will wait until the clusure exits before exising itself, take a closer look at the function withBigImage that we wrote previously to download a heavy image.

// 00:19 QUIZ QUESTION:Would it be OK to replace the last call to DispatchQueue.async by DispatchQueue.sync? A or B is correct?

    // A) Certainly yes it would be OK, after all once the handler is finished there's nothing else left to do. Therefore it doesn't matter if you call DispatchQueue.async or DispatchQueue.sync

    // B) Absolutely not! What if the completion handler/closure does someting stupid and blocks?

// B) is correct, so we keep .async 

//: [Next](@next)
