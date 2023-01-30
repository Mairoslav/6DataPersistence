//: [Previous](@previous)

import Foundation

// MARK: 10. Creating and Saving Managed Objects
// Quiz Question: You have an 'NSManagedObject' subclass named 'Animal', and an 'NSManagedObjectContext' in a local variable called 'context'. Which of the following set of steps will create a new managed object and save it in the persistent store? (Pick the one that is simplest, while including all necessary steps).

// a) let animal = Animal(); try? context.save(animal)
// b) let animal = Animal(context: context)
// c) let animal = Animal(context: context); try? context.save()
// d) let animal = Animal(context: context); try? animal.save()

// c) is correct. Yes, Managed objects always need a context to manage their saves, loads, and other changes.

//: [Next](@next)
