//: [Previous](@previous)

import Foundation

// MARK: 14. NSPredicate

 // MARK: Predicate Format Strings

 // MARK: 1. Simple comparisons
 // The basic form of a predicate is:
 
    // NSPredicate(format: "attribute = %@", someValue)
 
 // This is expressing an equality condition between an attribute of an object attribute =, and some value someValue, which will be substituted in place of the %@. For example we could filter an array of NSStrings by conditioning on their length attribute:
 
    let names: [NSString] = [ "Wendy", "Behi", "Josh" ]
    let predicate = NSPredicate(format: "length == %d", 4) // For testing equality, you can use = (like SQL) or == (like Swift) interchangeably.
    let shortNames = (names as NSArray).filtered(using: predicate) // "Behi", "Josh"
 
 // You can also compare values using >, >=, < or <=:
    
    let runs: [NSString] = [ "1", "77", "3", "555"]
    // let predicateForRuns = NSPredicate(format: "distance > 500")
    let predicateForRuns = NSPredicate(format: "distance > 500")
    let runsOver500 = (runs as NSArray).filtered(using: predicateForRuns)
 
 // This example looks for an attribute named distance on the items being filtered, and narrows the scope to those items where it's strictly greater than 500.

 // You can express inequality using <> or !=:

    NSPredicate(format: "name != %@", "notMyName")
 
 // You can even pass the attribute name or key path into the string as a variable, using %K:

    // NSPredicate(format: "%K = %@", someAttributeName, someValue)

//: [Next](@next)
