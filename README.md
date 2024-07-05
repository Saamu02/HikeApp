# HikeApp

After not touching SwiftUI for a long time, I restarted my SwiftUI learning from scratch.

This is the first app, I made in SwiftUI in long time, just for my learning.

App UI:

## Light Mode:

<img src="https://github.com/Saamu02/HikeApp/assets/126147404/f8704c86-5132-4c2f-b007-b87799196a0d" width="200" />
<img src="https://github.com/Saamu02/HikeApp/assets/126147404/b9a368d2-5008-477b-b02b-4f8a31276e2e" width="200" />
<img src="https://github.com/Saamu02/HikeApp/assets/126147404/12c97b06-3295-4772-8fea-59db9ef13f4c" width="200" />
<img src="https://github.com/Saamu02/HikeApp/assets/126147404/304d77d8-91de-48af-8a2f-85638518a327" width="200" />



## Dark Mode:

<img src="https://github.com/Saamu02/HikeApp/assets/126147404/3d68c9f3-cda0-470d-8aac-9346e255f3c2" width="200" />
<img src="https://github.com/Saamu02/HikeApp/assets/126147404/8bacb94e-4d81-4f69-86a5-8fea726d7238" width="200" />
<img src="https://github.com/Saamu02/HikeApp/assets/126147404/382efea7-23a5-447d-98f1-b92bc06dfc3f" width="200" />
<img src="https://github.com/Saamu02/HikeApp/assets/126147404/8048a8b8-3729-4f97-92fa-bbf12a43bd3e" width="200" />



## Video:
https://github.com/Saamu02/HikeApp/assets/126147404/6e6d6a80-3e60-4d98-a3d1-61e807934007



# Important Points:
- How to Add 3d affect to the view.
- How to create separate UI components.
- How to use linear gradients.
- How to create gradient animations.
- How to create motion animations.
- The use of drawingGroup() for animations. (This modifier enables high performance metal rendering. We know that SwiftUI uses Core Animation for rendering its view by default. As we built more and more complex animations, it starts to slow down our app. Thats where drawingGroup() came into play. This modifier tells SwiftUI to render the content into offscreen image before returning it to the screen as a single rendered output, which is significantly faster. And behind the scenes, this is powered by metal which is apple native framework for working directly with the GPU for high speed graphics).
- How to use custom LabeledContent.
- How to have alternative icons for the app.


Also faced some challenges while following the tutorials, as there were some modifiers that were depricated. e.g. cornerRadius and foregroundColor.

## 
## 

Note: I am following the tutorials SwiftUI + SwiftData Masterclass - iOS App Development Swift by Robert Petras.

Reference Link: https://www.udemy.com/course/swiftui-masterclass-course-ios-development-with-swift/
