Commodore 16/Plus4/128 ROM dumper
=================================
Copyright 2026 Peter Krefting.
A Softwolves Software Release in 2026

http://www.softwolves.pp.se/cbm/

DESCRIPTION
------------

These simple programs read the KERNAL ROM (C000 - FFFF) from a Commodore 16
or Plus/4, or the KERNEL part of the ROM (E000 - FFFF) from a Commodore 128,
and writes it to a file.

USAGE
------

Load and run on the target machine. It will write the contents of the
kernal ROM to the file ROM.BIN on the same drive the program was loaded
from.

LIMITATIONS
------------

On the Commodore 16 and Plus/4, the memory area FD00-FF3F is always mapped
to various I/O chips, so the contents of the ROM at these locations cannot
be read on a running system. In the system ROMs (at least the dumps included
with VICE), the corresponding area contain NULs (00).

On the Commodore 128, the MMU is always visible at addresses FF00 and FF01,
so the contents of the ROM at these locations cannot be read on a running
system. Also, as the program is currently written, a full KERNAL ROM cannot
be extracted from a running system as it contains parts that are only
visible to the Z80 CPU and the program runs entirely on the 8502 CPU.

CONTACT
--------

The author, Peter Krefting, can be contacted
via Internet e-mail at peter@softwolves.pp.se. Information about this
program is available at
http://www.softwolves.pp.se/cbm/
