
ENTRY(loader)
OUTPUT_FORMAT(elf32-1386)
OUTPUT_ArCH(i386:i386)

SECTIONS
{
. = 0x100000;
.text:
    {
        *(.multiboot)
        *(.text*)
        *(.rodata)

    }
    .data
    {
        start_ctors = .;
        KEEP(*( .init_array));
        KEEP(*(SORT_BY_INIT_PRYORITY( .init_array.* )));
        end_ctors = .;
        *(.data)
    }

    .bss
    {
        *(.bss)
    }

    /DISCARD/ : {
        *(.fini_array*)
        *(.comment)
    }
}
