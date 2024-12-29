package Socked

import "core:c"

foreign import Socked "./lib/Socked/build/Release/Socked.lib"

foreign Socked {
    // Function declarations for socket operations
    @(link_name="skdInitSocket")
    init_socket :: proc() ---
    @(link_name="skdCreateSocket")
    create_socket :: proc(skt: ^Socket, af: int, type_: int, protocol: int) ---
    @(link_name="skdCloseSocket")
    close_socket :: proc(skt: ^Socket) ---
    @(link_name="skdCleanupSocket")
    cleanup_socket :: proc(skt: ^Socket) ---

    @(link_name="skdSetSocketOpt")
    set_socket_opt :: proc(skt: ^Socket, level: int, optname: int, optval: int) ---
    @(link_name="skdSetSocketSpecs")
    skdSetSocketSpecs :: proc(skt: ^Socket, family: u16, address: cstring, port: u16) ---

    @(link_name="skdBindSocket")
    bind_socket :: proc(skt: ^Socket, family: u16, address: cstring, port: u16) ---
    @(link_name="skdConnectSocket")
    connect_socket :: proc(skt: ^Socket) ---
    @(link_name="skdCreateListener")
    create_listener :: proc(skt: ^Socket, backlog: u64) ---

    @(link_name="skdSend")
    send :: proc (skt: ^Socket, msg:cstring, size: u64, flags:int) ---
    @(link_name="skdSendTo")
    sendTo :: proc (skt: ^Socket, msg:cstring, size: u64, flags:int) ---
    
    @(link_name="skdReceive")
    receive :: proc(skt: ^Socket, buffer: cstring, size: u64, flags: int) -> (recv_bytes: u64) ---
    @(link_name="skdReceiveFrom")
    receiveFrom :: proc(skt: ^Socket, buffer: cstring, size: u64, flags: int) -> (recv_bytes: u64) ---
}