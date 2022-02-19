qemu-system-x86_64 \
    -nodefaults \
    -vga std \
    -machine q35 \
    -m 128M \
    -drive if=pflash,format=raw,readonly=on,file=./firmware/OVMF_CODE.fd \
    -drive if=pflash,format=raw,file=./firmware/OVMF_VARS-1024x768.fd \
    -drive format=raw,file=fat:rw:./target/x86_64-unknown-uefi/debug \
    -serial stdio \
    -monitor vc:1024x768 \
