# Networking Basics


IP - ipv4, ipv4, unique identifier 
Internet Protocol sets the rules on how data should be sent and received

Machines send and receive packages to each other in a network.
Packages has an IP header

Sample IP header format
Version: 4
IHL: 5
Total Lenght: 100 bytes
Time to live: 64
IP address
Destination IP address
Protocol: TCP

# Application Layer
sample format 
HTTP method: GET
URI: /example-page.html
Host: www.goog.ecom
User-Agent: mozilla
Accept: *

### HTTP is bult on top of TCP

## Transport Layer
### TCP - transmission control protocol
sample TCP header
Source Port53728
Destination Port: 80
CheckSum

TCP uses 3 way handshake - make sure both devices acknowledges each other

### UDP - User Datagram protocol
doesnt establish connection or handshake before sending data, so its faster but less reliable.

## DNS - Domain name system

ICANN - organiation that oversees DNS
yellow pages book of internet that maps domain to IP

A record = IP address
AAAA record - maps to ipv6 address


# networking infrastructure
Public IP - unique across internet
private IP - unique within local network

static IP -  doesnt change
dynamic IP - changes

# WebRTC
real time comm protocol, for browser to browser application for video chat, voice calling

# MQTT
light weight messaging protocol, requires low bandwidth and low power

# AMQP
protocl for message oriented middleware like rabbit MQ 

# RPC
Remote procedure call
Allows a program on 1 computer execute call on another computer