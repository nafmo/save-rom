Commodore 15/Plus4 ROM dumper
=============================
Copyright 2026 Peter Krefting.
A Softwolves Software Release in 2026

http://www.softwolves.pp.se/cbm/

DESCRIPTION
------------

This is a simple program that reads the KERNAL ROM (C000 - FFFF) from a
Commodore 16 or Plus/4 and writes it to a file.

USAGE
------

Load and run on a Commodore 16/+4. It will write the contents of the
kernal ROM to the file ROM.BIN on the same drive the program was loaded
from.

LIMITATIONS
------------

The memory area FD00-FF3F is always mapped to various I/O chips, so the
contents of the ROM at these locations cannot be read on a running system.
In the system ROMs (at least the dumps included with VICE), the
corresponding area contain NULs (00).

CONTACT
--------

The author, Peter Krefting, can be contacted
via Internet e-mail at peter@softwolves.pp.se. Information about this
program is available at
http://www.softwolves.pp.se/cbm/
