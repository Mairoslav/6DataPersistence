//: [Previous](@previous)

import Foundation

// MARK: 12. Entities
// 00:00 Entities are the basic building blocks of a Data Model. Each one defines a piece of data that's important to your app. That includes its structure and its relationships to other entities. If ou think that entities sound suspiciously like classes or structs in Swift, or like table in relational database, you'll be on the right track. They are very analogous concepts but, they are not exactly the same.

// 00:32 The diference is that the entities are only descriptions or templates of what a class representing this type should contain. We can auto-generate classes from these description and most of the time that's exactly what we'll do. Let's take a closer look.

// 00:50 First let's switch the editor style to graph mode down down here in the lower right (this option not there any more). Select the 'Notebook' entity and let's make sure we have this forth tab, the 'Data Model Inspector' selected in the utility area. I would like to drag your attention to three fields in particular.
    // 1. First see these two fields for Entity name and Class name. Right now they both have the value, Notebook. The entity name is Notebook because we just named it like that. The class name is Notebook because Xcode is assuming that we want the class representing this entity to have the same name as the entity here. Good guess Xcode. But how does this Class get created?
    // 2. A little further down in the Class section, check out the Codegen field. This stands for code generation and its set to class definition. Which means that Xcode will automatically generate the class for us. Just like we want it. We'll use the generated Notebook class just like any other Swift class.

// 02:07 The main difference between this Notebook class and the one we deleted earlier, is that the new one sub classes a Core Data framework class called NSManagedObject (can look it up in Apple Developer Documentation). That is the requirement for any class that wants to represent a core data entity.

// 02:20 What's an NSManagedObject? https://developer.apple.com/documentation/coredata/nsmanagedobject/ The 'Object' part of the name just means that this is an object and we can create instances of it. 'Managed' part will make more sence once once we learn how the rest of the code data stack manages our data. And NS is just legacy Apple naming for next step.

// 02:42 So great, we have these note and notebook entities, which we can use to auto-generate core data compliant model classes. But we still need to configure our entities so that they look more like the older model classes we just deleted. It's time to set their attributes. 

//: [Next](@next)
