//: [Previous](@previous)

import Foundation

// MARK: 11. Making a Fetch Request
// Quiz Question: Which of the following are true of an NSFetchRequest? (Select all that apply.)

// a) A fetch request defines criteria for selecting data to load from the persistent store
// b) A fetch request must be configured with an array of entity types to fetch
// c) A fetch request can be configured with an array of NSSortDescriptor to return objects in a specific order
// d) A fetch request can be configured with a predicate to filter the results it returns

// a), c), d) are correct. Yes, thanks for completing that. An 'NSFetchRequest' specifies the criteria needed to select and optionally sort a group of managed objects held in a persistent store.

// when not correct were selected:
// A fetch request is configured with an entity and optionally other criteria
// A fetch request can only return entities of a single type.
// Sort descriptors are optional and can be used to order the results (for example, smallest to largest or oldest to newest).
// A predicate is optional and can be used to filter the results (for example, fetching only those notes that are related to a certain notebook).

//: [Next](@next)
