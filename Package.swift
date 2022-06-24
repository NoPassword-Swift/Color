// swift-tools-version:5.0

import PackageDescription

let package = Package(
	name: "Color",
	platforms: [
		.iOS("13.0"),
		.macOS("12.0"),
	],
	products: [
		.library(
			name: "Color",
			targets: ["Color"]),
	],
	targets: [
		.target(
			name: "Color",
			dependencies: []),
	]
)
