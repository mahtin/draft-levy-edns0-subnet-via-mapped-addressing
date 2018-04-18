# http-source-information-header

## A Draft IETF RFC

* draft-levy-edns0-subnet-zero-via-mapped-addressing

This document proposes a way to use EDNS0 client-subnet (ECS) without exposing
the end users IP address. This can be used to approximatly identify which
geographic-location the client is located.

Presently [RFC7871](https://tools.ietf.org/html/rfc7871) simply states that
a DNS resolver should truncate the clients IP address.

> To protect users' privacy, Recursive Resolvers are strongly
> encouraged to conceal part of the user's IP address by truncating
> IPv4 addresses to 24 bits. 56 bits are recommended for IPv6, based on
> [RFC6177].

This proposal allocates an IPv6 /32 block and publishes a geographic mapping
of the client IP address into a pre-defined IPv6 address within that /32 block.

## Examples

`Server-ID: JFK`

`Server-ID: 2334677359553192-SIN`

## building txt and html files

This is done with the Makefile.

* xml2rfc -N --text draft-levy-edns0-subnet-zero-via-mapped-addressing.xml
* xml2rfc -N --html draft-levy-edns0-subnet-zero-via-mapped-addressing.xml

You will need xml2rfc installed.

`pip install xml2rfc`

## Authors

* Martin J. Levy @ Cloudflare

