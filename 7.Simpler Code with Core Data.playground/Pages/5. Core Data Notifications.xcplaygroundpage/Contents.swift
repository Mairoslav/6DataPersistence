//: [Previous](@previous)

import Foundation

// MARK: 5. Core Data Notifications
// Quiz Question: When does Core Data send notifications? (Select all that apply.)

// a) When a 'NSManagedObjectContext' is saved
// b) When an 'NSManagedObject' changes, before the context is saved
// c) When an entity changes

/*
 a) and b) are correct. You can observe changes in Core Data using notifications with or without a fetched results controller.
 */

/*
 In case c) is selected. Try again. Saving a managed object triggers a notification. Updating a managed object triggers a notification. Entities are the templates for NSManagedObjects, and can only change during development, not at runtime. We’ll learn how to handle entity changes and data model migrations a bit later on.
 */

//: [Next](@next)
