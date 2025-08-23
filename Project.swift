import ProjectDescription

let project = Project(
    name: "reactive-chat",
    targets: [
        .target(
            name: "reactive-chat",
            destinations: .iOS,
            product: .app,
            bundleId: "dev.tuist.reactive-chat",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            buildableFolders: [
                "reactive-chat/Sources",
                "reactive-chat/Resources",
            ],
            dependencies: [
                .external(name: "ComposableArchitecture"), 
            ]
        ),
        .target(
            name: "reactive-chatTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "dev.tuist.reactive-chatTests",
            infoPlist: .default,
            buildableFolders: [
                "reactive-chat/Tests"
            ],
            dependencies: [.target(name: "reactive-chat")]
        ),
    ]
)
