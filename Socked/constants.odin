package Socked

// IPv4 Address Family
AF_INET:: 2;    // IPv4
AF_INET6:: 23;  // IPv6

TCP::1; // TCP - Transmission Control Protocol
UDP::2; // UDP - User Datagram Protocol
RAW::3; // Raw internal - Custom made packet
RDM::4; // Reliably-delivered message
SEQ::5; // Sequential packet

SOL_SOCK::65535;

//  Socket option flags
OPT_DEBUG       ::1;        // Turn on debugging info recording
OPT_ACCEPTCONN  ::2;        // Socket has had listen()
OPT_REUSEADDR   ::4;        // Allow local address reuse
OPT_KEEPALIVE   ::8;        // Kepp connections alive
OPT_DONTROUTE   ::16;       // Just use interface addresses
OPT_BROADCAST   ::32;       // Permit sending of broadcast messages
OPT_USELOOPBACK ::64;       // Bypass hardware when possible
OPT_LINGER      ::128;      // Linger on close if data presenet
OPT_OOBINLINE   ::256;      // Leave received OOB data in line

// Additional options
OPT_SNDBUF      ::4097;     // Send buffer size
OPT_RCVBUF      ::4098;     // Receive buffer size
OPT_SNDLOWAT    ::4099;     // Send low-water mark
OPT_RCVLOWAT    ::4100;     // Receive low-water mark
OPT_SNDTIMEO    ::4101;     // Send timeout
OPT_RCVTIMEO    ::4102;     // Receive timeout
OPT_ERROR       ::4103;     // Get error status and clear
OPT_TYPE        ::4104;     // Get socket type