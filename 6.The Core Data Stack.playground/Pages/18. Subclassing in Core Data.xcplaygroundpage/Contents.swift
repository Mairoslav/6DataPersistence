//: [Previous](@previous)

import Foundation

// MARK: 18. Subclassing in Core Data
// Quiz Question: Which of the following Core Data classes are you most likely to work with subclasses of?

// a) NSManagedObject. Yes, our model classes (like Note and Notebook) subclass NSManagedObject, and we use these classes throughout our code.
// b) NSManagedObjectContextl. No, while you may work with multiple instances, NSManagedObjectContext is not meant to be subclassed.
// c) NSPersistentStore. No, it _is_ possible to define your own persistent store types, but this is not a common case. You would not subclass NSPersistentStore directly but rather NSAtomicStore or NSIncrementalStore.
// d) NSPersistentStoreCoordinator. No, while it’s possible to create your own persistent store coordinator subclass, this is not common.

// so Yes, a) is correct. Yes, our model classes (like Note and Notebook) subclass NSManagedObject, and we use these classes throughout our code. 

//: [Next](@next)
