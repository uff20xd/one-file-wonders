use std::process::*;

pub fn q_rebuild() {
    let mut compiler = Command::new("rustc");
    let _child = compiler.args(&["script.rs"]).spawn().unwrap().wait();
}

pub enum VDType {
    Empty,
    Filler,
}

pub struct QemuVirtualDisk {
    disk_type: VDType,
    size: f64,
}

pub struct QemuMachine {
    system: String,
    kvm: bool,
    flags: Vec<String>,
    pub command: Command,
    is_raw: bool,
}

impl QemuMachine {
    pub fn new() -> Self {
        todo!()
    }
    pub fn raw(command: &str) -> Self {
        let call = Self {
            system: "".to_owned(),
            kvm: false,
            flags: Vec::new(),
            command: Command::new(command.to_owned()),
            is_raw: true,
        };
        call
    }
}
