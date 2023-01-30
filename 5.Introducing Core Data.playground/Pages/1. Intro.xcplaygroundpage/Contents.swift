//: [Previous](@previous)

import Foundation

// MARK: Intro
// 00:00 Hi I am Kate and in this lesson we're going to start working with core data. Most developers run into core data for persistence that is saving data to desk. And while core data is great for saving data it's much more than that. It's a powerful framework for managing your entire data layer.

// 00:22 Now, managing your data layer might sound like a problem you didn't know you had, but every app has a data layer as we'll see in a moment. And when you use core data, setting up yur data layer takes less time. According to Apple 50 to 70 percent less time so that you can spend more time on what makes your app unique and interesting.

// 00:42 Through this course we're going to adopt core data and a note taking app called Muskan.

    // MARK: Introducting Core Data
    // 1. First, in introducing core data we'll explore what a data layer is and how to convert a non core data app to hava a core data model.

    // MARK: The Core Data Stack
    // 2. Next, in the core dta stack will set up the classes we need to get core data running. Then will create, delete, and save objects in the model.
    
    // MARK: Simpler Code with Core Data
    // 3. In Simpler Code with Core Data, we'll set the user interface to reactively update whenever the data model changes.

    // MARK: Rounding Out Core Data
    // 4. And finally, in rounding out core data, we'll migrate our data to a new version and move slow updates to the background.

// 01:16 By the end of this course, you'll be robustly managing your apps data layer with core data. Let's get started.

// 04:35 We also need to go back and delete the line where we are testing a NotebooksListViewController. So just delete the line 'let notebook: Notebook', was there only during the exercise.

// 04:45 Do not worry, we'll initiate a notebook for real soon enough.

// 04:50 Okey, so that is class definition codegen option. There are actually two other options for code generation so let's go back to the Data Model. Select the 'Notebook' entity and within Inspector for cell Codegen choose 'Category/Extension'. So we can 1st talk about this option. If you choose this option Xcode will only generate the properties file, not the class definition. This means you'd have to create your own empty class definition. Although you won't have to update it when your properties change as the property will still be generated. This can be useful if you want to add stored properties which can't be done in an extension.

// 05:28 Finally, there is 'manual/none' option for Cedegen field within Inspector, which tells Xcode not to do any code generation. This is the most work but gives you the most flexibility. You might want to use this if you do not like the property types Xcode chooses such as NSDate rather than date. And that sums up Cedegen i.e. Code Generation. 

//: [Next](@next)
                
