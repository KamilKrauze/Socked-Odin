package Socked

// Definition of the addr_in structure (common for IPv4 addresses)
Addr :: struct #raw_union
{
    bytes: struct {
        network: u8,      // Network identifier
        host: u8,         // Host on the network
        logic_host: u8,   // Logical host
        imp_number: u8,   // IMP number
    },
    words: struct {
        unused: u16,      // ---
        imp: u16,         // IMP field
    },
    data: u32
}

// Definition of the sockaddr_in structure (common for IPv4 addresses)
SocketSpecs :: struct #raw_union {
    // Address family
    family: u16,
    
    // Network port
    port: u16,

    // address: u32, // 4-byte IP address (use network byte order)
    address: Addr,

    zero: [8]u8
    
}

// Definition of the SkdSocket structure
Socket :: struct #raw_union {
    // The socket pointer reference
    socket: u64,
    // Socket specifications
    specs: SocketSpecs,
}