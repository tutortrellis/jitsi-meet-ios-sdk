// swift-tools-version: 5.9
// Jitsi Meet iOS SDK 13.3.1 with Tutor Trellis's patches (patches/), as 13.3.1-tt.1: made by
// build-ios.sh from https://github.com/jitsi/jitsi-meet-ios-sdk-releases's Package.swift, with the frameworks as release zips. Don't edit.
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "JitsiMeetSDK",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "JitsiMeetSDK",
            targets: ["JitsiMeetSDKWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/jitsi/webrtc", from: "155.0.0"),
        .package(url: "https://github.com/Giphy/giphy-ios-sdk", from: "2.2.12")
    ],
    targets: [
        .binaryTarget(
            name: "JitsiMeetSDK",
            url: "https://github.com/tutortrellis/jitsi-meet-ios-sdk/releases/download/13.3.1-tt.1/JitsiMeetSDK.xcframework.zip",
            checksum: "b1c6e4b63bcc0a42ebc48aa72289b3acc5d5409d3154add8ed9f7122869d10a5"
        ),
        .binaryTarget(
            name: "hermes",
            url: "https://github.com/tutortrellis/jitsi-meet-ios-sdk/releases/download/13.3.1-tt.1/hermes.xcframework.zip",
            checksum: "5e93e1eb526feba75f433b05cf153338f8569806d60ad1d5bc700c77c49ec26e"
        ),
        .target(
            name: "JitsiMeetSDKWrapper",
            dependencies: [
                .target(name: "JitsiMeetSDK"),
                .target(name: "hermes"),
                .product(name: "WebRTC", package: "webrtc"),
                .product(name: "GiphyUISDK", package: "giphy-ios-sdk")
            ],
            path: "Sources"
        )
    ]
)
