package Socked

// IPv4 Address family
AF_INET:int: 2;
// IPv6 Address family
AF_INET6:int: 23;

// TCP - Transmission Control Protocol
TCP:int:1;
// UDP - User Datagram Protocol
UDP:int:2;
// Raw internal - Custom made packet
RAW:int:3;
// Reliably-delivered message
RDM:int:4;
// Sequential packet
SEQ:int:5;

//
SOL_SOCK:int:65535;

// Turn on debugging info recording
OPT_DEBUG       :int:1;
// Socket has had listen()
OPT_ACCEPTCONN  :int:2;
// Allow local address reuse
OPT_REUSEADDR   :int:4;
// Kepp connections alive
OPT_KEEPALIVE   :int:8;
// Just use interface addresses
OPT_DONTROUTE   :int:16;
// Permit sending of broadcast messages   
OPT_BROADCAST   :int:32;
// Bypass hardware when possible
OPT_USELOOPBACK :int:64;
// Linger on close if data presenet
OPT_LINGER      :int:128;
// Leave received OOB data in line
OPT_OOBINLINE   :int:256;


// Send buffer size
OPT_SNDBUF      :int:4097;
// Receive buffer size
OPT_RCVBUF      :int:4098;
// Send low-water mark
OPT_SNDLOWAT    :int:4099;
// Receive low-water mark
OPT_RCVLOWAT    :int:4100;
// Send timeout     
OPT_SNDTIMEO    :int:4101;
// Receive timeout
OPT_RCVTIMEO    :int:4102;
// Get error status and clear
OPT_ERROR       :int:4103;
// Get socket type
OPT_TYPE        :int:4104;     