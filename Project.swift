import ProjectDescription

let project = Project(
    name: "reactive-chat",
    targets: [
        .target(
            name: "reactive-chat",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.reactive-chat",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["reactive-chat/Sources/**"],
            resources: ["reactive-chat/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "reactive-chatTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.reactive-chatTests",
            infoPlist: .default,
            sources: ["reactive-chat/Tests/**"],
            resources: [],
            dependencies: [.target(name: "reactive-chat")]
        ),
    ]
)
