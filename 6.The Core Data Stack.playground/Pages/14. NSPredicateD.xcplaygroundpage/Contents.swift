//: [Previous](@previous)

import Foundation

//: [Previous](@previous)

import Foundation

// MARK: 14. NSPredicate

// MARK: Creating predicates directly
// You can use format strings to express complicated logical conditions. However, it's also possible to construct predicates programmatically without format strings.

// This is particularly useful when you're building compound predicates. It’s possible to include compound statements in a format string using || or && – but it can become unwieldy to build a string this way if you have multiple parts that need to be conditionally included. Instead, using an NSCompoundPredicate rather than a format string can be simpler. You can even combine the two approaches, by creating subpredicates with format strings and combining them programmatically:

   // Two subpredicates created using format strings
   let agePredicate = NSPredicate(format: "age > 45")
   let retiredPredicate = NSPredicate(format: "retired = true")

   // A compound predicate created directly
   let subpredicates: [NSPredicate]
   let retireesOnly: Bool = false
   if retireesOnly {
       subpredicates = [ agePredicate, retiredPredicate ]
   } else {
       subpredicates = [ agePredicate ]
   }

   let compoundPredicate = NSCompoundPredicate(andPredicateWithSubpredicates: subpredicates)

// In summary, predicates are super helpful for filtering data in fetch requests and beyond. Take a look at the resources below, and then meet back here to get some practice with predicates!

/*
Additional resources:
https://developer.apple.com/documentation/foundation/nspredicate
https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/Predicates/AdditionalChapters/Introduction.html#//apple_ref/doc/uid/TP40001798-SW1
https://nshipster.com/nspredicate/
https://academy.realm.io/posts/nspredicate-cheatsheet/
https://nspredicate.xyz // suggested by Spiros from Udacity 
*/

//: [Next](@next)
