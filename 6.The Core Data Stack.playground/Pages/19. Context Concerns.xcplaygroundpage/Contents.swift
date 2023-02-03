//: [Previous](@previous)

import Foundation

// MARK: 19. Context Concerns
// Quiz Question: An NSManagedObjectContext... (Choose all that apply.)

// a) Set up the Core Data stack.
// No, an NSPersistentContainer sets up the rest of the Core Data stack, including providing a viewContext that we’ll use as the main context.

// b) Describes search criteria used to retrive data from a persistent store.
// No, an NSFetchedRequest selects data from the store.

// c) Can be faulted to conserve memory.
// No, Managed objects’ attributes and relationships can be faulted; contexts cannot.

// d) Defines the entities that form your data model
// No, the NSManagedObjectModel describes entities.

// e) Represents a scratch pad that you use to fetch, create, and save managed objects.
// Yes, an NSManagedObjectContext represents a single object space. You can have one or more, as we’ll see soon.

// Hint: when we create a managed object, we now use the initializer that associates it with a context. From there the context helps manage and persist any changes to it.

// So e) is correct answer.

//: [Next](@next)
