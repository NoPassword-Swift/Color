//
//  NSColor.swift
//  Color
//

#if os(macOS)

import AppKit

extension NSColor {
	static func dynamic(provider: @escaping (NSAppearance) -> NSColor) -> NSColor {
		NSColor(name: nil) { provider($0) }
	}
}

#endif
