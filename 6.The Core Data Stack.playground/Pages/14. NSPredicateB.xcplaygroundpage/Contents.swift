//: [Previous](@previous)

import Foundation

//: [Previous](@previous)

import Foundation

// MARK: 14. NSPredicate

 // MARK: 2. String comparisons
 // There are a number of built-in comparison operators for working with strings.

 // You can compare string values including wildcard characters (?, *) using LIKE:

    // A Person!
    class Person: NSObject {
        @objc var name: String

        init(_ name: String) {
            self.name = name
            super.init()
        }
    }

    let people = [ Person("Tray"), Person("May"), Person("Teresa") ]

    let predicate1 = NSPredicate(format: "name LIKE %@", "?ay") // wildcard query for a word with “a” and “y” as the 2nd and 3rd letters
    let predicate2 = NSPredicate(format: "name LIKE %@", "T*") // wildcard query for names starting with “T”

    let result1 = (people as NSArray).filtered(using: predicate1) // May
    let result2 = (people as NSArray).filtered(using: predicate2) // Tray, Teresa
 
 // The wildcard ? will match any one character. Using * will match any number of characters. (Including zero!)

 // You can also compare strings with the BEGINSWITH, ENDSWITH and CONTAINS operators.

 // Appending [c] makes operators (e.g. LIKE) case insensitive:

    NSPredicate(format: "name LIKE[c] %@", "t*") // matches: Tray, Teresa
 
 // And you can append [d] to make the comparison ignore any diacritics (for example, accents on characters).
 

//: [Next](@next)



