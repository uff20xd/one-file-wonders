mod qscripter;

use qscripter::*;

fn main() {
    q_rebuild();
    let mut qemu = QemuMachine::raw("qemu-kvm");
    let _ = qemu.command.args(&["--enable-kvm", "-machine", "pc-q35-10.0", "-cpu "]);
}


