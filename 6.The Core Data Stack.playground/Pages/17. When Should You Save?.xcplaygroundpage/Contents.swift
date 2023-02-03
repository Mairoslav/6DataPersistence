//: [Previous](@previous)

import Foundation

// MARK: 17. When Should You Save?
// 00:00 Earlier, we looked at situations where an app can be abruptly terminated, and we acknowledged that we should save data before this happens. Does this mean that we should just alwazs save after efverz change to a core data object? Not neccessarily.
// 00:18 Saving can cause a user perceptible delay. In particular, saving several updates at once could realy slow down your app and irritate your users, or another common cases needing to save the database after syncing with a remote data source. And in that scenario, since the user doesn't initiate the change, any delay caused by a background task will feel inexplicable, so we need to be even more careful.
// ... from here onwards can find these comments also in 'MoooskineII.xcodeproj', starting in AppDelegate.
// 00:45 One place you should always save, is in the AppDelegate, before your app terminates or when it enters the background. This will cover a number of abrupt termination cases, and would have ensured that our note text would have eventually been saved even if we'd forgotten to update NoteDetailsViewController. So let's open our AppDelegate and in both:
    // a) applicationDidEngerBackground, and
    // b) applicationWillTerminate,

// 01:14 Let's add a call to save our managed object context. We'll create a helper method caled SaveViewContext, that calls save on the data controllers view context and call it from both of these functions: a) and b) as above described.

// 01:34 Great, this technique of saving just before the app is backgrounded or terminated will cover a lot of situations. Another option to consider is saving on timer. We can set a function to be called at regular intervals and each time that interval passes, if the context has any changes, we'll try saving it to the store. This can be particularly appropriate in cases where data is entered continuously such as while editing text. Let's implement auto-saving in data controller. ...move to 'DataController.swift'...
// 02:00 To keep our code tidy, let's add this as an extention at the bottom of the file.
// 02:07 Our strategy here will be to write a method that saves the view context and then recursively calls itself again every so often. We'll call it autoSaveViewContext and it will accept an interval parameter with a default value of 30 seconds. The interval only makes sense if it's a positive number so let's use a guard statement to catch incorrect usage.
// 02:31 Next, we'll call save on the viewContext. The save method can throw but we'll discard the error using try question mark. Note that we should be careful not to take drastic action such as showing an alert to the user if, let's say, fails. We'll just try again at the next interval.
// 02:51 This looks reasonable but there is a little problem. Imagine we call autosave with an interval of 3 seconds. Our app will try to save the view context every 3 seconds even when nothing has changed. We can improve this by first, checking whether there were any changes and only saving if there are. NSManagedObjectContext provides a hasChanges property exactly for this purspose. We'll use it to check that the view context has changes, and only save if it does.

// 03:26 Finally, we'll use Grand Central Dispatch to call autosave again after the specific interval has elapsed. I set the interval to now plus the interval and change the rest of tnis to a trailing closure that calls the function.
// 03:42 If we wanted more control, we could use an NS timer instead. That would let us, for example, pause the autosave behaviour.
// 03:52 Finally, we need to kick off the initial autosave, and we can do that once the persistent stores have been loaded up here in 'func load', I am setting a short interval so that we can test it easily, and let's add a print statement so that we can see the function running.
// 04:22 Let's run and test. And in the console output, we see the autosave is happening. I'll stop the app running, and set the interval back to the default by romoving the argument up here.

// 04:35 In Mooskine, adding and deleting notes and notebooks are natural places to explicitly save. Auto-save help if the app were to crash in between those explicit saves. In your future apps, you'll need to consider the content and user interactions and decide whether it makes sense to add auto saving. Now that we have a handle on how early and often to save, let's review some core data concepts. 


//: [Next](@next)
