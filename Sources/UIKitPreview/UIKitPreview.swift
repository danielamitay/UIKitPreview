// The Swift Programming Language
// https://docs.swift.org/swift-book

/// A macro that produces both a value and a string containing the
/// source code that generated the value. For example,
///
///     #stringify(x + y)
///
/// produces a tuple `(x + y, "x + y")`.
@freestanding(expression)
public macro stringify<T>(_ value: T) -> (T, String) = #externalMacro(module: "UIKitPreviewMacros", type: "StringifyMacro")

import UIKit

@freestanding(declaration)
public macro PreviewUIViewController(_ name: String? = nil, body: @escaping @MainActor () -> UIViewController) = #externalMacro(module: "UIKitPreviewMacros", type: "ViewControllerMacro")

@freestanding(declaration)
public macro PreviewUIView(_ name: String? = nil, body: @escaping @MainActor () -> UIView) = #externalMacro(module: "UIKitPreviewMacros", type: "ViewMacro")
