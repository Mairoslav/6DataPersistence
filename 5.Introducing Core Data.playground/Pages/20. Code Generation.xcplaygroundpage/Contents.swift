//: [Previous](@previous)

import Foundation

// MARK: 20. Code Generation
// 00:00 Designing with a data model editor and seeing entities and relationships graphically has been really useful already (graphic editor view not in Xcode 14), but  perhaps the best part is automatically generating classes.

// 01:13 In earlier versions of Xcode, you had to both design the data in the model editor and manually mantain NSManagedObject subclasses. It was easy to change an entity here (in graph), but then forget to update their respective model class. Letting Xcode manage this is much simpler. Let's see how it works.

// 00:34 Select the Notebook entity and let's look back at the options in the data model inspector. Remember the codegen option? By default, it's set to class definition. This means that once we have declared and configured an entity, we can start creating instances in our code right away. Let's try this out.

// 00:52 Hop over to the 'NotebookList.swift' View Controller, jump into viewDidLoad(), and type 'let notebook:Note' and I stop short so that you can see in the auto completion suggestions that there are clauses for note and notebook. When I choose notebook and then Option+Click to bring up the quick help, you can see that a notebook class subclassing NSManagedObject exists, and that it is declared in Notebook+CoreDataClass.swift.

/// note: instead of 'NotebookList.swift' I can only access 'Notebook+CoreDataClass.swift' from 'NotesListViewController.swift'. But after Q&A I did comment out:
/// notebook.addNote()  and notebook.removeNote(at: indexPath.row)
/// and now can declare 'let notebook: Notebook' in 'NotebookList.swift' and access 'Notebook+CoreDataClass.swift' via Option+click on 'Notebook'

// 01:25 Let's click on that link and jump to the definition. Okay so we are in 'Notebook+CoreDataClass.swift'. But that's weird, it looks pretty empty. Where are the attributes. Well with code generation, it turns out that two files are created for us:
    // 01:53 This one 'public class Notebook: NSManagedObject' containing a class that simply subclasses NSManagedObjects
    // 02:00 And another one containing an extension that adds typed properties and convenient successors. It's called 'Notebook+CoreDataClass.swift' (even though in video she says 'Properties' instead of 'Class'). So where do we find that one? I mean neither of these appear in the project navigator on the left. It turns out they are tucked away in your projects derived data folder and theres a reason for that.

// 02:24 You should not edit them since your changes will be lost every time they regenerate. So we'll pick at them now, but we won't touch. And then I'll show you how to build on them in just a minute. Xcode has one derived data folder to house to house the derived data for all of your projects.

// 02:43 To find it, go to the Xcode/Settings/Locations/click on 1st arrow on top to bring it up Derived Data folder in finder. Inside of this folder, there is a folder for your project, so Mooskine-xxxyyy some unique id, and you'll need to dive way deep into the 'Build' folder to find it, so continue ... / Intermediates / Mooskine.build / Debug-simulator / Mooskine.build / Derived Sources / CoreDataGenerated / MooskineDataModel / and here we go choose 'Notebook+CoreDataProperties.swift'

// 03:30 I'll open it in Xcode so we can take a look. Here you can see our name and creationDate attributes as well as the NSSet of notes and its accessors because of how we set up our one to many cascading relationship. Cool so this file is a really great start.

// 03:52 But as you want to add up more functionality as the comments up in the file warn you, this is not the place. Because can see over there is written "This file was automatically generated and should not be edited".

// 04:00 Instead you create an extension file back among your product files, so let's close out of this and now in the Model folder group on left, create a new swift file and we call it "Notebook+Extra".

// 04:19 And we'll type there:
    /*
     extension Notebook {
     }
     */

// 04:24 This is where we put any custom code that we want to add on the top of auto-generated clauses. Ok we now do not actually need this file so in video she does delete it, I keep it just for example.



//: [Next](@next)
