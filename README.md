# CodeInUI
Various code examples for creating UI's without storyboards (Xcode 11+).

To see different user-interface code examples, browse through branches.

To get started, follow these instructions below:
* Delete `Main.storyboard`
* Remove `Main` from project "Target" settings
* Go to `Info.plist`, and press `command` + `f`, then delete any lines referring to storyboard `Main`.

## List of branches
* master: Master branch (same as basicvc)
* basicvc: Basic UIViewController implementation in code
* tablevc: Basic UITableViewController implementation in code, with standard cell format
* collectionvc: Basic UICollectionViewController implementation in code, with standard cell format, no content
* splitvc: Basic UISplitViewController, including a TableView on MasterViewController
* tabbarvc: Basic UITabBarController, including three ViewControllers
* pagevc: Basic UIPageViewController, with two pages

In addition to those above:
* tablevc-customcell: A variation of above tablevc with custom cell
* collectionvc-customcell: A variation of above collectionvc with custom cell
