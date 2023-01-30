//: [Previous](@previous)

import Foundation

// MARK: 14. Attribute Types
/*
 // MARK: Attribute Types
 Core Data includes a number of built-in attribute types for numbers, booleans, strings and other types of data.

 Many of these are stored internally as NSNumbers due to the Objective-C heritage of Core Data, but the generated Swift files for your entities will have properties with Swift Standard Library or Foundation types.

 1. 'Integer 16, Integer 32, and Integer 64' types generate Int16, Int32, and Int64 properties respectively.
 2. The 'Decimal' attribute type will create a corresponding NSDecimalNumber property.
 3. 'Float' and 'Double' will map to the Float and Double Swift equivalents.
 4. 'String' also maps to its Swift counterpart. Bool will as well, although it is stored as number internally.
 5. 'Date' becomes an NSDate (rather than the more modern Date type, unfortunately)
 6. The 'UUID' attribute type will create a corresponding UUID-typed property
 7. The 'URI' attribute type creates a corresponding URL-typed property
 8. The 'Binary' attribute type allows you to store arbitrary data, and includes an option to store larger files separately on disk.
 9. 'Transformable' is handy for storing classes that conform to NSCoding – it automatically converts such classes to and from a binary representation when storing them. Since many common Foundation classes conform to NSCoding, this allows you to easily store many Foundation types directly in Core Data.
 
 We’ll discuss 'binary' and 'transformable' in depth later when we add rich formatting to Mooskine.
 */

//: [Next](@next)
