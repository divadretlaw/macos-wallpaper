// swift-tools-version:5.9
import PackageDescription

let package = Package(
	name: "Wallpaper",
	platforms: [
		.macOS(.v10_15)
	],
	products: [
		.library(
			name: "Wallpaper",
			targets: [
				"Wallpaper"
			]
		),
	],
	dependencies: [
		.package(url: "https://github.com/apple/swift-argument-parser", from: "1.0.2"),
		.package(url: "https://github.com/stephencelis/SQLite.swift", from: "0.13.1")
	],
	targets: [
		.target(
			name: "Wallpaper",
			dependencies: [
				.product(
					name: "SQLite",
					package: "SQLite.swift"
				)
			],
            swiftSettings: [
                .enableExperimentalFeature("StrictConcurrency")
            ]
		)
	]
)
