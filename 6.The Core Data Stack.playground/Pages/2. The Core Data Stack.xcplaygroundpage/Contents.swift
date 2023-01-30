//: [Previous](@previous)

import Foundation

// MARK: 2. The Core Data Stack
// 00:00 Core Data provides a set of classes that work together to manage you app data layer. Together these classes are known as Core Data Stack. The four parts of the Stack are:

    // 1. Managed Object Context/s
    // 2. Managed Object Model
    // 3. Persistent Store Coordinator
    // 4. Persistent Container

// 00:26 Let's look at each of these in a turn.

// MARK: 1. Managed Object Context/s OR NSManagedObjectContext
// 00:30 your app will have one or more Managed Object Context/s, which are instances of NSManagedObject Context. This is where we'll work with notebooks and notes. These are managed objects, that is subclass NSManagedObject. The context is a sort of scratch pad where we can create and manipulate them temporarily.
// 00:55 When we are done, we can either save the changes to the permanent store, or roll them back. It is important to note that the changes that we make in the context, aren't automatically saved to disk and don't automatically update the UI.
// 01:11 Also note that working with Managed Objects, is different from working with regular objects. You never instantiate a Managed Object directly like: "let notebook = Notebook()", instead you always associate or register it with a context like: "Notebook(context:)", so that the context can manage any changes and communicate them to the store on request.
// 01:31 Context and their Managed Objects, are the part that you'll interact the most.

// MARK: 2. Managed Object Model OR NSManagedObjectModel
// 01:38 Next up is the Managed Object Model or NSManagedObjectModel. NSManagedObjectModel describes your data structure and relationships. You'll usually define it using the data model editor in Xcode, just as we did in the last lesson. That model gets saved as an .xcdatamodeld file in your project and compile down to an .momd file that loads into your app at runtime.

// MARK: 3. Persistent Store Coordinator OR NSPersistentStoreCoordinator
// 02:08 Other parts of the stack will ask the model for information they need to do their work, which brings us to the 3rd part of the stack - the Persistent Store Coordinator or NSPersistentStoreCoordinator. The Coordinator connects to one or more persistent stores and and uses the "2. Managed Object Model (see step 2)" to mediate between those Stores and the "1. Managed Object Context/s (see step 1)".
//02:32 That is, it translates "3. Stored" records via "2. Managed Object Model" into "1. Managed Object/s", and in back loop "1. Managed Object/s" via "2. Managed Object Model" into "3. Stored" records.
// 02:40 The '3. coordinator' speaks the language of the underlaying store, such as SQL*, so that we do not have to.

/// *Structured Query Language (SQL) is a standardized programming language that is used to manage relational databases and perform various operations on the data in them.

// MARK: 4. Persistent Container OR NSPersistentContainer
// 02:45 Last but not least, we have the Persistent Container or NSPersistentContainer. It does two things:
    // 1. it helps us to set up the rest of the stack (loops go from 4 to each step) and,
    // 2. and provides useful variables and methods for working with contexts (i.e. instantiated Managed Objects).
// 03:05 It was added in iOS10 to reduce the amounth of boilerplate required to set up the stack.

// And that's the Core Data Stack. These 4 classes worked together to manage and persist the data layer. So let's set them up in Mooskine app. 

//: [Next](@next)
