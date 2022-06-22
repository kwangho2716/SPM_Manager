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
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MyPackage",
            dependencies: [
                .product(name: "Alamofire", package: "Alamofire")
            ]),
        .testTarget(
            name: "MyPackageTests",
            dependencies: ["MyPackage"]),
    ]
)
