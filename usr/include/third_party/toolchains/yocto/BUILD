package(default_visibility = ["//visibility:public"])

load(":cc_config.bzl", "cc_toolchain_config")

cc_toolchain_suite(
    name = "toolchain",
    toolchains = {
        "aarch64": ":cc-compiler-yocto",
    },
)

filegroup(
    name = "empty",
    srcs = [],
)

filegroup(
    name = "yocto_linux_all_files",
    srcs = [
        "@yocto_compiler//:compiler_pieces",
    ],
)

cc_toolchain_config(
    name = "yocto_config",
    cpu = "aarch64",
)

cc_toolchain(
    name = "cc-compiler-yocto",
    all_files = ":yocto_linux_all_files",
    compiler_files = ":yocto_linux_all_files",
    dwp_files = ":empty",
    linker_files = ":yocto_linux_all_files",
    objcopy_files = "yocto_linux_all_files",
    strip_files = "yocto_linux_all_files",
    supports_param_files = 1,
    toolchain_config = ":yocto_config",
    toolchain_identifier = "yocto-linux-toolchain",
)
