//: [Previous](@previous)

// MARK: 00:35 steps for Synchronous Download
// 1. we need to get an URL
// 2. we need to obtain the Data
// 3. turn the Data into UIImage
// 4. display the UIImage

// can check all the steps in the @IBAction func synchronousDownload

// 02:08 now run the simulator, and see if this Sync does bock or not. And indeed it does block. As you see when I click on Sync button, it should just blink, instead it remains inactive for certain time, while the image is being downloaded. And while that happens you cannot do anything. The UI is blocked. And its blocked, and its blocked for user perceivable amounth of time. So "congratulations" you have just been rejected from the app store. We cannot deliver code that behaves like this, in no circumstances. Can see also the violet error in the Xcode project: 'Synchronous URL loading of https://d17h27t6h515a5.cloudfront.net/topher/2017/November/59fe511f_sealion/sealion.jpg should not occur on this application's main thread as it may lead to UI unresponsiveness. Please switch to an asynchronous networking API such as URLSession'.
// 02:45 Fortunatelly from previous lesson, we alrady know all tools how to fix this. However before we do it in next video, see if you can refactor this code (code in the body of @IBAction func synchronousDownload) and put everything in the single "if let" statement. It is not good practice to have all these
 

//: [Next](@next)
