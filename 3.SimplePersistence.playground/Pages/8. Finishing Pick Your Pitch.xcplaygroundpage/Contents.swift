//: [Previous](@previous)

import Foundation

// MARK: 8. Finishing Pick Your Pitch
// 00:00 We could have implemented UserDefaults in number of ways. Here is how I did it.

// 00:06 First, I added a method to the AppDelegate to check if this is the first time this app is run. This is pretty much the same code I used in the example app on midnight mode before. The only thing I've changed is what I set to be the default value. Here I set a float to be the default value for slider value key.
// 00:22 Remember, this is important so that you can check this user default throughout the rest of you code without wondering whether the value is et or not.
// Remember to call checkIfFirstLaunch() in method 'didFinishLaunchingWithOptions'

// 00:29 Next, after looking around the 'PlaySoundsViewController.swift', I thought it made sense to check for the slider value in videDidLoad(). And using UserDefaults Float for key method, I set the sliderView.value equal to UserdeDefaults.standart.float(forKey: SliderValueKey)
// 00:48 SliderValueKey is a constant that I used to store the key String I'll be using again and again. For saving the slider state, there are few methods that work.
    // If you save/store it in '@IBAction func sliderDidMove', you will always be storing the most up to date slider value.
    // If you save/store it in '@IBAction func playAudio', you will see the last value that the user chose to listen to. I choose to save it in the '@IBAction func playAudio', and I used UserDefaults.standard.set(sliderView.value, forKey: SliderValueKey) to set the UserDefault to the current slider views value, and let's run it.

//: [Next](@next)
