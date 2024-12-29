package Socked

import "core:c"

foreign import Socked "./lib/Socked/build/Release/Socked.lib"

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

foreign Socked {
    // Function declarations for socket operations
    @(link_name="skdInitSocket")
    init_socket :: proc() ---
    
    skdCreateSocket :: proc(skt: ^Socket, af: int, type_: int, protocol: int) ---
    skdCloseSocket :: proc(skt: ^Socket) ---
    skdCleanupSocket :: proc(skt: ^Socket) ---

    skdSetSocketOpt :: proc(skt: ^Socket, level: int, optname: int, optval: int) ---
    skdSetSocketSpecs :: proc(skt: ^Socket, family: u16, address: cstring, port: u16) ---

    skdBindSocket :: proc(skt: ^Socket, family: u16, address: cstring, port: u16) ---
    skdConnectSocket :: proc(skt: ^Socket) ---
    skdCreateListener :: proc(skt: ^Socket, backlog: u64) ---
}

// IPv4 Address Family
AF_INET:: 2; 

TCP::1; // TCP - Transmission Control Protocol
UDP::2; // UDP - User Datagram Protocol
RAW::3; // Raw internal - Custom made packet
RDM::4; // Reliably-delivered message
SEQ::5; // Sequential packet

SOL_SOCK::65535;
