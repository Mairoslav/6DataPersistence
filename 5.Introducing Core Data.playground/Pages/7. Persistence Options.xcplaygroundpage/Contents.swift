//: [Previous](@previous)

import Foundation

// MARK: 7. Persistence Options
// MARK: How Does Core Data Save Data?

// MARK: Persistent Stores
// Core Data saves (or persists) data into something called a persistent store (think storage). The store is where the data lives.

// MARK: Types of Stores
// There are three different types of persistent stores Core Data supports on iOS:

    // 1. a SQLite store (the default)
    // 2. a binary store
    // 3. an in-memory store.

// MARK: SQLite
// SQLite is almost always the right choice for your persistent store; it means your data is stored in a SQL relational database, and there are a few handy features in Core Data (like model caching during migration) that only work with the SQLite store. And since you don’t interact with the persistent store directly, you don’t need to know any SQL to use the SQLite store.

// MARK: In-memory
// The in-memory and binary stores have different characteristics in terms of memory usage and performance. The in-memory store can be appropriate when you have a small data model that can fit in memory all at once and that doesn’t need to be saved to disk – for example a cache.

// MARK: Binary
// The binary store can be appropriate when you always need the database to be read and written in its entirety—for example if you are using a file format such as CSV.

// MARK: Abstracting the Store
/*
Core Data abstracts the persistent store's details. That means you won’t usually interact with the store directly. You can think of Core Data as a layer that sits between your code and the underlying store, making it easier for the two to communicate.

Core Data provides a common interface for saving and fetching data, no matter what kind of store sits below. Whatever type of store you choose, you’ll always use the same Core Data classes to access and manage your data. And you won't need to learn a database-specific language to manage your data; you can do it all in Swift.

You can find more information about the different store types in the ***Persistent Store Features*** documentation.
 
***Persistent Store Features*** https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/CoreData/PersistentStoreFeatures.html
*/
 
// MARK: Are There Other Ways to Save Data?
/*
Yes. Although Core Data is a great solution for persisting data that has structure and relationships, other solutions are better suited for other types of data. For settings or small pieces of data, UserDefaults is most appropriate. If you want to store data directly on the file system, you can use the Foundation framework to serialize and write data to files. If you are familiar with SQLite, then you could use it directly instead of through Core Data. There are also ways of caching transient, downloaded data such as the result of a network request.

Third party databases and persistence frameworks like ***Realm*** and ***Firebase*** provide useful features like syncing local and remote data, and cross-platform support for iOS and Android. But, while powerful, these frameworks often lack UIKit integration, and they may not implement the full extent of Core Data features. It’s up to you to consider the tradeoffs.

If you’re curious about Firebase specifically, the ***Firebase in a Weekend*** free course we created with Google is a great starting point.
 
 ***Realm*** https://realm.io
 ***Firebase*** https://firebase.google.com
 ***Firebase in a Weekend*** https://www.udacity.com/course/firebase-in-a-weekend-by-google-ios--ud0351
*/



//: [Next](@next)
