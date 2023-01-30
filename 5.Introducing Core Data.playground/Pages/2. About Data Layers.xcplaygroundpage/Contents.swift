import UIKit

// MARK: 2. About Data Layers
// 00:00  Every app has a data layer. In a map based app this might be locations of interest or in a cooking app, the data layer might include recipes, ingredients and directions. Within this data there are often relationships.

// 00:20 For example, a recipe may call for many ingredients, while an ingredient should be free to appear in multiple recipes. The recipe app data include:
        // a) structure, that is clearly defined object types (e.g. soups) and
        // b) relationships between instances of the types. (i.e. instances of base soup called Broth)

// 00:40 When you have both a) structure and b) relationships to manage that's when you'll want to reach for core data.

// MARK: Data Model
// 00:51 The code you write to define your app structure and relationships is your data model (under Recipe are Ingredients and Directions).

// MARK: Related Code
// You'll also have some code for managing the model. For example, the code for adding, deleting and saving data.

// MARK: Data Layer - to be managed by Core Data
// 01:03 Together Data Model and Related Code make up the Data Layer and we'll use Core Data to manage the Data Layer.

// MARK: CORE DATA
// 01:12 Core Data provides a way to design and structrue an app's data model and functionality for managing and persisting the data without us having to write it all from scratch.

// So that's what we mean when we call "Core Data" a "Data Layer Management Framework". It is really powerful tool for managing your data layer whether or not yhou use it for persistence. 


