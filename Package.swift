
// swift-tools-version: 5.9
import PackageDescription

let package = Package(
   name: "SidOCR",

   platforms: [
       .iOS(.v15)
   ],

   products: [
       // .library(
       //     name: "SidOCR",
       //     targets: [
       //         "AccuraOCR",
       //         "SidOCRDependencies"
       //     ]
       // )
      .library(
          name: "SidOCR",
          targets: [
              "SidOCRDependencies"
          ]
      )
   ],

   dependencies: [
       .package(
           url: "https://github.com/d-date/google-mlkit-swiftpm",
           from: "9.0.2"
       ),
       .package(
           url: "https://github.com/SVProgressHUD/SVProgressHUD.git",
           from: "2.3.1"
       ),
       .package(
           url: "https://github.com/saeed-mohammad/Tensorflow",
           from: "1.0.6"
       )
   ],

   targets: [
       .binaryTarget(
           name: "AccuraOCR",
           path: "AccuraOCR.xcframework"
       ),

       .target(
           name: "SidOCRDependencies",
           dependencies: [
               "AccuraOCR",

               .product(
                   name: "MLKitTextRecognition",
                   package: "google-mlkit-swiftpm"
               ),
               .product(
                   name: "MLKitBarcodeScanning",
                   package: "google-mlkit-swiftpm"
               ),
               .product(
                   name: "MLKitTextRecognitionChinese",
                   package: "google-mlkit-swiftpm"
               ),
               .product(
                   name: "MLKitTextRecognitionJapanese",
                   package: "google-mlkit-swiftpm"
               ),
               .product(
                   name: "MLKitTextRecognitionKorean",
                   package: "google-mlkit-swiftpm"
               ),
               .product(
                   name: "SVProgressHUD",
                   package: "svprogresshud"
               ),
               .product(
                   name: "TensorFlowLiteTaskVision",
                   package: "tensorflow"
               )
           ],
           path: "Sources/SidOCRDependencies"
       )
   ]
)
