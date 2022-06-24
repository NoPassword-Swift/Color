//
//  UIColor.swift
//  Color
//

#if os(iOS)

import UIKit

extension UIColor {
	static func dynamic(provider: @escaping (UITraitCollection) -> UIColor) -> UIColor {
		UIColor { provider($0) }
	}
}

#endif
