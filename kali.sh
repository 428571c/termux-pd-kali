# Do not modify this file. All changes will be discarded on the next
# package update.

# Default value is set by proot-distro script and is equal to the CPU
# architecture of your device. You can set this to a custom value to
# force use emulation mode (QEMU user).
# Valid values are: aarch64, arm, i686, x86_64.
#DISTRO_ARCH=aarch64

# Name of distribution.
DISTRO_NAME="kali"

# Optional comment for distribution.
DISTRO_COMMENT="Kali Linux Rolling, support amd64 and arm64"

# How much path components should be stripped when extracting rootfs tarball.
# The default is "1" which means to omit the root component.
TARBALL_STRIP_OPT=1

# TARBALL_URL is a Bash associative array containing rootfs URLs for specified
# CPU architectures. You must specify at least one.
TARBALL_URL['aarch64']="https://raw.githubusercontent.com/428571c/termux-pd-kali/master/kali-rootfs-arm64.tar.xz"
TARBALL_URL['x86_64']="https://raw.githubusercontent.com/428571c/termux-pd-kali/master/kali-rootfs-x86_64.tar.xz"


# SHA-256 checksum for the given tarball. You must specify checksum for each
# defined tarball.
TARBALL_SHA256['aarch64']="0c04f35b4348e1eaa8e0e8fa03ff4e9ff1dc8a83a3f90c9917efe5c477fde99f"
TARBALL_SHA256['x86_64']="33ff661f0d6692235bb5ce1c8ecd58fffd9e0ca9531bfcb26725550a45b58405"

# This function defines any additional steps that should be executed during
# installation. You can use "run_proot_cmd" to execute a given command in
# proot environment.

distro_setup() {
	# run_proot_cmd touch /etc/hello-world
	run_proot_cmd passwd -d root
	run_proot_cmd rm -rf /etc/hostname
}
