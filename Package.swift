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
      url: "https://github.com/glushchenko/swift-cgit2/releases/download/1.2.0/libgit2.xcframework.zip",
      checksum: "cbf67a82594267aecc5cc4d021059cf0165f38566df0dcf0c52e065f1d6f1358"
    ),
  ]
)
