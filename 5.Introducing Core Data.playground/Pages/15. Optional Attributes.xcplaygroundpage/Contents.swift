//: [Previous](@previous)

import Foundation

// MARK: 15. Optional Attributes
// MARK: Quiz Question - If an attribute is marked as non-optional, then it...
// a) must always have a value (cannot be nil)
// b) is not saved to disk when a model object instance is saved
// c) must be stored in an optional in its model class
// d) must have a value (cannot be nil) when a model object instance is saved

// my answer: d)
// Udacity: correct it is d). The difference between Swift optionals and Core Data optional attributes is subtle. Swift optionals can be nil during runtime, and Core Data optional attributes can be nil at save time.

//: [Next](@next)
