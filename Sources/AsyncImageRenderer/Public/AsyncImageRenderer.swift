//
//  AsyncImageRenderer.swift
//  
//
//  Created by SwiftMan on 2023/03/16.
//

import SwiftUI

@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
public class AsyncImageRenderer {
  public static func image(_ content: some View) async -> Image? {
    let task = Task {
      let renderer = await ImageRenderer(content: content)
      return await renderer.image
    }
    
    let result = await task.result
    switch result {
    case .success(let image):
      return image
    }
  }
}
