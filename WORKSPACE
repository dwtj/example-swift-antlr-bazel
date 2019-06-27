workspace(name = "TaPL")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# Configure Swift ############################################################

http_archive(
    name = "build_bazel_rules_swift",
    urls = ["https://github.com/bazelbuild/rules_swift/releases/download/0.11.1/rules_swift.0.11.1.tar.gz"],
    sha256 = "96a86afcbdab215f8363e65a10cf023b752e90b23abf02272c4fc668fcb70311",
)

load(
    "@build_bazel_rules_swift//swift:repositories.bzl",
    "swift_rules_dependencies",
)
swift_rules_dependencies()

load(
    "@build_bazel_apple_support//lib:repositories.bzl",
    "apple_support_dependencies",
)
apple_support_dependencies()

load(
    "@com_google_protobuf//:protobuf_deps.bzl",
    "protobuf_deps",
)

protobuf_deps()


# Configure Antlr4 ###########################################################

# Get Antlr4 runtime dependency.

http_archive(
    name = "antlr4_swift_runtime",
    sha256 = "46f5e1af5f4bd28ade55cb632f9a069656b31fc8c2408f9aa045f9b5f5caad64",
    urls = ["https://github.com/antlr/antlr4/archive/4.7.2.tar.gz"],
    build_file = "//:bazel/antlr4_swift_runtime.BUILD",
    strip_prefix = "antlr4-4.7.2/runtime/Swift/Sources/Antlr4"
)

