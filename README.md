# AsyncImageRenderer

For `ImageRenderer` included in `SwiftUI`, scale is set to `1`.   
It's very blurry. Fixed this.

![Badge](https://img.shields.io/badge/swift-white.svg?style=flat-square&logo=Swift)
![Badge](https://img.shields.io/badge/SwiftUI-001b87.svg?style=flat-square&logo=Swift&logoColor=black)
![Badge - Version](https://img.shields.io/badge/Version-0.5.0-1177AA?style=flat-square)
![Badge - Swift Package Manager](https://img.shields.io/badge/SPM-compatible-orange?style=flat-square)
![Badge - Platform](https://img.shields.io/badge/macOS-v12.0-yellow?style=flat-square)
![Badge - Platform](https://img.shields.io/badge/iOS-v15.0-yellow?style=flat-square)
![Badge - License](https://img.shields.io/badge/license-MIT-black?style=flat-square)

## SampleImage

## Example
```swift
import AsyncImageRenderer

Task {
  if let renderedImage = await AsyncImageRenderer.image(ContentView())
    // 
  }
}
```

## Installation
### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler. 

Once you have your Swift package set up, adding Alamofire as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/swift-man/LaunchingView.git", .from: "0.8.2")
]
```
