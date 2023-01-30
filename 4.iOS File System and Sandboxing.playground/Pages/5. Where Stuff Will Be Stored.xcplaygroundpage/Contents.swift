//: [Previous](@previous)

import Foundation

// MARK: 5. Where Stuff Will Be Stored
// 00:00 OK so Sandbox is where we are allowed to save information. Let§s lok a those three subfolders we mentioned earlier:
    // 1. Documents: this is where you save impportant information/important stuff. iTunes will make backups of this folder and OS will never delete its contents.
    // 2. Caches: this is for temporary info. iTunes and iCloud will never make a backup of its content. Library is generally for any files you don't want exposed to the user. We don't need to worry about this folder for now, but in case you were curious, that's what it is there for.

// 00:33 The rule of thumb is, important stuff goes into Documents. And things that won't be necessary in the future or are easy to recreate should go into Caches.

// 00:43 In order to save something in the sandbox, we need to do two things:
    // 1st: find where the folder is within the sandbox, then
    // 2nd: write to a file within that folder.

// To achieve this, we will use the following classes:

    // FileManager to get the path to the folder within the sandbox, and then
    // String to write or read text files, or
    // Data to write or read binary files.

// 01:11 Enough of talk let's move to Xcode and write some code

// Text under the video:
/*
 If you read more about the iOS file system, you might find about a subfolder of the Sandbox called tmp.

 Apparently, it's very similar to caches, so what's the difference between them?

 The main difference is when they are deleted. Tmp will be deleted more often under normal circumstances.

 Since this is intro to persistence, you may consider them equivalent.
 */

//: [Next](@next)
