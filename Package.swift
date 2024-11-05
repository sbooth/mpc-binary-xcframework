// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "mpc-binary-xcframework",
	platforms: [
		.macOS(.v11),
		.iOS(.v15),
		.tvOS(.v15),
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
			url: "https://github.com/sbooth/mpc-binary-xcframework/releases/download/0.1.1/mpc.xcframework.zip",
			checksum: "dfa41a4e31b7764e78ad1cafe43336cc0f859c3c03b30cb823fa9f600ebd17c6"),
	]
)
