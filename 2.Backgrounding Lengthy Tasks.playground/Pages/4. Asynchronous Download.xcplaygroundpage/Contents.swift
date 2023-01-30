//: [Previous](@previous)

// MARK: 4. Asynchronous Download

// below is also 2nd alternative way for refactoring by if let, it looks much better, and most important of all, it will not crash if we provide a badly formatted URL and URL returns a nil
// still even though it look good... it sucts it blocks the main queue, thats why we go for 2nd @IBAction func simpleAsynchronousDownload

// 00:24 First of all we need to find a line that is blocking, can you spot is just by lookig at the code, yes its this one (also can see there is an violet error):

    // let imgData = try? Data(contentsOf: url),

// the try? Data one, that's the one that downloads the image and staff in in the Data. We need to **send this fellow to background queue. Actually the next line where we convert this Data into UIImage may also take some time although much less.

// ** so let's send both to the background, but hold on UIImage belongs to UIKit, so we should never use it in main queue. Well not not really. Not all UIKit is thread unsafe. There are few exceptions, such as UIImage. However all the visual staff, views, are unsafe, so changing the image property here at this point of code:

    // photoView.image = image

// 01:13 that must be done in the Main queue.

// Always remember the famous heiku from zen master bashu "if the name ends View it belongs in the Main queue.

// First of all, lets' create a queu from scratch, for that we use function DispatchQueue(label:attributes:)

// 04:34 Before we move on let's make sure that this code does not block, run the app... 

//: [Next](@next)
