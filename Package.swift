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
            url: "https://tmf-warehouse-1314481471.cos.ap-beijing.myqcloud.com/tcmpp/ios-sdk/TCMPPExtMedia/2.0.3/TCMPPExtMedia_2.0.3.zip",
            checksum: "74f8bad416ca13424d69fb7a1492dfc99e17de7107b0d466d1fbbc3e0c4214b5"

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
