section .multiboot_header
header_start:
  ; magic number
  dd 0xe85250d6 ; multiboot2
  ; architecture
  dd 0 ; protected mode i368
  ; header lenght
  dd header_end - header_start
  ; checksum
  dd 0x1800000000 - (0xe85250d6 + 0 + (header_end - header_start)) 
  ; end tag
  dw 0 
  dw 0 
  dw 8 
header_end