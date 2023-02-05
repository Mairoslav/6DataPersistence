//: [Previous](@previous)

import Foundation

// MARK: 7. Fetched Results Controller and Collections
// 00:00 In Mooskine our 1st screen is tableView of notebooks. Right now we're using a notebooks array as it's data source. Let's review how this works. When the table view needs to populate a cell, it asks its data source what to show in that spot. That is, it tells the data source which section and which row it is working on.
// 00:26 Bundling the values together as an intex path  and the data source returns the appropriate data for those coordinates.
    // * On left picture is sreen with rowns (representing our notebooks array) 0 Haiku, 1 Epics, 2 Sonnets all under section 0. On right picture is Question above the screen asking "What goes in Index Path - section: 0 and row: 1? In below sreen are rows 0 Haiku, 1 Epics, 2 Sonnets all under section 0.
    // So as can see on *picture, section zero, row one, becomes Epics. Section zero, row one, bocomes Epics. Section zero, row two, becomes Sonnets. And so on.

// 00:43 Now our table view is simple, there's only one section, section zero. And for that we always go look in our notebooks array. If our table view had multiple sections (i.e. not only section 0, but also sections 1 including e.g. rows 0 Lists, 1  Todos ...) we'd power the other ones using more arrays.

// 00:59 So that's how things are working right now, using an array as the table view data source. We need to change the table view to use a fetched results controller instead (i.e. instead of array/s as depicted on left picture with screen rows representing our notebooks array) 0 Haiku, 1 Epics, 2 Sonnets... ). So let's take a look at how a fetch results controller organizes data. Just like a table view, a fetched results controller can have multiple sections and,
    // 01:20 we can use 'fetchedResultsController.sections?.count' to find out how many.

// 01:25 Each section is of type SectionInfo and we can find out how many elements a section has by using its number of objects property:
    // 01:31 'fetchedResultsController.sections?[section].numberOfObjects

// 01:35 Now let's look at what happens when the table view needs to populate a cell. Just as before, it asks its data source - what to show in that spot using an index path. But now, instead of us having to manually drill down into sections and rows, we can use the fetched results controllers object at index path method to handle the rest of the lookup for us:
    // 01:52 'fRC.object(at: indexPath)

// 01:58 fetchedResultsControllers are specially designed to mirror the structure of table and collection views, making it straightforward to serve fetched data to the user interface. So let's upgrade our data source to fetchedResultsController. 

//: [Next](@next)
