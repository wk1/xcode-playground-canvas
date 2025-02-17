# PlaygroundCanvas 🖥️🎨 – A Framed Live View for Swift Playgrounds

**PlaygroundCanvas** is a lightweight SwiftUI wrapper designed to enhance the experience of using SwiftUI in Xcode Playgrounds. It provides a **fixed outer frame** for the Live View, ensuring that SwiftUI behaves more consistently with how it would in a real Swift Playgrounds environment.

## ✨ Features
- 📏 **Fixed Frame** (480x720) to simulate a real device or structured layout
- 🎨 **Subtle Styling** with gradients, rounded corners, and a soft border for a polished look
- 🎭 **Encapsulation** to make the Live View experience more predictable and visually appealing
- 🛠️ **Easy Integration** – Simply wrap your SwiftUI view inside `PlaygroundCanvas`

## 🏗️ Usage
```swift
import SwiftUI
import PlaygroundSupport

PlaygroundPage.current.setLiveView(
  PlaygroundCanvas {
    ContentView() // Replace with your own view
  }
)
```

## 🎯 Why Use This?
When working with **SwiftUI in Xcode Playgrounds**, the default Live View can feel inconsistent, especially compared to Swift Playgrounds on iPad. `PlaygroundCanvas` provides a **structured environment**, making it easier to design, test, and prototype UI components with a more **device-like experience**.

