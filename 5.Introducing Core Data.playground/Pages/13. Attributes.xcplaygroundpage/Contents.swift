//: [Previous](@previous)

import Foundation

// MARK: 13. Attributes
// 00:00 We need to add more detail to our entities. The old Notebook class had two properties: name and creationDate. And Note class had: text and creationDate properties. We'll add these back now. But first swich back to the table editor style (do not have to switch since did not have option for graphical mode editor style).

// 00:22 The data fields in an entity are called attributes. If you have worked with databases before, you can think of them as similar to columns. Let's add a name attribute to Notebook. Select Notebook entity, and at bottom right click add attribute button. A new attribute called attribute appears at the section at the top with its name selected and editable. Let's rename it fore name and hit Enter.

// 00:50 Now in the inspector on the right we can see several options. The first is the attribute's name, which we just set but you could also change it here in inspector. Just like class properties, attribute names always begin with a lowercase letter. We also need to set the type for this attribute, which you can do both in the attributes section in middle or in inspector section. Our is currently undefined, let's change it to String. We'll look at the other options in this list in a minute. But for now our name attribute is done.

// 01:28 Now let's add 2nd attribute for creationDate. This time let's use the plus button in the attributes section instead of inspector one. Rename it to creationDate. And this type we give it a type date.

// 01:43 OK now that we have the basics of both attributes set, let's see what's left to do. Core Data gives us some options for how an attribute is stored, and how it behaves. These are just options, you don't have to set any of these, but you can you them to fine-tune your model's behaviour.

// 02:02 Just under name in attributes inspector on the right are two checkboxes: Transient and Opitional (now are four also Derived and Allows Cloud Encryption).
    // 02:12 'Transient' attributes are not tracked or persisted by Core Data. They can be useful for caching data you'll like to keep temporarily, but do not need to save to the disk. They are very similar to manually adding on properties to your model class after the fact. The benefit of declaring them here is that they'll be included when the class is auto-generated. So that's transient.
    // 02:32 The other flag is 'Optional'. This one is worth paying attention to, because optionality in Core Data isn't exactly the same as in Swift. In Swift an optional value may contain a value, or it may be nil. This is a powerful feature that can be checked at compile time.
    // 02:55 The overall idea in Core Data is very similar. An optional attribute may contain a value, or it may be nil. The catch is that this is not checked until runtime, specifically when an instance of the entity's generated class type is being saved. It's a subtle distinction, but its worth understanding that the question marks you see in a model class for a property's Swift optionality, don't always map to what Core Data considers optional.
    // 03:26 Optional here means can be nil at save time. So that's optional.

// 03:31 The next section here shows settings that are specific to the attributes type. The 'date' option for our creationDate attribute are different from the 'String' options for our name attribute.

// 03:46 Next, let's get familiar with the attribute types in this drop-down list. Then, you'll add the creationDate and text attributes to the Note entity on your own. 

//: [Next](@next)
