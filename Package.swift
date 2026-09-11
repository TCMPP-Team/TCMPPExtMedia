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
            url: "https://tmf-warehouse-1314481471.cos.ap-beijing.myqcloud.com/tcmpp/ios-sdk/TCMPPExtMedia/2.0.2/TCMPPExtMedia_2.0.2.zip",
            checksum: "97b9ac0dc92837de61ee284f81655333cf1bad3b3b1f09c333731a0614abf1e3"

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
