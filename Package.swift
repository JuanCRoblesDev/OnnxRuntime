// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OnnxRuntimeC++",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "OnnxRuntime",
            targets: ["OnnxRuntime"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
//        .binaryTarget(
//            name: "OnnxRuntime",
//            path: "xcframework/OnnxRuntime.xcframework"
//        ),
        .binaryTarget(
            name: "OnnxRuntime",
            url: "https://github.com/JuanCRoblesDev/OnnxRuntime/releases/download/v1.0.2/OnnxRuntime.xcframework.zip",
            checksum: "57ae074eb73335613259adb9f2ab666e2422c163e36c6612ea5586127c10f4d2"
        ),
    ],
    swiftLanguageVersions: [.v5],
    cxxLanguageStandard: .cxx17
)
