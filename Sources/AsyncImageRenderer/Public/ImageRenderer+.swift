//
//  ImageRenderer+.swift
//  
//
//  Created by SwiftMan on 2023/03/16.
//

import SwiftUI

@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
extension ImageRenderer {
  @MainActor
  public var image: Image? {
#if os(macOS)
    guard let nsImage else { return nil }
    scale = NSScreen.main?.backingScaleFactor ?? 2
    return Image(nsImage: nsImage)
#else
    guard let uiImage else { return nil }
    scale = UIScreen.main.scale
    return Image(uiImage: uiImage)
#endif
  }
}
