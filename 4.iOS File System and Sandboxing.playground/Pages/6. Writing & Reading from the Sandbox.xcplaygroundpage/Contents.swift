//: [Previous](@previous)

import Foundation

// MARK: 6. Writing & Reading from the Sandbox
// 00:00 see comments directly in Xcode project 'SandboxPlayground.xcodeproj" 

/*
 Code under the video:
 AppDelegate.swift
 
 func sandboxPlayground() {
     let fm = FileManager.default
     let urls = fm.urls(for: .documentDirectory, in: .userDomainMask)
     let url = urls.last?.appendingPathComponent("file.txt")

     do {
         try "Hi There!".write(to: url!, atomically: true, encoding: String.Encoding.utf8)
     } catch {
         print("Error while writing")
     }

     do {
         let content = try String(contentsOf: url!, encoding: String.Encoding.utf8)

         if content == "Hi There!" {
             print("yay")
         } else {
             print("oops")
         }
     } catch {
         print("Something went wrong")
     }
 }

 func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
     // Override point for customization after application launch.

     sandboxPlayground()
     return true
 }
 */

/*
 To follow along, open the SandboxPlayground project. You can find this project in the SandboxPlayground-Empty directory of the iOS Persistence course projects repo, so download this repo if you haven't already.
 */

//: [Next](@next)
