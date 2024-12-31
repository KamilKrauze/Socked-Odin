package Socked

// IPv4 Address family
AF_INET:: 2;
// IPv6 Address family
AF_INET6:: 23;

// TCP - Transmission Control Protocol
TCP::1;
// UDP - User Datagram Protocol
UDP::2;
// Raw internal - Custom made packet
RAW::3;
// Reliably-delivered message
RDM::4;
// Sequential packet
SEQ::5;

//
SOL_SOCK::65535;

// Turn on debugging info recording
OPT_DEBUG       ::1;
// Socket has had listen()
OPT_ACCEPTCONN  ::2;
// Allow local address reuse
OPT_REUSEADDR   ::4;
// Kepp connections alive
OPT_KEEPALIVE   ::8;
// Just use interface addresses
OPT_DONTROUTE   ::16;
// Permit sending of broadcast messages   
OPT_BROADCAST   ::32;
// Bypass hardware when possible
OPT_USELOOPBACK ::64;
// Linger on close if data presenet
OPT_LINGER      ::128;
// Leave received OOB data in line
OPT_OOBINLINE   ::256;


// Send buffer size
OPT_SNDBUF      ::4097;
// Receive buffer size
OPT_RCVBUF      ::4098;
// Send low-water mark
OPT_SNDLOWAT    ::4099;
// Receive low-water mark
OPT_RCVLOWAT    ::4100;
// Send timeout     
OPT_SNDTIMEO    ::4101;
// Receive timeout
OPT_RCVTIMEO    ::4102;
// Get error status and clear
OPT_ERROR       ::4103;
// Get socket type
OPT_TYPE        ::4104;     