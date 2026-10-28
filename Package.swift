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
            from: "8.5.1"
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
            url: "https://github.com/geniee-ssp/geniee-ios-mediation-unityads/releases/download/4.18.1/GenieeMediationUnityAds.4.18.0.1.zip",
            checksum: "dcad502144cb5a65626d437d963ad99254660f1ddd32084d90d84a7a377573e4"
        ),
        .binaryTarget(
            name: "UnityAds",
            url: "https://github.com/Unity-Technologies/unity-ads-ios/releases/download/4.18.0/UnityAds.zip",
            checksum: "e027a0ab66f7d57a7e59855c20d7793b30a5a25b1f1339412970c8a2ef932b6f"
        )
    ]
)
