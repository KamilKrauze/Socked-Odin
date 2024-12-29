package Socked

// Define the addr_in structure (common for IPv4 addresses)
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

// Define the sockaddr_in structure (common for IPv4 addresses)
SocketSpecs :: struct #raw_union {
    family: u16,
    port: u16,

    address: Addr,

    zero: [8]u8
    // address: u32, // 4-byte IP address (use network byte order)
}

// Define the SkdSocket structure
Socket :: struct #raw_union {
    socket: u64,
    specs: SocketSpecs,  // Use sockaddr_in to represent socket specifications
}