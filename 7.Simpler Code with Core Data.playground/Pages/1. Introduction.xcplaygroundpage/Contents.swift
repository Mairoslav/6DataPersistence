//: [Previous](@previous)

import Foundation

// MARK: 1. Introduction
// 00:00 Welcome to sipler Code with Core Date. In this lesson, we§re going to take a break from adding new functionality, and instead we look at architectural improvements we can make.
    // 00:14 First, we'll look at the code that persists notebooks and nodes. That code both updates the user interface and responds to data model changes. That's too much. We should separate out these tasks so that every method has fewer clearer responsibilities.
    // 00:30 Next, we'll make our UI more reactive to model changes using fresh results controllers and core data notifications.
    // 00:37 And finally, we'll learn how to fetch more efficiently using caching.

// By the end of this lesson, you'll be writing simpler and more robust core data apps using even less code. 

//: [Next](@next)
