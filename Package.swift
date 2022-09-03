// swift-tools-version:5.4

import PackageDescription

let package = Package(
  name: "swift-cgit2",
  platforms: [
    .macOS(.v10_13),
    .iOS(.v11),
  ],
  products: [
    .library(name: "Cgit2", targets: ["Cgit2"]),
  ],
  targets: [
    .target(
      name: "Cgit2",
      dependencies: ["libgit2"],
      linkerSettings: [.linkedLibrary("iconv"), .linkedLibrary("z")]
    ),
    .testTarget(name: "Cgit2Tests", dependencies: ["Cgit2"]),
    .binaryTarget(
      name: "libgit2",
      url: "https://github.com/sharplet/swift-cgit2/releases/download/v1.1.1/libgit2.xcframework.zip",
      checksum: "433fc5d4cb892325b4469eadf1eda33ede2663340cc36857484d166cc0ad5a99"
    ),
  ]
)
