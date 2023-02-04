//: [Previous](@previous)

import Foundation

// MARK: 4. NSFetchedResultsController
// 00:00 So, what is a NSFetchedResultsController? NSFetchedResultsController sits between your Views and your Model. It listens for changes to the data model, and when change happens, it triggers logic to update your views. This helps to decouple your View and Model layers. To understand how it works, we need to take a closer look at the Model.
// 00:28 We've seen that in core data, every Managed Object instance is registered to a context. Whenever a Managed Object changes, or the context is saved, core data automatically generates notifications. For example, when a Managed Object changes, an NSManagedObjectContextObjectDidChanbge notification is sent. These notifications include detailed information about the change, like which specific objects were inserted, deleted, and modified.
// 01:02 Now, you could user Nofification Center to subscribe to core data notifications, but the most convenient way is usually to use a Fetched Results Controller. That's because, in addition to automatically observing notifications from your Model layer, Fetch Results Controllers are designed to work easily with Table Views and Collection Views, making the an elegant and flexible way to update the View, based on the data layer.
// 01:29 Let's use the Fetch Results Controller to fix the messy coupling in 'func addNotebook'. 

//: [Next](@next)
