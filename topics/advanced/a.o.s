
a.o:     file format pe-x86-64


Disassembly of section .text:

0000000000000000 <printf>:
   0:	55                   	push   %rbp
   1:	53                   	push   %rbx
   2:	48 83 ec 38          	sub    $0x38,%rsp
   6:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   b:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  13:	4c 89 45 30          	mov    %r8,0x30(%rbp)
  17:	4c 89 4d 38          	mov    %r9,0x38(%rbp)
  1b:	48 8d 45 28          	lea    0x28(%rbp),%rax
  1f:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  23:	48 8b 5d f0          	mov    -0x10(%rbp),%rbx
  27:	b9 01 00 00 00       	mov    $0x1,%ecx
  2c:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 33 <printf+0x33>
  33:	ff d0                	call   *%rax
  35:	48 89 c1             	mov    %rax,%rcx
  38:	48 8b 45 20          	mov    0x20(%rbp),%rax
  3c:	49 89 d8             	mov    %rbx,%r8
  3f:	48 89 c2             	mov    %rax,%rdx
  42:	e8 00 00 00 00       	call   47 <printf+0x47>
  47:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4a:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4d:	48 83 c4 38          	add    $0x38,%rsp
  51:	5b                   	pop    %rbx
  52:	5d                   	pop    %rbp
  53:	c3                   	ret

0000000000000054 <main>:
  54:	55                   	push   %rbp
  55:	48 89 e5             	mov    %rsp,%rbp
  58:	48 83 ec 30          	sub    $0x30,%rsp
  5c:	e8 00 00 00 00       	call   61 <main+0xd>
  61:	c7 45 fc 21 00 00 00 	movl   $0x21,-0x4(%rbp)
  68:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6b:	89 c2                	mov    %eax,%edx
  6d:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 74 <main+0x20>
  74:	48 89 c1             	mov    %rax,%rcx
  77:	e8 84 ff ff ff       	call   0 <printf>
  7c:	b8 00 00 00 00       	mov    $0x0,%eax
  81:	48 83 c4 30          	add    $0x30,%rsp
  85:	5d                   	pop    %rbp
  86:	c3                   	ret
  87:	90                   	nop
  88:	90                   	nop
  89:	90                   	nop
  8a:	90                   	nop
  8b:	90                   	nop
  8c:	90                   	nop
  8d:	90                   	nop
  8e:	90                   	nop
  8f:	90                   	nop
