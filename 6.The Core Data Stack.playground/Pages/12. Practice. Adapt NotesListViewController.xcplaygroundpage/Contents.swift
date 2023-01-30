//: [Previous](@previous)

import Foundation

// MARK: 12. Practice: Adapt NotesListViewController

/*
 MARK: Adapting NotesListViewController
 Together we set up the data stack, passed the dataController from the AppDelegate to NotebooksListViewController. Then, using the viewContext, we inserted notebooks into—and loaded and deleted them from—the persistent store. So that’s the first view in our app, taken care of.

 What happens when the user taps on a notebook in the list? The next screen is another tableview, showing all of the notes inside the selected notebook. We need this view, NotesListViewController, to work with Core Data as well.

 Lucky for us, NotesListViewController is almost identical to NotebooksListViewController. Just as we had a notebooks array that powered the last tableview, this view has a notes array that we need to populate. It also has a property called notebook that’s injected before it’s presented. Our job is to load the list of notes that belong to this notebook into that notes array.

 There are two ways we could do this:

    1. We could access the notes property on the notebook reference. Thanks to faulting these objects haven’t been loaded yet, but will as soon as we access them.
 
    2. We could make a new fetch request to fetch notes, with a predicate to only load Note objects whose notebook matches the current notebook
 
 The first option, using a relationship, is attractive because it’s a little faster than performing a new fetch. But the notebook’s notes property is an unordered NSSet so we’d have to convert that to an array of type [Note] and sort the contents by date before we could use it.

 The second option, performing a new fetch, is a great opportunity to try using a predicate to filter the data returned by a fetch request. Let’s go that route to give ourselves practice doing this.
 
 MARK: NSPredicate
 NSPredicate is a Foundation class that lets you describe constraints on a search operation. It’s used in Core Data to constrain values or relationships in searches, but you can also use it to filter NSArrays and other Cocoa Touch classes. We’ll explore it in more depth on the next page.

 But first, go ahead and update NotesListViewController to execute a fetch request for Notes that match the predicate below, and display the results in the table view:
 
    let predicate = NSPredicate(format: "notebook == %@", notebook)
 */

/*
 MARK: NotesListViewController: Fetch + Predicate
 a) Import Core Data
 b) Add an implicitly unwrapped 'dataController' property
 c) In viewDidLoad, create a fetch request for Note
 d) Create a predicate, using the above code, to include only those notes related to the current notebook
 e) Set the fetch request's predicate property to this predicate
 f) Create a sort descriptor to sort by creation date
 g) Set the fetch request's sortDescriptors array to includ ethis sort descriptor
 h) Try asking the dataController's viewContext to fetch the request, and if successful, use the results to populate the notes array.
 */

/*
 MARK: NotebooksListViewController: pass `dataController`
 a) pass the dataController to the notes list in prepare(for:)
 */

/*
 MARK: NotesListViewController: Update addNote()
 Update the addNote() method to:
 a) create a note with Note(context:)
 b) configure the note's text to "New Note"
 c) configure the note's creationDate
 d) configure the note's notebook
 e) save the context
 f) and update the notes array (insert the new note at index 0
 g) make sure the tableview also inserts the new note at index 0
 */

/*
 MARK: NotesListViewController: Update deleteNote()
 Update the deleteNote(at:) method to:
 a) get a reference to the note to delete
 b) delete the note from the context
 c) try saving the context
 d) and remove the note from the notes array
 */

// MARK: Note that all changes are now made to file "MooskineII.xcodeproj" 

//: [Next](@next)
