// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SCWaveformView",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "SCWaveformView",
            targets: ["SCWaveformView"]
        ),
    ],
    targets: [
        .target(
            name: "SCWaveformView",
            path: "Sources",
            exclude: [
                "Base.lproj/",
                "en.lproj/",
                "Images.xcassets",
                "SCWaveformView-Info.plist",
                "main.m",
                "SCAppDelegate.h",
                "SCAppDelegate.m",
                "SCViewController.h",
                "SCViewController.m",
                "SCWaveformView-Prefix.pch",
            ],
            sources: ["."],
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("."),
            ],
            cxxSettings: [
                .headerSearchPath("."),
            ]
        ),
        .testTarget(
            name: "SCWaveformViewTests",
            dependencies: ["SCWaveformView"]
        ),
    ]
)
