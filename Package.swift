// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "GenieeMediationUnityAds",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "GenieeMediationUnityAds",
            targets: ["GenieeMediationUnityAdsTarget", "UnityAds"]
        ),
        .library(
            name: "UnityAds",
            targets: ["UnityAds"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/geniee-ssp/swift-package-manager-geniee-ios-sdk.git",
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
            url: "https://github.com/geniee-ssp/geniee-ios-mediation-unityads/releases/download/4.18.0/GenieeMediationUnityAds.4.18.0.0.zip",
            checksum: "54786a6975575e6ecf6e07599a4c62fddbd4317888f3ab2114580890f8c8bda5"
        ),
        .binaryTarget(
            name: "UnityAds",
            url: "https://github.com/Unity-Technologies/unity-ads-ios/releases/download/4.18.0/UnityAds.zip",
            checksum: "e027a0ab66f7d57a7e59855c20d7793b30a5a25b1f1339412970c8a2ef932b6f"
        )
    ]
)
