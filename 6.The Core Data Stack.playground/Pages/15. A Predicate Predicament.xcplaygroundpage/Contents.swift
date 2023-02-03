//: [Previous](@previous)

import Foundation

// MARK: 15. A Predicate Predicament
/*
 Quiz Question:
 Let’s say that we have a class called Person, with a name property of type String.

 We also have an array of Person objects, with the names “Sara”, “Sam”, “Said” and “Holly” respectively.

 Which of the following predicates would match exactly three Person objects?

 (Choose the best answer.)
 
 a) NO, You can’t use wildcards with equality.
 b) NO, ? Only matches one character
 c) YES, this predicate works because it uses LIKE to perform string matching, [c] to perform a case insensitive search, and * as a multi-character wildcard.
 d) NO, IN is used for locating elements in a collection, not for comparing strings.
 
 */

NSPredicate(format: "name = %@", "sa*")
NSPredicate(format: "name LIKE %@", "Sa?")
NSPredicate(format: "name LIKE[c] %@", "sa*") // c) YES, this predicate works because it uses LIKE to perform string matching, [c] to perform a case insensitive search, and * as a multi-character wildcard.
NSPredicate(format: "name IN %@", "Sa?")

//: [Next](@next)
