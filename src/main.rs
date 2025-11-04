#![no_std]
#![no_main]

// use syscalls::{Sysno, syscall};

#[unsafe(no_mangle)]
pub extern "C" fn _start() -> ! {
    const DATA: &[u8] = "Hello World\n".as_bytes();
    // unsafe { syscall!(Sysno::write, 1, DATA.as_ptr(), DATA.len()).unwrap() };
    loop {}
}

#[panic_handler]
fn my_panic(_info: &core::panic::PanicInfo) -> ! {
    loop {}
}