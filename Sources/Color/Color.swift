//
//  Color.swift
//  Color
//

#if os(iOS)
import UIKit
public typealias NPColor = UIColor
#endif

#if os(macOS)
import AppKit
public typealias NPColor = NSColor
#endif

public enum Color {}

extension NPColor {
	public func getComponents() -> (r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) {
		var r: CGFloat = 0, g: CGFloat = 0, b: CGFloat = 0, a: CGFloat = 0
		self.getRed(&r, green: &g, blue: &b, alpha: &a)
		return (r, g, b, a)
	}
}

extension Color {
	public static func dynamic(from color: NPColor) -> NPColor {
		color
	}
}

// MARK: -
extension Color {
	public static let systemBlue = Color.dynamic(from: .systemBlue)
	public static let systemBrown = Color.dynamic(from: .systemBrown)
	public static let systemGray = Color.dynamic(from: .systemGray)
	@available(iOS 15.0, *)
	public static let systemCyan = Color.dynamic(from: .systemCyan)
	public static let systemGreen = Color.dynamic(from: .systemGreen)
	public static let systemIndigo = Color.dynamic(from: .systemIndigo)
	@available(iOS 15.0, *)
	public static let systemMint = Color.dynamic(from: .systemMint)
	public static let systemOrange = Color.dynamic(from: .systemOrange)
	public static let systemPink = Color.dynamic(from: .systemPink)
	public static let systemPurple = Color.dynamic(from: .systemPurple)
	public static let systemRed = Color.dynamic(from: .systemRed)
	public static let systemTeal = Color.dynamic(from: .systemTeal)
	public static let systemYellow = Color.dynamic(from: .systemYellow)

	public static let clear = Color.dynamic(from: .clear)

	public static let black = Color.dynamic(from: .black)
	public static let blue = Color.dynamic(from: .blue)
	public static let brown = Color.dynamic(from: .brown)
	public static let cyan = Color.dynamic(from: .cyan)
	public static let darkGray = Color.dynamic(from: .darkGray)
	public static let gray = Color.dynamic(from: .gray)
	public static let green = Color.dynamic(from: .green)
	public static let lightGray = Color.dynamic(from: .lightGray)
	public static let magenta = Color.dynamic(from: .magenta)
	public static let orange = Color.dynamic(from: .orange)
	public static let purple = Color.dynamic(from: .purple)
	public static let red = Color.dynamic(from: .red)
	public static let white = Color.dynamic(from: .white)
	public static let yellow = Color.dynamic(from: .yellow)
}

// MARK: -
#if os(iOS)
extension Color {
	public static let label = Color.dynamic(from: .label)
	public static let secondaryLabel = Color.dynamic(from: .secondaryLabel)
	public static let tertiaryLabel = Color.dynamic(from: .tertiaryLabel)
	public static let quaternaryLabel = Color.dynamic(from: .quaternaryLabel)

	public static let systemFill = Color.dynamic(from: .systemFill)
	public static let secondarySystemFill = Color.dynamic(from: .secondarySystemFill)
	public static let tertiarySystemFill = Color.dynamic(from: .tertiarySystemFill)
	public static let quaternarySystemFill = Color.dynamic(from: .quaternarySystemFill)

	public static let placeholderText = Color.dynamic(from: .placeholderText)

	@available(iOS 15.0, *)
	public static let tintColor = Color.dynamic(from: .tintColor)

	public static let systemBackground = Color.dynamic(from: .systemBackground)
	public static let secondarySystemBackground = Color.dynamic(from: .secondarySystemBackground)
	public static let tertiarySystemBackground = Color.dynamic(from: .tertiarySystemBackground)

	public static let systemGroupedBackground = Color.dynamic(from: .systemGroupedBackground)
	public static let secondarySystemGroupedBackground = Color.dynamic(from: .secondarySystemGroupedBackground)
	public static let tertiarySystemGroupedBackground = Color.dynamic(from: .tertiarySystemGroupedBackground)

	public static let separator = Color.dynamic(from: .separator)
	public static let opaqueSeparator = Color.dynamic(from: .opaqueSeparator)

	public static let link = Color.dynamic(from: .link)

	public static let darkText = Color.dynamic(from: .darkText)
	public static let lightText = Color.dynamic(from: .lightText)

	public static let systemGray2 = Color.dynamic(from: .systemGray2)
	public static let systemGray3 = Color.dynamic(from: .systemGray3)
	public static let systemGray4 = Color.dynamic(from: .systemGray4)
	public static let systemGray5 = Color.dynamic(from: .systemGray5)
	public static let systemGray6 = Color.dynamic(from: .systemGray6)
}
#endif

// MARK: -
#if os(macOS)
extension Color {
	public static let label = Color.dynamic(from: .labelColor)
	public static let secondaryLabel = Color.dynamic(from: .secondaryLabelColor)
	public static let tertiaryLabel = Color.dynamic(from: .tertiaryLabelColor)
	public static let quaternaryLabel = Color.dynamic(from: .quaternaryLabelColor)

	public static let text = Color.dynamic(from: .textColor)
	public static let placeholderText = Color.dynamic(from: .placeholderTextColor)
	public static let selectedText = Color.dynamic(from: .selectedTextColor)
	public static let textBackground = Color.dynamic(from: .textBackgroundColor)
	public static let selectedTextBackground = Color.dynamic(from: .selectedTextBackgroundColor)
	public static let keyboardFocusIndicator = Color.dynamic(from: .keyboardFocusIndicatorColor)
	public static let unemphasizedSelectedText = Color.dynamic(from: .unemphasizedSelectedTextColor)
	public static let unemphasizedSelectedTextBackground = Color.dynamic(from: .unemphasizedSelectedTextBackgroundColor)

	public static let link = Color.dynamic(from: .linkColor)
	public static let separator = Color.dynamic(from: .separatorColor)
	public static let selectedContentBackground = Color.dynamic(from: .selectedContentBackgroundColor)
	public static let unemphasizedSelectedContentBackground = Color.dynamic(from: .unemphasizedSelectedContentBackgroundColor)

	public static let selectedMenuItemText = Color.dynamic(from: .selectedMenuItemTextColor)

	public static let grid = Color.dynamic(from: .gridColor)
	public static let headerText = Color.dynamic(from: .headerTextColor)
	public static let alternatingContentBackgrounds = NPColor.alternatingContentBackgroundColors.map { Color.dynamic(from: $0) }

	public static let controlAccent = Color.dynamic(from: .controlAccentColor)
	public static let control = Color.dynamic(from: .controlColor)
	public static let controlBackground = Color.dynamic(from: .controlBackgroundColor)
	public static let controlText = Color.dynamic(from: .controlTextColor)
	public static let disabledControlText = Color.dynamic(from: .disabledControlTextColor)
	public static let selectedControl = Color.dynamic(from: .selectedControlColor)
	public static let selectedControlText = Color.dynamic(from: .selectedControlTextColor)
	public static let alternateSelectedControlText = Color.dynamic(from: .alternateSelectedControlTextColor)
	public static let scrubberTexturedBackground = Color.dynamic(from: .scrubberTexturedBackground)

	public static let windowBackground = Color.dynamic(from: .windowBackgroundColor)
	public static let windowFrameText = Color.dynamic(from: .windowFrameTextColor)
	public static let underPageBackground = Color.dynamic(from: .underPageBackgroundColor)

	public static let findHighlight = Color.dynamic(from: .findHighlightColor)
	public static let highlight = Color.dynamic(from: .highlightColor)
	public static let shadow = Color.dynamic(from: .shadowColor)
}
#endif
