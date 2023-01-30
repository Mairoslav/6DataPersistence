
// MARK: 1.Grand Central Dispatch (GCD) and Queues
// Queue is line of Closures waiting to be be run at Thread, once the Closure finishes running, it is removed from the Queue and next one in line runs

// MARK: 2. GCD and Threads
// a) GCD makes it safe to use threads directly
// b) GCD makes asynchronous programming easier and safer by hiding threads from the developer.
// both are true

// MARK: 3. Types of Queues
// GCD provides us with two types of Queues:
// 1. Serial or Syncronous Queues: every closure gets to run when it reaches the end of the Queue.
// 2. Concurent or Asyncronous Queues: have several threads that pick up closures at any point of the Queue for running. These are harder to contnroll and we will not be using them.

// 00:29 An app can have several Queues, but not all are treated equal. There is a very special one called a Main Queue. This is the Queue that handles the UI of your app as well as any of your code that does not explicitly ask to run on the background queue.
// 00:48 It is vital that you never run code that blocks this queue. What does it mean to block? Blocking is when your code takes a human perceivable amount of time to execute and prevents your app from continuing until its done. The most common way of blocking is by using the network. Say you created some code to make a network request on a main queue. Then none of your UI can update, until the network request finishes. We cannot allow this to happen. If you block main queue your UI will be slugish and your app will provide terrible user experience and will likely be rerected from the app store.

// MARK: 4. Serial Queues: Can I Have Concurrency?
// Question: Only concurrent queues allow for concurrent programming on iOS. True or False.
// its False, but why???

