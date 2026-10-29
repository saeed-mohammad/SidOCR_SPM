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
//            path: "AccuraOCR.framework"
//        )
      .target(
          name: "AccuraOCR",
          path: "AccuraOCR.framework"
      )
        // ← No regular .target here
    ]
)
