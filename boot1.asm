bits 16 ; tells NASM this is a 16-bit code
org 0x7c00 ; tell NASM to start output at offset 0x7c00
boot:
  mov si,hello ; point to si to hello label memory location
  mov ah,0x0e ; 0x0e means 'Write character in TTY mode (terminal interface)'
.loop:
  lodsb
  or al,al ; is al == 0?
  jz halt ; if (al==0) jump to halt label
  int 0x10 ; runs BIOS interrupt 0x10 i.e. Video Services
  jmp .loop
halt:
  cli ; clear interrupt flag
  hlt ; halt execution
hello: db "Hello ,world!",0

times 510 - ($-$$) db 0 ; pad remaining 510 bytes with zeroes
dw 0xaa55 ; the bootloader marks this 512 bytes sector bootable
