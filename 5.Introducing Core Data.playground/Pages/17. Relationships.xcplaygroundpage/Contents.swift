//: [Previous](@previous)

import Foundation

// MARK: 17. Relationships
// 00:00 Our Data Model is looking pretty good, our Notebook and Note entities have attributes to hold data.

// 00:07 The last thing we need to specify is the relationship between Notebooks and Notes.
    // The Notebook class we deleted had an array of notes.
    // Meanwhile the Note class we deleted didn't have any reference to Notebook.

// 00:24 In Core Data we model the relationship between entities explicitly. Let's add a relationship between Notebook and Note. The easiers way is to switch to graph view (not supported in new Xcode 14), then control drag from one entity to another. I'll control drag from Notebook to Note. This just added a new relationship in both entities by this double-ended arrow.

// 00:47 This actually set up a one-to-one relationship, which isn't quite what we want. We need to configure the relationship a bit. We can access this relationnship from any of the entities it is connected to. Let's recon how it is set up in our Notebook object first.

// 01:05 Under Notebook, double-click on the "newRelationship" and rename it to notes. You can do in place as I did, or up here in the relationship panel.

// 01:16 As with properties, relationships names start with a lowercase letter. We're naming it nemes plural because a notebook will have a relationship to multiple notes. You can see that the destination of this relationship is the Note entity, and that there is an inverse relationhip in the note class still called newRewlationship beause we haven't configured that side yet.

// 01:38 Next, is delete rule. In inspector for box 'Delete Rule' we are going to choose 'Cascade' which means that the deletion will automatically carry through to all the references in this relationship. That is, when we delete a notebook we want to delete all notes in that notebook as well. And since a notebook can have many notes, we'll change the relationship type to 'To Many'.

// 02:02 Notice how that changed the arrow in the graph? From having a signle tip to a double tip pointing to Note. Okay that's all we need to change there.

// 02:11 Now, let's configure the relationship from the ote side (i.e. click on Note). We'll rename this relationship to notebook. A note can only have one notebook so we'll name it in the singular. And we'll leave the type as 'To One'.

// 02:26 Notice that the inverse relationship has already been filled in with our renamed 'notes' relationship (in our case without graphic editor we have to choose this option as described at point (*a)).

// 02:31 Finally we'll leave this on the nullfy deletion rule. This means that the relationship from the note to its notebook will simply be removed when a note is deleted. A single notes deletion won't cause anything else to be deleted.

// 02:35 And that's it. Now that we've defined the relationship between our entities, our data model is good to go. If you switch back to the table view of the data model (actually this is what we are using now with new version of Xcode, Xcoce 14), you can see the relationship in each entities relationship section.

// 03:00 Clicking on the relationship there, also brings up the relationshhips panel on the right for editing. Creating the relationship in graph view allowed us to set up an inverse relationship between two entities in one go, but you can also set up relationship one at a time here in table editor.

// 03:16 Just remember to create pairs of matching relationships if you do it that way. In core data, we always use two-sided relationships. Let's look into why next. 


// MARK: below how I progress without grahpical editor that is not available in Xcode 14:

// 00:00 Select Notebook / In Relationship press + / rename relationship to 'notes' / in inspector for destination choose 'Note' / for 'Delete Rule' choose 'Cascade' / for 'Type' choose 'To Many'

// 02:11 Select Note / In Relationship press + / rename relationship to 'notebook' / for field 'inverse' choose 'notes' (*a) / in inspector for Type' keep 'To One' / for 'Delete Rule' keep 'Nulify'

//: [Next](@next)
