make -j2 KCONFIG_CONFIG=Microsoft/config-wsl

docker cp blissful_mestorf:/src/arch/x86/boot/bzImage /mnt/D/wsl/Kernel/