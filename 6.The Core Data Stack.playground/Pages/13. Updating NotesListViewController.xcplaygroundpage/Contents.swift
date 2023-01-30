//: [Previous](@previous)

import Foundation

// MARK:  13. Updating NotesListViewController
// Note: all changes are now made to file "MooskineII.xcodeproj"

/*
 MARK: NotesListViewController: Fetch + Predicate
 a) Import Core Data
 // 00:00 How did it go updating 'NotesListViewController.swift'? Let's review the steps together. We'll start by importing CoreData (a).
 
 b) Add an implicitly unwrapped 'dataController' property
 // 00:12 And we'll need access to the CoreDataStack. So let's prepare this class to have the DataCotroller injected. Here at the to I'll add an implicitly unwrapped DataController property (b). ...now move to 'NotebooksListViewController.swift'...
 
    /*
     MARK: NotebooksListViewController: pass `dataController`
     a) pass the dataController to the notes list in prepare(for:)
     */
    // 00:25 Now, over in NotebooksListViewController (move there ...) we can pass the DataController instance in prepare for sender (a.i).
    // 00:38 Okay, great. So now, we pass both notebook and the CoreDataStack to the notes list once a notebook is selected (a.ii).
 
 c) In viewDidLoad, create a fetch request for Note
 // 00:50 Next step is to fetch all of the notes associated with this notebook. So head back to 'NotesListViewController.swift' and in viewDidLoad() we'll declare a fetchRequest typed to a Note, and we'll use the note class to create it (c).
 
 d) Create a predicate, using the above code, to include only those notes related to the current notebook
 // 01:09 Now, to configure it, we need to ensure it only fetches Notes from the selected notebook. For this filtering, we use a predicate. I'll create a predicate with the format notebook equals equals percent at, and notebook as the argument. The percent at will get replaced with the actual notebook at runtime. This is how we check whether a single note's notebook property is set to the current notebook (d).
 
 e) Set the fetch request's predicate property to this predicate
 // 01:42 Now, we need to set the fetchRequest to use this predicate (e).
 
 f) Create a sort descriptor to sort by creation date
 // 01:47 Once we have all the ritht notes, we'll want to sort them. Create a SortDescriptor that sorts by creationDate ascending (f),
 
 g) Set the fetch request's sortDescriptors array to include ethis sort descriptor
 // 01:59 and we'll set the fetchRequest sortDescriptors array to use it (g).
 
 h) Try asking th edataController's viewContext to fetch the request, and if successful, use the results to populate the notes array.
 // 02:03 All ritht, our fetchRequest is ready to go. Time to ask the managed object contacts to perform the fetch (h.i).
 // 02:11 If it's successful, we'll sotre those notes in this class's notes array (h.ii).
 */

/*
 MARK: NotesListViewController: Update addNote()
 Update the addNote() method to:
 a) create a note with Note(context:)
 // 02:18 We also need to update the code for adding and deleting notes. We had commented those out earlier but now that we have a DataController, we can get them working again. Let's start with addNote. I'll remove TODO comment and now instead of creating a note on the notebook, we'll create a note registered to a context (a).
 b) configure the note's text to "New Note"
 // 02:44 We'll set its text to "New note" (b),
 
 c) configure the note's creationDate
 // 02:50 Configure its creationDate (c),
 
 d) configure the note's notebook
 // 02:54 set its notebook (d)
 
 e) save the context
 // 02:57 and now, we can try to save it into the context (e).
 
 f) and update the notes array (insert the new note at index 0
 // 03:06 We'll also add it at the front of this class's notes array (f),
 
 g) make sure the tableview also inserts the new note at index 0
 // 03:09 and we'll want it to appear at the top of the table view. So change the row here to zero (g).
 
 */

/*
 MARK: NotesListViewController: Update deleteNote()
 Update the deleteNote(at:) method to:
 a) get a reference to the note to delete
 // 03:18 That covers adding a note. Now for deleting one. Again we can get rid of the TODO comnment. And instead of removing the note from the notebook, we'll get a reference to the note to delete (a),
 
 b) delete the note from the context
 // 03:33 delete it from the context (b),
 
 c) try saving the context
 // 03:37 and try to save the change (c).
 
 d) and remove the note from the notes array
 // 03:41 Then finally, remove it from the notes array, and we are good to go (d).
 
*/

/*
 03:53 To review the steps we have done so far, we injected the DataController:
 
    var dataController: DataController!
 
 and used it both to create a fetchRequest to get the right notes for this notebook,
 
    let fetchRequest: NSFetchRequest<Note> = Note.fetchRequest()
    let predicate = NSPredicate(format: "notebook == %@", notebook)
    fetchRequest.predicate = predicate
    let sortDescriptor = NSSortDescriptor(key: "creationDate", ascending: true)
    fetchRequest.sortDescriptors = [sortDescriptor]
    if let result = try? dataController.viewContext.fetch(fetchRequest) {
        notes = result
    }
 
 04:02 and to manage the notes when we add and delete them:
 
 func addNote() {
     let note = Note(context: dataController.viewContext)
     note.text = "New note"
     note.creationDate = Date()
     note.notebook = notebook
     try? dataController.viewContext.save()
     notes.insert(note, at: 0)
     tableView.insertRows(at: [IndexPath(row: /*numberOfNotes - 1*/ 0, section: 0)], with: .fade)
     updateEditButtonState()
 }

 func deleteNote(at indexPath: IndexPath) {
     let noteToDelete = note(at: indexPath)
     dataController.viewContext.delete(noteToDelete)
     try? dataController.viewContext.save()
     notes.remove(at: indexPath.row)
     tableView.deleteRows(at: [indexPath], with: .fade)
     if numberOfNotes == 0 {
         setEditing(false, animated: true)
     }
     updateEditButtonState()
 }
 
 04:06 if we run and test, we'll see that we can add and delete notes, and that the respective notebook knows about these changes (at the given notebook it is shown how many pages/notes it has). If we force quit the app, and run it again, those changes persist. Now that we've seen our first predicate in action, let's dive deeper and get a little more practice with predicates. 
 
 */

//: [Next](@next)
