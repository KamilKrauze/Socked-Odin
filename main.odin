package main

import "core:fmt"
import "core:os"
import "core:strings"

import skd "Socked"

main :: proc()
{
    client: skd.Socket;
    skd.init_socket();
    fmt.println("Socked initialised");
    
    skd.create_socket(&client, skd.AF_INET, skd.TCP, 0);
    fmt.println("Socket created!");

    skd.set_socket_opt(&client, skd.SOL_SOCK, skd.OPT_REUSEADDR, 1);
    skd.set_socket_opt(&client, skd.SOL_SOCK, skd.OPT_RCVTIMEO, 3000);

    ip: cstring = "192.168.0.25";
    skd.skdSetSocketSpecs(&client, skd.AF_INET, ip, 1234);

    skd.connect_socket(&client);
    fmt.println("Attempted to connect!");
    buf: [8]byte;
    os.read(os.stdin, buf[:]);

    skd.close_socket(&client);
    skd.cleanup_socket(&client);
    fmt.println("Socked destroyed and cleaned up!");
}

