// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "SPM Package",
    platforms: [.iOS(.v13)],
    products: [
        // dynamic, static, none
        // use_framework: -> static / unuse_framework: -> dynamic
        .library(name: "AlamoPackage", type: .static, targets: ["AlamoPackage"]),
        .library(name: "OthersPackage", type: .dynamic, targets: ["OthersPackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", exact: "4.9.0"),
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git", exact: "8.15.0"),
        .package(url: "https://github.com/google/GoogleDataTransport.git", exact: "9.1.2"),
        .package(url: "https://github.com/google/GoogleUtilities.git", exact: "7.7.0"),
        .package(url: "https://github.com/google/promises.git", exact: "2.1.0"),

        .package(url: "https://github.com/zendesk/answer_bot_sdk_ios.git", from: "2.2.0"),
        .package(url: "https://github.com/zendesk/chat_sdk_ios.git", from: "2.12.0"),
        .package(url: "https://github.com/zendesk/support_sdk_ios.git", from: "5.5.0"),
        .package(url: "https://github.com/zendesk/sdk_messaging_ios.git", from: "2.4.1"),
    ],
    targets: [
        .target(
            name: "AlamoPackage",
            dependencies: [
                .product(name: "Alamofire", package: "Alamofire"),
            ]),
        .target(
            name: "OthersPackage",
            dependencies: [
                .product(name: "FirebaseAnalytics", package: "firebase-ios-sdk"),
                .product(name: "FirebaseMessaging", package: "firebase-ios-sdk"),
                .product(name: "FirebaseCrashlytics", package: "firebase-ios-sdk"),
                .product(name: "FirebaseDynamicLinks", package: "firebase-ios-sdk"),
                .product(name: "GoogleDataTransport", package: "GoogleDataTransport"),

                .product(name: "ZendeskAnswerBotSDK", package: "answer_bot_sdk_ios"),
                .product(name: "ZendeskChatSDK", package: "chat_sdk_ios"),
                .product(name: "ZendeskSupportSDK", package: "support_sdk_ios"),
                .product(name: "ZendeskSDKMessaging", package: "sdk_messaging_ios"),
            ]),
    ]
)
