// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "MyPackage",
    products: [
        .library(
            name: "MyPackage",
            targets: ["MyPackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", exact: "4.9.0"),
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git", exact: "8.15.0"),
        .package(url: "https://github.com/pinterest/PINRemoteImage.git", from: "3.0.0"),
        .package(url: "https://github.com/zendesk/answer_bot_sdk_ios.git", from: "2.2.0"),
        .package(url: "https://github.com/zendesk/chat_sdk_ios.git", from: "2.12.0"),
        .package(url: "https://github.com/zendesk/support_sdk_ios.git", from: "5.5.0"),
        .package(url: "https://github.com/zendesk/sdk_messaging_ios/", from: "2.4.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MyPackage",
            dependencies: [
//                .product(name: "Alamofire", package: "Alamofire"),
            ]),
        .testTarget(
            name: "MyPackageTests",
            dependencies: ["MyPackage"]),
    ]
)
