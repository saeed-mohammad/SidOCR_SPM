// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "SidOCR",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "SidOCR",
            targets: ["AccuraOCR"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/d-date/google-mlkit-swiftpm", from: "9.0.0"),
        .package(url: "https://github.com/SVProgressHUD/SVProgressHUD.git", from: "2.3.1"),
        .package(url: "https://github.com/saeed-mohammad/Tensorflow", from: "1.0.6")
    ],
    targets: [
//        .binaryTarget(
//            name: "AccuraOCR",
//            path: "AccuraOCR.xcframework"
//        ),
        .binaryTarget(
            name: "AccuraOCR",
            url: "https://github.com/saeed-mohammad/SidOCR_SPM/releases/download/1.0.6/AccuraOCR.xcframework.zip",
            checksum: "fa07e96e857f66b0833b29b6c9b7d048e9f3b468d85e5bd8684b173cc531969e"
        )
        // ← No regular .target here
    ]
)
