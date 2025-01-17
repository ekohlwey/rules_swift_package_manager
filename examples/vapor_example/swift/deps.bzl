load("@rules_swift_package_manager//swiftpkg:defs.bzl", "swift_package")

def swift_dependencies():
    # version: 1.13.2
    swift_package(
        name = "swiftpkg_async_http_client",
        commit = "7f05a8da46cc2a4ab43218722298b81ac7a08031",
        dependencies_index = "@//swift:deps_index.json",
        remote = "https://github.com/swift-server/async-http-client.git",
    )

    # version: 1.16.0
    swift_package(
        name = "swiftpkg_async_kit",
        commit = "9acea4c92f51a5885c149904f0d11db4712dda80",
        dependencies_index = "@//swift:deps_index.json",
        remote = "https://github.com/vapor/async-kit.git",
    )

    # version: 4.5.0
    swift_package(
        name = "swiftpkg_console_kit",
        commit = "a7e67a1719933318b5ab7eaaed355cde020465b1",
        dependencies_index = "@//swift:deps_index.json",
        remote = "https://github.com/vapor/console-kit.git",
    )

    # version: 4.6.0
    swift_package(
        name = "swiftpkg_fluent",
        commit = "2da106f46b093885f77fa03e3c719ab5bb8cfab4",
        dependencies_index = "@//swift:deps_index.json",
        remote = "https://github.com/vapor/fluent.git",
    )

    # version: 1.36.1
    swift_package(
        name = "swiftpkg_fluent_kit",
        commit = "be7912ee4991bcc8a5390fac0424d1d08221dcc6",
        dependencies_index = "@//swift:deps_index.json",
        remote = "https://github.com/vapor/fluent-kit.git",
    )

    # version: 4.3.0
    swift_package(
        name = "swiftpkg_fluent_sqlite_driver",
        commit = "7f2a0b105e9cd22141dee220848d8739da6b7232",
        dependencies_index = "@//swift:deps_index.json",
        remote = "https://github.com/vapor/fluent-sqlite-driver.git",
    )

    # version: 4.5.2
    swift_package(
        name = "swiftpkg_multipart_kit",
        commit = "0d55c35e788451ee27222783c7d363cb88092fab",
        dependencies_index = "@//swift:deps_index.json",
        remote = "https://github.com/vapor/multipart-kit.git",
    )

    # version: 4.6.0
    swift_package(
        name = "swiftpkg_routing_kit",
        commit = "ffac7b3a127ce1e85fb232f1a6271164628809ad",
        dependencies_index = "@//swift:deps_index.json",
        remote = "https://github.com/vapor/routing-kit.git",
    )

    # version: 3.23.0
    swift_package(
        name = "swiftpkg_sql_kit",
        commit = "dcf10a00d7d5df987b7948e6fd5596fb65f6d0c2",
        dependencies_index = "@//swift:deps_index.json",
        remote = "https://github.com/vapor/sql-kit.git",
    )

    # version: 4.2.0
    swift_package(
        name = "swiftpkg_sqlite_kit",
        commit = "c07d53044727db7edf8550c2e8ccfe1fa40177d2",
        dependencies_index = "@//swift:deps_index.json",
        remote = "https://github.com/vapor/sqlite-kit.git",
    )

    # version: 1.3.0
    swift_package(
        name = "swiftpkg_sqlite_nio",
        commit = "3b93e0a58643cc02a8bc42014fe462e1532df62d",
        dependencies_index = "@//swift:deps_index.json",
        remote = "https://github.com/vapor/sqlite-nio.git",
    )

    # version: 1.0.0
    swift_package(
        name = "swiftpkg_swift_algorithms",
        commit = "b14b7f4c528c942f121c8b860b9410b2bf57825e",
        dependencies_index = "@//swift:deps_index.json",
        remote = "https://github.com/apple/swift-algorithms.git",
    )

    # version: 1.0.3
    swift_package(
        name = "swiftpkg_swift_atomics",
        commit = "ff3d2212b6b093db7f177d0855adbc4ef9c5f036",
        dependencies_index = "@//swift:deps_index.json",
        remote = "https://github.com/apple/swift-atomics.git",
    )

    # version: 1.3.3
    swift_package(
        name = "swiftpkg_swift_backtrace",
        commit = "f25620d5d05e2f1ba27154b40cafea2b67566956",
        dependencies_index = "@//swift:deps_index.json",
        remote = "https://github.com/swift-server/swift-backtrace.git",
    )

    # version: 1.0.4
    swift_package(
        name = "swiftpkg_swift_collections",
        commit = "937e904258d22af6e447a0b72c0bc67583ef64a2",
        dependencies_index = "@//swift:deps_index.json",
        remote = "https://github.com/apple/swift-collections.git",
    )

    # version: 2.2.4
    swift_package(
        name = "swiftpkg_swift_crypto",
        commit = "75ec60b8b4cc0f085c3ac414f3dca5625fa3588e",
        dependencies_index = "@//swift:deps_index.json",
        remote = "https://github.com/apple/swift-crypto.git",
    )

    # version: 1.5.1
    swift_package(
        name = "swiftpkg_swift_log",
        commit = "3e3ef75109d6801b2c44504e73f55f0dce6662c9",
        dependencies_index = "@//swift:deps_index.json",
        remote = "https://github.com/apple/swift-log.git",
    )

    # version: 2.3.3
    swift_package(
        name = "swiftpkg_swift_metrics",
        commit = "9b39d811a83cf18b79d7d5513b06f8b290198b10",
        dependencies_index = "@//swift:deps_index.json",
        remote = "https://github.com/apple/swift-metrics.git",
    )

    # version: 2.47.0
    swift_package(
        name = "swiftpkg_swift_nio",
        commit = "4ad2c3733845abd9ee8892a323b0fa0d80f37e34",
        dependencies_index = "@//swift:deps_index.json",
        remote = "https://github.com/apple/swift-nio.git",
    )

    # version: 1.15.0
    swift_package(
        name = "swiftpkg_swift_nio_extras",
        commit = "91dd2d61fb772e1311bb5f13b59266b579d77e42",
        dependencies_index = "@//swift:deps_index.json",
        remote = "https://github.com/apple/swift-nio-extras.git",
    )

    # version: 1.23.1
    swift_package(
        name = "swiftpkg_swift_nio_http2",
        commit = "d6656967f33ed8b368b38e4b198631fc7c484a40",
        dependencies_index = "@//swift:deps_index.json",
        remote = "https://github.com/apple/swift-nio-http2.git",
    )

    # version: 2.23.0
    swift_package(
        name = "swiftpkg_swift_nio_ssl",
        commit = "4fb7ead803e38949eb1d6fabb849206a72c580f3",
        dependencies_index = "@//swift:deps_index.json",
        remote = "https://github.com/apple/swift-nio-ssl.git",
    )

    # version: 1.15.0
    swift_package(
        name = "swiftpkg_swift_nio_transport_services",
        commit = "c0d9a144cfaec8d3d596aadde3039286a266c15c",
        dependencies_index = "@//swift:deps_index.json",
        remote = "https://github.com/apple/swift-nio-transport-services.git",
    )

    # version: 1.0.2
    swift_package(
        name = "swiftpkg_swift_numerics",
        commit = "0a5bc04095a675662cf24757cc0640aa2204253b",
        dependencies_index = "@//swift:deps_index.json",
        remote = "https://github.com/apple/swift-numerics",
    )

    # version: 4.67.5
    swift_package(
        name = "swiftpkg_vapor",
        commit = "eb2da0d749e185789970c32f7fd9c114a339fa13",
        dependencies_index = "@//swift:deps_index.json",
        remote = "https://github.com/vapor/vapor.git",
    )

    # version: 2.6.1
    swift_package(
        name = "swiftpkg_websocket_kit",
        commit = "2d9d2188a08eef4a869d368daab21b3c08510991",
        dependencies_index = "@//swift:deps_index.json",
        remote = "https://github.com/vapor/websocket-kit.git",
    )
