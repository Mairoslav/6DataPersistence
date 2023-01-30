//: [Previous](@previous)

import Foundation

// MARK: 2. The iOS File System
// 00:00 For clarity, a file system is essentially the system by which the permanent storage space of a device is organized and and divided up to hold files. The type of file system a macchine has is determined by the operating system running on that macchine.

// For iPhones and iPads this operating system is called iOS. And similar to operating system running on Macs, it dictates a UNIX based file system made up of a hierarchy of directories.

// 00:25 With the primary goals of security and simplicity in mind, the file sytem for iOS was conceived with the notion of threating all apps as self-contained independent islands. Each app when it's installed, is paced in what's called a sandbox, or 'self-contained aread of the file system in which to keep all its stuff'.

// Simply: 'Sandbox': where the app keeps all of its 'stuff'. You can imaggine a new app on your device as a new student at a school. Let's call her Appigail. The new student Appigain is given a locker to keep books, papars, personal items, and whatever else. THe locker is locked so only this student Appigail has access to her own things. Likewise, the student does not have access to any fellow student's lockers.

// 01:05 THe only thing is, imagine that this is a magical school and that the lockers maintain magical properties. There's and overall finite amount of space that all the lockers combined can take up, but until that space limit is reached, each student's locker will expand to fit whatever is put into it or new lockers can be created. Whereas if a student has to store gym bag and large textbooks, as long as the overall locker system has extra space this student's personal locker will expand to fit his items.

// 01:31 Likewise, you, the device's owner, get to decide how you want the space to be allocated. Whether you want to keep:
    // A) 12 gigabytes of photos, or
    // B) and 6 gigabytes of music, and 6 gigabytes of small apps...

// The choice is up to you. 

//: [Next](@next)
