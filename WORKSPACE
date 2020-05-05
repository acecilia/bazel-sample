load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

git_repository(
  name = "build_bazel_rules_apple",
  remote = "https://github.com/bazelbuild/rules_apple.git",
  commit = "5131f3d46794bf227d296c82f30c2499c9de3c5b",
)

git_repository(
  name = "build_bazel_rules_swift",
  remote = "https://github.com/bazelbuild/rules_swift.git",
  commit = "657eda57a097980848dbb3c880b94faeddaa3cd1",
)

http_file(
  name = "xctestrunner",
  executable = 1,
  sha256 = "8b7352f7414de4b54478563c90d55509030baa531696dfe9c4e1bf0617ee5eb0",
  urls = ["https://github.com/google/xctestrunner/releases/download/0.2.12/ios_test_runner.par"]
)

###########################
# Load the rest of the dependencies
###########################

load("@build_bazel_rules_apple//apple:repositories.bzl", "apple_rules_dependencies")
apple_rules_dependencies()

load("@build_bazel_rules_swift//swift:repositories.bzl", "swift_rules_dependencies")
swift_rules_dependencies()

load("@build_bazel_apple_support//lib:repositories.bzl", "apple_support_dependencies")
apple_support_dependencies()

load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps")
protobuf_deps()