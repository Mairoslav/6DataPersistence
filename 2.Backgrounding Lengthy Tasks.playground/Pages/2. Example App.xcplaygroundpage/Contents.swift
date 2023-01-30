//: [Previous](@previous)

// there are two gitHub links:
// https://github.com/udacity/ios-nd-gcd
// https://github.com/udacity/ios-nd-gcd/tree/swift-3

// I go for 1st one (seems to be newer) so as per this video on "Clone a repository with GitHub Desktop | GitHub Desktop Tutorial 2022" https://www.youtube.com/watch?v=PoZNIbs_wx8&t=96s
// in GitHub Desktop click on File/Clone Repository/Clone Repository windos opens/thre choose URL sheet
// now move to gitHub repository that you want to copy from gitHub to your macchine/copy HTTPS the url/and paste that url to Clone Repository window that is opened in GitHub Desktop/choose local path where you want the copied/cloned project to be saved/now click on Clone/then you'll have a copy of that repository on your macchine

// 00:25 The "FatImages" app as you can see in main storyboard, one image view, *slider - changes the alfa channel/transparency of the image view, and three buttons:
    // 1. Sync
    // 2. Async
    // 3. Async + completion closure

// 00:38 *slider - changes the alfa channel/transparency of the image view, it's basically there so we can tell if the UI is blocked or not. If you can move it while its downloaded, it means the UI is not blocked.

// 00:46 Whenever you click on these buttons, the large image will be downloaded, this is by far the easiers way to block. So for each button we'll write a different action:
    // 1. Sync: will use a naive serial code that blocks
    // 2. Async: will use asynchronized version using GCD
    // 3. Async + completion closure: will use more elegant version that takes a completion closure

// Let's get started

//: [Next](@next)
