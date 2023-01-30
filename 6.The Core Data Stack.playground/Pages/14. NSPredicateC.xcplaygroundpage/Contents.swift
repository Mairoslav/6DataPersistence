//: [Previous](@previous)

import Foundation

//: [Previous](@previous)

import Foundation

// MARK: 14. NSPredicate

 // MARK: 3. Collection relationships
 // You can also express logical relationships related to collections. For example, you can use IN to check if an object's name attribute is included in a collection of names.

    let names = [ "Humphrey", "Celestina", "Ulric" ]
    let predicate = NSPredicate(format: "name IN %@", names)
 
 // And you can use BETWEEN to see if an attribute for an object lies between two bounds (inclusive of the bounds):

    NSPredicate(format: "age BETWEEN {53, 55}") // Matches anything >= 53 and <= 55
 
 // This really only scratches the surface. There are built in aggregating operators (e.g. @avg, @count and @min), operators that flatten arrays of arrays to make them easier to search (e.g. @unionOfArrays), and many other operators.

//: [Next](@next)




