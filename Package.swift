// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "GenieeMediationUnityAds",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "GenieeMediationUnityAds",
            targets: ["GenieeMediationUnityAdsTarget", "UnityAds"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/unigeniee/swift-package-manager-geniee-ios-sdk.git",
            from: "8.4.3"
        )
    ],
    targets: [
        .target(
            name: "GenieeMediationUnityAdsTarget",
            dependencies: [
                "GenieeMediationUnityAds",
                "UnityAds",
                .product(name: "GNAdSDK", package: "swift-package-manager-geniee-ios-sdk")
            ],
            path: "Sources/GenieeMediationUnityAdsTarget"
        ),
        .binaryTarget(
            name: "GenieeMediationUnityAds",
            url: "https://github.com/unigeniee/geniee-ios-mediation-unityads/releases/download/8.3.1/GenieeMediationUnityAds.8.3.1.zip",
            checksum: "08ea809dab114a5b193deb571ec0732cec29af59f28a85b0fa66b10b46eb9e57"
        ),
        .binaryTarget(
            name: "UnityAds",
            url: "https://github.com/Unity-Technologies/unity-ads-ios/releases/download/4.18.0/UnityAds.zip",
            checksum: "e027a0ab66f7d57a7e59855c20d7793b30a5a25b1f1339412970c8a2ef932b6f"
        )
    ]
)
