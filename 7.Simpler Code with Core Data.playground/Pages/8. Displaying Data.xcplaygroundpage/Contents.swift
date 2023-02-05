//: [Previous](@previous)

import Foundation

// MARK: 8. Displaying Data
// 00:00 We have an instance of fetchedResultsController, and we understand how it's structured (see 'var fetchedResultsController: NSFetchedResultsController<Notebook>' in NotebooksListViewController.swift). Now let's update the table view so that we can actuallyh see the data. The key change is that we're going to get rid of the Notebooks array (comment out 'var notebooks: [Notebook] = []'). Previously we had to populate a maintenance array manually, but now the fetchedResultsController will keep track of Notebooks for us. Any code that used the Notebooks array before, will now use the fetchedResultsController instead. So let's delete the Notebooks property (comment out 'var notebooks: [Notebook] = []'). And it's gone.

// 00:37 (continuation of 8. Displaying Data) We won't have to manually reload Notebooks anymore either. So let's delete the call to reloadNotebooks in viewDidLoad. ...continue in comments of 'MooskineIII.xcodeproj'

//: [Next](@next)
