#![no_std]
#![no_main]
#![feature(abi_efiapi)]
use log::*;
use uefi::prelude::*;
#[no_mangle]
pub extern "efiapi" fn efi_main(_image: Handle, mut system_table: SystemTable<Boot>) {
    uefi_services::init(&mut system_table).expect_success("Failed to initialize utilities");
    info!("Hello, world!");
    loop {}
}

