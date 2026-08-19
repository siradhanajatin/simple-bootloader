# simple-bootloader
My Own Bootloader from Scratch

**DISCLAIMER**: I have no understanding of a _Bootloader_ and how it works. Therefore this will be a near copy of the references. I am doing this just for fun and my own understanding. This has nothing to do with _"projects I made from scratch without any help"_. 

I will be making a _Bootloader_ by myself in future but in _Rust_ Programming Language. 

### **How to use the bootloader?**

We are using nasm for the binary compilation and qemu emulator for floppy disk emulation of the bootloader.

For compilation: `nasm -f bin boot1.asm -o boot1.bin`
For qemu emulation: `qemu-system-x86_64 -fda boot1.bin`

### **References:**
1. https://kernel-internals.org/arch/x86/boot/
2. https://0xax.gitbook.io/linux-insides/summary/booting/linux-bootstrap-1
3. https://dev.to/aayushgid/building-a-bootloader-from-scratch-an-x86-assembly-guide-fpi
4. https://www.wasilzafar.com/pages/series/assembly-mastery/asm-part19-bootloader.html
5. https://github.com/rust-osdev/bootloader 
6. http://3zanders.co.uk/2017/10/13/writing-a-bootloader/
