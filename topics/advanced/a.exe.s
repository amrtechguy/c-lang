
a.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	55                   	push   %rbp
   140001001:	48 89 e5             	mov    %rsp,%rbp
   140001004:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001008:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000100c:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   140001010:	44 89 4d 28          	mov    %r9d,0x28(%rbp)
   140001014:	90                   	nop
   140001015:	5d                   	pop    %rbp
   140001016:	c3                   	ret

0000000140001017 <pre_c_init>:
   140001017:	55                   	push   %rbp
   140001018:	48 89 e5             	mov    %rsp,%rbp
   14000101b:	48 83 ec 20          	sub    $0x20,%rsp
   14000101f:	e8 54 03 00 00       	call   140001378 <check_managed_app>
   140001024:	89 05 f6 6f 00 00    	mov    %eax,0x6ff6(%rip)        # 140008020 <managedapp>
   14000102a:	48 8b 05 ef 33 00 00 	mov    0x33ef(%rip),%rax        # 140004420 <.refptr.__mingw_app_type>
   140001031:	8b 00                	mov    (%rax),%eax
   140001033:	85 c0                	test   %eax,%eax
   140001035:	74 0c                	je     140001043 <pre_c_init+0x2c>
   140001037:	b9 02 00 00 00       	mov    $0x2,%ecx
   14000103c:	e8 e7 1d 00 00       	call   140002e28 <__set_app_type>
   140001041:	eb 0a                	jmp    14000104d <pre_c_init+0x36>
   140001043:	b9 01 00 00 00       	mov    $0x1,%ecx
   140001048:	e8 db 1d 00 00       	call   140002e28 <__set_app_type>
   14000104d:	e8 2e 1d 00 00       	call   140002d80 <__p__fmode>
   140001052:	48 8b 15 97 34 00 00 	mov    0x3497(%rip),%rdx        # 1400044f0 <.refptr._fmode>
   140001059:	8b 12                	mov    (%rdx),%edx
   14000105b:	89 10                	mov    %edx,(%rax)
   14000105d:	e8 2e 1d 00 00       	call   140002d90 <__p__commode>
   140001062:	48 8b 15 67 34 00 00 	mov    0x3467(%rip),%rdx        # 1400044d0 <.refptr._commode>
   140001069:	8b 12                	mov    (%rdx),%edx
   14000106b:	89 10                	mov    %edx,(%rax)
   14000106d:	e8 5e 07 00 00       	call   1400017d0 <_setargv>
   140001072:	48 8b 05 07 33 00 00 	mov    0x3307(%rip),%rax        # 140004380 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   140001079:	8b 00                	mov    (%rax),%eax
   14000107b:	83 f8 01             	cmp    $0x1,%eax
   14000107e:	75 0f                	jne    14000108f <pre_c_init+0x78>
   140001080:	48 8b 05 89 34 00 00 	mov    0x3489(%rip),%rax        # 140004510 <.refptr._matherr>
   140001087:	48 89 c1             	mov    %rax,%rcx
   14000108a:	e8 9b 12 00 00       	call   14000232a <__mingw_setusermatherr>
   14000108f:	b8 00 00 00 00       	mov    $0x0,%eax
   140001094:	48 83 c4 20          	add    $0x20,%rsp
   140001098:	5d                   	pop    %rbp
   140001099:	c3                   	ret

000000014000109a <pre_cpp_init>:
   14000109a:	55                   	push   %rbp
   14000109b:	48 89 e5             	mov    %rsp,%rbp
   14000109e:	48 83 ec 30          	sub    $0x30,%rsp
   1400010a2:	48 8b 05 77 34 00 00 	mov    0x3477(%rip),%rax        # 140004520 <.refptr._newmode>
   1400010a9:	8b 00                	mov    (%rax),%eax
   1400010ab:	89 05 77 6f 00 00    	mov    %eax,0x6f77(%rip)        # 140008028 <startinfo>
   1400010b1:	48 8b 05 28 34 00 00 	mov    0x3428(%rip),%rax        # 1400044e0 <.refptr._dowildcard>
   1400010b8:	8b 10                	mov    (%rax),%edx
   1400010ba:	48 8d 05 67 6f 00 00 	lea    0x6f67(%rip),%rax        # 140008028 <startinfo>
   1400010c1:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   1400010c6:	41 89 d1             	mov    %edx,%r9d
   1400010c9:	4c 8d 05 40 6f 00 00 	lea    0x6f40(%rip),%r8        # 140008010 <envp>
   1400010d0:	48 8d 05 31 6f 00 00 	lea    0x6f31(%rip),%rax        # 140008008 <argv>
   1400010d7:	48 89 c2             	mov    %rax,%rdx
   1400010da:	48 8d 05 23 6f 00 00 	lea    0x6f23(%rip),%rax        # 140008004 <argc>
   1400010e1:	48 89 c1             	mov    %rax,%rcx
   1400010e4:	e8 2f 1d 00 00       	call   140002e18 <__getmainargs>
   1400010e9:	89 05 29 6f 00 00    	mov    %eax,0x6f29(%rip)        # 140008018 <argret>
   1400010ef:	90                   	nop
   1400010f0:	48 83 c4 30          	add    $0x30,%rsp
   1400010f4:	5d                   	pop    %rbp
   1400010f5:	c3                   	ret

00000001400010f6 <WinMainCRTStartup>:
   1400010f6:	55                   	push   %rbp
   1400010f7:	48 89 e5             	mov    %rsp,%rbp
   1400010fa:	48 83 ec 30          	sub    $0x30,%rsp
   1400010fe:	c7 45 fc ff 00 00 00 	movl   $0xff,-0x4(%rbp)

0000000140001105 <.l_startw>:
   140001105:	48 8b 05 14 33 00 00 	mov    0x3314(%rip),%rax        # 140004420 <.refptr.__mingw_app_type>
   14000110c:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001112:	e8 3d 00 00 00       	call   140001154 <__tmainCRTStartup>
   140001117:	89 45 fc             	mov    %eax,-0x4(%rbp)
   14000111a:	90                   	nop

000000014000111b <.l_endw>:
   14000111b:	90                   	nop
   14000111c:	8b 45 fc             	mov    -0x4(%rbp),%eax
   14000111f:	48 83 c4 30          	add    $0x30,%rsp
   140001123:	5d                   	pop    %rbp
   140001124:	c3                   	ret

0000000140001125 <mainCRTStartup>:
   140001125:	55                   	push   %rbp
   140001126:	48 89 e5             	mov    %rsp,%rbp
   140001129:	48 83 ec 30          	sub    $0x30,%rsp
   14000112d:	c7 45 fc ff 00 00 00 	movl   $0xff,-0x4(%rbp)

0000000140001134 <.l_start>:
   140001134:	48 8b 05 e5 32 00 00 	mov    0x32e5(%rip),%rax        # 140004420 <.refptr.__mingw_app_type>
   14000113b:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001141:	e8 0e 00 00 00       	call   140001154 <__tmainCRTStartup>
   140001146:	89 45 fc             	mov    %eax,-0x4(%rbp)
   140001149:	90                   	nop

000000014000114a <.l_end>:
   14000114a:	90                   	nop
   14000114b:	8b 45 fc             	mov    -0x4(%rbp),%eax
   14000114e:	48 83 c4 30          	add    $0x30,%rsp
   140001152:	5d                   	pop    %rbp
   140001153:	c3                   	ret

0000000140001154 <__tmainCRTStartup>:
   140001154:	55                   	push   %rbp
   140001155:	48 89 e5             	mov    %rsp,%rbp
   140001158:	48 83 ec 70          	sub    $0x70,%rsp
   14000115c:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
   140001163:	00 
   140001164:	c7 45 e4 30 00 00 00 	movl   $0x30,-0x1c(%rbp)
   14000116b:	8b 45 e4             	mov    -0x1c(%rbp),%eax
   14000116e:	65 48 8b 00          	mov    %gs:(%rax),%rax
   140001172:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   140001176:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   14000117a:	48 8b 40 08          	mov    0x8(%rax),%rax
   14000117e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   140001182:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   140001189:	eb 21                	jmp    1400011ac <__tmainCRTStartup+0x58>
   14000118b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   14000118f:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
   140001193:	75 09                	jne    14000119e <__tmainCRTStartup+0x4a>
   140001195:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
   14000119c:	eb 45                	jmp    1400011e3 <__tmainCRTStartup+0x8f>
   14000119e:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
   1400011a3:	48 8b 05 26 80 00 00 	mov    0x8026(%rip),%rax        # 1400091d0 <__imp_Sleep>
   1400011aa:	ff d0                	call   *%rax
   1400011ac:	48 8b 05 bd 32 00 00 	mov    0x32bd(%rip),%rax        # 140004470 <.refptr.__native_startup_lock>
   1400011b3:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   1400011b7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1400011bb:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
   1400011bf:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
   1400011c6:	00 
   1400011c7:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
   1400011cb:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
   1400011cf:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
   1400011d3:	f0 48 0f b1 0a       	lock cmpxchg %rcx,(%rdx)
   1400011d8:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   1400011dc:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
   1400011e1:	75 a8                	jne    14000118b <__tmainCRTStartup+0x37>
   1400011e3:	48 8b 05 96 32 00 00 	mov    0x3296(%rip),%rax        # 140004480 <.refptr.__native_startup_state>
   1400011ea:	8b 00                	mov    (%rax),%eax
   1400011ec:	83 f8 01             	cmp    $0x1,%eax
   1400011ef:	75 0c                	jne    1400011fd <__tmainCRTStartup+0xa9>
   1400011f1:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   1400011f6:	e8 3d 1c 00 00       	call   140002e38 <_amsg_exit>
   1400011fb:	eb 3f                	jmp    14000123c <__tmainCRTStartup+0xe8>
   1400011fd:	48 8b 05 7c 32 00 00 	mov    0x327c(%rip),%rax        # 140004480 <.refptr.__native_startup_state>
   140001204:	8b 00                	mov    (%rax),%eax
   140001206:	85 c0                	test   %eax,%eax
   140001208:	75 28                	jne    140001232 <__tmainCRTStartup+0xde>
   14000120a:	48 8b 05 6f 32 00 00 	mov    0x326f(%rip),%rax        # 140004480 <.refptr.__native_startup_state>
   140001211:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001217:	48 8b 05 a2 32 00 00 	mov    0x32a2(%rip),%rax        # 1400044c0 <.refptr.__xi_z>
   14000121e:	48 89 c2             	mov    %rax,%rdx
   140001221:	48 8b 05 88 32 00 00 	mov    0x3288(%rip),%rax        # 1400044b0 <.refptr.__xi_a>
   140001228:	48 89 c1             	mov    %rax,%rcx
   14000122b:	e8 18 1c 00 00       	call   140002e48 <_initterm>
   140001230:	eb 0a                	jmp    14000123c <__tmainCRTStartup+0xe8>
   140001232:	c7 05 e8 6d 00 00 01 	movl   $0x1,0x6de8(%rip)        # 140008024 <has_cctor>
   140001239:	00 00 00 
   14000123c:	48 8b 05 3d 32 00 00 	mov    0x323d(%rip),%rax        # 140004480 <.refptr.__native_startup_state>
   140001243:	8b 00                	mov    (%rax),%eax
   140001245:	83 f8 01             	cmp    $0x1,%eax
   140001248:	75 26                	jne    140001270 <__tmainCRTStartup+0x11c>
   14000124a:	48 8b 05 4f 32 00 00 	mov    0x324f(%rip),%rax        # 1400044a0 <.refptr.__xc_z>
   140001251:	48 89 c2             	mov    %rax,%rdx
   140001254:	48 8b 05 35 32 00 00 	mov    0x3235(%rip),%rax        # 140004490 <.refptr.__xc_a>
   14000125b:	48 89 c1             	mov    %rax,%rcx
   14000125e:	e8 e5 1b 00 00       	call   140002e48 <_initterm>
   140001263:	48 8b 05 16 32 00 00 	mov    0x3216(%rip),%rax        # 140004480 <.refptr.__native_startup_state>
   14000126a:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   140001270:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   140001274:	75 1e                	jne    140001294 <__tmainCRTStartup+0x140>
   140001276:	48 8b 05 f3 31 00 00 	mov    0x31f3(%rip),%rax        # 140004470 <.refptr.__native_startup_lock>
   14000127d:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
   140001281:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
   140001288:	00 
   140001289:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
   14000128d:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   140001291:	48 87 10             	xchg   %rdx,(%rax)
   140001294:	48 8b 05 35 31 00 00 	mov    0x3135(%rip),%rax        # 1400043d0 <.refptr.__dyn_tls_init_callback>
   14000129b:	48 8b 00             	mov    (%rax),%rax
   14000129e:	48 85 c0             	test   %rax,%rax
   1400012a1:	74 1c                	je     1400012bf <__tmainCRTStartup+0x16b>
   1400012a3:	48 8b 05 26 31 00 00 	mov    0x3126(%rip),%rax        # 1400043d0 <.refptr.__dyn_tls_init_callback>
   1400012aa:	48 8b 00             	mov    (%rax),%rax
   1400012ad:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   1400012b3:	ba 02 00 00 00       	mov    $0x2,%edx
   1400012b8:	b9 00 00 00 00       	mov    $0x0,%ecx
   1400012bd:	ff d0                	call   *%rax
   1400012bf:	e8 54 0f 00 00       	call   140002218 <_pei386_runtime_relocator>
   1400012c4:	48 8b 05 35 32 00 00 	mov    0x3235(%rip),%rax        # 140004500 <.refptr._gnu_exception_handler>
   1400012cb:	48 89 c1             	mov    %rax,%rcx
   1400012ce:	48 8b 05 f3 7e 00 00 	mov    0x7ef3(%rip),%rax        # 1400091c8 <__imp_SetUnhandledExceptionFilter>
   1400012d5:	ff d0                	call   *%rax
   1400012d7:	48 8b 15 82 31 00 00 	mov    0x3182(%rip),%rdx        # 140004460 <.refptr.__mingw_oldexcpt_handler>
   1400012de:	48 89 02             	mov    %rax,(%rdx)
   1400012e1:	48 8d 05 18 fd ff ff 	lea    -0x2e8(%rip),%rax        # 140001000 <__mingw_invalidParameterHandler>
   1400012e8:	48 89 c1             	mov    %rax,%rcx
   1400012eb:	e8 b0 1a 00 00       	call   140002da0 <_set_invalid_parameter_handler>
   1400012f0:	e8 1b 07 00 00       	call   140001a10 <_fpreset>
   1400012f5:	8b 05 09 6d 00 00    	mov    0x6d09(%rip),%eax        # 140008004 <argc>
   1400012fb:	48 8d 15 06 6d 00 00 	lea    0x6d06(%rip),%rdx        # 140008008 <argv>
   140001302:	89 c1                	mov    %eax,%ecx
   140001304:	e8 73 01 00 00       	call   14000147c <duplicate_ppstrings>
   140001309:	e8 99 04 00 00       	call   1400017a7 <__main>
   14000130e:	48 8b 05 db 30 00 00 	mov    0x30db(%rip),%rax        # 1400043f0 <.refptr.__imp___initenv>
   140001315:	48 8b 00             	mov    (%rax),%rax
   140001318:	48 8b 15 f1 6c 00 00 	mov    0x6cf1(%rip),%rdx        # 140008010 <envp>
   14000131f:	48 89 10             	mov    %rdx,(%rax)
   140001322:	48 8b 0d e7 6c 00 00 	mov    0x6ce7(%rip),%rcx        # 140008010 <envp>
   140001329:	48 8b 15 d8 6c 00 00 	mov    0x6cd8(%rip),%rdx        # 140008008 <argv>
   140001330:	8b 05 ce 6c 00 00    	mov    0x6cce(%rip),%eax        # 140008004 <argc>
   140001336:	49 89 c8             	mov    %rcx,%r8
   140001339:	89 c1                	mov    %eax,%ecx
   14000133b:	e8 90 03 00 00       	call   1400016d0 <main>
   140001340:	89 05 d6 6c 00 00    	mov    %eax,0x6cd6(%rip)        # 14000801c <mainret>
   140001346:	8b 05 d4 6c 00 00    	mov    0x6cd4(%rip),%eax        # 140008020 <managedapp>
   14000134c:	85 c0                	test   %eax,%eax
   14000134e:	75 0d                	jne    14000135d <__tmainCRTStartup+0x209>
   140001350:	8b 05 c6 6c 00 00    	mov    0x6cc6(%rip),%eax        # 14000801c <mainret>
   140001356:	89 c1                	mov    %eax,%ecx
   140001358:	e8 0b 1b 00 00       	call   140002e68 <exit>
   14000135d:	8b 05 c1 6c 00 00    	mov    0x6cc1(%rip),%eax        # 140008024 <has_cctor>
   140001363:	85 c0                	test   %eax,%eax
   140001365:	75 05                	jne    14000136c <__tmainCRTStartup+0x218>
   140001367:	e8 d4 1a 00 00       	call   140002e40 <_cexit>
   14000136c:	8b 05 aa 6c 00 00    	mov    0x6caa(%rip),%eax        # 14000801c <mainret>
   140001372:	48 83 c4 70          	add    $0x70,%rsp
   140001376:	5d                   	pop    %rbp
   140001377:	c3                   	ret

0000000140001378 <check_managed_app>:
   140001378:	55                   	push   %rbp
   140001379:	48 89 e5             	mov    %rsp,%rbp
   14000137c:	48 83 ec 20          	sub    $0x20,%rsp
   140001380:	48 8b 05 a9 30 00 00 	mov    0x30a9(%rip),%rax        # 140004430 <.refptr.__mingw_initltsdrot_force>
   140001387:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000138d:	48 8b 05 ac 30 00 00 	mov    0x30ac(%rip),%rax        # 140004440 <.refptr.__mingw_initltsdyn_force>
   140001394:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000139a:	48 8b 05 af 30 00 00 	mov    0x30af(%rip),%rax        # 140004450 <.refptr.__mingw_initltssuo_force>
   1400013a1:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   1400013a7:	48 8b 05 f2 2f 00 00 	mov    0x2ff2(%rip),%rax        # 1400043a0 <.refptr.__ImageBase>
   1400013ae:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   1400013b2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400013b6:	0f b7 00             	movzwl (%rax),%eax
   1400013b9:	66 3d 4d 5a          	cmp    $0x5a4d,%ax
   1400013bd:	74 0a                	je     1400013c9 <check_managed_app+0x51>
   1400013bf:	b8 00 00 00 00       	mov    $0x0,%eax
   1400013c4:	e9 ad 00 00 00       	jmp    140001476 <check_managed_app+0xfe>
   1400013c9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400013cd:	8b 40 3c             	mov    0x3c(%rax),%eax
   1400013d0:	48 63 d0             	movslq %eax,%rdx
   1400013d3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400013d7:	48 01 d0             	add    %rdx,%rax
   1400013da:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   1400013de:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400013e2:	8b 00                	mov    (%rax),%eax
   1400013e4:	3d 50 45 00 00       	cmp    $0x4550,%eax
   1400013e9:	74 0a                	je     1400013f5 <check_managed_app+0x7d>
   1400013eb:	b8 00 00 00 00       	mov    $0x0,%eax
   1400013f0:	e9 81 00 00 00       	jmp    140001476 <check_managed_app+0xfe>
   1400013f5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400013f9:	48 83 c0 18          	add    $0x18,%rax
   1400013fd:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   140001401:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140001405:	0f b7 00             	movzwl (%rax),%eax
   140001408:	0f b7 c0             	movzwl %ax,%eax
   14000140b:	3d 0b 01 00 00       	cmp    $0x10b,%eax
   140001410:	74 09                	je     14000141b <check_managed_app+0xa3>
   140001412:	3d 0b 02 00 00       	cmp    $0x20b,%eax
   140001417:	74 29                	je     140001442 <check_managed_app+0xca>
   140001419:	eb 56                	jmp    140001471 <check_managed_app+0xf9>
   14000141b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   14000141f:	8b 40 5c             	mov    0x5c(%rax),%eax
   140001422:	83 f8 0e             	cmp    $0xe,%eax
   140001425:	77 07                	ja     14000142e <check_managed_app+0xb6>
   140001427:	b8 00 00 00 00       	mov    $0x0,%eax
   14000142c:	eb 48                	jmp    140001476 <check_managed_app+0xfe>
   14000142e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140001432:	8b 80 d0 00 00 00    	mov    0xd0(%rax),%eax
   140001438:	85 c0                	test   %eax,%eax
   14000143a:	0f 95 c0             	setne  %al
   14000143d:	0f b6 c0             	movzbl %al,%eax
   140001440:	eb 34                	jmp    140001476 <check_managed_app+0xfe>
   140001442:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140001446:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   14000144a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   14000144e:	8b 40 6c             	mov    0x6c(%rax),%eax
   140001451:	83 f8 0e             	cmp    $0xe,%eax
   140001454:	77 07                	ja     14000145d <check_managed_app+0xe5>
   140001456:	b8 00 00 00 00       	mov    $0x0,%eax
   14000145b:	eb 19                	jmp    140001476 <check_managed_app+0xfe>
   14000145d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140001461:	8b 80 e0 00 00 00    	mov    0xe0(%rax),%eax
   140001467:	85 c0                	test   %eax,%eax
   140001469:	0f 95 c0             	setne  %al
   14000146c:	0f b6 c0             	movzbl %al,%eax
   14000146f:	eb 05                	jmp    140001476 <check_managed_app+0xfe>
   140001471:	b8 00 00 00 00       	mov    $0x0,%eax
   140001476:	48 83 c4 20          	add    $0x20,%rsp
   14000147a:	5d                   	pop    %rbp
   14000147b:	c3                   	ret

000000014000147c <duplicate_ppstrings>:
   14000147c:	55                   	push   %rbp
   14000147d:	53                   	push   %rbx
   14000147e:	48 83 ec 48          	sub    $0x48,%rsp
   140001482:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   140001487:	89 4d 20             	mov    %ecx,0x20(%rbp)
   14000148a:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   14000148e:	8b 45 20             	mov    0x20(%rbp),%eax
   140001491:	83 c0 01             	add    $0x1,%eax
   140001494:	48 98                	cltq
   140001496:	48 c1 e0 03          	shl    $0x3,%rax
   14000149a:	48 89 c1             	mov    %rax,%rcx
   14000149d:	e8 e6 19 00 00       	call   140002e88 <malloc>
   1400014a2:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   1400014a6:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400014aa:	48 8b 00             	mov    (%rax),%rax
   1400014ad:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   1400014b1:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   1400014b8:	e9 8c 00 00 00       	jmp    140001549 <duplicate_ppstrings+0xcd>
   1400014bd:	8b 45 fc             	mov    -0x4(%rbp),%eax
   1400014c0:	48 98                	cltq
   1400014c2:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   1400014c9:	00 
   1400014ca:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1400014ce:	48 01 d0             	add    %rdx,%rax
   1400014d1:	48 8b 00             	mov    (%rax),%rax
   1400014d4:	48 89 c1             	mov    %rax,%rcx
   1400014d7:	e8 c4 19 00 00       	call   140002ea0 <strlen>
   1400014dc:	48 83 c0 01          	add    $0x1,%rax
   1400014e0:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   1400014e4:	8b 45 fc             	mov    -0x4(%rbp),%eax
   1400014e7:	48 98                	cltq
   1400014e9:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   1400014f0:	00 
   1400014f1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400014f5:	48 8d 1c 02          	lea    (%rdx,%rax,1),%rbx
   1400014f9:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   1400014fd:	48 89 c1             	mov    %rax,%rcx
   140001500:	e8 83 19 00 00       	call   140002e88 <malloc>
   140001505:	48 89 03             	mov    %rax,(%rbx)
   140001508:	8b 45 fc             	mov    -0x4(%rbp),%eax
   14000150b:	48 98                	cltq
   14000150d:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   140001514:	00 
   140001515:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140001519:	48 01 d0             	add    %rdx,%rax
   14000151c:	48 8b 10             	mov    (%rax),%rdx
   14000151f:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001522:	48 98                	cltq
   140001524:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
   14000152b:	00 
   14000152c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140001530:	48 01 c8             	add    %rcx,%rax
   140001533:	48 8b 00             	mov    (%rax),%rax
   140001536:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
   14000153a:	49 89 c8             	mov    %rcx,%r8
   14000153d:	48 89 c1             	mov    %rax,%rcx
   140001540:	e8 4b 19 00 00       	call   140002e90 <memcpy>
   140001545:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   140001549:	8b 45 fc             	mov    -0x4(%rbp),%eax
   14000154c:	3b 45 20             	cmp    0x20(%rbp),%eax
   14000154f:	0f 8c 68 ff ff ff    	jl     1400014bd <duplicate_ppstrings+0x41>
   140001555:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001558:	48 98                	cltq
   14000155a:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   140001561:	00 
   140001562:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140001566:	48 01 d0             	add    %rdx,%rax
   140001569:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
   140001570:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140001574:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
   140001578:	48 89 10             	mov    %rdx,(%rax)
   14000157b:	90                   	nop
   14000157c:	48 83 c4 48          	add    $0x48,%rsp
   140001580:	5b                   	pop    %rbx
   140001581:	5d                   	pop    %rbp
   140001582:	c3                   	ret

0000000140001583 <atexit>:
   140001583:	55                   	push   %rbp
   140001584:	48 89 e5             	mov    %rsp,%rbp
   140001587:	48 83 ec 20          	sub    $0x20,%rsp
   14000158b:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000158f:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001593:	48 89 c1             	mov    %rax,%rcx
   140001596:	e8 b5 18 00 00       	call   140002e50 <_onexit>
   14000159b:	48 85 c0             	test   %rax,%rax
   14000159e:	74 07                	je     1400015a7 <atexit+0x24>
   1400015a0:	b8 00 00 00 00       	mov    $0x0,%eax
   1400015a5:	eb 05                	jmp    1400015ac <atexit+0x29>
   1400015a7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   1400015ac:	48 83 c4 20          	add    $0x20,%rsp
   1400015b0:	5d                   	pop    %rbp
   1400015b1:	c3                   	ret
   1400015b2:	90                   	nop
   1400015b3:	90                   	nop
   1400015b4:	90                   	nop
   1400015b5:	90                   	nop
   1400015b6:	90                   	nop
   1400015b7:	90                   	nop
   1400015b8:	90                   	nop
   1400015b9:	90                   	nop
   1400015ba:	90                   	nop
   1400015bb:	90                   	nop
   1400015bc:	90                   	nop
   1400015bd:	90                   	nop
   1400015be:	90                   	nop
   1400015bf:	90                   	nop

00000001400015c0 <.weak.__register_frame_info.hmod_libgcc>:
   1400015c0:	c3                   	ret
   1400015c1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400015c8:	00 00 00 00 
   1400015cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400015d0 <.weak.__deregister_frame_info.hmod_libgcc>:
   1400015d0:	31 c0                	xor    %eax,%eax
   1400015d2:	c3                   	ret
   1400015d3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400015da:	00 00 00 00 
   1400015de:	66 90                	xchg   %ax,%ax

00000001400015e0 <__gcc_register_frame>:
   1400015e0:	55                   	push   %rbp
   1400015e1:	57                   	push   %rdi
   1400015e2:	56                   	push   %rsi
   1400015e3:	53                   	push   %rbx
   1400015e4:	48 83 ec 28          	sub    $0x28,%rsp
   1400015e8:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   1400015ed:	48 8d 35 0c 2a 00 00 	lea    0x2a0c(%rip),%rsi        # 140004000 <.rdata>
   1400015f4:	48 89 f1             	mov    %rsi,%rcx
   1400015f7:	ff 15 a3 7b 00 00    	call   *0x7ba3(%rip)        # 1400091a0 <__imp_GetModuleHandleA>
   1400015fd:	48 89 c3             	mov    %rax,%rbx
   140001600:	48 85 c0             	test   %rax,%rax
   140001603:	74 6b                	je     140001670 <__gcc_register_frame+0x90>
   140001605:	48 89 f1             	mov    %rsi,%rcx
   140001608:	ff 15 b2 7b 00 00    	call   *0x7bb2(%rip)        # 1400091c0 <__imp_LoadLibraryA>
   14000160e:	48 8b 3d 93 7b 00 00 	mov    0x7b93(%rip),%rdi        # 1400091a8 <__imp_GetProcAddress>
   140001615:	48 8d 15 f7 29 00 00 	lea    0x29f7(%rip),%rdx        # 140004013 <.rdata+0x13>
   14000161c:	48 89 d9             	mov    %rbx,%rcx
   14000161f:	48 89 05 1a 6a 00 00 	mov    %rax,0x6a1a(%rip)        # 140008040 <hmod_libgcc>
   140001626:	ff d7                	call   *%rdi
   140001628:	48 8d 15 fa 29 00 00 	lea    0x29fa(%rip),%rdx        # 140004029 <.rdata+0x29>
   14000162f:	48 89 d9             	mov    %rbx,%rcx
   140001632:	48 89 c6             	mov    %rax,%rsi
   140001635:	ff d7                	call   *%rdi
   140001637:	48 89 05 c2 19 00 00 	mov    %rax,0x19c2(%rip)        # 140003000 <__data_start__>
   14000163e:	48 85 f6             	test   %rsi,%rsi
   140001641:	74 10                	je     140001653 <__gcc_register_frame+0x73>
   140001643:	48 8d 15 16 6a 00 00 	lea    0x6a16(%rip),%rdx        # 140008060 <obj>
   14000164a:	48 8d 0d af 39 00 00 	lea    0x39af(%rip),%rcx        # 140005000 <__EH_FRAME_BEGIN__>
   140001651:	ff d6                	call   *%rsi
   140001653:	48 8d 0d 36 00 00 00 	lea    0x36(%rip),%rcx        # 140001690 <__gcc_deregister_frame>
   14000165a:	48 83 c4 28          	add    $0x28,%rsp
   14000165e:	5b                   	pop    %rbx
   14000165f:	5e                   	pop    %rsi
   140001660:	5f                   	pop    %rdi
   140001661:	5d                   	pop    %rbp
   140001662:	e9 1c ff ff ff       	jmp    140001583 <atexit>
   140001667:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000166e:	00 00 
   140001670:	48 8d 05 59 ff ff ff 	lea    -0xa7(%rip),%rax        # 1400015d0 <.weak.__deregister_frame_info.hmod_libgcc>
   140001677:	48 8d 35 42 ff ff ff 	lea    -0xbe(%rip),%rsi        # 1400015c0 <.weak.__register_frame_info.hmod_libgcc>
   14000167e:	48 89 05 7b 19 00 00 	mov    %rax,0x197b(%rip)        # 140003000 <__data_start__>
   140001685:	eb bc                	jmp    140001643 <__gcc_register_frame+0x63>
   140001687:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000168e:	00 00 

0000000140001690 <__gcc_deregister_frame>:
   140001690:	55                   	push   %rbp
   140001691:	48 89 e5             	mov    %rsp,%rbp
   140001694:	48 83 ec 20          	sub    $0x20,%rsp
   140001698:	48 8b 05 61 19 00 00 	mov    0x1961(%rip),%rax        # 140003000 <__data_start__>
   14000169f:	48 85 c0             	test   %rax,%rax
   1400016a2:	74 09                	je     1400016ad <__gcc_deregister_frame+0x1d>
   1400016a4:	48 8d 0d 55 39 00 00 	lea    0x3955(%rip),%rcx        # 140005000 <__EH_FRAME_BEGIN__>
   1400016ab:	ff d0                	call   *%rax
   1400016ad:	48 8b 0d 8c 69 00 00 	mov    0x698c(%rip),%rcx        # 140008040 <hmod_libgcc>
   1400016b4:	48 85 c9             	test   %rcx,%rcx
   1400016b7:	74 0f                	je     1400016c8 <__gcc_deregister_frame+0x38>
   1400016b9:	48 83 c4 20          	add    $0x20,%rsp
   1400016bd:	5d                   	pop    %rbp
   1400016be:	48 ff 25 cb 7a 00 00 	rex.W jmp *0x7acb(%rip)        # 140009190 <__imp_FreeLibrary>
   1400016c5:	0f 1f 00             	nopl   (%rax)
   1400016c8:	48 83 c4 20          	add    $0x20,%rsp
   1400016cc:	5d                   	pop    %rbp
   1400016cd:	c3                   	ret
   1400016ce:	90                   	nop
   1400016cf:	90                   	nop

00000001400016d0 <main>:
   1400016d0:	55                   	push   %rbp
   1400016d1:	48 89 e5             	mov    %rsp,%rbp
   1400016d4:	48 83 ec 20          	sub    $0x20,%rsp
   1400016d8:	e8 ca 00 00 00       	call   1400017a7 <__main>
   1400016dd:	b8 00 00 00 00       	mov    $0x0,%eax
   1400016e2:	48 83 c4 20          	add    $0x20,%rsp
   1400016e6:	5d                   	pop    %rbp
   1400016e7:	c3                   	ret
   1400016e8:	90                   	nop
   1400016e9:	90                   	nop
   1400016ea:	90                   	nop
   1400016eb:	90                   	nop
   1400016ec:	90                   	nop
   1400016ed:	90                   	nop
   1400016ee:	90                   	nop
   1400016ef:	90                   	nop

00000001400016f0 <__do_global_dtors>:
   1400016f0:	55                   	push   %rbp
   1400016f1:	48 89 e5             	mov    %rsp,%rbp
   1400016f4:	48 83 ec 20          	sub    $0x20,%rsp
   1400016f8:	eb 1e                	jmp    140001718 <__do_global_dtors+0x28>
   1400016fa:	48 8b 05 0f 19 00 00 	mov    0x190f(%rip),%rax        # 140003010 <p.0>
   140001701:	48 8b 00             	mov    (%rax),%rax
   140001704:	ff d0                	call   *%rax
   140001706:	48 8b 05 03 19 00 00 	mov    0x1903(%rip),%rax        # 140003010 <p.0>
   14000170d:	48 83 c0 08          	add    $0x8,%rax
   140001711:	48 89 05 f8 18 00 00 	mov    %rax,0x18f8(%rip)        # 140003010 <p.0>
   140001718:	48 8b 05 f1 18 00 00 	mov    0x18f1(%rip),%rax        # 140003010 <p.0>
   14000171f:	48 8b 00             	mov    (%rax),%rax
   140001722:	48 85 c0             	test   %rax,%rax
   140001725:	75 d3                	jne    1400016fa <__do_global_dtors+0xa>
   140001727:	90                   	nop
   140001728:	90                   	nop
   140001729:	48 83 c4 20          	add    $0x20,%rsp
   14000172d:	5d                   	pop    %rbp
   14000172e:	c3                   	ret

000000014000172f <__do_global_ctors>:
   14000172f:	55                   	push   %rbp
   140001730:	48 89 e5             	mov    %rsp,%rbp
   140001733:	48 83 ec 30          	sub    $0x30,%rsp
   140001737:	48 8b 05 52 2c 00 00 	mov    0x2c52(%rip),%rax        # 140004390 <.refptr.__CTOR_LIST__>
   14000173e:	48 8b 00             	mov    (%rax),%rax
   140001741:	89 45 fc             	mov    %eax,-0x4(%rbp)
   140001744:	83 7d fc ff          	cmpl   $0xffffffff,-0x4(%rbp)
   140001748:	75 25                	jne    14000176f <__do_global_ctors+0x40>
   14000174a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   140001751:	eb 04                	jmp    140001757 <__do_global_ctors+0x28>
   140001753:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   140001757:	8b 45 fc             	mov    -0x4(%rbp),%eax
   14000175a:	8d 50 01             	lea    0x1(%rax),%edx
   14000175d:	48 8b 05 2c 2c 00 00 	mov    0x2c2c(%rip),%rax        # 140004390 <.refptr.__CTOR_LIST__>
   140001764:	89 d2                	mov    %edx,%edx
   140001766:	48 8b 04 d0          	mov    (%rax,%rdx,8),%rax
   14000176a:	48 85 c0             	test   %rax,%rax
   14000176d:	75 e4                	jne    140001753 <__do_global_ctors+0x24>
   14000176f:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001772:	89 45 f8             	mov    %eax,-0x8(%rbp)
   140001775:	eb 14                	jmp    14000178b <__do_global_ctors+0x5c>
   140001777:	48 8b 05 12 2c 00 00 	mov    0x2c12(%rip),%rax        # 140004390 <.refptr.__CTOR_LIST__>
   14000177e:	8b 55 f8             	mov    -0x8(%rbp),%edx
   140001781:	48 8b 04 d0          	mov    (%rax,%rdx,8),%rax
   140001785:	ff d0                	call   *%rax
   140001787:	83 6d f8 01          	subl   $0x1,-0x8(%rbp)
   14000178b:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
   14000178f:	75 e6                	jne    140001777 <__do_global_ctors+0x48>
   140001791:	48 8d 05 58 ff ff ff 	lea    -0xa8(%rip),%rax        # 1400016f0 <__do_global_dtors>
   140001798:	48 89 c1             	mov    %rax,%rcx
   14000179b:	e8 e3 fd ff ff       	call   140001583 <atexit>
   1400017a0:	90                   	nop
   1400017a1:	48 83 c4 30          	add    $0x30,%rsp
   1400017a5:	5d                   	pop    %rbp
   1400017a6:	c3                   	ret

00000001400017a7 <__main>:
   1400017a7:	55                   	push   %rbp
   1400017a8:	48 89 e5             	mov    %rsp,%rbp
   1400017ab:	48 83 ec 20          	sub    $0x20,%rsp
   1400017af:	8b 05 eb 68 00 00    	mov    0x68eb(%rip),%eax        # 1400080a0 <initialized>
   1400017b5:	85 c0                	test   %eax,%eax
   1400017b7:	75 0f                	jne    1400017c8 <__main+0x21>
   1400017b9:	c7 05 dd 68 00 00 01 	movl   $0x1,0x68dd(%rip)        # 1400080a0 <initialized>
   1400017c0:	00 00 00 
   1400017c3:	e8 67 ff ff ff       	call   14000172f <__do_global_ctors>
   1400017c8:	90                   	nop
   1400017c9:	48 83 c4 20          	add    $0x20,%rsp
   1400017cd:	5d                   	pop    %rbp
   1400017ce:	c3                   	ret
   1400017cf:	90                   	nop

00000001400017d0 <_setargv>:
   1400017d0:	55                   	push   %rbp
   1400017d1:	48 89 e5             	mov    %rsp,%rbp
   1400017d4:	b8 00 00 00 00       	mov    $0x0,%eax
   1400017d9:	5d                   	pop    %rbp
   1400017da:	c3                   	ret
   1400017db:	90                   	nop
   1400017dc:	90                   	nop
   1400017dd:	90                   	nop
   1400017de:	90                   	nop
   1400017df:	90                   	nop

00000001400017e0 <__dyn_tls_init>:
   1400017e0:	55                   	push   %rbp
   1400017e1:	48 89 e5             	mov    %rsp,%rbp
   1400017e4:	48 83 ec 30          	sub    $0x30,%rsp
   1400017e8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400017ec:	89 55 18             	mov    %edx,0x18(%rbp)
   1400017ef:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   1400017f3:	48 8b 05 76 2b 00 00 	mov    0x2b76(%rip),%rax        # 140004370 <.refptr._CRT_MT>
   1400017fa:	8b 00                	mov    (%rax),%eax
   1400017fc:	83 f8 02             	cmp    $0x2,%eax
   1400017ff:	74 0d                	je     14000180e <__dyn_tls_init+0x2e>
   140001801:	48 8b 05 68 2b 00 00 	mov    0x2b68(%rip),%rax        # 140004370 <.refptr._CRT_MT>
   140001808:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   14000180e:	83 7d 18 02          	cmpl   $0x2,0x18(%rbp)
   140001812:	74 23                	je     140001837 <__dyn_tls_init+0x57>
   140001814:	83 7d 18 01          	cmpl   $0x1,0x18(%rbp)
   140001818:	75 16                	jne    140001830 <__dyn_tls_init+0x50>
   14000181a:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   14000181e:	8b 55 18             	mov    0x18(%rbp),%edx
   140001821:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001825:	49 89 c8             	mov    %rcx,%r8
   140001828:	48 89 c1             	mov    %rax,%rcx
   14000182b:	e8 61 0f 00 00       	call   140002791 <__mingw_TLScallback>
   140001830:	b8 01 00 00 00       	mov    $0x1,%eax
   140001835:	eb 46                	jmp    14000187d <__dyn_tls_init+0x9d>
   140001837:	48 8d 05 ca 36 00 00 	lea    0x36ca(%rip),%rax        # 140004f08 <___crt_xd_start__>
   14000183e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140001842:	48 83 45 f8 08       	addq   $0x8,-0x8(%rbp)
   140001847:	eb 22                	jmp    14000186b <__dyn_tls_init+0x8b>
   140001849:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000184d:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140001851:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140001855:	48 8b 00             	mov    (%rax),%rax
   140001858:	48 85 c0             	test   %rax,%rax
   14000185b:	74 09                	je     140001866 <__dyn_tls_init+0x86>
   14000185d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140001861:	48 8b 00             	mov    (%rax),%rax
   140001864:	ff d0                	call   *%rax
   140001866:	48 83 45 f8 08       	addq   $0x8,-0x8(%rbp)
   14000186b:	48 8d 05 9e 36 00 00 	lea    0x369e(%rip),%rax        # 140004f10 <__xd_z>
   140001872:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
   140001876:	75 d1                	jne    140001849 <__dyn_tls_init+0x69>
   140001878:	b8 01 00 00 00       	mov    $0x1,%eax
   14000187d:	48 83 c4 30          	add    $0x30,%rsp
   140001881:	5d                   	pop    %rbp
   140001882:	c3                   	ret

0000000140001883 <__tlregdtor>:
   140001883:	55                   	push   %rbp
   140001884:	48 89 e5             	mov    %rsp,%rbp
   140001887:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000188b:	48 83 7d 10 00       	cmpq   $0x0,0x10(%rbp)
   140001890:	75 07                	jne    140001899 <__tlregdtor+0x16>
   140001892:	b8 00 00 00 00       	mov    $0x0,%eax
   140001897:	eb 05                	jmp    14000189e <__tlregdtor+0x1b>
   140001899:	b8 00 00 00 00       	mov    $0x0,%eax
   14000189e:	5d                   	pop    %rbp
   14000189f:	c3                   	ret

00000001400018a0 <__dyn_tls_dtor>:
   1400018a0:	55                   	push   %rbp
   1400018a1:	48 89 e5             	mov    %rsp,%rbp
   1400018a4:	48 83 ec 20          	sub    $0x20,%rsp
   1400018a8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400018ac:	89 55 18             	mov    %edx,0x18(%rbp)
   1400018af:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   1400018b3:	83 7d 18 03          	cmpl   $0x3,0x18(%rbp)
   1400018b7:	74 0d                	je     1400018c6 <__dyn_tls_dtor+0x26>
   1400018b9:	83 7d 18 00          	cmpl   $0x0,0x18(%rbp)
   1400018bd:	74 07                	je     1400018c6 <__dyn_tls_dtor+0x26>
   1400018bf:	b8 01 00 00 00       	mov    $0x1,%eax
   1400018c4:	eb 1b                	jmp    1400018e1 <__dyn_tls_dtor+0x41>
   1400018c6:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   1400018ca:	8b 55 18             	mov    0x18(%rbp),%edx
   1400018cd:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400018d1:	49 89 c8             	mov    %rcx,%r8
   1400018d4:	48 89 c1             	mov    %rax,%rcx
   1400018d7:	e8 b5 0e 00 00       	call   140002791 <__mingw_TLScallback>
   1400018dc:	b8 01 00 00 00       	mov    $0x1,%eax
   1400018e1:	48 83 c4 20          	add    $0x20,%rsp
   1400018e5:	5d                   	pop    %rbp
   1400018e6:	c3                   	ret
   1400018e7:	90                   	nop
   1400018e8:	90                   	nop
   1400018e9:	90                   	nop
   1400018ea:	90                   	nop
   1400018eb:	90                   	nop
   1400018ec:	90                   	nop
   1400018ed:	90                   	nop
   1400018ee:	90                   	nop
   1400018ef:	90                   	nop

00000001400018f0 <_matherr>:
   1400018f0:	55                   	push   %rbp
   1400018f1:	53                   	push   %rbx
   1400018f2:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
   1400018f9:	48 8d 6c 24 50       	lea    0x50(%rsp),%rbp
   1400018fe:	0f 29 75 00          	movaps %xmm6,0x0(%rbp)
   140001902:	0f 29 7d 10          	movaps %xmm7,0x10(%rbp)
   140001906:	44 0f 29 45 20       	movaps %xmm8,0x20(%rbp)
   14000190b:	48 89 4d 50          	mov    %rcx,0x50(%rbp)
   14000190f:	48 8b 45 50          	mov    0x50(%rbp),%rax
   140001913:	8b 00                	mov    (%rax),%eax
   140001915:	83 f8 06             	cmp    $0x6,%eax
   140001918:	77 70                	ja     14000198a <_matherr+0x9a>
   14000191a:	89 c0                	mov    %eax,%eax
   14000191c:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   140001923:	00 
   140001924:	48 8d 05 99 28 00 00 	lea    0x2899(%rip),%rax        # 1400041c4 <.rdata+0x124>
   14000192b:	8b 04 02             	mov    (%rdx,%rax,1),%eax
   14000192e:	48 98                	cltq
   140001930:	48 8d 15 8d 28 00 00 	lea    0x288d(%rip),%rdx        # 1400041c4 <.rdata+0x124>
   140001937:	48 01 d0             	add    %rdx,%rax
   14000193a:	ff e0                	jmp    *%rax
   14000193c:	48 8d 05 5d 27 00 00 	lea    0x275d(%rip),%rax        # 1400040a0 <.rdata>
   140001943:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140001947:	eb 4d                	jmp    140001996 <_matherr+0xa6>
   140001949:	48 8d 05 6f 27 00 00 	lea    0x276f(%rip),%rax        # 1400040bf <.rdata+0x1f>
   140001950:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140001954:	eb 40                	jmp    140001996 <_matherr+0xa6>
   140001956:	48 8d 05 83 27 00 00 	lea    0x2783(%rip),%rax        # 1400040e0 <.rdata+0x40>
   14000195d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140001961:	eb 33                	jmp    140001996 <_matherr+0xa6>
   140001963:	48 8d 05 96 27 00 00 	lea    0x2796(%rip),%rax        # 140004100 <.rdata+0x60>
   14000196a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   14000196e:	eb 26                	jmp    140001996 <_matherr+0xa6>
   140001970:	48 8d 05 b1 27 00 00 	lea    0x27b1(%rip),%rax        # 140004128 <.rdata+0x88>
   140001977:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   14000197b:	eb 19                	jmp    140001996 <_matherr+0xa6>
   14000197d:	48 8d 05 cc 27 00 00 	lea    0x27cc(%rip),%rax        # 140004150 <.rdata+0xb0>
   140001984:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140001988:	eb 0c                	jmp    140001996 <_matherr+0xa6>
   14000198a:	48 8d 05 f5 27 00 00 	lea    0x27f5(%rip),%rax        # 140004186 <.rdata+0xe6>
   140001991:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140001995:	90                   	nop
   140001996:	48 8b 45 50          	mov    0x50(%rbp),%rax
   14000199a:	f2 44 0f 10 40 20    	movsd  0x20(%rax),%xmm8
   1400019a0:	48 8b 45 50          	mov    0x50(%rbp),%rax
   1400019a4:	f2 0f 10 78 18       	movsd  0x18(%rax),%xmm7
   1400019a9:	48 8b 45 50          	mov    0x50(%rbp),%rax
   1400019ad:	f2 0f 10 70 10       	movsd  0x10(%rax),%xmm6
   1400019b2:	48 8b 45 50          	mov    0x50(%rbp),%rax
   1400019b6:	48 8b 58 08          	mov    0x8(%rax),%rbx
   1400019ba:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400019bf:	e8 1c 14 00 00       	call   140002de0 <__acrt_iob_func>
   1400019c4:	48 89 c1             	mov    %rax,%rcx
   1400019c7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400019cb:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   1400019d2:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   1400019d8:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   1400019de:	49 89 d9             	mov    %rbx,%r9
   1400019e1:	49 89 c0             	mov    %rax,%r8
   1400019e4:	48 8d 05 ad 27 00 00 	lea    0x27ad(%rip),%rax        # 140004198 <.rdata+0xf8>
   1400019eb:	48 89 c2             	mov    %rax,%rdx
   1400019ee:	e8 7d 14 00 00       	call   140002e70 <fprintf>
   1400019f3:	b8 00 00 00 00       	mov    $0x0,%eax
   1400019f8:	0f 28 75 00          	movaps 0x0(%rbp),%xmm6
   1400019fc:	0f 28 7d 10          	movaps 0x10(%rbp),%xmm7
   140001a00:	44 0f 28 45 20       	movaps 0x20(%rbp),%xmm8
   140001a05:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
   140001a0c:	5b                   	pop    %rbx
   140001a0d:	5d                   	pop    %rbp
   140001a0e:	c3                   	ret
   140001a0f:	90                   	nop

0000000140001a10 <_fpreset>:
   140001a10:	55                   	push   %rbp
   140001a11:	48 89 e5             	mov    %rsp,%rbp
   140001a14:	db e3                	fninit
   140001a16:	90                   	nop
   140001a17:	5d                   	pop    %rbp
   140001a18:	c3                   	ret
   140001a19:	90                   	nop
   140001a1a:	90                   	nop
   140001a1b:	90                   	nop
   140001a1c:	90                   	nop
   140001a1d:	90                   	nop
   140001a1e:	90                   	nop
   140001a1f:	90                   	nop

0000000140001a20 <__report_error>:
   140001a20:	55                   	push   %rbp
   140001a21:	53                   	push   %rbx
   140001a22:	48 83 ec 38          	sub    $0x38,%rsp
   140001a26:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   140001a2b:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   140001a2f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   140001a33:	4c 89 45 30          	mov    %r8,0x30(%rbp)
   140001a37:	4c 89 4d 38          	mov    %r9,0x38(%rbp)
   140001a3b:	48 8d 45 28          	lea    0x28(%rbp),%rax
   140001a3f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140001a43:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001a48:	e8 93 13 00 00       	call   140002de0 <__acrt_iob_func>
   140001a4d:	49 89 c1             	mov    %rax,%r9
   140001a50:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   140001a56:	ba 01 00 00 00       	mov    $0x1,%edx
   140001a5b:	48 8d 05 7e 27 00 00 	lea    0x277e(%rip),%rax        # 1400041e0 <.rdata>
   140001a62:	48 89 c1             	mov    %rax,%rcx
   140001a65:	e8 16 14 00 00       	call   140002e80 <fwrite>
   140001a6a:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
   140001a6e:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001a73:	e8 68 13 00 00       	call   140002de0 <__acrt_iob_func>
   140001a78:	48 89 c1             	mov    %rax,%rcx
   140001a7b:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140001a7f:	49 89 d8             	mov    %rbx,%r8
   140001a82:	48 89 c2             	mov    %rax,%rdx
   140001a85:	e8 26 14 00 00       	call   140002eb0 <vfprintf>
   140001a8a:	e8 c9 13 00 00       	call   140002e58 <abort>
   140001a8f:	90                   	nop

0000000140001a90 <mark_section_writable>:
   140001a90:	55                   	push   %rbp
   140001a91:	48 89 e5             	mov    %rsp,%rbp
   140001a94:	48 83 ec 60          	sub    $0x60,%rsp
   140001a98:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001a9c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   140001aa3:	e9 82 00 00 00       	jmp    140001b2a <mark_section_writable+0x9a>
   140001aa8:	48 8b 0d 41 66 00 00 	mov    0x6641(%rip),%rcx        # 1400080f0 <the_secs>
   140001aaf:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001ab2:	48 63 d0             	movslq %eax,%rdx
   140001ab5:	48 89 d0             	mov    %rdx,%rax
   140001ab8:	48 c1 e0 02          	shl    $0x2,%rax
   140001abc:	48 01 d0             	add    %rdx,%rax
   140001abf:	48 c1 e0 03          	shl    $0x3,%rax
   140001ac3:	48 01 c8             	add    %rcx,%rax
   140001ac6:	48 8b 40 18          	mov    0x18(%rax),%rax
   140001aca:	48 39 45 10          	cmp    %rax,0x10(%rbp)
   140001ace:	72 56                	jb     140001b26 <mark_section_writable+0x96>
   140001ad0:	48 8b 0d 19 66 00 00 	mov    0x6619(%rip),%rcx        # 1400080f0 <the_secs>
   140001ad7:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001ada:	48 63 d0             	movslq %eax,%rdx
   140001add:	48 89 d0             	mov    %rdx,%rax
   140001ae0:	48 c1 e0 02          	shl    $0x2,%rax
   140001ae4:	48 01 d0             	add    %rdx,%rax
   140001ae7:	48 c1 e0 03          	shl    $0x3,%rax
   140001aeb:	48 01 c8             	add    %rcx,%rax
   140001aee:	48 8b 48 18          	mov    0x18(%rax),%rcx
   140001af2:	4c 8b 05 f7 65 00 00 	mov    0x65f7(%rip),%r8        # 1400080f0 <the_secs>
   140001af9:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001afc:	48 63 d0             	movslq %eax,%rdx
   140001aff:	48 89 d0             	mov    %rdx,%rax
   140001b02:	48 c1 e0 02          	shl    $0x2,%rax
   140001b06:	48 01 d0             	add    %rdx,%rax
   140001b09:	48 c1 e0 03          	shl    $0x3,%rax
   140001b0d:	4c 01 c0             	add    %r8,%rax
   140001b10:	48 8b 40 20          	mov    0x20(%rax),%rax
   140001b14:	8b 40 08             	mov    0x8(%rax),%eax
   140001b17:	89 c0                	mov    %eax,%eax
   140001b19:	48 01 c8             	add    %rcx,%rax
   140001b1c:	48 39 45 10          	cmp    %rax,0x10(%rbp)
   140001b20:	0f 82 42 02 00 00    	jb     140001d68 <mark_section_writable+0x2d8>
   140001b26:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   140001b2a:	8b 05 c8 65 00 00    	mov    0x65c8(%rip),%eax        # 1400080f8 <maxSections>
   140001b30:	39 45 fc             	cmp    %eax,-0x4(%rbp)
   140001b33:	0f 8c 6f ff ff ff    	jl     140001aa8 <mark_section_writable+0x18>
   140001b39:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001b3d:	48 89 c1             	mov    %rax,%rcx
   140001b40:	e8 26 0f 00 00       	call   140002a6b <__mingw_GetSectionForAddress>
   140001b45:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140001b49:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
   140001b4e:	75 16                	jne    140001b66 <mark_section_writable+0xd6>
   140001b50:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001b54:	48 89 c2             	mov    %rax,%rdx
   140001b57:	48 8d 05 a2 26 00 00 	lea    0x26a2(%rip),%rax        # 140004200 <.rdata+0x20>
   140001b5e:	48 89 c1             	mov    %rax,%rcx
   140001b61:	e8 ba fe ff ff       	call   140001a20 <__report_error>
   140001b66:	48 8b 0d 83 65 00 00 	mov    0x6583(%rip),%rcx        # 1400080f0 <the_secs>
   140001b6d:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001b70:	48 63 d0             	movslq %eax,%rdx
   140001b73:	48 89 d0             	mov    %rdx,%rax
   140001b76:	48 c1 e0 02          	shl    $0x2,%rax
   140001b7a:	48 01 d0             	add    %rdx,%rax
   140001b7d:	48 c1 e0 03          	shl    $0x3,%rax
   140001b81:	48 8d 14 01          	lea    (%rcx,%rax,1),%rdx
   140001b85:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140001b89:	48 89 42 20          	mov    %rax,0x20(%rdx)
   140001b8d:	48 8b 0d 5c 65 00 00 	mov    0x655c(%rip),%rcx        # 1400080f0 <the_secs>
   140001b94:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001b97:	48 63 d0             	movslq %eax,%rdx
   140001b9a:	48 89 d0             	mov    %rdx,%rax
   140001b9d:	48 c1 e0 02          	shl    $0x2,%rax
   140001ba1:	48 01 d0             	add    %rdx,%rax
   140001ba4:	48 c1 e0 03          	shl    $0x3,%rax
   140001ba8:	48 01 c8             	add    %rcx,%rax
   140001bab:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001bb1:	e8 01 10 00 00       	call   140002bb7 <_GetPEImageBase>
   140001bb6:	48 89 c1             	mov    %rax,%rcx
   140001bb9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140001bbd:	8b 40 0c             	mov    0xc(%rax),%eax
   140001bc0:	41 89 c1             	mov    %eax,%r9d
   140001bc3:	4c 8b 05 26 65 00 00 	mov    0x6526(%rip),%r8        # 1400080f0 <the_secs>
   140001bca:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001bcd:	48 63 d0             	movslq %eax,%rdx
   140001bd0:	48 89 d0             	mov    %rdx,%rax
   140001bd3:	48 c1 e0 02          	shl    $0x2,%rax
   140001bd7:	48 01 d0             	add    %rdx,%rax
   140001bda:	48 c1 e0 03          	shl    $0x3,%rax
   140001bde:	4c 01 c0             	add    %r8,%rax
   140001be1:	4a 8d 14 09          	lea    (%rcx,%r9,1),%rdx
   140001be5:	48 89 50 18          	mov    %rdx,0x18(%rax)
   140001be9:	48 8b 0d 00 65 00 00 	mov    0x6500(%rip),%rcx        # 1400080f0 <the_secs>
   140001bf0:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001bf3:	48 63 d0             	movslq %eax,%rdx
   140001bf6:	48 89 d0             	mov    %rdx,%rax
   140001bf9:	48 c1 e0 02          	shl    $0x2,%rax
   140001bfd:	48 01 d0             	add    %rdx,%rax
   140001c00:	48 c1 e0 03          	shl    $0x3,%rax
   140001c04:	48 01 c8             	add    %rcx,%rax
   140001c07:	48 8b 40 18          	mov    0x18(%rax),%rax
   140001c0b:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
   140001c0f:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   140001c15:	48 89 c1             	mov    %rax,%rcx
   140001c18:	48 8b 05 c9 75 00 00 	mov    0x75c9(%rip),%rax        # 1400091e8 <__imp_VirtualQuery>
   140001c1f:	ff d0                	call   *%rax
   140001c21:	48 85 c0             	test   %rax,%rax
   140001c24:	75 3d                	jne    140001c63 <mark_section_writable+0x1d3>
   140001c26:	48 8b 0d c3 64 00 00 	mov    0x64c3(%rip),%rcx        # 1400080f0 <the_secs>
   140001c2d:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001c30:	48 63 d0             	movslq %eax,%rdx
   140001c33:	48 89 d0             	mov    %rdx,%rax
   140001c36:	48 c1 e0 02          	shl    $0x2,%rax
   140001c3a:	48 01 d0             	add    %rdx,%rax
   140001c3d:	48 c1 e0 03          	shl    $0x3,%rax
   140001c41:	48 01 c8             	add    %rcx,%rax
   140001c44:	48 8b 50 18          	mov    0x18(%rax),%rdx
   140001c48:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140001c4c:	8b 40 08             	mov    0x8(%rax),%eax
   140001c4f:	49 89 d0             	mov    %rdx,%r8
   140001c52:	89 c2                	mov    %eax,%edx
   140001c54:	48 8d 05 c5 25 00 00 	lea    0x25c5(%rip),%rax        # 140004220 <.rdata+0x40>
   140001c5b:	48 89 c1             	mov    %rax,%rcx
   140001c5e:	e8 bd fd ff ff       	call   140001a20 <__report_error>
   140001c63:	8b 45 e4             	mov    -0x1c(%rbp),%eax
   140001c66:	83 f8 40             	cmp    $0x40,%eax
   140001c69:	0f 84 e8 00 00 00    	je     140001d57 <mark_section_writable+0x2c7>
   140001c6f:	8b 45 e4             	mov    -0x1c(%rbp),%eax
   140001c72:	83 f8 04             	cmp    $0x4,%eax
   140001c75:	0f 84 dc 00 00 00    	je     140001d57 <mark_section_writable+0x2c7>
   140001c7b:	8b 45 e4             	mov    -0x1c(%rbp),%eax
   140001c7e:	3d 80 00 00 00       	cmp    $0x80,%eax
   140001c83:	0f 84 ce 00 00 00    	je     140001d57 <mark_section_writable+0x2c7>
   140001c89:	8b 45 e4             	mov    -0x1c(%rbp),%eax
   140001c8c:	83 f8 08             	cmp    $0x8,%eax
   140001c8f:	0f 84 c2 00 00 00    	je     140001d57 <mark_section_writable+0x2c7>
   140001c95:	8b 45 e4             	mov    -0x1c(%rbp),%eax
   140001c98:	83 f8 02             	cmp    $0x2,%eax
   140001c9b:	75 09                	jne    140001ca6 <mark_section_writable+0x216>
   140001c9d:	c7 45 f8 04 00 00 00 	movl   $0x4,-0x8(%rbp)
   140001ca4:	eb 07                	jmp    140001cad <mark_section_writable+0x21d>
   140001ca6:	c7 45 f8 40 00 00 00 	movl   $0x40,-0x8(%rbp)
   140001cad:	48 8b 0d 3c 64 00 00 	mov    0x643c(%rip),%rcx        # 1400080f0 <the_secs>
   140001cb4:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001cb7:	48 63 d0             	movslq %eax,%rdx
   140001cba:	48 89 d0             	mov    %rdx,%rax
   140001cbd:	48 c1 e0 02          	shl    $0x2,%rax
   140001cc1:	48 01 d0             	add    %rdx,%rax
   140001cc4:	48 c1 e0 03          	shl    $0x3,%rax
   140001cc8:	48 8d 14 01          	lea    (%rcx,%rax,1),%rdx
   140001ccc:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
   140001cd0:	48 89 42 08          	mov    %rax,0x8(%rdx)
   140001cd4:	48 8b 0d 15 64 00 00 	mov    0x6415(%rip),%rcx        # 1400080f0 <the_secs>
   140001cdb:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001cde:	48 63 d0             	movslq %eax,%rdx
   140001ce1:	48 89 d0             	mov    %rdx,%rax
   140001ce4:	48 c1 e0 02          	shl    $0x2,%rax
   140001ce8:	48 01 d0             	add    %rdx,%rax
   140001ceb:	48 c1 e0 03          	shl    $0x3,%rax
   140001cef:	48 8d 14 01          	lea    (%rcx,%rax,1),%rdx
   140001cf3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   140001cf7:	48 89 42 10          	mov    %rax,0x10(%rdx)
   140001cfb:	48 8b 0d ee 63 00 00 	mov    0x63ee(%rip),%rcx        # 1400080f0 <the_secs>
   140001d02:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001d05:	48 63 d0             	movslq %eax,%rdx
   140001d08:	48 89 d0             	mov    %rdx,%rax
   140001d0b:	48 c1 e0 02          	shl    $0x2,%rax
   140001d0f:	48 01 d0             	add    %rdx,%rax
   140001d12:	48 c1 e0 03          	shl    $0x3,%rax
   140001d16:	48 01 c8             	add    %rcx,%rax
   140001d19:	49 89 c0             	mov    %rax,%r8
   140001d1c:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
   140001d20:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
   140001d24:	8b 4d f8             	mov    -0x8(%rbp),%ecx
   140001d27:	4d 89 c1             	mov    %r8,%r9
   140001d2a:	41 89 c8             	mov    %ecx,%r8d
   140001d2d:	48 89 c1             	mov    %rax,%rcx
   140001d30:	48 8b 05 a9 74 00 00 	mov    0x74a9(%rip),%rax        # 1400091e0 <__imp_VirtualProtect>
   140001d37:	ff d0                	call   *%rax
   140001d39:	85 c0                	test   %eax,%eax
   140001d3b:	75 1a                	jne    140001d57 <mark_section_writable+0x2c7>
   140001d3d:	48 8b 05 54 74 00 00 	mov    0x7454(%rip),%rax        # 140009198 <__imp_GetLastError>
   140001d44:	ff d0                	call   *%rax
   140001d46:	89 c2                	mov    %eax,%edx
   140001d48:	48 8d 05 09 25 00 00 	lea    0x2509(%rip),%rax        # 140004258 <.rdata+0x78>
   140001d4f:	48 89 c1             	mov    %rax,%rcx
   140001d52:	e8 c9 fc ff ff       	call   140001a20 <__report_error>
   140001d57:	8b 05 9b 63 00 00    	mov    0x639b(%rip),%eax        # 1400080f8 <maxSections>
   140001d5d:	83 c0 01             	add    $0x1,%eax
   140001d60:	89 05 92 63 00 00    	mov    %eax,0x6392(%rip)        # 1400080f8 <maxSections>
   140001d66:	eb 01                	jmp    140001d69 <mark_section_writable+0x2d9>
   140001d68:	90                   	nop
   140001d69:	48 83 c4 60          	add    $0x60,%rsp
   140001d6d:	5d                   	pop    %rbp
   140001d6e:	c3                   	ret

0000000140001d6f <restore_modified_sections>:
   140001d6f:	55                   	push   %rbp
   140001d70:	48 89 e5             	mov    %rsp,%rbp
   140001d73:	48 83 ec 30          	sub    $0x30,%rsp
   140001d77:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   140001d7e:	e9 ad 00 00 00       	jmp    140001e30 <restore_modified_sections+0xc1>
   140001d83:	48 8b 0d 66 63 00 00 	mov    0x6366(%rip),%rcx        # 1400080f0 <the_secs>
   140001d8a:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001d8d:	48 63 d0             	movslq %eax,%rdx
   140001d90:	48 89 d0             	mov    %rdx,%rax
   140001d93:	48 c1 e0 02          	shl    $0x2,%rax
   140001d97:	48 01 d0             	add    %rdx,%rax
   140001d9a:	48 c1 e0 03          	shl    $0x3,%rax
   140001d9e:	48 01 c8             	add    %rcx,%rax
   140001da1:	8b 00                	mov    (%rax),%eax
   140001da3:	85 c0                	test   %eax,%eax
   140001da5:	0f 84 80 00 00 00    	je     140001e2b <restore_modified_sections+0xbc>
   140001dab:	48 8b 0d 3e 63 00 00 	mov    0x633e(%rip),%rcx        # 1400080f0 <the_secs>
   140001db2:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001db5:	48 63 d0             	movslq %eax,%rdx
   140001db8:	48 89 d0             	mov    %rdx,%rax
   140001dbb:	48 c1 e0 02          	shl    $0x2,%rax
   140001dbf:	48 01 d0             	add    %rdx,%rax
   140001dc2:	48 c1 e0 03          	shl    $0x3,%rax
   140001dc6:	48 01 c8             	add    %rcx,%rax
   140001dc9:	44 8b 10             	mov    (%rax),%r10d
   140001dcc:	48 8b 0d 1d 63 00 00 	mov    0x631d(%rip),%rcx        # 1400080f0 <the_secs>
   140001dd3:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001dd6:	48 63 d0             	movslq %eax,%rdx
   140001dd9:	48 89 d0             	mov    %rdx,%rax
   140001ddc:	48 c1 e0 02          	shl    $0x2,%rax
   140001de0:	48 01 d0             	add    %rdx,%rax
   140001de3:	48 c1 e0 03          	shl    $0x3,%rax
   140001de7:	48 01 c8             	add    %rcx,%rax
   140001dea:	48 8b 48 10          	mov    0x10(%rax),%rcx
   140001dee:	4c 8b 05 fb 62 00 00 	mov    0x62fb(%rip),%r8        # 1400080f0 <the_secs>
   140001df5:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001df8:	48 63 d0             	movslq %eax,%rdx
   140001dfb:	48 89 d0             	mov    %rdx,%rax
   140001dfe:	48 c1 e0 02          	shl    $0x2,%rax
   140001e02:	48 01 d0             	add    %rdx,%rax
   140001e05:	48 c1 e0 03          	shl    $0x3,%rax
   140001e09:	4c 01 c0             	add    %r8,%rax
   140001e0c:	48 8b 40 08          	mov    0x8(%rax),%rax
   140001e10:	48 8d 55 f8          	lea    -0x8(%rbp),%rdx
   140001e14:	49 89 d1             	mov    %rdx,%r9
   140001e17:	45 89 d0             	mov    %r10d,%r8d
   140001e1a:	48 89 ca             	mov    %rcx,%rdx
   140001e1d:	48 89 c1             	mov    %rax,%rcx
   140001e20:	48 8b 05 b9 73 00 00 	mov    0x73b9(%rip),%rax        # 1400091e0 <__imp_VirtualProtect>
   140001e27:	ff d0                	call   *%rax
   140001e29:	eb 01                	jmp    140001e2c <restore_modified_sections+0xbd>
   140001e2b:	90                   	nop
   140001e2c:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   140001e30:	8b 05 c2 62 00 00    	mov    0x62c2(%rip),%eax        # 1400080f8 <maxSections>
   140001e36:	39 45 fc             	cmp    %eax,-0x4(%rbp)
   140001e39:	0f 8c 44 ff ff ff    	jl     140001d83 <restore_modified_sections+0x14>
   140001e3f:	90                   	nop
   140001e40:	90                   	nop
   140001e41:	48 83 c4 30          	add    $0x30,%rsp
   140001e45:	5d                   	pop    %rbp
   140001e46:	c3                   	ret

0000000140001e47 <__write_memory>:
   140001e47:	55                   	push   %rbp
   140001e48:	48 89 e5             	mov    %rsp,%rbp
   140001e4b:	48 83 ec 20          	sub    $0x20,%rsp
   140001e4f:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001e53:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140001e57:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   140001e5b:	48 83 7d 20 00       	cmpq   $0x0,0x20(%rbp)
   140001e60:	74 25                	je     140001e87 <__write_memory+0x40>
   140001e62:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001e66:	48 89 c1             	mov    %rax,%rcx
   140001e69:	e8 22 fc ff ff       	call   140001a90 <mark_section_writable>
   140001e6e:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   140001e72:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   140001e76:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001e7a:	49 89 c8             	mov    %rcx,%r8
   140001e7d:	48 89 c1             	mov    %rax,%rcx
   140001e80:	e8 0b 10 00 00       	call   140002e90 <memcpy>
   140001e85:	eb 01                	jmp    140001e88 <__write_memory+0x41>
   140001e87:	90                   	nop
   140001e88:	48 83 c4 20          	add    $0x20,%rsp
   140001e8c:	5d                   	pop    %rbp
   140001e8d:	c3                   	ret

0000000140001e8e <do_pseudo_reloc>:
   140001e8e:	55                   	push   %rbp
   140001e8f:	48 89 e5             	mov    %rsp,%rbp
   140001e92:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
   140001e96:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001e9a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140001e9e:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   140001ea2:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140001ea6:	48 2b 45 10          	sub    0x10(%rbp),%rax
   140001eaa:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   140001eae:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001eb2:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140001eb6:	48 83 7d e0 07       	cmpq   $0x7,-0x20(%rbp)
   140001ebb:	0f 8e 50 03 00 00    	jle    140002211 <do_pseudo_reloc+0x383>
   140001ec1:	48 83 7d e0 0b       	cmpq   $0xb,-0x20(%rbp)
   140001ec6:	7e 25                	jle    140001eed <do_pseudo_reloc+0x5f>
   140001ec8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140001ecc:	8b 00                	mov    (%rax),%eax
   140001ece:	85 c0                	test   %eax,%eax
   140001ed0:	75 1b                	jne    140001eed <do_pseudo_reloc+0x5f>
   140001ed2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140001ed6:	8b 40 04             	mov    0x4(%rax),%eax
   140001ed9:	85 c0                	test   %eax,%eax
   140001edb:	75 10                	jne    140001eed <do_pseudo_reloc+0x5f>
   140001edd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140001ee1:	8b 40 08             	mov    0x8(%rax),%eax
   140001ee4:	85 c0                	test   %eax,%eax
   140001ee6:	75 05                	jne    140001eed <do_pseudo_reloc+0x5f>
   140001ee8:	48 83 45 f8 0c       	addq   $0xc,-0x8(%rbp)
   140001eed:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140001ef1:	8b 00                	mov    (%rax),%eax
   140001ef3:	85 c0                	test   %eax,%eax
   140001ef5:	75 0b                	jne    140001f02 <do_pseudo_reloc+0x74>
   140001ef7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140001efb:	8b 40 04             	mov    0x4(%rax),%eax
   140001efe:	85 c0                	test   %eax,%eax
   140001f00:	74 59                	je     140001f5b <do_pseudo_reloc+0xcd>
   140001f02:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140001f06:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   140001f0a:	eb 40                	jmp    140001f4c <do_pseudo_reloc+0xbe>
   140001f0c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140001f10:	8b 40 04             	mov    0x4(%rax),%eax
   140001f13:	89 c2                	mov    %eax,%edx
   140001f15:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140001f19:	48 01 d0             	add    %rdx,%rax
   140001f1c:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   140001f20:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140001f24:	8b 10                	mov    (%rax),%edx
   140001f26:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140001f2a:	8b 00                	mov    (%rax),%eax
   140001f2c:	01 d0                	add    %edx,%eax
   140001f2e:	89 45 b4             	mov    %eax,-0x4c(%rbp)
   140001f31:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140001f35:	48 8d 55 b4          	lea    -0x4c(%rbp),%rdx
   140001f39:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140001f3f:	48 89 c1             	mov    %rax,%rcx
   140001f42:	e8 00 ff ff ff       	call   140001e47 <__write_memory>
   140001f47:	48 83 45 e8 08       	addq   $0x8,-0x18(%rbp)
   140001f4c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140001f50:	48 3b 45 18          	cmp    0x18(%rbp),%rax
   140001f54:	72 b6                	jb     140001f0c <do_pseudo_reloc+0x7e>
   140001f56:	e9 b7 02 00 00       	jmp    140002212 <do_pseudo_reloc+0x384>
   140001f5b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140001f5f:	8b 40 08             	mov    0x8(%rax),%eax
   140001f62:	83 f8 01             	cmp    $0x1,%eax
   140001f65:	74 18                	je     140001f7f <do_pseudo_reloc+0xf1>
   140001f67:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140001f6b:	8b 40 08             	mov    0x8(%rax),%eax
   140001f6e:	89 c2                	mov    %eax,%edx
   140001f70:	48 8d 05 09 23 00 00 	lea    0x2309(%rip),%rax        # 140004280 <.rdata+0xa0>
   140001f77:	48 89 c1             	mov    %rax,%rcx
   140001f7a:	e8 a1 fa ff ff       	call   140001a20 <__report_error>
   140001f7f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140001f83:	48 83 c0 0c          	add    $0xc,%rax
   140001f87:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140001f8b:	e9 71 02 00 00       	jmp    140002201 <do_pseudo_reloc+0x373>
   140001f90:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140001f94:	8b 40 04             	mov    0x4(%rax),%eax
   140001f97:	89 c2                	mov    %eax,%edx
   140001f99:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140001f9d:	48 01 d0             	add    %rdx,%rax
   140001fa0:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   140001fa4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140001fa8:	8b 00                	mov    (%rax),%eax
   140001faa:	89 c2                	mov    %eax,%edx
   140001fac:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140001fb0:	48 01 d0             	add    %rdx,%rax
   140001fb3:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   140001fb7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   140001fbb:	48 8b 00             	mov    (%rax),%rax
   140001fbe:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   140001fc2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140001fc6:	8b 40 08             	mov    0x8(%rax),%eax
   140001fc9:	0f b6 c0             	movzbl %al,%eax
   140001fcc:	83 f8 40             	cmp    $0x40,%eax
   140001fcf:	0f 84 b6 00 00 00    	je     14000208b <do_pseudo_reloc+0x1fd>
   140001fd5:	83 f8 40             	cmp    $0x40,%eax
   140001fd8:	0f 87 ba 00 00 00    	ja     140002098 <do_pseudo_reloc+0x20a>
   140001fde:	83 f8 20             	cmp    $0x20,%eax
   140001fe1:	74 77                	je     14000205a <do_pseudo_reloc+0x1cc>
   140001fe3:	83 f8 20             	cmp    $0x20,%eax
   140001fe6:	0f 87 ac 00 00 00    	ja     140002098 <do_pseudo_reloc+0x20a>
   140001fec:	83 f8 08             	cmp    $0x8,%eax
   140001fef:	74 0a                	je     140001ffb <do_pseudo_reloc+0x16d>
   140001ff1:	83 f8 10             	cmp    $0x10,%eax
   140001ff4:	74 38                	je     14000202e <do_pseudo_reloc+0x1a0>
   140001ff6:	e9 9d 00 00 00       	jmp    140002098 <do_pseudo_reloc+0x20a>
   140001ffb:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140001fff:	0f b6 00             	movzbl (%rax),%eax
   140002002:	0f b6 c0             	movzbl %al,%eax
   140002005:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
   140002009:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   14000200d:	25 80 00 00 00       	and    $0x80,%eax
   140002012:	48 85 c0             	test   %rax,%rax
   140002015:	0f 84 a0 00 00 00    	je     1400020bb <do_pseudo_reloc+0x22d>
   14000201b:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   14000201f:	48 0d 00 ff ff ff    	or     $0xffffffffffffff00,%rax
   140002025:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
   140002029:	e9 8d 00 00 00       	jmp    1400020bb <do_pseudo_reloc+0x22d>
   14000202e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140002032:	0f b7 00             	movzwl (%rax),%eax
   140002035:	0f b7 c0             	movzwl %ax,%eax
   140002038:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
   14000203c:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   140002040:	25 00 80 00 00       	and    $0x8000,%eax
   140002045:	48 85 c0             	test   %rax,%rax
   140002048:	74 74                	je     1400020be <do_pseudo_reloc+0x230>
   14000204a:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   14000204e:	48 0d 00 00 ff ff    	or     $0xffffffffffff0000,%rax
   140002054:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
   140002058:	eb 64                	jmp    1400020be <do_pseudo_reloc+0x230>
   14000205a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   14000205e:	8b 00                	mov    (%rax),%eax
   140002060:	89 c0                	mov    %eax,%eax
   140002062:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
   140002066:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   14000206a:	25 00 00 00 80       	and    $0x80000000,%eax
   14000206f:	48 85 c0             	test   %rax,%rax
   140002072:	74 4d                	je     1400020c1 <do_pseudo_reloc+0x233>
   140002074:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   140002078:	48 ba 00 00 00 00 ff 	movabs $0xffffffff00000000,%rdx
   14000207f:	ff ff ff 
   140002082:	48 09 d0             	or     %rdx,%rax
   140002085:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
   140002089:	eb 36                	jmp    1400020c1 <do_pseudo_reloc+0x233>
   14000208b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   14000208f:	48 8b 00             	mov    (%rax),%rax
   140002092:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
   140002096:	eb 2a                	jmp    1400020c2 <do_pseudo_reloc+0x234>
   140002098:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
   14000209f:	00 
   1400020a0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400020a4:	8b 40 08             	mov    0x8(%rax),%eax
   1400020a7:	0f b6 c0             	movzbl %al,%eax
   1400020aa:	89 c2                	mov    %eax,%edx
   1400020ac:	48 8d 05 05 22 00 00 	lea    0x2205(%rip),%rax        # 1400042b8 <.rdata+0xd8>
   1400020b3:	48 89 c1             	mov    %rax,%rcx
   1400020b6:	e8 65 f9 ff ff       	call   140001a20 <__report_error>
   1400020bb:	90                   	nop
   1400020bc:	eb 04                	jmp    1400020c2 <do_pseudo_reloc+0x234>
   1400020be:	90                   	nop
   1400020bf:	eb 01                	jmp    1400020c2 <do_pseudo_reloc+0x234>
   1400020c1:	90                   	nop
   1400020c2:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
   1400020c6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400020ca:	8b 00                	mov    (%rax),%eax
   1400020cc:	89 c2                	mov    %eax,%edx
   1400020ce:	48 8b 45 20          	mov    0x20(%rbp),%rax
   1400020d2:	48 01 c2             	add    %rax,%rdx
   1400020d5:	48 89 c8             	mov    %rcx,%rax
   1400020d8:	48 29 d0             	sub    %rdx,%rax
   1400020db:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
   1400020df:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
   1400020e3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   1400020e7:	48 01 d0             	add    %rdx,%rax
   1400020ea:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
   1400020ee:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400020f2:	8b 40 08             	mov    0x8(%rax),%eax
   1400020f5:	25 ff 00 00 00       	and    $0xff,%eax
   1400020fa:	89 45 d4             	mov    %eax,-0x2c(%rbp)
   1400020fd:	83 7d d4 3f          	cmpl   $0x3f,-0x2c(%rbp)
   140002101:	77 70                	ja     140002173 <do_pseudo_reloc+0x2e5>
   140002103:	8b 45 d4             	mov    -0x2c(%rbp),%eax
   140002106:	ba 01 00 00 00       	mov    $0x1,%edx
   14000210b:	89 c1                	mov    %eax,%ecx
   14000210d:	48 d3 e2             	shl    %cl,%rdx
   140002110:	48 89 d0             	mov    %rdx,%rax
   140002113:	48 83 e8 01          	sub    $0x1,%rax
   140002117:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
   14000211b:	8b 45 d4             	mov    -0x2c(%rbp),%eax
   14000211e:	83 e8 01             	sub    $0x1,%eax
   140002121:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
   140002128:	89 c1                	mov    %eax,%ecx
   14000212a:	48 d3 e2             	shl    %cl,%rdx
   14000212d:	48 89 d0             	mov    %rdx,%rax
   140002130:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   140002134:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   140002138:	48 39 45 c8          	cmp    %rax,-0x38(%rbp)
   14000213c:	7c 0a                	jl     140002148 <do_pseudo_reloc+0x2ba>
   14000213e:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   140002142:	48 39 45 c0          	cmp    %rax,-0x40(%rbp)
   140002146:	7e 2b                	jle    140002173 <do_pseudo_reloc+0x2e5>
   140002148:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
   14000214c:	4c 8b 45 d8          	mov    -0x28(%rbp),%r8
   140002150:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
   140002154:	8b 45 d4             	mov    -0x2c(%rbp),%eax
   140002157:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
   14000215c:	4d 89 c1             	mov    %r8,%r9
   14000215f:	49 89 c8             	mov    %rcx,%r8
   140002162:	89 c2                	mov    %eax,%edx
   140002164:	48 8d 05 7d 21 00 00 	lea    0x217d(%rip),%rax        # 1400042e8 <.rdata+0x108>
   14000216b:	48 89 c1             	mov    %rax,%rcx
   14000216e:	e8 ad f8 ff ff       	call   140001a20 <__report_error>
   140002173:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140002177:	8b 40 08             	mov    0x8(%rax),%eax
   14000217a:	0f b6 c0             	movzbl %al,%eax
   14000217d:	83 f8 40             	cmp    $0x40,%eax
   140002180:	74 63                	je     1400021e5 <do_pseudo_reloc+0x357>
   140002182:	83 f8 40             	cmp    $0x40,%eax
   140002185:	77 75                	ja     1400021fc <do_pseudo_reloc+0x36e>
   140002187:	83 f8 20             	cmp    $0x20,%eax
   14000218a:	74 41                	je     1400021cd <do_pseudo_reloc+0x33f>
   14000218c:	83 f8 20             	cmp    $0x20,%eax
   14000218f:	77 6b                	ja     1400021fc <do_pseudo_reloc+0x36e>
   140002191:	83 f8 08             	cmp    $0x8,%eax
   140002194:	74 07                	je     14000219d <do_pseudo_reloc+0x30f>
   140002196:	83 f8 10             	cmp    $0x10,%eax
   140002199:	74 1a                	je     1400021b5 <do_pseudo_reloc+0x327>
   14000219b:	eb 5f                	jmp    1400021fc <do_pseudo_reloc+0x36e>
   14000219d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   1400021a1:	48 8d 55 b8          	lea    -0x48(%rbp),%rdx
   1400021a5:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   1400021ab:	48 89 c1             	mov    %rax,%rcx
   1400021ae:	e8 94 fc ff ff       	call   140001e47 <__write_memory>
   1400021b3:	eb 47                	jmp    1400021fc <do_pseudo_reloc+0x36e>
   1400021b5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   1400021b9:	48 8d 55 b8          	lea    -0x48(%rbp),%rdx
   1400021bd:	41 b8 02 00 00 00    	mov    $0x2,%r8d
   1400021c3:	48 89 c1             	mov    %rax,%rcx
   1400021c6:	e8 7c fc ff ff       	call   140001e47 <__write_memory>
   1400021cb:	eb 2f                	jmp    1400021fc <do_pseudo_reloc+0x36e>
   1400021cd:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   1400021d1:	48 8d 55 b8          	lea    -0x48(%rbp),%rdx
   1400021d5:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   1400021db:	48 89 c1             	mov    %rax,%rcx
   1400021de:	e8 64 fc ff ff       	call   140001e47 <__write_memory>
   1400021e3:	eb 17                	jmp    1400021fc <do_pseudo_reloc+0x36e>
   1400021e5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   1400021e9:	48 8d 55 b8          	lea    -0x48(%rbp),%rdx
   1400021ed:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   1400021f3:	48 89 c1             	mov    %rax,%rcx
   1400021f6:	e8 4c fc ff ff       	call   140001e47 <__write_memory>
   1400021fb:	90                   	nop
   1400021fc:	48 83 45 f0 0c       	addq   $0xc,-0x10(%rbp)
   140002201:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140002205:	48 3b 45 18          	cmp    0x18(%rbp),%rax
   140002209:	0f 82 81 fd ff ff    	jb     140001f90 <do_pseudo_reloc+0x102>
   14000220f:	eb 01                	jmp    140002212 <do_pseudo_reloc+0x384>
   140002211:	90                   	nop
   140002212:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
   140002216:	5d                   	pop    %rbp
   140002217:	c3                   	ret

0000000140002218 <_pei386_runtime_relocator>:
   140002218:	55                   	push   %rbp
   140002219:	48 89 e5             	mov    %rsp,%rbp
   14000221c:	48 83 ec 30          	sub    $0x30,%rsp
   140002220:	8b 05 d6 5e 00 00    	mov    0x5ed6(%rip),%eax        # 1400080fc <was_init.0>
   140002226:	85 c0                	test   %eax,%eax
   140002228:	0f 85 88 00 00 00    	jne    1400022b6 <_pei386_runtime_relocator+0x9e>
   14000222e:	8b 05 c8 5e 00 00    	mov    0x5ec8(%rip),%eax        # 1400080fc <was_init.0>
   140002234:	83 c0 01             	add    $0x1,%eax
   140002237:	89 05 bf 5e 00 00    	mov    %eax,0x5ebf(%rip)        # 1400080fc <was_init.0>
   14000223d:	e8 79 08 00 00       	call   140002abb <__mingw_GetSectionCount>
   140002242:	89 45 fc             	mov    %eax,-0x4(%rbp)
   140002245:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140002248:	48 63 d0             	movslq %eax,%rdx
   14000224b:	48 89 d0             	mov    %rdx,%rax
   14000224e:	48 c1 e0 02          	shl    $0x2,%rax
   140002252:	48 01 d0             	add    %rdx,%rax
   140002255:	48 c1 e0 03          	shl    $0x3,%rax
   140002259:	48 83 c0 0f          	add    $0xf,%rax
   14000225d:	48 c1 e8 04          	shr    $0x4,%rax
   140002261:	48 c1 e0 04          	shl    $0x4,%rax
   140002265:	e8 d6 0a 00 00       	call   140002d40 <___chkstk_ms>
   14000226a:	48 29 c4             	sub    %rax,%rsp
   14000226d:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
   140002272:	48 83 c0 0f          	add    $0xf,%rax
   140002276:	48 c1 e8 04          	shr    $0x4,%rax
   14000227a:	48 c1 e0 04          	shl    $0x4,%rax
   14000227e:	48 89 05 6b 5e 00 00 	mov    %rax,0x5e6b(%rip)        # 1400080f0 <the_secs>
   140002285:	c7 05 69 5e 00 00 00 	movl   $0x0,0x5e69(%rip)        # 1400080f8 <maxSections>
   14000228c:	00 00 00 
   14000228f:	4c 8b 05 0a 21 00 00 	mov    0x210a(%rip),%r8        # 1400043a0 <.refptr.__ImageBase>
   140002296:	48 8b 05 13 21 00 00 	mov    0x2113(%rip),%rax        # 1400043b0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   14000229d:	48 89 c2             	mov    %rax,%rdx
   1400022a0:	48 8b 05 19 21 00 00 	mov    0x2119(%rip),%rax        # 1400043c0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   1400022a7:	48 89 c1             	mov    %rax,%rcx
   1400022aa:	e8 df fb ff ff       	call   140001e8e <do_pseudo_reloc>
   1400022af:	e8 bb fa ff ff       	call   140001d6f <restore_modified_sections>
   1400022b4:	eb 01                	jmp    1400022b7 <_pei386_runtime_relocator+0x9f>
   1400022b6:	90                   	nop
   1400022b7:	48 89 ec             	mov    %rbp,%rsp
   1400022ba:	5d                   	pop    %rbp
   1400022bb:	c3                   	ret
   1400022bc:	90                   	nop
   1400022bd:	90                   	nop
   1400022be:	90                   	nop
   1400022bf:	90                   	nop

00000001400022c0 <__mingw_raise_matherr>:
   1400022c0:	55                   	push   %rbp
   1400022c1:	48 89 e5             	mov    %rsp,%rbp
   1400022c4:	48 83 ec 50          	sub    $0x50,%rsp
   1400022c8:	89 4d 10             	mov    %ecx,0x10(%rbp)
   1400022cb:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   1400022cf:	f2 0f 11 55 20       	movsd  %xmm2,0x20(%rbp)
   1400022d4:	f2 0f 11 5d 28       	movsd  %xmm3,0x28(%rbp)
   1400022d9:	48 8b 05 20 5e 00 00 	mov    0x5e20(%rip),%rax        # 140008100 <stUserMathErr>
   1400022e0:	48 85 c0             	test   %rax,%rax
   1400022e3:	74 3e                	je     140002323 <__mingw_raise_matherr+0x63>
   1400022e5:	8b 45 10             	mov    0x10(%rbp),%eax
   1400022e8:	89 45 d0             	mov    %eax,-0x30(%rbp)
   1400022eb:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400022ef:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   1400022f3:	f2 0f 10 45 20       	movsd  0x20(%rbp),%xmm0
   1400022f8:	f2 0f 11 45 e0       	movsd  %xmm0,-0x20(%rbp)
   1400022fd:	f2 0f 10 45 28       	movsd  0x28(%rbp),%xmm0
   140002302:	f2 0f 11 45 e8       	movsd  %xmm0,-0x18(%rbp)
   140002307:	f2 0f 10 45 30       	movsd  0x30(%rbp),%xmm0
   14000230c:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
   140002311:	48 8b 15 e8 5d 00 00 	mov    0x5de8(%rip),%rdx        # 140008100 <stUserMathErr>
   140002318:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   14000231c:	48 89 c1             	mov    %rax,%rcx
   14000231f:	ff d2                	call   *%rdx
   140002321:	eb 01                	jmp    140002324 <__mingw_raise_matherr+0x64>
   140002323:	90                   	nop
   140002324:	48 83 c4 50          	add    $0x50,%rsp
   140002328:	5d                   	pop    %rbp
   140002329:	c3                   	ret

000000014000232a <__mingw_setusermatherr>:
   14000232a:	55                   	push   %rbp
   14000232b:	48 89 e5             	mov    %rsp,%rbp
   14000232e:	48 83 ec 20          	sub    $0x20,%rsp
   140002332:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002336:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000233a:	48 89 05 bf 5d 00 00 	mov    %rax,0x5dbf(%rip)        # 140008100 <stUserMathErr>
   140002341:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002345:	48 89 c1             	mov    %rax,%rcx
   140002348:	e8 e3 0a 00 00       	call   140002e30 <__setusermatherr>
   14000234d:	90                   	nop
   14000234e:	48 83 c4 20          	add    $0x20,%rsp
   140002352:	5d                   	pop    %rbp
   140002353:	c3                   	ret
   140002354:	90                   	nop
   140002355:	90                   	nop
   140002356:	90                   	nop
   140002357:	90                   	nop
   140002358:	90                   	nop
   140002359:	90                   	nop
   14000235a:	90                   	nop
   14000235b:	90                   	nop
   14000235c:	90                   	nop
   14000235d:	90                   	nop
   14000235e:	90                   	nop
   14000235f:	90                   	nop

0000000140002360 <_gnu_exception_handler>:
   140002360:	55                   	push   %rbp
   140002361:	48 89 e5             	mov    %rsp,%rbp
   140002364:	48 83 ec 30          	sub    $0x30,%rsp
   140002368:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000236c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   140002373:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
   14000237a:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000237e:	48 8b 00             	mov    (%rax),%rax
   140002381:	8b 00                	mov    (%rax),%eax
   140002383:	25 ff ff ff 20       	and    $0x20ffffff,%eax
   140002388:	3d 43 43 47 20       	cmp    $0x20474343,%eax
   14000238d:	75 1b                	jne    1400023aa <_gnu_exception_handler+0x4a>
   14000238f:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002393:	48 8b 00             	mov    (%rax),%rax
   140002396:	8b 40 04             	mov    0x4(%rax),%eax
   140002399:	83 e0 01             	and    $0x1,%eax
   14000239c:	85 c0                	test   %eax,%eax
   14000239e:	75 0a                	jne    1400023aa <_gnu_exception_handler+0x4a>
   1400023a0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   1400023a5:	e9 d3 01 00 00       	jmp    14000257d <_gnu_exception_handler+0x21d>
   1400023aa:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400023ae:	48 8b 00             	mov    (%rax),%rax
   1400023b1:	8b 00                	mov    (%rax),%eax
   1400023b3:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   1400023b8:	0f 87 8d 01 00 00    	ja     14000254b <_gnu_exception_handler+0x1eb>
   1400023be:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
   1400023c3:	73 43                	jae    140002408 <_gnu_exception_handler+0xa8>
   1400023c5:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   1400023ca:	0f 84 bf 00 00 00    	je     14000248f <_gnu_exception_handler+0x12f>
   1400023d0:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   1400023d5:	0f 87 70 01 00 00    	ja     14000254b <_gnu_exception_handler+0x1eb>
   1400023db:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   1400023e0:	0f 84 5c 01 00 00    	je     140002542 <_gnu_exception_handler+0x1e2>
   1400023e6:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   1400023eb:	0f 87 5a 01 00 00    	ja     14000254b <_gnu_exception_handler+0x1eb>
   1400023f1:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   1400023f6:	0f 84 46 01 00 00    	je     140002542 <_gnu_exception_handler+0x1e2>
   1400023fc:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   140002401:	74 35                	je     140002438 <_gnu_exception_handler+0xd8>
   140002403:	e9 43 01 00 00       	jmp    14000254b <_gnu_exception_handler+0x1eb>
   140002408:	05 74 ff ff 3f       	add    $0x3fffff74,%eax
   14000240d:	83 f8 0a             	cmp    $0xa,%eax
   140002410:	0f 87 35 01 00 00    	ja     14000254b <_gnu_exception_handler+0x1eb>
   140002416:	89 c0                	mov    %eax,%eax
   140002418:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   14000241f:	00 
   140002420:	48 8d 05 19 1f 00 00 	lea    0x1f19(%rip),%rax        # 140004340 <.rdata>
   140002427:	8b 04 02             	mov    (%rdx,%rax,1),%eax
   14000242a:	48 98                	cltq
   14000242c:	48 8d 15 0d 1f 00 00 	lea    0x1f0d(%rip),%rdx        # 140004340 <.rdata>
   140002433:	48 01 d0             	add    %rdx,%rax
   140002436:	ff e0                	jmp    *%rax
   140002438:	ba 00 00 00 00       	mov    $0x0,%edx
   14000243d:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140002442:	e8 51 0a 00 00       	call   140002e98 <signal>
   140002447:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   14000244b:	48 83 7d f0 01       	cmpq   $0x1,-0x10(%rbp)
   140002450:	75 1b                	jne    14000246d <_gnu_exception_handler+0x10d>
   140002452:	ba 01 00 00 00       	mov    $0x1,%edx
   140002457:	b9 0b 00 00 00       	mov    $0xb,%ecx
   14000245c:	e8 37 0a 00 00       	call   140002e98 <signal>
   140002461:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%rbp)
   140002468:	e9 e1 00 00 00       	jmp    14000254e <_gnu_exception_handler+0x1ee>
   14000246d:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
   140002472:	0f 84 d6 00 00 00    	je     14000254e <_gnu_exception_handler+0x1ee>
   140002478:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   14000247c:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140002481:	ff d0                	call   *%rax
   140002483:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%rbp)
   14000248a:	e9 bf 00 00 00       	jmp    14000254e <_gnu_exception_handler+0x1ee>
   14000248f:	ba 00 00 00 00       	mov    $0x0,%edx
   140002494:	b9 04 00 00 00       	mov    $0x4,%ecx
   140002499:	e8 fa 09 00 00       	call   140002e98 <signal>
   14000249e:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   1400024a2:	48 83 7d f0 01       	cmpq   $0x1,-0x10(%rbp)
   1400024a7:	75 1b                	jne    1400024c4 <_gnu_exception_handler+0x164>
   1400024a9:	ba 01 00 00 00       	mov    $0x1,%edx
   1400024ae:	b9 04 00 00 00       	mov    $0x4,%ecx
   1400024b3:	e8 e0 09 00 00       	call   140002e98 <signal>
   1400024b8:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%rbp)
   1400024bf:	e9 8d 00 00 00       	jmp    140002551 <_gnu_exception_handler+0x1f1>
   1400024c4:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
   1400024c9:	0f 84 82 00 00 00    	je     140002551 <_gnu_exception_handler+0x1f1>
   1400024cf:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400024d3:	b9 04 00 00 00       	mov    $0x4,%ecx
   1400024d8:	ff d0                	call   *%rax
   1400024da:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%rbp)
   1400024e1:	eb 6e                	jmp    140002551 <_gnu_exception_handler+0x1f1>
   1400024e3:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
   1400024ea:	ba 00 00 00 00       	mov    $0x0,%edx
   1400024ef:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400024f4:	e8 9f 09 00 00       	call   140002e98 <signal>
   1400024f9:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   1400024fd:	48 83 7d f0 01       	cmpq   $0x1,-0x10(%rbp)
   140002502:	75 23                	jne    140002527 <_gnu_exception_handler+0x1c7>
   140002504:	ba 01 00 00 00       	mov    $0x1,%edx
   140002509:	b9 08 00 00 00       	mov    $0x8,%ecx
   14000250e:	e8 85 09 00 00       	call   140002e98 <signal>
   140002513:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
   140002517:	74 05                	je     14000251e <_gnu_exception_handler+0x1be>
   140002519:	e8 f2 f4 ff ff       	call   140001a10 <_fpreset>
   14000251e:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%rbp)
   140002525:	eb 2d                	jmp    140002554 <_gnu_exception_handler+0x1f4>
   140002527:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
   14000252c:	74 26                	je     140002554 <_gnu_exception_handler+0x1f4>
   14000252e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140002532:	b9 08 00 00 00       	mov    $0x8,%ecx
   140002537:	ff d0                	call   *%rax
   140002539:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%rbp)
   140002540:	eb 12                	jmp    140002554 <_gnu_exception_handler+0x1f4>
   140002542:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%rbp)
   140002549:	eb 0a                	jmp    140002555 <_gnu_exception_handler+0x1f5>
   14000254b:	90                   	nop
   14000254c:	eb 07                	jmp    140002555 <_gnu_exception_handler+0x1f5>
   14000254e:	90                   	nop
   14000254f:	eb 04                	jmp    140002555 <_gnu_exception_handler+0x1f5>
   140002551:	90                   	nop
   140002552:	eb 01                	jmp    140002555 <_gnu_exception_handler+0x1f5>
   140002554:	90                   	nop
   140002555:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   140002559:	75 1f                	jne    14000257a <_gnu_exception_handler+0x21a>
   14000255b:	48 8b 05 be 5b 00 00 	mov    0x5bbe(%rip),%rax        # 140008120 <__mingw_oldexcpt_handler>
   140002562:	48 85 c0             	test   %rax,%rax
   140002565:	74 13                	je     14000257a <_gnu_exception_handler+0x21a>
   140002567:	48 8b 15 b2 5b 00 00 	mov    0x5bb2(%rip),%rdx        # 140008120 <__mingw_oldexcpt_handler>
   14000256e:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002572:	48 89 c1             	mov    %rax,%rcx
   140002575:	ff d2                	call   *%rdx
   140002577:	89 45 fc             	mov    %eax,-0x4(%rbp)
   14000257a:	8b 45 fc             	mov    -0x4(%rbp),%eax
   14000257d:	48 83 c4 30          	add    $0x30,%rsp
   140002581:	5d                   	pop    %rbp
   140002582:	c3                   	ret
   140002583:	90                   	nop
   140002584:	90                   	nop
   140002585:	90                   	nop
   140002586:	90                   	nop
   140002587:	90                   	nop
   140002588:	90                   	nop
   140002589:	90                   	nop
   14000258a:	90                   	nop
   14000258b:	90                   	nop
   14000258c:	90                   	nop
   14000258d:	90                   	nop
   14000258e:	90                   	nop
   14000258f:	90                   	nop

0000000140002590 <___w64_mingwthr_add_key_dtor>:
   140002590:	55                   	push   %rbp
   140002591:	48 89 e5             	mov    %rsp,%rbp
   140002594:	48 83 ec 30          	sub    $0x30,%rsp
   140002598:	89 4d 10             	mov    %ecx,0x10(%rbp)
   14000259b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000259f:	8b 05 c3 5b 00 00    	mov    0x5bc3(%rip),%eax        # 140008168 <__mingwthr_cs_init>
   1400025a5:	85 c0                	test   %eax,%eax
   1400025a7:	75 07                	jne    1400025b0 <___w64_mingwthr_add_key_dtor+0x20>
   1400025a9:	b8 00 00 00 00       	mov    $0x0,%eax
   1400025ae:	eb 7b                	jmp    14000262b <___w64_mingwthr_add_key_dtor+0x9b>
   1400025b0:	ba 18 00 00 00       	mov    $0x18,%edx
   1400025b5:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400025ba:	e8 a1 08 00 00       	call   140002e60 <calloc>
   1400025bf:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   1400025c3:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
   1400025c8:	75 07                	jne    1400025d1 <___w64_mingwthr_add_key_dtor+0x41>
   1400025ca:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   1400025cf:	eb 5a                	jmp    14000262b <___w64_mingwthr_add_key_dtor+0x9b>
   1400025d1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400025d5:	8b 55 10             	mov    0x10(%rbp),%edx
   1400025d8:	89 10                	mov    %edx,(%rax)
   1400025da:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400025de:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   1400025e2:	48 89 50 08          	mov    %rdx,0x8(%rax)
   1400025e6:	48 8d 05 53 5b 00 00 	lea    0x5b53(%rip),%rax        # 140008140 <__mingwthr_cs>
   1400025ed:	48 89 c1             	mov    %rax,%rcx
   1400025f0:	48 8b 05 91 6b 00 00 	mov    0x6b91(%rip),%rax        # 140009188 <__imp_EnterCriticalSection>
   1400025f7:	ff d0                	call   *%rax
   1400025f9:	48 8b 15 70 5b 00 00 	mov    0x5b70(%rip),%rdx        # 140008170 <key_dtor_list>
   140002600:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002604:	48 89 50 10          	mov    %rdx,0x10(%rax)
   140002608:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000260c:	48 89 05 5d 5b 00 00 	mov    %rax,0x5b5d(%rip)        # 140008170 <key_dtor_list>
   140002613:	48 8d 05 26 5b 00 00 	lea    0x5b26(%rip),%rax        # 140008140 <__mingwthr_cs>
   14000261a:	48 89 c1             	mov    %rax,%rcx
   14000261d:	48 8b 05 94 6b 00 00 	mov    0x6b94(%rip),%rax        # 1400091b8 <__imp_LeaveCriticalSection>
   140002624:	ff d0                	call   *%rax
   140002626:	b8 00 00 00 00       	mov    $0x0,%eax
   14000262b:	48 83 c4 30          	add    $0x30,%rsp
   14000262f:	5d                   	pop    %rbp
   140002630:	c3                   	ret

0000000140002631 <___w64_mingwthr_remove_key_dtor>:
   140002631:	55                   	push   %rbp
   140002632:	48 89 e5             	mov    %rsp,%rbp
   140002635:	48 83 ec 30          	sub    $0x30,%rsp
   140002639:	89 4d 10             	mov    %ecx,0x10(%rbp)
   14000263c:	8b 05 26 5b 00 00    	mov    0x5b26(%rip),%eax        # 140008168 <__mingwthr_cs_init>
   140002642:	85 c0                	test   %eax,%eax
   140002644:	75 0a                	jne    140002650 <___w64_mingwthr_remove_key_dtor+0x1f>
   140002646:	b8 00 00 00 00       	mov    $0x0,%eax
   14000264b:	e9 9c 00 00 00       	jmp    1400026ec <___w64_mingwthr_remove_key_dtor+0xbb>
   140002650:	48 8d 05 e9 5a 00 00 	lea    0x5ae9(%rip),%rax        # 140008140 <__mingwthr_cs>
   140002657:	48 89 c1             	mov    %rax,%rcx
   14000265a:	48 8b 05 27 6b 00 00 	mov    0x6b27(%rip),%rax        # 140009188 <__imp_EnterCriticalSection>
   140002661:	ff d0                	call   *%rax
   140002663:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
   14000266a:	00 
   14000266b:	48 8b 05 fe 5a 00 00 	mov    0x5afe(%rip),%rax        # 140008170 <key_dtor_list>
   140002672:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140002676:	eb 55                	jmp    1400026cd <___w64_mingwthr_remove_key_dtor+0x9c>
   140002678:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   14000267c:	8b 00                	mov    (%rax),%eax
   14000267e:	39 45 10             	cmp    %eax,0x10(%rbp)
   140002681:	75 36                	jne    1400026b9 <___w64_mingwthr_remove_key_dtor+0x88>
   140002683:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
   140002688:	75 11                	jne    14000269b <___w64_mingwthr_remove_key_dtor+0x6a>
   14000268a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   14000268e:	48 8b 40 10          	mov    0x10(%rax),%rax
   140002692:	48 89 05 d7 5a 00 00 	mov    %rax,0x5ad7(%rip)        # 140008170 <key_dtor_list>
   140002699:	eb 10                	jmp    1400026ab <___w64_mingwthr_remove_key_dtor+0x7a>
   14000269b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   14000269f:	48 8b 50 10          	mov    0x10(%rax),%rdx
   1400026a3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400026a7:	48 89 50 10          	mov    %rdx,0x10(%rax)
   1400026ab:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400026af:	48 89 c1             	mov    %rax,%rcx
   1400026b2:	e8 c1 07 00 00       	call   140002e78 <free>
   1400026b7:	eb 1b                	jmp    1400026d4 <___w64_mingwthr_remove_key_dtor+0xa3>
   1400026b9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400026bd:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   1400026c1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400026c5:	48 8b 40 10          	mov    0x10(%rax),%rax
   1400026c9:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   1400026cd:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
   1400026d2:	75 a4                	jne    140002678 <___w64_mingwthr_remove_key_dtor+0x47>
   1400026d4:	48 8d 05 65 5a 00 00 	lea    0x5a65(%rip),%rax        # 140008140 <__mingwthr_cs>
   1400026db:	48 89 c1             	mov    %rax,%rcx
   1400026de:	48 8b 05 d3 6a 00 00 	mov    0x6ad3(%rip),%rax        # 1400091b8 <__imp_LeaveCriticalSection>
   1400026e5:	ff d0                	call   *%rax
   1400026e7:	b8 00 00 00 00       	mov    $0x0,%eax
   1400026ec:	48 83 c4 30          	add    $0x30,%rsp
   1400026f0:	5d                   	pop    %rbp
   1400026f1:	c3                   	ret

00000001400026f2 <__mingwthr_run_key_dtors>:
   1400026f2:	55                   	push   %rbp
   1400026f3:	48 89 e5             	mov    %rsp,%rbp
   1400026f6:	48 83 ec 30          	sub    $0x30,%rsp
   1400026fa:	8b 05 68 5a 00 00    	mov    0x5a68(%rip),%eax        # 140008168 <__mingwthr_cs_init>
   140002700:	85 c0                	test   %eax,%eax
   140002702:	0f 84 82 00 00 00    	je     14000278a <__mingwthr_run_key_dtors+0x98>
   140002708:	48 8d 05 31 5a 00 00 	lea    0x5a31(%rip),%rax        # 140008140 <__mingwthr_cs>
   14000270f:	48 89 c1             	mov    %rax,%rcx
   140002712:	48 8b 05 6f 6a 00 00 	mov    0x6a6f(%rip),%rax        # 140009188 <__imp_EnterCriticalSection>
   140002719:	ff d0                	call   *%rax
   14000271b:	48 8b 05 4e 5a 00 00 	mov    0x5a4e(%rip),%rax        # 140008170 <key_dtor_list>
   140002722:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002726:	eb 46                	jmp    14000276e <__mingwthr_run_key_dtors+0x7c>
   140002728:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000272c:	8b 00                	mov    (%rax),%eax
   14000272e:	89 c1                	mov    %eax,%ecx
   140002730:	48 8b 05 a1 6a 00 00 	mov    0x6aa1(%rip),%rax        # 1400091d8 <__imp_TlsGetValue>
   140002737:	ff d0                	call   *%rax
   140002739:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   14000273d:	48 8b 05 54 6a 00 00 	mov    0x6a54(%rip),%rax        # 140009198 <__imp_GetLastError>
   140002744:	ff d0                	call   *%rax
   140002746:	85 c0                	test   %eax,%eax
   140002748:	75 18                	jne    140002762 <__mingwthr_run_key_dtors+0x70>
   14000274a:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
   14000274f:	74 11                	je     140002762 <__mingwthr_run_key_dtors+0x70>
   140002751:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002755:	48 8b 50 08          	mov    0x8(%rax),%rdx
   140002759:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   14000275d:	48 89 c1             	mov    %rax,%rcx
   140002760:	ff d2                	call   *%rdx
   140002762:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002766:	48 8b 40 10          	mov    0x10(%rax),%rax
   14000276a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   14000276e:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
   140002773:	75 b3                	jne    140002728 <__mingwthr_run_key_dtors+0x36>
   140002775:	48 8d 05 c4 59 00 00 	lea    0x59c4(%rip),%rax        # 140008140 <__mingwthr_cs>
   14000277c:	48 89 c1             	mov    %rax,%rcx
   14000277f:	48 8b 05 32 6a 00 00 	mov    0x6a32(%rip),%rax        # 1400091b8 <__imp_LeaveCriticalSection>
   140002786:	ff d0                	call   *%rax
   140002788:	eb 01                	jmp    14000278b <__mingwthr_run_key_dtors+0x99>
   14000278a:	90                   	nop
   14000278b:	48 83 c4 30          	add    $0x30,%rsp
   14000278f:	5d                   	pop    %rbp
   140002790:	c3                   	ret

0000000140002791 <__mingw_TLScallback>:
   140002791:	55                   	push   %rbp
   140002792:	48 89 e5             	mov    %rsp,%rbp
   140002795:	48 83 ec 30          	sub    $0x30,%rsp
   140002799:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000279d:	89 55 18             	mov    %edx,0x18(%rbp)
   1400027a0:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   1400027a4:	83 7d 18 03          	cmpl   $0x3,0x18(%rbp)
   1400027a8:	0f 84 cc 00 00 00    	je     14000287a <__mingw_TLScallback+0xe9>
   1400027ae:	83 7d 18 03          	cmpl   $0x3,0x18(%rbp)
   1400027b2:	0f 87 ca 00 00 00    	ja     140002882 <__mingw_TLScallback+0xf1>
   1400027b8:	83 7d 18 02          	cmpl   $0x2,0x18(%rbp)
   1400027bc:	0f 84 b1 00 00 00    	je     140002873 <__mingw_TLScallback+0xe2>
   1400027c2:	83 7d 18 02          	cmpl   $0x2,0x18(%rbp)
   1400027c6:	0f 87 b6 00 00 00    	ja     140002882 <__mingw_TLScallback+0xf1>
   1400027cc:	83 7d 18 00          	cmpl   $0x0,0x18(%rbp)
   1400027d0:	74 33                	je     140002805 <__mingw_TLScallback+0x74>
   1400027d2:	83 7d 18 01          	cmpl   $0x1,0x18(%rbp)
   1400027d6:	0f 85 a6 00 00 00    	jne    140002882 <__mingw_TLScallback+0xf1>
   1400027dc:	8b 05 86 59 00 00    	mov    0x5986(%rip),%eax        # 140008168 <__mingwthr_cs_init>
   1400027e2:	85 c0                	test   %eax,%eax
   1400027e4:	75 13                	jne    1400027f9 <__mingw_TLScallback+0x68>
   1400027e6:	48 8d 05 53 59 00 00 	lea    0x5953(%rip),%rax        # 140008140 <__mingwthr_cs>
   1400027ed:	48 89 c1             	mov    %rax,%rcx
   1400027f0:	48 8b 05 b9 69 00 00 	mov    0x69b9(%rip),%rax        # 1400091b0 <__imp_InitializeCriticalSection>
   1400027f7:	ff d0                	call   *%rax
   1400027f9:	c7 05 65 59 00 00 01 	movl   $0x1,0x5965(%rip)        # 140008168 <__mingwthr_cs_init>
   140002800:	00 00 00 
   140002803:	eb 7d                	jmp    140002882 <__mingw_TLScallback+0xf1>
   140002805:	e8 e8 fe ff ff       	call   1400026f2 <__mingwthr_run_key_dtors>
   14000280a:	8b 05 58 59 00 00    	mov    0x5958(%rip),%eax        # 140008168 <__mingwthr_cs_init>
   140002810:	83 f8 01             	cmp    $0x1,%eax
   140002813:	75 6c                	jne    140002881 <__mingw_TLScallback+0xf0>
   140002815:	48 8b 05 54 59 00 00 	mov    0x5954(%rip),%rax        # 140008170 <key_dtor_list>
   14000281c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002820:	eb 20                	jmp    140002842 <__mingw_TLScallback+0xb1>
   140002822:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002826:	48 8b 40 10          	mov    0x10(%rax),%rax
   14000282a:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   14000282e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002832:	48 89 c1             	mov    %rax,%rcx
   140002835:	e8 3e 06 00 00       	call   140002e78 <free>
   14000283a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   14000283e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002842:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
   140002847:	75 d9                	jne    140002822 <__mingw_TLScallback+0x91>
   140002849:	48 c7 05 1c 59 00 00 	movq   $0x0,0x591c(%rip)        # 140008170 <key_dtor_list>
   140002850:	00 00 00 00 
   140002854:	c7 05 0a 59 00 00 00 	movl   $0x0,0x590a(%rip)        # 140008168 <__mingwthr_cs_init>
   14000285b:	00 00 00 
   14000285e:	48 8d 05 db 58 00 00 	lea    0x58db(%rip),%rax        # 140008140 <__mingwthr_cs>
   140002865:	48 89 c1             	mov    %rax,%rcx
   140002868:	48 8b 05 11 69 00 00 	mov    0x6911(%rip),%rax        # 140009180 <__IAT_start__>
   14000286f:	ff d0                	call   *%rax
   140002871:	eb 0e                	jmp    140002881 <__mingw_TLScallback+0xf0>
   140002873:	e8 98 f1 ff ff       	call   140001a10 <_fpreset>
   140002878:	eb 08                	jmp    140002882 <__mingw_TLScallback+0xf1>
   14000287a:	e8 73 fe ff ff       	call   1400026f2 <__mingwthr_run_key_dtors>
   14000287f:	eb 01                	jmp    140002882 <__mingw_TLScallback+0xf1>
   140002881:	90                   	nop
   140002882:	b8 01 00 00 00       	mov    $0x1,%eax
   140002887:	48 83 c4 30          	add    $0x30,%rsp
   14000288b:	5d                   	pop    %rbp
   14000288c:	c3                   	ret
   14000288d:	90                   	nop
   14000288e:	90                   	nop
   14000288f:	90                   	nop

0000000140002890 <_ValidateImageBase>:
   140002890:	55                   	push   %rbp
   140002891:	48 89 e5             	mov    %rsp,%rbp
   140002894:	48 83 ec 20          	sub    $0x20,%rsp
   140002898:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000289c:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400028a0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   1400028a4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400028a8:	0f b7 00             	movzwl (%rax),%eax
   1400028ab:	66 3d 4d 5a          	cmp    $0x5a4d,%ax
   1400028af:	74 07                	je     1400028b8 <_ValidateImageBase+0x28>
   1400028b1:	b8 00 00 00 00       	mov    $0x0,%eax
   1400028b6:	eb 4e                	jmp    140002906 <_ValidateImageBase+0x76>
   1400028b8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400028bc:	8b 40 3c             	mov    0x3c(%rax),%eax
   1400028bf:	48 63 d0             	movslq %eax,%rdx
   1400028c2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1400028c6:	48 01 d0             	add    %rdx,%rax
   1400028c9:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   1400028cd:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400028d1:	8b 00                	mov    (%rax),%eax
   1400028d3:	3d 50 45 00 00       	cmp    $0x4550,%eax
   1400028d8:	74 07                	je     1400028e1 <_ValidateImageBase+0x51>
   1400028da:	b8 00 00 00 00       	mov    $0x0,%eax
   1400028df:	eb 25                	jmp    140002906 <_ValidateImageBase+0x76>
   1400028e1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400028e5:	48 83 c0 18          	add    $0x18,%rax
   1400028e9:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   1400028ed:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1400028f1:	0f b7 00             	movzwl (%rax),%eax
   1400028f4:	66 3d 0b 02          	cmp    $0x20b,%ax
   1400028f8:	74 07                	je     140002901 <_ValidateImageBase+0x71>
   1400028fa:	b8 00 00 00 00       	mov    $0x0,%eax
   1400028ff:	eb 05                	jmp    140002906 <_ValidateImageBase+0x76>
   140002901:	b8 01 00 00 00       	mov    $0x1,%eax
   140002906:	48 83 c4 20          	add    $0x20,%rsp
   14000290a:	5d                   	pop    %rbp
   14000290b:	c3                   	ret

000000014000290c <_FindPESection>:
   14000290c:	55                   	push   %rbp
   14000290d:	48 89 e5             	mov    %rsp,%rbp
   140002910:	48 83 ec 20          	sub    $0x20,%rsp
   140002914:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002918:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000291c:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002920:	8b 40 3c             	mov    0x3c(%rax),%eax
   140002923:	48 63 d0             	movslq %eax,%rdx
   140002926:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000292a:	48 01 d0             	add    %rdx,%rax
   14000292d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   140002931:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
   140002938:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   14000293c:	0f b7 40 14          	movzwl 0x14(%rax),%eax
   140002940:	0f b7 d0             	movzwl %ax,%edx
   140002943:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002947:	48 01 d0             	add    %rdx,%rax
   14000294a:	48 83 c0 18          	add    $0x18,%rax
   14000294e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002952:	eb 36                	jmp    14000298a <_FindPESection+0x7e>
   140002954:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002958:	8b 40 0c             	mov    0xc(%rax),%eax
   14000295b:	89 c0                	mov    %eax,%eax
   14000295d:	48 39 45 18          	cmp    %rax,0x18(%rbp)
   140002961:	72 1e                	jb     140002981 <_FindPESection+0x75>
   140002963:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002967:	8b 50 0c             	mov    0xc(%rax),%edx
   14000296a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000296e:	8b 40 08             	mov    0x8(%rax),%eax
   140002971:	01 d0                	add    %edx,%eax
   140002973:	89 c0                	mov    %eax,%eax
   140002975:	48 39 45 18          	cmp    %rax,0x18(%rbp)
   140002979:	73 06                	jae    140002981 <_FindPESection+0x75>
   14000297b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   14000297f:	eb 1e                	jmp    14000299f <_FindPESection+0x93>
   140002981:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
   140002985:	48 83 45 f8 28       	addq   $0x28,-0x8(%rbp)
   14000298a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   14000298e:	0f b7 40 06          	movzwl 0x6(%rax),%eax
   140002992:	0f b7 c0             	movzwl %ax,%eax
   140002995:	39 45 f4             	cmp    %eax,-0xc(%rbp)
   140002998:	72 ba                	jb     140002954 <_FindPESection+0x48>
   14000299a:	b8 00 00 00 00       	mov    $0x0,%eax
   14000299f:	48 83 c4 20          	add    $0x20,%rsp
   1400029a3:	5d                   	pop    %rbp
   1400029a4:	c3                   	ret

00000001400029a5 <_FindPESectionByName>:
   1400029a5:	55                   	push   %rbp
   1400029a6:	48 89 e5             	mov    %rsp,%rbp
   1400029a9:	48 83 ec 40          	sub    $0x40,%rsp
   1400029ad:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400029b1:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400029b5:	48 89 c1             	mov    %rax,%rcx
   1400029b8:	e8 e3 04 00 00       	call   140002ea0 <strlen>
   1400029bd:	48 83 f8 08          	cmp    $0x8,%rax
   1400029c1:	76 0a                	jbe    1400029cd <_FindPESectionByName+0x28>
   1400029c3:	b8 00 00 00 00       	mov    $0x0,%eax
   1400029c8:	e9 98 00 00 00       	jmp    140002a65 <_FindPESectionByName+0xc0>
   1400029cd:	48 8b 05 cc 19 00 00 	mov    0x19cc(%rip),%rax        # 1400043a0 <.refptr.__ImageBase>
   1400029d4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   1400029d8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1400029dc:	48 89 c1             	mov    %rax,%rcx
   1400029df:	e8 ac fe ff ff       	call   140002890 <_ValidateImageBase>
   1400029e4:	85 c0                	test   %eax,%eax
   1400029e6:	75 07                	jne    1400029ef <_FindPESectionByName+0x4a>
   1400029e8:	b8 00 00 00 00       	mov    $0x0,%eax
   1400029ed:	eb 76                	jmp    140002a65 <_FindPESectionByName+0xc0>
   1400029ef:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1400029f3:	8b 40 3c             	mov    0x3c(%rax),%eax
   1400029f6:	48 63 d0             	movslq %eax,%rdx
   1400029f9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1400029fd:	48 01 d0             	add    %rdx,%rax
   140002a00:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   140002a04:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
   140002a0b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140002a0f:	0f b7 40 14          	movzwl 0x14(%rax),%eax
   140002a13:	0f b7 d0             	movzwl %ax,%edx
   140002a16:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140002a1a:	48 01 d0             	add    %rdx,%rax
   140002a1d:	48 83 c0 18          	add    $0x18,%rax
   140002a21:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002a25:	eb 29                	jmp    140002a50 <_FindPESectionByName+0xab>
   140002a27:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002a2b:	48 8b 55 10          	mov    0x10(%rbp),%rdx
   140002a2f:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   140002a35:	48 89 c1             	mov    %rax,%rcx
   140002a38:	e8 6b 04 00 00       	call   140002ea8 <strncmp>
   140002a3d:	85 c0                	test   %eax,%eax
   140002a3f:	75 06                	jne    140002a47 <_FindPESectionByName+0xa2>
   140002a41:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002a45:	eb 1e                	jmp    140002a65 <_FindPESectionByName+0xc0>
   140002a47:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
   140002a4b:	48 83 45 f8 28       	addq   $0x28,-0x8(%rbp)
   140002a50:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140002a54:	0f b7 40 06          	movzwl 0x6(%rax),%eax
   140002a58:	0f b7 c0             	movzwl %ax,%eax
   140002a5b:	39 45 f4             	cmp    %eax,-0xc(%rbp)
   140002a5e:	72 c7                	jb     140002a27 <_FindPESectionByName+0x82>
   140002a60:	b8 00 00 00 00       	mov    $0x0,%eax
   140002a65:	48 83 c4 40          	add    $0x40,%rsp
   140002a69:	5d                   	pop    %rbp
   140002a6a:	c3                   	ret

0000000140002a6b <__mingw_GetSectionForAddress>:
   140002a6b:	55                   	push   %rbp
   140002a6c:	48 89 e5             	mov    %rsp,%rbp
   140002a6f:	48 83 ec 30          	sub    $0x30,%rsp
   140002a73:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002a77:	48 8b 05 22 19 00 00 	mov    0x1922(%rip),%rax        # 1400043a0 <.refptr.__ImageBase>
   140002a7e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002a82:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002a86:	48 89 c1             	mov    %rax,%rcx
   140002a89:	e8 02 fe ff ff       	call   140002890 <_ValidateImageBase>
   140002a8e:	85 c0                	test   %eax,%eax
   140002a90:	75 07                	jne    140002a99 <__mingw_GetSectionForAddress+0x2e>
   140002a92:	b8 00 00 00 00       	mov    $0x0,%eax
   140002a97:	eb 1c                	jmp    140002ab5 <__mingw_GetSectionForAddress+0x4a>
   140002a99:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002a9d:	48 2b 45 f8          	sub    -0x8(%rbp),%rax
   140002aa1:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140002aa5:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
   140002aa9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002aad:	48 89 c1             	mov    %rax,%rcx
   140002ab0:	e8 57 fe ff ff       	call   14000290c <_FindPESection>
   140002ab5:	48 83 c4 30          	add    $0x30,%rsp
   140002ab9:	5d                   	pop    %rbp
   140002aba:	c3                   	ret

0000000140002abb <__mingw_GetSectionCount>:
   140002abb:	55                   	push   %rbp
   140002abc:	48 89 e5             	mov    %rsp,%rbp
   140002abf:	48 83 ec 30          	sub    $0x30,%rsp
   140002ac3:	48 8b 05 d6 18 00 00 	mov    0x18d6(%rip),%rax        # 1400043a0 <.refptr.__ImageBase>
   140002aca:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002ace:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002ad2:	48 89 c1             	mov    %rax,%rcx
   140002ad5:	e8 b6 fd ff ff       	call   140002890 <_ValidateImageBase>
   140002ada:	85 c0                	test   %eax,%eax
   140002adc:	75 07                	jne    140002ae5 <__mingw_GetSectionCount+0x2a>
   140002ade:	b8 00 00 00 00       	mov    $0x0,%eax
   140002ae3:	eb 20                	jmp    140002b05 <__mingw_GetSectionCount+0x4a>
   140002ae5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002ae9:	8b 40 3c             	mov    0x3c(%rax),%eax
   140002aec:	48 63 d0             	movslq %eax,%rdx
   140002aef:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002af3:	48 01 d0             	add    %rdx,%rax
   140002af6:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140002afa:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140002afe:	0f b7 40 06          	movzwl 0x6(%rax),%eax
   140002b02:	0f b7 c0             	movzwl %ax,%eax
   140002b05:	48 83 c4 30          	add    $0x30,%rsp
   140002b09:	5d                   	pop    %rbp
   140002b0a:	c3                   	ret

0000000140002b0b <_FindPESectionExec>:
   140002b0b:	55                   	push   %rbp
   140002b0c:	48 89 e5             	mov    %rsp,%rbp
   140002b0f:	48 83 ec 40          	sub    $0x40,%rsp
   140002b13:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002b17:	48 8b 05 82 18 00 00 	mov    0x1882(%rip),%rax        # 1400043a0 <.refptr.__ImageBase>
   140002b1e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   140002b22:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002b26:	48 89 c1             	mov    %rax,%rcx
   140002b29:	e8 62 fd ff ff       	call   140002890 <_ValidateImageBase>
   140002b2e:	85 c0                	test   %eax,%eax
   140002b30:	75 07                	jne    140002b39 <_FindPESectionExec+0x2e>
   140002b32:	b8 00 00 00 00       	mov    $0x0,%eax
   140002b37:	eb 78                	jmp    140002bb1 <_FindPESectionExec+0xa6>
   140002b39:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002b3d:	8b 40 3c             	mov    0x3c(%rax),%eax
   140002b40:	48 63 d0             	movslq %eax,%rdx
   140002b43:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002b47:	48 01 d0             	add    %rdx,%rax
   140002b4a:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   140002b4e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
   140002b55:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140002b59:	0f b7 40 14          	movzwl 0x14(%rax),%eax
   140002b5d:	0f b7 d0             	movzwl %ax,%edx
   140002b60:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140002b64:	48 01 d0             	add    %rdx,%rax
   140002b67:	48 83 c0 18          	add    $0x18,%rax
   140002b6b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002b6f:	eb 2b                	jmp    140002b9c <_FindPESectionExec+0x91>
   140002b71:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002b75:	8b 40 24             	mov    0x24(%rax),%eax
   140002b78:	25 00 00 00 20       	and    $0x20000000,%eax
   140002b7d:	85 c0                	test   %eax,%eax
   140002b7f:	74 12                	je     140002b93 <_FindPESectionExec+0x88>
   140002b81:	48 83 7d 10 00       	cmpq   $0x0,0x10(%rbp)
   140002b86:	75 06                	jne    140002b8e <_FindPESectionExec+0x83>
   140002b88:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002b8c:	eb 23                	jmp    140002bb1 <_FindPESectionExec+0xa6>
   140002b8e:	48 83 6d 10 01       	subq   $0x1,0x10(%rbp)
   140002b93:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
   140002b97:	48 83 45 f8 28       	addq   $0x28,-0x8(%rbp)
   140002b9c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   140002ba0:	0f b7 40 06          	movzwl 0x6(%rax),%eax
   140002ba4:	0f b7 c0             	movzwl %ax,%eax
   140002ba7:	39 45 f4             	cmp    %eax,-0xc(%rbp)
   140002baa:	72 c5                	jb     140002b71 <_FindPESectionExec+0x66>
   140002bac:	b8 00 00 00 00       	mov    $0x0,%eax
   140002bb1:	48 83 c4 40          	add    $0x40,%rsp
   140002bb5:	5d                   	pop    %rbp
   140002bb6:	c3                   	ret

0000000140002bb7 <_GetPEImageBase>:
   140002bb7:	55                   	push   %rbp
   140002bb8:	48 89 e5             	mov    %rsp,%rbp
   140002bbb:	48 83 ec 30          	sub    $0x30,%rsp
   140002bbf:	48 8b 05 da 17 00 00 	mov    0x17da(%rip),%rax        # 1400043a0 <.refptr.__ImageBase>
   140002bc6:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002bca:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002bce:	48 89 c1             	mov    %rax,%rcx
   140002bd1:	e8 ba fc ff ff       	call   140002890 <_ValidateImageBase>
   140002bd6:	85 c0                	test   %eax,%eax
   140002bd8:	75 07                	jne    140002be1 <_GetPEImageBase+0x2a>
   140002bda:	b8 00 00 00 00       	mov    $0x0,%eax
   140002bdf:	eb 04                	jmp    140002be5 <_GetPEImageBase+0x2e>
   140002be1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002be5:	48 83 c4 30          	add    $0x30,%rsp
   140002be9:	5d                   	pop    %rbp
   140002bea:	c3                   	ret

0000000140002beb <_IsNonwritableInCurrentImage>:
   140002beb:	55                   	push   %rbp
   140002bec:	48 89 e5             	mov    %rsp,%rbp
   140002bef:	48 83 ec 40          	sub    $0x40,%rsp
   140002bf3:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002bf7:	48 8b 05 a2 17 00 00 	mov    0x17a2(%rip),%rax        # 1400043a0 <.refptr.__ImageBase>
   140002bfe:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002c02:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002c06:	48 89 c1             	mov    %rax,%rcx
   140002c09:	e8 82 fc ff ff       	call   140002890 <_ValidateImageBase>
   140002c0e:	85 c0                	test   %eax,%eax
   140002c10:	75 07                	jne    140002c19 <_IsNonwritableInCurrentImage+0x2e>
   140002c12:	b8 00 00 00 00       	mov    $0x0,%eax
   140002c17:	eb 3d                	jmp    140002c56 <_IsNonwritableInCurrentImage+0x6b>
   140002c19:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002c1d:	48 2b 45 f8          	sub    -0x8(%rbp),%rax
   140002c21:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140002c25:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
   140002c29:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002c2d:	48 89 c1             	mov    %rax,%rcx
   140002c30:	e8 d7 fc ff ff       	call   14000290c <_FindPESection>
   140002c35:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   140002c39:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
   140002c3e:	75 07                	jne    140002c47 <_IsNonwritableInCurrentImage+0x5c>
   140002c40:	b8 00 00 00 00       	mov    $0x0,%eax
   140002c45:	eb 0f                	jmp    140002c56 <_IsNonwritableInCurrentImage+0x6b>
   140002c47:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002c4b:	8b 40 24             	mov    0x24(%rax),%eax
   140002c4e:	f7 d0                	not    %eax
   140002c50:	c1 e8 1f             	shr    $0x1f,%eax
   140002c53:	0f b6 c0             	movzbl %al,%eax
   140002c56:	48 83 c4 40          	add    $0x40,%rsp
   140002c5a:	5d                   	pop    %rbp
   140002c5b:	c3                   	ret

0000000140002c5c <__mingw_enum_import_library_names>:
   140002c5c:	55                   	push   %rbp
   140002c5d:	48 89 e5             	mov    %rsp,%rbp
   140002c60:	48 83 ec 50          	sub    $0x50,%rsp
   140002c64:	89 4d 10             	mov    %ecx,0x10(%rbp)
   140002c67:	48 8b 05 32 17 00 00 	mov    0x1732(%rip),%rax        # 1400043a0 <.refptr.__ImageBase>
   140002c6e:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140002c72:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140002c76:	48 89 c1             	mov    %rax,%rcx
   140002c79:	e8 12 fc ff ff       	call   140002890 <_ValidateImageBase>
   140002c7e:	85 c0                	test   %eax,%eax
   140002c80:	75 0a                	jne    140002c8c <__mingw_enum_import_library_names+0x30>
   140002c82:	b8 00 00 00 00       	mov    $0x0,%eax
   140002c87:	e9 ab 00 00 00       	jmp    140002d37 <__mingw_enum_import_library_names+0xdb>
   140002c8c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140002c90:	8b 40 3c             	mov    0x3c(%rax),%eax
   140002c93:	48 63 d0             	movslq %eax,%rdx
   140002c96:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140002c9a:	48 01 d0             	add    %rdx,%rax
   140002c9d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   140002ca1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   140002ca5:	8b 80 90 00 00 00    	mov    0x90(%rax),%eax
   140002cab:	89 45 e4             	mov    %eax,-0x1c(%rbp)
   140002cae:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
   140002cb2:	75 07                	jne    140002cbb <__mingw_enum_import_library_names+0x5f>
   140002cb4:	b8 00 00 00 00       	mov    $0x0,%eax
   140002cb9:	eb 7c                	jmp    140002d37 <__mingw_enum_import_library_names+0xdb>
   140002cbb:	8b 55 e4             	mov    -0x1c(%rbp),%edx
   140002cbe:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140002cc2:	48 89 c1             	mov    %rax,%rcx
   140002cc5:	e8 42 fc ff ff       	call   14000290c <_FindPESection>
   140002cca:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   140002cce:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
   140002cd3:	75 07                	jne    140002cdc <__mingw_enum_import_library_names+0x80>
   140002cd5:	b8 00 00 00 00       	mov    $0x0,%eax
   140002cda:	eb 5b                	jmp    140002d37 <__mingw_enum_import_library_names+0xdb>
   140002cdc:	8b 55 e4             	mov    -0x1c(%rbp),%edx
   140002cdf:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140002ce3:	48 01 d0             	add    %rdx,%rax
   140002ce6:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002cea:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
   140002cef:	75 07                	jne    140002cf8 <__mingw_enum_import_library_names+0x9c>
   140002cf1:	b8 00 00 00 00       	mov    $0x0,%eax
   140002cf6:	eb 3f                	jmp    140002d37 <__mingw_enum_import_library_names+0xdb>
   140002cf8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002cfc:	8b 40 04             	mov    0x4(%rax),%eax
   140002cff:	85 c0                	test   %eax,%eax
   140002d01:	75 0b                	jne    140002d0e <__mingw_enum_import_library_names+0xb2>
   140002d03:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002d07:	8b 40 0c             	mov    0xc(%rax),%eax
   140002d0a:	85 c0                	test   %eax,%eax
   140002d0c:	74 23                	je     140002d31 <__mingw_enum_import_library_names+0xd5>
   140002d0e:	83 7d 10 00          	cmpl   $0x0,0x10(%rbp)
   140002d12:	7f 12                	jg     140002d26 <__mingw_enum_import_library_names+0xca>
   140002d14:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002d18:	8b 40 0c             	mov    0xc(%rax),%eax
   140002d1b:	89 c2                	mov    %eax,%edx
   140002d1d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140002d21:	48 01 d0             	add    %rdx,%rax
   140002d24:	eb 11                	jmp    140002d37 <__mingw_enum_import_library_names+0xdb>
   140002d26:	83 6d 10 01          	subl   $0x1,0x10(%rbp)
   140002d2a:	48 83 45 f8 14       	addq   $0x14,-0x8(%rbp)
   140002d2f:	eb c7                	jmp    140002cf8 <__mingw_enum_import_library_names+0x9c>
   140002d31:	90                   	nop
   140002d32:	b8 00 00 00 00       	mov    $0x0,%eax
   140002d37:	48 83 c4 50          	add    $0x50,%rsp
   140002d3b:	5d                   	pop    %rbp
   140002d3c:	c3                   	ret
   140002d3d:	90                   	nop
   140002d3e:	90                   	nop
   140002d3f:	90                   	nop

0000000140002d40 <___chkstk_ms>:
   140002d40:	51                   	push   %rcx
   140002d41:	50                   	push   %rax
   140002d42:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002d48:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   140002d4d:	72 19                	jb     140002d68 <___chkstk_ms+0x28>
   140002d4f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   140002d56:	48 83 09 00          	orq    $0x0,(%rcx)
   140002d5a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   140002d60:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002d66:	77 e7                	ja     140002d4f <___chkstk_ms+0xf>
   140002d68:	48 29 c1             	sub    %rax,%rcx
   140002d6b:	48 83 09 00          	orq    $0x0,(%rcx)
   140002d6f:	58                   	pop    %rax
   140002d70:	59                   	pop    %rcx
   140002d71:	c3                   	ret
   140002d72:	90                   	nop
   140002d73:	90                   	nop
   140002d74:	90                   	nop
   140002d75:	90                   	nop
   140002d76:	90                   	nop
   140002d77:	90                   	nop
   140002d78:	90                   	nop
   140002d79:	90                   	nop
   140002d7a:	90                   	nop
   140002d7b:	90                   	nop
   140002d7c:	90                   	nop
   140002d7d:	90                   	nop
   140002d7e:	90                   	nop
   140002d7f:	90                   	nop

0000000140002d80 <__p__fmode>:
   140002d80:	55                   	push   %rbp
   140002d81:	48 89 e5             	mov    %rsp,%rbp
   140002d84:	48 8b 05 85 16 00 00 	mov    0x1685(%rip),%rax        # 140004410 <.refptr.__imp__fmode>
   140002d8b:	48 8b 00             	mov    (%rax),%rax
   140002d8e:	5d                   	pop    %rbp
   140002d8f:	c3                   	ret

0000000140002d90 <__p__commode>:
   140002d90:	55                   	push   %rbp
   140002d91:	48 89 e5             	mov    %rsp,%rbp
   140002d94:	48 8b 05 65 16 00 00 	mov    0x1665(%rip),%rax        # 140004400 <.refptr.__imp__commode>
   140002d9b:	48 8b 00             	mov    (%rax),%rax
   140002d9e:	5d                   	pop    %rbp
   140002d9f:	c3                   	ret

0000000140002da0 <_set_invalid_parameter_handler>:
   140002da0:	55                   	push   %rbp
   140002da1:	48 89 e5             	mov    %rsp,%rbp
   140002da4:	48 83 ec 10          	sub    $0x10,%rsp
   140002da8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002dac:	48 8d 05 fd 53 00 00 	lea    0x53fd(%rip),%rax        # 1400081b0 <handler>
   140002db3:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002db7:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002dbb:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140002dbf:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
   140002dc3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002dc7:	48 87 10             	xchg   %rdx,(%rax)
   140002dca:	48 89 d0             	mov    %rdx,%rax
   140002dcd:	48 83 c4 10          	add    $0x10,%rsp
   140002dd1:	5d                   	pop    %rbp
   140002dd2:	c3                   	ret

0000000140002dd3 <_get_invalid_parameter_handler>:
   140002dd3:	55                   	push   %rbp
   140002dd4:	48 89 e5             	mov    %rsp,%rbp
   140002dd7:	48 8b 05 d2 53 00 00 	mov    0x53d2(%rip),%rax        # 1400081b0 <handler>
   140002dde:	5d                   	pop    %rbp
   140002ddf:	c3                   	ret

0000000140002de0 <__acrt_iob_func>:
   140002de0:	55                   	push   %rbp
   140002de1:	48 89 e5             	mov    %rsp,%rbp
   140002de4:	48 83 ec 20          	sub    $0x20,%rsp
   140002de8:	89 4d 10             	mov    %ecx,0x10(%rbp)
   140002deb:	e8 30 00 00 00       	call   140002e20 <__iob_func>
   140002df0:	48 89 c1             	mov    %rax,%rcx
   140002df3:	8b 55 10             	mov    0x10(%rbp),%edx
   140002df6:	48 89 d0             	mov    %rdx,%rax
   140002df9:	48 01 c0             	add    %rax,%rax
   140002dfc:	48 01 d0             	add    %rdx,%rax
   140002dff:	48 c1 e0 04          	shl    $0x4,%rax
   140002e03:	48 01 c8             	add    %rcx,%rax
   140002e06:	48 83 c4 20          	add    $0x20,%rsp
   140002e0a:	5d                   	pop    %rbp
   140002e0b:	c3                   	ret
   140002e0c:	90                   	nop
   140002e0d:	90                   	nop
   140002e0e:	90                   	nop
   140002e0f:	90                   	nop

0000000140002e10 <__C_specific_handler>:
   140002e10:	ff 25 e2 63 00 00    	jmp    *0x63e2(%rip)        # 1400091f8 <__imp___C_specific_handler>
   140002e16:	90                   	nop
   140002e17:	90                   	nop

0000000140002e18 <__getmainargs>:
   140002e18:	ff 25 e2 63 00 00    	jmp    *0x63e2(%rip)        # 140009200 <__imp___getmainargs>
   140002e1e:	90                   	nop
   140002e1f:	90                   	nop

0000000140002e20 <__iob_func>:
   140002e20:	ff 25 ea 63 00 00    	jmp    *0x63ea(%rip)        # 140009210 <__imp___iob_func>
   140002e26:	90                   	nop
   140002e27:	90                   	nop

0000000140002e28 <__set_app_type>:
   140002e28:	ff 25 ea 63 00 00    	jmp    *0x63ea(%rip)        # 140009218 <__imp___set_app_type>
   140002e2e:	90                   	nop
   140002e2f:	90                   	nop

0000000140002e30 <__setusermatherr>:
   140002e30:	ff 25 ea 63 00 00    	jmp    *0x63ea(%rip)        # 140009220 <__imp___setusermatherr>
   140002e36:	90                   	nop
   140002e37:	90                   	nop

0000000140002e38 <_amsg_exit>:
   140002e38:	ff 25 ea 63 00 00    	jmp    *0x63ea(%rip)        # 140009228 <__imp__amsg_exit>
   140002e3e:	90                   	nop
   140002e3f:	90                   	nop

0000000140002e40 <_cexit>:
   140002e40:	ff 25 ea 63 00 00    	jmp    *0x63ea(%rip)        # 140009230 <__imp__cexit>
   140002e46:	90                   	nop
   140002e47:	90                   	nop

0000000140002e48 <_initterm>:
   140002e48:	ff 25 fa 63 00 00    	jmp    *0x63fa(%rip)        # 140009248 <__imp__initterm>
   140002e4e:	90                   	nop
   140002e4f:	90                   	nop

0000000140002e50 <_onexit>:
   140002e50:	ff 25 fa 63 00 00    	jmp    *0x63fa(%rip)        # 140009250 <__imp__onexit>
   140002e56:	90                   	nop
   140002e57:	90                   	nop

0000000140002e58 <abort>:
   140002e58:	ff 25 fa 63 00 00    	jmp    *0x63fa(%rip)        # 140009258 <__imp_abort>
   140002e5e:	90                   	nop
   140002e5f:	90                   	nop

0000000140002e60 <calloc>:
   140002e60:	ff 25 fa 63 00 00    	jmp    *0x63fa(%rip)        # 140009260 <__imp_calloc>
   140002e66:	90                   	nop
   140002e67:	90                   	nop

0000000140002e68 <exit>:
   140002e68:	ff 25 fa 63 00 00    	jmp    *0x63fa(%rip)        # 140009268 <__imp_exit>
   140002e6e:	90                   	nop
   140002e6f:	90                   	nop

0000000140002e70 <fprintf>:
   140002e70:	ff 25 fa 63 00 00    	jmp    *0x63fa(%rip)        # 140009270 <__imp_fprintf>
   140002e76:	90                   	nop
   140002e77:	90                   	nop

0000000140002e78 <free>:
   140002e78:	ff 25 fa 63 00 00    	jmp    *0x63fa(%rip)        # 140009278 <__imp_free>
   140002e7e:	90                   	nop
   140002e7f:	90                   	nop

0000000140002e80 <fwrite>:
   140002e80:	ff 25 fa 63 00 00    	jmp    *0x63fa(%rip)        # 140009280 <__imp_fwrite>
   140002e86:	90                   	nop
   140002e87:	90                   	nop

0000000140002e88 <malloc>:
   140002e88:	ff 25 fa 63 00 00    	jmp    *0x63fa(%rip)        # 140009288 <__imp_malloc>
   140002e8e:	90                   	nop
   140002e8f:	90                   	nop

0000000140002e90 <memcpy>:
   140002e90:	ff 25 fa 63 00 00    	jmp    *0x63fa(%rip)        # 140009290 <__imp_memcpy>
   140002e96:	90                   	nop
   140002e97:	90                   	nop

0000000140002e98 <signal>:
   140002e98:	ff 25 fa 63 00 00    	jmp    *0x63fa(%rip)        # 140009298 <__imp_signal>
   140002e9e:	90                   	nop
   140002e9f:	90                   	nop

0000000140002ea0 <strlen>:
   140002ea0:	ff 25 fa 63 00 00    	jmp    *0x63fa(%rip)        # 1400092a0 <__imp_strlen>
   140002ea6:	90                   	nop
   140002ea7:	90                   	nop

0000000140002ea8 <strncmp>:
   140002ea8:	ff 25 fa 63 00 00    	jmp    *0x63fa(%rip)        # 1400092a8 <__imp_strncmp>
   140002eae:	90                   	nop
   140002eaf:	90                   	nop

0000000140002eb0 <vfprintf>:
   140002eb0:	ff 25 fa 63 00 00    	jmp    *0x63fa(%rip)        # 1400092b0 <__imp_vfprintf>
   140002eb6:	90                   	nop
   140002eb7:	90                   	nop
   140002eb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002ebf:	00 

0000000140002ec0 <VirtualQuery>:
   140002ec0:	ff 25 22 63 00 00    	jmp    *0x6322(%rip)        # 1400091e8 <__imp_VirtualQuery>
   140002ec6:	90                   	nop
   140002ec7:	90                   	nop

0000000140002ec8 <VirtualProtect>:
   140002ec8:	ff 25 12 63 00 00    	jmp    *0x6312(%rip)        # 1400091e0 <__imp_VirtualProtect>
   140002ece:	90                   	nop
   140002ecf:	90                   	nop

0000000140002ed0 <TlsGetValue>:
   140002ed0:	ff 25 02 63 00 00    	jmp    *0x6302(%rip)        # 1400091d8 <__imp_TlsGetValue>
   140002ed6:	90                   	nop
   140002ed7:	90                   	nop

0000000140002ed8 <Sleep>:
   140002ed8:	ff 25 f2 62 00 00    	jmp    *0x62f2(%rip)        # 1400091d0 <__imp_Sleep>
   140002ede:	90                   	nop
   140002edf:	90                   	nop

0000000140002ee0 <SetUnhandledExceptionFilter>:
   140002ee0:	ff 25 e2 62 00 00    	jmp    *0x62e2(%rip)        # 1400091c8 <__imp_SetUnhandledExceptionFilter>
   140002ee6:	90                   	nop
   140002ee7:	90                   	nop

0000000140002ee8 <LoadLibraryA>:
   140002ee8:	ff 25 d2 62 00 00    	jmp    *0x62d2(%rip)        # 1400091c0 <__imp_LoadLibraryA>
   140002eee:	90                   	nop
   140002eef:	90                   	nop

0000000140002ef0 <LeaveCriticalSection>:
   140002ef0:	ff 25 c2 62 00 00    	jmp    *0x62c2(%rip)        # 1400091b8 <__imp_LeaveCriticalSection>
   140002ef6:	90                   	nop
   140002ef7:	90                   	nop

0000000140002ef8 <InitializeCriticalSection>:
   140002ef8:	ff 25 b2 62 00 00    	jmp    *0x62b2(%rip)        # 1400091b0 <__imp_InitializeCriticalSection>
   140002efe:	90                   	nop
   140002eff:	90                   	nop

0000000140002f00 <GetProcAddress>:
   140002f00:	ff 25 a2 62 00 00    	jmp    *0x62a2(%rip)        # 1400091a8 <__imp_GetProcAddress>
   140002f06:	90                   	nop
   140002f07:	90                   	nop

0000000140002f08 <GetModuleHandleA>:
   140002f08:	ff 25 92 62 00 00    	jmp    *0x6292(%rip)        # 1400091a0 <__imp_GetModuleHandleA>
   140002f0e:	90                   	nop
   140002f0f:	90                   	nop

0000000140002f10 <GetLastError>:
   140002f10:	ff 25 82 62 00 00    	jmp    *0x6282(%rip)        # 140009198 <__imp_GetLastError>
   140002f16:	90                   	nop
   140002f17:	90                   	nop

0000000140002f18 <FreeLibrary>:
   140002f18:	ff 25 72 62 00 00    	jmp    *0x6272(%rip)        # 140009190 <__imp_FreeLibrary>
   140002f1e:	90                   	nop
   140002f1f:	90                   	nop

0000000140002f20 <EnterCriticalSection>:
   140002f20:	ff 25 62 62 00 00    	jmp    *0x6262(%rip)        # 140009188 <__imp_EnterCriticalSection>
   140002f26:	90                   	nop
   140002f27:	90                   	nop

0000000140002f28 <DeleteCriticalSection>:
   140002f28:	ff 25 52 62 00 00    	jmp    *0x6252(%rip)        # 140009180 <__IAT_start__>
   140002f2e:	90                   	nop
   140002f2f:	90                   	nop

0000000140002f30 <register_frame_ctor>:
   140002f30:	e9 ab e6 ff ff       	jmp    1400015e0 <__gcc_register_frame>
   140002f35:	90                   	nop
   140002f36:	90                   	nop
   140002f37:	90                   	nop
   140002f38:	90                   	nop
   140002f39:	90                   	nop
   140002f3a:	90                   	nop
   140002f3b:	90                   	nop
   140002f3c:	90                   	nop
   140002f3d:	90                   	nop
   140002f3e:	90                   	nop
   140002f3f:	90                   	nop
