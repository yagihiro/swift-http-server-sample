import PackageDescription

let package = Package(
    name: "swift-http-server-sample",
    dependencies: [
        .Package(url: "https://github.com/kylef/Curassow.git", majorVersion: 0, minor: 4),
    ]
)
