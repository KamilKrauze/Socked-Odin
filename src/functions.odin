package Socked

import "core:c"

foreign import Socked "./lib/Socked/build/Release/Socked.lib"

// Function declarations for socket operations
foreign Socked {
    // Initialise any platform specific data
    @(link_name="skdInitSocket")
    init_socket :: proc() ---
    // Create a socket, with addr family, packet type and protocol.
    @(link_name="skdCreateSocket")
    create_socket :: proc(skt: ^Socket, af: int, type_: int, protocol: int) ---
    // Close a socket
    @(link_name="skdCloseSocket")
    close_socket :: proc(skt: ^Socket) ---
    // Cleanup any platform spcific data
    @(link_name="skdCleanupSocket")
    cleanup_socket :: proc() ---

    // Set socket options
    @(link_name="skdSetSocketOpt")
    set_socket_opt :: proc(skt: ^Socket, level: int, optname: int, optval: int) ---
    /* 
    Set socket specification
     /*
     - Sets the address family, the IP address by string, and port.
     */
    */
    @(link_name="skdSetSocketSpecs")
    set_socket_specs :: proc(skt: ^Socket, family: u16, address: cstring, port: u16) ---

    // Accept incoming socket connection.
    @(link_name="skdAccept")
    accept :: proc(server_skt: ^Socket, client_skt: ^Socket) ---
    /*
    Bind socket to address and port.
        /*
            NOTE: Should be used for writing server code. 
        */
    */
    @(link_name="skdBindSocket")
    bind_socket :: proc(skt: ^Socket, family: u16, address: cstring, port: u16) ---
    // Connect the socket by the sockets specifications.
    @(link_name="skdConnectSocket")
    connect_socket :: proc(skt: ^Socket) ---
    // Create a socket listener for incoming socket connections.
    @(link_name="skdCreateListener")
    create_listener :: proc(skt: ^Socket, backlog: u64) ---

    // Send bytes via TCP.
    @(link_name="skdSend")
    send :: proc (skt: ^Socket, msg:cstring, size: u64, flags:int) ---
    // Send bytes via Datagram.
    @(link_name="skdSendTo")
    sendTo :: proc (skt: ^Socket, msg:cstring, size: u64, flags:int) ---
    
    // Receive bytes via TCP.
    @(link_name="skdReceive")
    receive :: proc(skt: ^Socket, buffer: cstring, size: u64, flags: int) -> (recv_bytes: int) ---
    // Receive bytes via Datagram.
    @(link_name="skdReceiveFrom")
    receiveFrom :: proc(skt: ^Socket, buffer: cstring, size: u64, flags: int) -> (recv_bytes: int) ---
}