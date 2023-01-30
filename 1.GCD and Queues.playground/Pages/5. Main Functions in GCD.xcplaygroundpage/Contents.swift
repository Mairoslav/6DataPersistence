//: [Previous](@previous)

// MARK: 5. Main Functions in GCD

import Foundation
import PlaygroundSupport

/*
 00:00 The functionality of GCD is as follows:
 a) we need to be able to create a queue
    a.1.) either from scratch
    a.2.) or reuse an existing one
 
 b) get the main queue
 c) add a closure to an existing queue
 */

// 00:20 GCD was developed in C, unlike Swift C has only functions and types, not clasees and objects. These functions and types have different naming conventions compared to those used in Swift, but they behave exactly if they were a Swift code.

// 00:36 First of all, we need a type to represent a queues, and thats DispatchQueue, an object that manages the execution of tasks serially or concurrently on your app's main thread or on a background thread
DispatchQueue // a type to represent a Queue

// Then we need a function to create a queue fro scratch. Takes two parameters, name and the type of a queue - serial or concurent... see below
DispatchQueue(label:attributes:) // create Queue from scratch

// To specify serial, just ... DISPATCH_QUEUE_SERIAL has been deprecated. Concurrent queues may use DispatchQueue.Attributes.concurrent
DispatchQueue.Attributes.concurrent // to specify Concurrent queues

// 00:57 iOS always gives each app four extra queues on top of the main one. These are called global queues. We access those global queues through function:
DispatchQueue.global(qos:) // to access 4 global queues, apart fro the .main one

// The only difference between these queues is the priority, or how fast it will take attentio of CPU. It is a good practice to avoid creating queues when the one we are using is sufficient.
DispatchQoS.QoSClass.utility // lowest
DispatchQoS.QoSClass.background // low
DispatchQoS.QoSClass.userInitiated // regular
DispatchQoS.QoSClass.userInteractive // top priority

// 01;24 We also need a way to obtain a main queue, this is th equeue that runs all the UIs. We will use below function for this:
DispatchQueue.main // .main queue is serial as learned from iCode

// we need a way of adding closures to the queue, this function takes a queue and closure, it adds this closure to the queue and then returns immediatelly. The code inside the queue will run sometime in near feature (because Async means do not block current execution). The exact time will depend on how many closures are already waiting in the queue and the priority of the queue. 
async


//: [Next](@next)
