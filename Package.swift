// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "MLRuntime",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "OnnxKWRuntime",
            targets: ["OnnxKWRuntime"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "OnnxRuntime",
            url: "https://github.com/reteptilian/onnx-kw-runtime/releases/download/1.0.0/onnxruntime.xcframework.zip",
            checksum: "CHECKSUM1"
        ),
        .binaryTarget(
            name: "SherpaOnnx",
            url: "https://github.com/reteptilian/onnx-kw-runtime/releases/download/1.0.0/sherpa-onnx.xcframework.zip",
            checksum: "CHECKSUM2"
        ),
        .target(
            name: "OnnxKWRuntime",
            dependencies: [
                "OnnxRuntime",
                "SherpaOnnx"
            ],
            path: "Sources/OnnxKWRuntime"
        )
    ]
)
