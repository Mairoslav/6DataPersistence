//: [Previous](@previous)

import Foundation

// MARK: 5. Switching to Code-Generated Classes
// 00:00 In the last lesson we set up our note and notebook entities to generate class definitions. But since a lot of existing code in our app references the old classes that we deleted we have some errors that are preventing us from being able to compile and run the app. So let's resolve them one by one.

// 00:21 Open the issue navigator, and to make sure we are only viewing current issues, let's first clean (Product/Clean Build Folder) and build (Product/Build) the project. Nice there are only a handfull of errors (in video, however not in my xcode project, hmm). And it looks like quite a few of them have to do with optionals. That's because some of our properties are optional in our entities which weren't before.

// 00:47 In the viewDidLoad() of "NoteDetailsViewController.swift" we need to check if the note has a creation date before we can use it in the title. So I'll wrap this statement in an if let and change it to use the unwrapped creation date. ... see comments in "Mooskine.xcodeproj"

//: [Next](@next)
