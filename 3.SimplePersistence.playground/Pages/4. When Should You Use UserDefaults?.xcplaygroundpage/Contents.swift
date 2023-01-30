//: [Previous](@previous)

import Foundation

// MARK: 4. When Should You Use UserDefaults?
// MARK: Quiz1 - Imagine you're writing a note-taking app, similar to Evernote. A user might have thousands of notes, with text, images, and geolocations. Would this be a good scenario in which to use UserDefaults?
// A) Yes, UserDefaults is perfect fit for a note-taking app
// B) No, UserDefaults is not great fit for a note-taking app

// B) is correct, UserDefaults is not a good fit for a note-taking app. Thousands of notes, images, and whatever else a user might store would be way too much information for UserDefaults to handle. Trying to store all this in UserDefaults would have negative performance implications. This will be a job for Core Data, which we'll learn about shortly!

// MARK: Quiz2 - You are building a small app to store and share short .m4v video files with added text. Would you use UserDefaults for saving the videos?
// A) Yes, UserDefaults is perfect fit for a video-sharin app
// B) No, UserDefaults is not great fit for a video-sharin app

// B) is correct. Right. UserDefaults is not the right fit for a video-sharing app. Even though UserDefaults could store video as NSData, the number of videos could grow and grow, and videos are way too big for UserDefaults. This would be a better job for Core Data, which we'll learn about shortly!

// MARK: Quiz3 - Say you have a note-taking app which can display the notes in a UITableView or a UICollectionView. Users can choose which representation they prefer. Would it be appropriate to save this information (the user's choice) in UserDefaults?
// A) yes, UserDefaults is perfect fit for storing small user preferences
// B) no, UserDefaults is not great fit for storing small user preferences

// A) is correct, Yes! Storing small user preferences is a perfect match for UserDefaults.



//: [Next](@next)
