//: [Previous](@previous)

import Foundation

// MARK: 18. Two-Sided Relationships and Deletion Rules

/*
 MARK: Two-sided Relationships
 You might be wondering why Core Data created a two-sided relationship between the entities, since in our Swift code, we only modeled the relationship in one direction.

 If you’ve worked with databases, you might even be wondering if it would be easier to just include an ID field instead of explicitly creating relationships.

 Core Data uses two-sided relationships.

 Think about what happens when a note or a notebook is deleted.

 When a note is deleted, we don’t want to make any changes to the other notes – and we certainly wouldn’t want to delete the whole notebook.

 But when a notebook is deleted, we’ll want to delete all of its notes.

 If we were using an ID field, there would be a lot of bookkeeping to make sure we deleted all the notes that referenced a deleted notebook.

 Core Data includes functionality to model deletion behavior. Modelling the relationship in both directions lets Core Data traverse the web of entity class instances (also known as the “object graph”) and make sure all affected references are updated. This is called referential integrity.

 Let’s take a look at how this works.

 MARK: Deletion Rules
 For our notes relationship, choosing the 'Cascade' rule will mean that deleting a Notebook will cause all of its referenced notes to be deleted.

 For our notebook relationship in Note, choosing 'Nullify' means that the relationship will simply be removed, but the referenced Notebook remains.

 That’s all that’s required to get the deletion behavior we want, and ensure that references between our objects never become invalid.

 If you’d like to read more about deletion rules, scroll to the Relationship Delete Rules on the Creating Managed Object Relationships page of Apple’s Core Data Programming Guide:
 
 https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/CoreData/HowManagedObjectsarerelated.html#//apple_ref/doc/uid/TP40001857-185436%20//apple_ref/doc/uid/TP40001075-CH17-SW2
 */

//: [Next](@next)
