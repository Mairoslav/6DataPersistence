//: [Previous](@previous)

import Foundation

// MARK: 9. Tracking Changes
// 00:00 NotebookListViewController.swift is correctly using the fetchedResultsController to display data when the view loads. But the table is not yet updating when the data changes, for example, after the user adds a new notebook. Now, we know that fetchedResultsControllers can automaticaly track dataq model changes. So why isn't it working? Well, to take advantage of this, we need to implement the fetchedResultsControllers' delegate methods.

// 00:31 We've alrady set up the delegate relationship as can see in line 'fetchedResultsController.delegate = self', and for that, we set up the class to conform to the NSFetchedResultsController delegate protocol. Let's move that conformance to an extension to keep this class organized. So we move 'NSFetchedResultsControllerDelegate' from place after the class declaration to extension down in file ...move there... and continue there with comments ... 



//: [Next](@next)
