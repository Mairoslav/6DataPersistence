//: [Previous](@previous)

import Foundation

// MARK: 3. Complexity in Mooskine
// 00:00 I mentioned that we've inadvertently/without intention introduced some complexity in Mooskine. There's some code that can be simplified. Let's take a look at the first few controller the user sees, 'NotebookListViewController.swift'

// 00:16 In the UI, when the user taps on the Add Notebook button, an alert is displayed. If th user provides a name and taps save, then addNotebook is called. Let's jump to the 'addNotebook' medhod in 'NotebookListViewController.swift' (line 117). Reading through this method, there are actually several different things that it's doing:
    // 00:36 It creates a new notebook

//: [Next](@next)
