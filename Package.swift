// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "TCMPPExtMedia",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "TCMPPExtMedia",
            targets: ["TCMPPExtMediaWrapper"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/TCMPP-Team/TZImagePickerController.git", from: "3.8.9")
    ],
    targets: [
        .binaryTarget(
            name: "TCMPPExtMedia",
            url: "https://tmf-warehouse-1314481471.cos.ap-beijing.myqcloud.com/tcmpp/ios-sdk/noshark/TCMPPExtMedia/2.0.1/13/TCMPPExtMedia_2.0.1.xcframework.zip",
            checksum: "a4d351cc29a8de6b77c4c14170651aec42fdf43e674f8b2c1b63cbc254bc96cc"

        ),
        .target(
            name: "TCMPPExtMediaWrapper",
            dependencies: [
                "TCMPPExtMedia",
                .product(name: "TZImagePickerController", package: "TZImagePickerController")
            ],
            resources: []
        )
    ]
) 
