//: [Previous](@previous)

import Foundation

// MARK: 9. Fetch Requests, Faults and Uniquing
/*
 MARK: Fetch Requests
 Creating and executing fetch requests only requires a few lines of code, but you’ll find that you repeat these same steps nearly line-for-line in multiple places. This is what developers call 'boilerplate code', and when using the 'DRY (“Don’t Repeat Yourself”) principle', it's something we usually try to avoid.
 // https://en.wikipedia.org/wiki/Boilerplate_code
 // https://en.wikipedia.org/wiki/Don%27t_repeat_yourself

 So why do we have to call fetch so often? Why can’t we just load the whole persistent store into the context at once, and be done?

 It turns out that making multiple fetch requests that each only grab a timely subset of the app’s data is in your best interest: iOS devices have finite memory, apps can have a lot of data, and fetch requests help limit your app’s data consumption. In most cases, it isn’t desirable or even possible to load all of an app’s data into memory at once. So fetch requests help ensure that we only load the data we need, when we need it.

 For example, Mooskine’s 'NotesListViewController.swift' displays notes associated with a specific notebook. Say the notebook in question only has three notes in it, but there are 629 notes in the entire app. It wouldn’t make sense to load hundreds of records into memory, and then search through them to find the ones we want, when the user is only asking to see these three.

 A finely-tuned fetch request means we’ll only use the minimum memory required to display content to the user. Later in this course we’ll see that Core Data also provides automatic data caching to make fetch requests even more performant.
 */

/*
 MARK: Faults
 Ok - so how do relationships fit into this? Recall that the Notebook entity has a notes relationship. So the question is: when we fetch a Notebook, are its notes loaded into the context as well? And if those notes were to have other relationships, would those be fetched too?

 The answer is that relationships are not immediately loaded. Instead, Core Data has a mechanism called faulting. Faulting allows any attribute or relationship to be in a special state where it is promised to load when needed. When you fetch a managed object, its relationships are initially represented as faults.

 To you, a fault is usually transparent. As soon as you try to access the object it references, Core Data automatically retrieves the data either from a cache or from the persistent store.Typically, this default behaviour is exactly what you want, and you won’t have to think about faulting at all.

 But, you can choose to load more data initially to avoid the cost of sequentially accessing many faults. You can free up memory by faulting on data that was already loaded. The power and flexibility is in your hands, and you can find out more in Apple’s Core Data documentation on Faulting and Uniquing:
 https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/CoreData/FaultingandUniquing.html
 */

/*
 MARK: Uniquing
 In Mooskine our object graph is simple. Each Note belongs to one and only one Notebook. But it’s very common to have a more tangled object graph. For example in a music app, a Song might belong to multiple Playlists.

 To avoid accidentally loading multiple versions of a single object (for example, when loading all the songs in two overlapping playlists), Core Data allows you to add a uniqueness criteria to a managed object. This is called uniquing.

 You can find out more in Apple’s Core Data documentation on Faulting and Uniquing (the same web link as provided above).
 */

//: [Next](@next)
