{ fetchFromGitHub, buildUBoot }:

buildUBoot {
  version = "3.0.4";

  src = fetchFromGitHub {
    owner = "humaidq";
    repo = "u-boot";
    rev = "b801e9996c537f3225bb7acb2e27feeb9a98a198"; # Star64 branch
    hash = "sha256-wNf9dxX6hhUGFb2bmtjFjCXqxSsyfZo9Qb6CWb0iAvA=";
  };

  defconfig = "pine64_star64_defconfig";
  filesToInstall = [
    "u-boot.bin"
    "arch/riscv/dts/pine64_star64.dtb"
    "spl/u-boot-spl.bin"
    "tools/mkimage"
  ];
}
