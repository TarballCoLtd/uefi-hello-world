qemu-system-x86_64 \
    -nodefaults \
    -vga std \
    -machine q35 \
    -m 128M \
    -drive if=pflash,format=raw,readonly=on,file=/Users/alyxferrari/uefi-test/firmware/OVMF_CODE.fd \
    -drive if=pflash,format=raw,file=/Users/alyxferrari/uefi-test/firmware/OVMF_VARS-1024x768.fd \
    -drive format=raw,file=fat:rw:/Users/alyxferrari/uefi-test/target/x86_64-unknown-uefi/debug \
    -serial stdio \
    -monitor vc:1024x768 \
