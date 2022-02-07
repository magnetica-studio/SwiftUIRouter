// swift-tools-version:5.5

import PackageDescription

let package = Package(
	name: "SwiftUIRouter",
	platforms: [
		.macOS(.v10_15),
		.iOS(.v14),
		.tvOS(.v14),
		.watchOS(.v7)
	],
	products: [
		.library(
			name: "SwiftUIRouter",
			targets: ["SwiftUIRouter"]),
	],
	dependencies: [
        .package(name: "PublishedObject", url: "https://github.com/Amzd/PublishedObject.git", .branch("master"))
    ],
	targets: [
		.target(
			name: "SwiftUIRouter",
			dependencies: ["PublishedObject"],
			path: "Sources"),
		.testTarget(
			name: "SwiftUIRouterTests",
			dependencies: ["SwiftUIRouter"]),
	]
)
