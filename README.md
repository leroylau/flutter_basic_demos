# Flutter Basic Demos

A new Flutter project.

## List of Demos

* [x] Http
* [x] WebSocket
* [x] BottomSheet
* [x] LoginPage based on sqflite
* [x] DismissibleItem in ListView
* [x] Pull to refresh
* [x] Game of throne
* [x] Hero widget
* [x] Flip Card
* [x] Another flip card demo using scoped_model package

## Key notes

`PageView class` is A scrollable list that works page by page. Each child of a page view is forced to be the same size as the viewport.

>You can use a PageController to control which page is visible in the view. In addition to being able to control the pixel offset of the content inside the PageView, a PageController also lets you control the offset in terms of pages, which are increments of the viewport size.

>The PageController can also be used to control the PageController.initialPage, which determines which page is shown when the PageView is first constructed, and the PageController.viewportFraction, which determines the size of the pages as a fraction of the viewport size.