// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "OTP",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v11),
        .tvOS(.v11),
        .watchOS(.v6)
    ],
    products: [

        .library(name: "OTP", targets: ["OTP"]),
    ],
    dependencies: [
        // 🔑 Hashing (BCrypt, SHA2, HMAC), encryption (AES), public-key (RSA), and random data generation.
        .package(url: "https://github.com/apple/swift-crypto.git", from: "1.0.0")
        
    ],
    targets: [
        .target(name: "OTP", dependencies: [
            .product(name: "Crypto", package: "swift-crypto"),

        ]),
        .testTarget(name: "OTPTests", dependencies: ["OTP"]),
    ]
)
