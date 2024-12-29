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
    
    skd.skdCreateSocket(&client, skd.AF_INET, skd.TCP, 0);
    fmt.println("Socket created!");

    skd.skdSetSocketOpt(&client, skd.SOL_SOCK, 4, 1);
    skd.skdSetSocketOpt(&client, skd.SOL_SOCK, 4102, 3000);

    ip: cstring = "192.168.0.25";
    skd.skdSetSocketSpecs(&client, skd.AF_INET, ip, 1234);

    skd.skdConnectSocket(&client);
    fmt.println("Attempted to connect!");
    buf: [8]byte;
    os.read(os.stdin, buf[:]);

    skd.skdCloseSocket(&client);
    skd.skdCleanupSocket(&client);
    fmt.println("Socked destroyed and cleaned up!");

}

