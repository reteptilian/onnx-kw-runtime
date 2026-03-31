// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "OnnxKWRuntime",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "OnnxKWRuntime",
            targets: ["OnnxRuntime", "SherpaOnnx"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "OnnxRuntime",
            url: "https://github.com/reteptilian/onnx-kw-runtime/releases/download/1.0.3/onnxruntime.xcframework.zip",
            checksum: "727c216d417b5ae1fba0e1a4b562e09e7b02f1989fdeab78267ea3bfa1ee7978"
        ),
        .binaryTarget(
            name: "SherpaOnnx",
            url: "https://github.com/reteptilian/onnx-kw-runtime/releases/download/1.0.3/sherpa-onnx.xcframework.zip",
            checksum: "022e1c837b2b44707c76152c6ccc35232d85e60eb931a4f830903057c1522cae"
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
