//: [Previous](@previous)

import Foundation

// MARK: 3. Complexity in Mooskine
// 00:00 I mentioned that we've inadvertently/without intention introduced some complexity in Mooskine. There's some code that can be simplified. Let's take a look at the first few controller the user sees, 'NotebookListViewController.swift'

// 00:16 In the UI, when the user taps on the Add Notebook button, an alert is displayed. If th user provides a name and taps save, then addNotebook is called. Let's jump to the 'addNotebook' medhod in 'NotebookListViewController.swift' (line 86 in ''MooskineIII.xcodeproj'). Reading through this method, there are actually several different things that it's doing (see comments in 'MooskineIII.xcodeproj'):
    // 00:36 It creates a new notebook
    // 00:40 configures it,
    // 00:41 and saves the context to persist it.
    // 00:48 It adds the new notebook to the ViewControllers NotebooksArray.
    // 00:51 It tells tableView to add a row and animate the insertion.
    // 00:59 And finally, it updates the state of the edit button since that button is disabled when the list is empty.

// 01:08 This method is a big blob of functionality all tangled up together. The root of the proble is that we both change the data in the model and update the user interface. So let's separete out those responsibilities.
// 01:26 We can break this function into the tasks related to adding a notebook in the model,
// 01:30 and the tasks for refreshing the tableView in the UI.

// 01:37 We also have some code for refreshing the UI in viewDidLoad (move there). And what's nice about the logic up here is the way it executes the fetchRequest before reloading the tableView. It doesn't have any insertion animations to give the user clues what content has changed but that's okay. Let's keep this simple for now, and we'll improve it later in the lesson.
// 02:00 Let's pull this code out into its own function that we can call from both viewDidLoad() and addNotebook(). Choose below code / right click / Refactor / Extract Method. And we'll name it 'reloadNotebooks'.
// 02:14 Xcode put it here above viewDidLoad(). Let's move it down below addNotebook, ok done. And finally in 'addNotebook' ... move there

// 02:20 and finally in 'addNotebook' we can replace these last three lines (now commented out, see TODOs: 1 - 3) with a call to our new method:

// 02:27 This will work, 'addNotebook' is much cleaner now. It only updates the model and calls out to reload notebooks to update the UI. But it's still not as clean as it could be. It would be better if the view just new to update when the context changed without having to be prompted here. The good news is that Core Data provides tools for reactging to data changes. Let's look into using a fetchedResults controller to do precisely this. 

//: [Next](@next)
