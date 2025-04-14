// swift-tools-version: 6.0

import PackageDescription

let linkWithCxx = SwiftSetting.interoperabilityMode(SwiftSetting.InteroperabilityMode.Cxx)

let package = Package(
    name: "forestLib",
    
    // Each product is an externally visible build artifact that’s available to clients of a package.
    products: [
      Product.library(name: "weirdLibName", targets: ["someTrees"])
    ],
    
    // Each target contains a set of source files that Swift Package Manager compiles into a module or test suite.
    targets: [
      
      Target.target(name: "someTrees", dependencies: ["forestLib"], swiftSettings: [linkWithCxx]),
      
      Target.target(name: "forestLib", swiftSettings: [linkWithCxx]),
      
      Target.testTarget(name: "forestLibTests" ,
                        dependencies: ["forestLib"],
                        swiftSettings: [linkWithCxx])
    ],
    
    cxxLanguageStandard: .cxx20
)

