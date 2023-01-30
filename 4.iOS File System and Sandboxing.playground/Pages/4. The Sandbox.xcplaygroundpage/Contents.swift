//: [Previous](@previous)

import Foundation

// MARK: 4. The Sandbox
// 00:00 So now that we have basic understanding how the overall file system works, why don't we take a look at what one of these AppLockers or Sandboxes looks like on the inside?

// 00:10 When an app is installed its Sandboxc is created with several pre-made containers:

// TODO: 1. The Bundle Container
// contains the application itsel, or more specifically, a directory that holds the:
    // executable code and,
    // resources, like images and sound files or whatever else is used by that code.

// TODO: 2. Data Container
// Like its names suggests, holds all the user and app data. Within it are three sub-containers:
    // a. The Documents, is where user data should go
    // b. ***Library, is for non-user data files or files that you don't want to expose to the user.
    // c. Temp directories, Tems is used for storing very temporary data that doesn't need to be persisted across launches. So we're not going to be talking about this directoryh in this course.

// a. The Docuements and b. The Library are the directories you want to focus on. Both of these directories contain a few standart sub-directories, such as:
    // Documents/Inbox,
    // Library/Application Support,
    // Library/Caches, and several others... 01:01 The caches directory is important, and we'll revisit it along with the documents.

// 01:09 Note that you can also create sub-directories of your own to better organize your files.

// TODO: 3. iCloud Container
// At app runtime, an app may also request access to additional containers, such as: iCloud Container

// So now that we have an idea of how the file system works and what the Sandboxes inside the file system look like, we can probably revisit our initial question. Where does UserDefaults live?

// If you guessed within the data container, you'd be rights. It lives right here within the data containder inside of ***Library. Its actual path looks something like this:

// 'Library/Preferences/info.myapp.mobile.plist' is the file that contains the saved UserDefaults. 

//: [Next](@next)
