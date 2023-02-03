//: [Previous](@previous)

import Foundation

// MARK: 22. Singletons and Dependency Injection
/*
 We started this lesson by creating a DataController class to hold the Core Data stack setup. We then created a ‘dataController’ instance in the AppDelegate, and since then, we’ve been passing this single instance around:

 from application(_:didFinishLaunchingWithOptions:) to NotebooksListViewController via prepare(for:sender:) to the NotesListViewController via prepare(for:sender:) to the NoteDetailsViewController

 Why are we passing a data controller reference from class to class? It seems like a lot of work, and it feels messy — there’s duplication and we must remember to set the dataController property of the next view controller during each segue.

 // MARK: signleton
 One alternative is to make DataController a singleton - check: https://developer.apple.com/library/archive/documentation/General/Conceptual/DevPedia-CocoaCore/Singleton.html#//apple_ref/doc/uid/TP40008195-CH49. A singleton is a class for which only one single instance exists; anyone who asks for an instance is handed a reference to the same one. Singletons are a common pattern in iOS development, and in Apple’s libraries, as evidenced in UIApplication.shared and NSFileManager.defaultManager. We’re only using one DataController instance in our app, so making DataController a singleton would help us avoid the possibility of creating multiple instances, as well as allow every view controller to just ask for the instance from a central place. However, there are some downsides to this approach: namely, that it involves global state, and can make unit testing trickier.

 // MARK: dependency injection
 Another technique, and the one we’ve chosen to use here, is called dependency injection. The idea behind dependency injection is to fully configure an object by passing it other objects that provide portions of its functionality — “injecting” them as dependencies. Dependency injection is a great pattern to help keep code nicely decoupled and easy to refactor. It is also currently rising in popularity, while singleton is waning.

 There’s a whole world of “design patterns” that exist to help you solve common software design problems, such as the problem of how to share class references between views that we encountered in Mooskine. Understanding the use cases, pros, and cons of design patterns like singleton and dependency injection will help you architect robust and readable apps.

 Let’s return to Mooskine and celebrate our successes in persisting data!
 */

//: [Next](@next)
