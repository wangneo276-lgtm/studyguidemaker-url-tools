// swift-tools-version: 5.7
import PackageDescription
let package = Package(
    name: "StudyGuideMakerUrlTools",
    products: [.library(name: "StudyGuideMakerUrlTools", targets: ["StudyGuideMakerUrlTools"])],
    targets: [.target(name: "StudyGuideMakerUrlTools", path: "swift/Sources/StudyGuideMakerUrlTools")]
)
