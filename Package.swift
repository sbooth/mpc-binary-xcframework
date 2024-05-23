// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "mpc-binary-xcframework",
	platforms: [
		.macOS(.v10_15),
		.iOS(.v14),
	],
	products: [
		// Products define the executables and libraries a package produces, making them visible to other packages.
		.library(
			name: "mpc",
			targets: [
				"mpc",
			]),
	],
	targets: [
		// Targets are the basic building blocks of a package, defining a module or a test suite.
		// Targets can depend on other targets in this package and products from dependencies.
		.binaryTarget(
			name: "mpc",
			url: "https://github.com/sbooth/mpc-binary-xcframework/releases/download/0.1.0/mpc.xcframework.zip",
			checksum: "d445b072c6aa808dc14baf2b571f11ad72bc0dc76a0cc5d526dee8f6e2685064"),
	]
)
