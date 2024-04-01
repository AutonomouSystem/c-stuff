
test.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	55                   	push   rbp
   140001001:	48 89 e5             	mov    rbp,rsp
   140001004:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140001008:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   14000100c:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   140001010:	44 89 4d 28          	mov    DWORD PTR [rbp+0x28],r9d
   140001014:	90                   	nop
   140001015:	5d                   	pop    rbp
   140001016:	c3                   	ret

0000000140001017 <pre_c_init>:
   140001017:	55                   	push   rbp
   140001018:	48 89 e5             	mov    rbp,rsp
   14000101b:	48 83 ec 20          	sub    rsp,0x20
   14000101f:	e8 54 03 00 00       	call   140001378 <check_managed_app>
   140001024:	89 05 f6 7f 00 00    	mov    DWORD PTR [rip+0x7ff6],eax        # 140009020 <managedapp>
   14000102a:	48 8b 05 9f 44 00 00 	mov    rax,QWORD PTR [rip+0x449f]        # 1400054d0 <.refptr.__mingw_app_type>
   140001031:	8b 00                	mov    eax,DWORD PTR [rax]
   140001033:	85 c0                	test   eax,eax
   140001035:	74 0c                	je     140001043 <pre_c_init+0x2c>
   140001037:	b9 02 00 00 00       	mov    ecx,0x2
   14000103c:	e8 af 22 00 00       	call   1400032f0 <__set_app_type>
   140001041:	eb 0a                	jmp    14000104d <pre_c_init+0x36>
   140001043:	b9 01 00 00 00       	mov    ecx,0x1
   140001048:	e8 a3 22 00 00       	call   1400032f0 <__set_app_type>
   14000104d:	e8 0e 22 00 00       	call   140003260 <__p__fmode>
   140001052:	48 8b 15 57 45 00 00 	mov    rdx,QWORD PTR [rip+0x4557]        # 1400055b0 <.refptr._fmode>
   140001059:	8b 12                	mov    edx,DWORD PTR [rdx]
   14000105b:	89 10                	mov    DWORD PTR [rax],edx
   14000105d:	e8 f6 21 00 00       	call   140003258 <__p__commode>
   140001062:	48 8b 15 27 45 00 00 	mov    rdx,QWORD PTR [rip+0x4527]        # 140005590 <.refptr._commode>
   140001069:	8b 12                	mov    edx,DWORD PTR [rdx]
   14000106b:	89 10                	mov    DWORD PTR [rax],edx
   14000106d:	e8 9e 08 00 00       	call   140001910 <_setargv>
   140001072:	48 8b 05 c7 43 00 00 	mov    rax,QWORD PTR [rip+0x43c7]        # 140005440 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   140001079:	8b 00                	mov    eax,DWORD PTR [rax]
   14000107b:	83 f8 01             	cmp    eax,0x1
   14000107e:	75 0f                	jne    14000108f <pre_c_init+0x78>
   140001080:	48 8b 05 49 45 00 00 	mov    rax,QWORD PTR [rip+0x4549]        # 1400055d0 <.refptr._matherr>
   140001087:	48 89 c1             	mov    rcx,rax
   14000108a:	e8 db 13 00 00       	call   14000246a <__mingw_setusermatherr>
   14000108f:	b8 00 00 00 00       	mov    eax,0x0
   140001094:	48 83 c4 20          	add    rsp,0x20
   140001098:	5d                   	pop    rbp
   140001099:	c3                   	ret

000000014000109a <pre_cpp_init>:
   14000109a:	55                   	push   rbp
   14000109b:	48 89 e5             	mov    rbp,rsp
   14000109e:	48 83 ec 30          	sub    rsp,0x30
   1400010a2:	48 8b 05 37 45 00 00 	mov    rax,QWORD PTR [rip+0x4537]        # 1400055e0 <.refptr._newmode>
   1400010a9:	8b 00                	mov    eax,DWORD PTR [rax]
   1400010ab:	89 05 77 7f 00 00    	mov    DWORD PTR [rip+0x7f77],eax        # 140009028 <startinfo>
   1400010b1:	48 8b 05 e8 44 00 00 	mov    rax,QWORD PTR [rip+0x44e8]        # 1400055a0 <.refptr._dowildcard>
   1400010b8:	8b 10                	mov    edx,DWORD PTR [rax]
   1400010ba:	48 8d 05 67 7f 00 00 	lea    rax,[rip+0x7f67]        # 140009028 <startinfo>
   1400010c1:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
   1400010c6:	41 89 d1             	mov    r9d,edx
   1400010c9:	4c 8d 05 40 7f 00 00 	lea    r8,[rip+0x7f40]        # 140009010 <envp>
   1400010d0:	48 8d 05 31 7f 00 00 	lea    rax,[rip+0x7f31]        # 140009008 <argv>
   1400010d7:	48 89 c2             	mov    rdx,rax
   1400010da:	48 8d 05 23 7f 00 00 	lea    rax,[rip+0x7f23]        # 140009004 <argc>
   1400010e1:	48 89 c1             	mov    rcx,rax
   1400010e4:	e8 e7 1e 00 00       	call   140002fd0 <__getmainargs>
   1400010e9:	89 05 29 7f 00 00    	mov    DWORD PTR [rip+0x7f29],eax        # 140009018 <argret>
   1400010ef:	90                   	nop
   1400010f0:	48 83 c4 30          	add    rsp,0x30
   1400010f4:	5d                   	pop    rbp
   1400010f5:	c3                   	ret

00000001400010f6 <WinMainCRTStartup>:
   1400010f6:	55                   	push   rbp
   1400010f7:	48 89 e5             	mov    rbp,rsp
   1400010fa:	48 83 ec 30          	sub    rsp,0x30
   1400010fe:	c7 45 fc ff 00 00 00 	mov    DWORD PTR [rbp-0x4],0xff

0000000140001105 <.l_startw>:
   140001105:	48 8b 05 c4 43 00 00 	mov    rax,QWORD PTR [rip+0x43c4]        # 1400054d0 <.refptr.__mingw_app_type>
   14000110c:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   140001112:	e8 3d 00 00 00       	call   140001154 <__tmainCRTStartup>
   140001117:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   14000111a:	90                   	nop

000000014000111b <.l_endw>:
   14000111b:	90                   	nop
   14000111c:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   14000111f:	48 83 c4 30          	add    rsp,0x30
   140001123:	5d                   	pop    rbp
   140001124:	c3                   	ret

0000000140001125 <mainCRTStartup>:
   140001125:	55                   	push   rbp
   140001126:	48 89 e5             	mov    rbp,rsp
   140001129:	48 83 ec 30          	sub    rsp,0x30
   14000112d:	c7 45 fc ff 00 00 00 	mov    DWORD PTR [rbp-0x4],0xff

0000000140001134 <.l_start>:
   140001134:	48 8b 05 95 43 00 00 	mov    rax,QWORD PTR [rip+0x4395]        # 1400054d0 <.refptr.__mingw_app_type>
   14000113b:	c7 00 00 00 00 00    	mov    DWORD PTR [rax],0x0
   140001141:	e8 0e 00 00 00       	call   140001154 <__tmainCRTStartup>
   140001146:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   140001149:	90                   	nop

000000014000114a <.l_end>:
   14000114a:	90                   	nop
   14000114b:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   14000114e:	48 83 c4 30          	add    rsp,0x30
   140001152:	5d                   	pop    rbp
   140001153:	c3                   	ret

0000000140001154 <__tmainCRTStartup>:
   140001154:	55                   	push   rbp
   140001155:	48 89 e5             	mov    rbp,rsp
   140001158:	48 83 ec 70          	sub    rsp,0x70
   14000115c:	48 c7 45 f0 00 00 00 	mov    QWORD PTR [rbp-0x10],0x0
   140001163:	00 
   140001164:	c7 45 e4 30 00 00 00 	mov    DWORD PTR [rbp-0x1c],0x30
   14000116b:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
   14000116e:	65 48 8b 00          	mov    rax,QWORD PTR gs:[rax]
   140001172:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
   140001176:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
   14000117a:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
   14000117e:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
   140001182:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
   140001189:	eb 21                	jmp    1400011ac <__tmainCRTStartup+0x58>
   14000118b:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   14000118f:	48 3b 45 e8          	cmp    rax,QWORD PTR [rbp-0x18]
   140001193:	75 09                	jne    14000119e <__tmainCRTStartup+0x4a>
   140001195:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [rbp-0x4],0x1
   14000119c:	eb 45                	jmp    1400011e3 <__tmainCRTStartup+0x8f>
   14000119e:	b9 e8 03 00 00       	mov    ecx,0x3e8
   1400011a3:	48 8b 05 5e 91 00 00 	mov    rax,QWORD PTR [rip+0x915e]        # 14000a308 <__imp_Sleep>
   1400011aa:	ff d0                	call   rax
   1400011ac:	48 8b 05 7d 43 00 00 	mov    rax,QWORD PTR [rip+0x437d]        # 140005530 <.refptr.__native_startup_lock>
   1400011b3:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
   1400011b7:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   1400011bb:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
   1400011bf:	48 c7 45 c0 00 00 00 	mov    QWORD PTR [rbp-0x40],0x0
   1400011c6:	00 
   1400011c7:	48 8b 4d c8          	mov    rcx,QWORD PTR [rbp-0x38]
   1400011cb:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
   1400011cf:	48 8b 55 d0          	mov    rdx,QWORD PTR [rbp-0x30]
   1400011d3:	f0 48 0f b1 0a       	lock cmpxchg QWORD PTR [rdx],rcx
   1400011d8:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   1400011dc:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
   1400011e1:	75 a8                	jne    14000118b <__tmainCRTStartup+0x37>
   1400011e3:	48 8b 05 56 43 00 00 	mov    rax,QWORD PTR [rip+0x4356]        # 140005540 <.refptr.__native_startup_state>
   1400011ea:	8b 00                	mov    eax,DWORD PTR [rax]
   1400011ec:	83 f8 01             	cmp    eax,0x1
   1400011ef:	75 0c                	jne    1400011fd <__tmainCRTStartup+0xa9>
   1400011f1:	b9 1f 00 00 00       	mov    ecx,0x1f
   1400011f6:	e8 35 1f 00 00       	call   140003130 <_amsg_exit>
   1400011fb:	eb 3f                	jmp    14000123c <__tmainCRTStartup+0xe8>
   1400011fd:	48 8b 05 3c 43 00 00 	mov    rax,QWORD PTR [rip+0x433c]        # 140005540 <.refptr.__native_startup_state>
   140001204:	8b 00                	mov    eax,DWORD PTR [rax]
   140001206:	85 c0                	test   eax,eax
   140001208:	75 28                	jne    140001232 <__tmainCRTStartup+0xde>
   14000120a:	48 8b 05 2f 43 00 00 	mov    rax,QWORD PTR [rip+0x432f]        # 140005540 <.refptr.__native_startup_state>
   140001211:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   140001217:	48 8b 05 62 43 00 00 	mov    rax,QWORD PTR [rip+0x4362]        # 140005580 <.refptr.__xi_z>
   14000121e:	48 89 c2             	mov    rdx,rax
   140001221:	48 8b 05 48 43 00 00 	mov    rax,QWORD PTR [rip+0x4348]        # 140005570 <.refptr.__xi_a>
   140001228:	48 89 c1             	mov    rcx,rax
   14000122b:	e8 b8 20 00 00       	call   1400032e8 <_initterm>
   140001230:	eb 0a                	jmp    14000123c <__tmainCRTStartup+0xe8>
   140001232:	c7 05 e8 7d 00 00 01 	mov    DWORD PTR [rip+0x7de8],0x1        # 140009024 <has_cctor>
   140001239:	00 00 00 
   14000123c:	48 8b 05 fd 42 00 00 	mov    rax,QWORD PTR [rip+0x42fd]        # 140005540 <.refptr.__native_startup_state>
   140001243:	8b 00                	mov    eax,DWORD PTR [rax]
   140001245:	83 f8 01             	cmp    eax,0x1
   140001248:	75 26                	jne    140001270 <__tmainCRTStartup+0x11c>
   14000124a:	48 8b 05 0f 43 00 00 	mov    rax,QWORD PTR [rip+0x430f]        # 140005560 <.refptr.__xc_z>
   140001251:	48 89 c2             	mov    rdx,rax
   140001254:	48 8b 05 f5 42 00 00 	mov    rax,QWORD PTR [rip+0x42f5]        # 140005550 <.refptr.__xc_a>
   14000125b:	48 89 c1             	mov    rcx,rax
   14000125e:	e8 85 20 00 00       	call   1400032e8 <_initterm>
   140001263:	48 8b 05 d6 42 00 00 	mov    rax,QWORD PTR [rip+0x42d6]        # 140005540 <.refptr.__native_startup_state>
   14000126a:	c7 00 02 00 00 00    	mov    DWORD PTR [rax],0x2
   140001270:	83 7d fc 00          	cmp    DWORD PTR [rbp-0x4],0x0
   140001274:	75 1e                	jne    140001294 <__tmainCRTStartup+0x140>
   140001276:	48 8b 05 b3 42 00 00 	mov    rax,QWORD PTR [rip+0x42b3]        # 140005530 <.refptr.__native_startup_lock>
   14000127d:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   140001281:	48 c7 45 b0 00 00 00 	mov    QWORD PTR [rbp-0x50],0x0
   140001288:	00 
   140001289:	48 8b 55 b0          	mov    rdx,QWORD PTR [rbp-0x50]
   14000128d:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   140001291:	48 87 10             	xchg   QWORD PTR [rax],rdx
   140001294:	48 8b 05 e5 41 00 00 	mov    rax,QWORD PTR [rip+0x41e5]        # 140005480 <.refptr.__dyn_tls_init_callback>
   14000129b:	48 8b 00             	mov    rax,QWORD PTR [rax]
   14000129e:	48 85 c0             	test   rax,rax
   1400012a1:	74 1c                	je     1400012bf <__tmainCRTStartup+0x16b>
   1400012a3:	48 8b 05 d6 41 00 00 	mov    rax,QWORD PTR [rip+0x41d6]        # 140005480 <.refptr.__dyn_tls_init_callback>
   1400012aa:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400012ad:	41 b8 00 00 00 00    	mov    r8d,0x0
   1400012b3:	ba 02 00 00 00       	mov    edx,0x2
   1400012b8:	b9 00 00 00 00       	mov    ecx,0x0
   1400012bd:	ff d0                	call   rax
   1400012bf:	e8 94 10 00 00       	call   140002358 <_pei386_runtime_relocator>
   1400012c4:	48 8b 05 f5 42 00 00 	mov    rax,QWORD PTR [rip+0x42f5]        # 1400055c0 <.refptr._gnu_exception_handler>
   1400012cb:	48 89 c1             	mov    rcx,rax
   1400012ce:	48 8b 05 2b 90 00 00 	mov    rax,QWORD PTR [rip+0x902b]        # 14000a300 <__imp_SetUnhandledExceptionFilter>
   1400012d5:	ff d0                	call   rax
   1400012d7:	48 8b 15 42 42 00 00 	mov    rdx,QWORD PTR [rip+0x4242]        # 140005520 <.refptr.__mingw_oldexcpt_handler>
   1400012de:	48 89 02             	mov    QWORD PTR [rdx],rax
   1400012e1:	48 8d 05 18 fd ff ff 	lea    rax,[rip+0xfffffffffffffd18]        # 140001000 <__mingw_invalidParameterHandler>
   1400012e8:	48 89 c1             	mov    rcx,rax
   1400012eb:	e8 08 20 00 00       	call   1400032f8 <_set_invalid_parameter_handler>
   1400012f0:	e8 5b 08 00 00       	call   140001b50 <_fpreset>
   1400012f5:	8b 05 09 7d 00 00    	mov    eax,DWORD PTR [rip+0x7d09]        # 140009004 <argc>
   1400012fb:	48 8d 15 06 7d 00 00 	lea    rdx,[rip+0x7d06]        # 140009008 <argv>
   140001302:	89 c1                	mov    ecx,eax
   140001304:	e8 73 01 00 00       	call   14000147c <duplicate_ppstrings>
   140001309:	e8 d9 05 00 00       	call   1400018e7 <__main>
   14000130e:	48 8b 05 9b 41 00 00 	mov    rax,QWORD PTR [rip+0x419b]        # 1400054b0 <.refptr.__imp___initenv>
   140001315:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140001318:	48 8b 15 f1 7c 00 00 	mov    rdx,QWORD PTR [rip+0x7cf1]        # 140009010 <envp>
   14000131f:	48 89 10             	mov    QWORD PTR [rax],rdx
   140001322:	48 8b 0d e7 7c 00 00 	mov    rcx,QWORD PTR [rip+0x7ce7]        # 140009010 <envp>
   140001329:	48 8b 15 d8 7c 00 00 	mov    rdx,QWORD PTR [rip+0x7cd8]        # 140009008 <argv>
   140001330:	8b 05 ce 7c 00 00    	mov    eax,DWORD PTR [rip+0x7cce]        # 140009004 <argc>
   140001336:	49 89 c8             	mov    r8,rcx
   140001339:	89 c1                	mov    ecx,eax
   14000133b:	e8 fe 03 00 00       	call   14000173e <main>
   140001340:	89 05 d6 7c 00 00    	mov    DWORD PTR [rip+0x7cd6],eax        # 14000901c <mainret>
   140001346:	8b 05 d4 7c 00 00    	mov    eax,DWORD PTR [rip+0x7cd4]        # 140009020 <managedapp>
   14000134c:	85 c0                	test   eax,eax
   14000134e:	75 0d                	jne    14000135d <__tmainCRTStartup+0x209>
   140001350:	8b 05 c6 7c 00 00    	mov    eax,DWORD PTR [rip+0x7cc6]        # 14000901c <mainret>
   140001356:	89 c1                	mov    ecx,eax
   140001358:	e8 ab 1f 00 00       	call   140003308 <exit>
   14000135d:	8b 05 c1 7c 00 00    	mov    eax,DWORD PTR [rip+0x7cc1]        # 140009024 <has_cctor>
   140001363:	85 c0                	test   eax,eax
   140001365:	75 05                	jne    14000136c <__tmainCRTStartup+0x218>
   140001367:	e8 3c 1f 00 00       	call   1400032a8 <_cexit>
   14000136c:	8b 05 aa 7c 00 00    	mov    eax,DWORD PTR [rip+0x7caa]        # 14000901c <mainret>
   140001372:	48 83 c4 70          	add    rsp,0x70
   140001376:	5d                   	pop    rbp
   140001377:	c3                   	ret

0000000140001378 <check_managed_app>:
   140001378:	55                   	push   rbp
   140001379:	48 89 e5             	mov    rbp,rsp
   14000137c:	48 83 ec 20          	sub    rsp,0x20
   140001380:	48 8b 05 59 41 00 00 	mov    rax,QWORD PTR [rip+0x4159]        # 1400054e0 <.refptr.__mingw_initltsdrot_force>
   140001387:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   14000138d:	48 8b 05 5c 41 00 00 	mov    rax,QWORD PTR [rip+0x415c]        # 1400054f0 <.refptr.__mingw_initltsdyn_force>
   140001394:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   14000139a:	48 8b 05 5f 41 00 00 	mov    rax,QWORD PTR [rip+0x415f]        # 140005500 <.refptr.__mingw_initltssuo_force>
   1400013a1:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   1400013a7:	48 8b 05 f2 40 00 00 	mov    rax,QWORD PTR [rip+0x40f2]        # 1400054a0 <.refptr.__image_base__>
   1400013ae:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   1400013b2:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400013b6:	0f b7 00             	movzx  eax,WORD PTR [rax]
   1400013b9:	66 3d 4d 5a          	cmp    ax,0x5a4d
   1400013bd:	74 0a                	je     1400013c9 <check_managed_app+0x51>
   1400013bf:	b8 00 00 00 00       	mov    eax,0x0
   1400013c4:	e9 ad 00 00 00       	jmp    140001476 <check_managed_app+0xfe>
   1400013c9:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400013cd:	8b 40 3c             	mov    eax,DWORD PTR [rax+0x3c]
   1400013d0:	48 63 d0             	movsxd rdx,eax
   1400013d3:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400013d7:	48 01 d0             	add    rax,rdx
   1400013da:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   1400013de:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400013e2:	8b 00                	mov    eax,DWORD PTR [rax]
   1400013e4:	3d 50 45 00 00       	cmp    eax,0x4550
   1400013e9:	74 0a                	je     1400013f5 <check_managed_app+0x7d>
   1400013eb:	b8 00 00 00 00       	mov    eax,0x0
   1400013f0:	e9 81 00 00 00       	jmp    140001476 <check_managed_app+0xfe>
   1400013f5:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400013f9:	48 83 c0 18          	add    rax,0x18
   1400013fd:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
   140001401:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140001405:	0f b7 00             	movzx  eax,WORD PTR [rax]
   140001408:	0f b7 c0             	movzx  eax,ax
   14000140b:	3d 0b 01 00 00       	cmp    eax,0x10b
   140001410:	74 09                	je     14000141b <check_managed_app+0xa3>
   140001412:	3d 0b 02 00 00       	cmp    eax,0x20b
   140001417:	74 29                	je     140001442 <check_managed_app+0xca>
   140001419:	eb 56                	jmp    140001471 <check_managed_app+0xf9>
   14000141b:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   14000141f:	8b 40 5c             	mov    eax,DWORD PTR [rax+0x5c]
   140001422:	83 f8 0e             	cmp    eax,0xe
   140001425:	77 07                	ja     14000142e <check_managed_app+0xb6>
   140001427:	b8 00 00 00 00       	mov    eax,0x0
   14000142c:	eb 48                	jmp    140001476 <check_managed_app+0xfe>
   14000142e:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140001432:	8b 80 d0 00 00 00    	mov    eax,DWORD PTR [rax+0xd0]
   140001438:	85 c0                	test   eax,eax
   14000143a:	0f 95 c0             	setne  al
   14000143d:	0f b6 c0             	movzx  eax,al
   140001440:	eb 34                	jmp    140001476 <check_managed_app+0xfe>
   140001442:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140001446:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
   14000144a:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   14000144e:	8b 40 6c             	mov    eax,DWORD PTR [rax+0x6c]
   140001451:	83 f8 0e             	cmp    eax,0xe
   140001454:	77 07                	ja     14000145d <check_managed_app+0xe5>
   140001456:	b8 00 00 00 00       	mov    eax,0x0
   14000145b:	eb 19                	jmp    140001476 <check_managed_app+0xfe>
   14000145d:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140001461:	8b 80 e0 00 00 00    	mov    eax,DWORD PTR [rax+0xe0]
   140001467:	85 c0                	test   eax,eax
   140001469:	0f 95 c0             	setne  al
   14000146c:	0f b6 c0             	movzx  eax,al
   14000146f:	eb 05                	jmp    140001476 <check_managed_app+0xfe>
   140001471:	b8 00 00 00 00       	mov    eax,0x0
   140001476:	48 83 c4 20          	add    rsp,0x20
   14000147a:	5d                   	pop    rbp
   14000147b:	c3                   	ret

000000014000147c <duplicate_ppstrings>:
   14000147c:	55                   	push   rbp
   14000147d:	53                   	push   rbx
   14000147e:	48 83 ec 48          	sub    rsp,0x48
   140001482:	48 8d 6c 24 40       	lea    rbp,[rsp+0x40]
   140001487:	89 4d 20             	mov    DWORD PTR [rbp+0x20],ecx
   14000148a:	48 89 55 28          	mov    QWORD PTR [rbp+0x28],rdx
   14000148e:	8b 45 20             	mov    eax,DWORD PTR [rbp+0x20]
   140001491:	83 c0 01             	add    eax,0x1
   140001494:	48 98                	cdqe
   140001496:	48 c1 e0 03          	shl    rax,0x3
   14000149a:	48 89 c1             	mov    rcx,rax
   14000149d:	e8 b6 1e 00 00       	call   140003358 <malloc>
   1400014a2:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   1400014a6:	48 8b 45 28          	mov    rax,QWORD PTR [rbp+0x28]
   1400014aa:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400014ad:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
   1400014b1:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
   1400014b8:	e9 8c 00 00 00       	jmp    140001549 <duplicate_ppstrings+0xcd>
   1400014bd:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   1400014c0:	48 98                	cdqe
   1400014c2:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
   1400014c9:	00 
   1400014ca:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   1400014ce:	48 01 d0             	add    rax,rdx
   1400014d1:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400014d4:	48 89 c1             	mov    rcx,rax
   1400014d7:	e8 64 1d 00 00       	call   140003240 <strlen>
   1400014dc:	48 83 c0 01          	add    rax,0x1
   1400014e0:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
   1400014e4:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   1400014e7:	48 98                	cdqe
   1400014e9:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
   1400014f0:	00 
   1400014f1:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400014f5:	48 8d 1c 02          	lea    rbx,[rdx+rax*1]
   1400014f9:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   1400014fd:	48 89 c1             	mov    rcx,rax
   140001500:	e8 53 1e 00 00       	call   140003358 <malloc>
   140001505:	48 89 03             	mov    QWORD PTR [rbx],rax
   140001508:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   14000150b:	48 98                	cdqe
   14000150d:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
   140001514:	00 
   140001515:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140001519:	48 01 d0             	add    rax,rdx
   14000151c:	48 8b 10             	mov    rdx,QWORD PTR [rax]
   14000151f:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001522:	48 98                	cdqe
   140001524:	48 8d 0c c5 00 00 00 	lea    rcx,[rax*8+0x0]
   14000152b:	00 
   14000152c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140001530:	48 01 c8             	add    rax,rcx
   140001533:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140001536:	48 8b 4d e0          	mov    rcx,QWORD PTR [rbp-0x20]
   14000153a:	49 89 c8             	mov    r8,rcx
   14000153d:	48 89 c1             	mov    rcx,rax
   140001540:	e8 e3 1d 00 00       	call   140003328 <memcpy>
   140001545:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
   140001549:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   14000154c:	3b 45 20             	cmp    eax,DWORD PTR [rbp+0x20]
   14000154f:	0f 8c 68 ff ff ff    	jl     1400014bd <duplicate_ppstrings+0x41>
   140001555:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001558:	48 98                	cdqe
   14000155a:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
   140001561:	00 
   140001562:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140001566:	48 01 d0             	add    rax,rdx
   140001569:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
   140001570:	48 8b 45 28          	mov    rax,QWORD PTR [rbp+0x28]
   140001574:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
   140001578:	48 89 10             	mov    QWORD PTR [rax],rdx
   14000157b:	90                   	nop
   14000157c:	48 83 c4 48          	add    rsp,0x48
   140001580:	5b                   	pop    rbx
   140001581:	5d                   	pop    rbp
   140001582:	c3                   	ret

0000000140001583 <atexit>:
   140001583:	55                   	push   rbp
   140001584:	48 89 e5             	mov    rbp,rsp
   140001587:	48 83 ec 20          	sub    rsp,0x20
   14000158b:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   14000158f:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140001593:	48 89 c1             	mov    rcx,rax
   140001596:	e8 35 1b 00 00       	call   1400030d0 <_onexit>
   14000159b:	48 85 c0             	test   rax,rax
   14000159e:	74 07                	je     1400015a7 <atexit+0x24>
   1400015a0:	b8 00 00 00 00       	mov    eax,0x0
   1400015a5:	eb 05                	jmp    1400015ac <atexit+0x29>
   1400015a7:	b8 ff ff ff ff       	mov    eax,0xffffffff
   1400015ac:	48 83 c4 20          	add    rsp,0x20
   1400015b0:	5d                   	pop    rbp
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
   1400015c1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   1400015c8:	00 00 00 00 
   1400015cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000001400015d0 <.weak.__deregister_frame_info.hmod_libgcc>:
   1400015d0:	31 c0                	xor    eax,eax
   1400015d2:	c3                   	ret
   1400015d3:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   1400015da:	00 00 00 00 
   1400015de:	66 90                	xchg   ax,ax

00000001400015e0 <__gcc_register_frame>:
   1400015e0:	55                   	push   rbp
   1400015e1:	57                   	push   rdi
   1400015e2:	56                   	push   rsi
   1400015e3:	53                   	push   rbx
   1400015e4:	48 83 ec 28          	sub    rsp,0x28
   1400015e8:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
   1400015ed:	48 8d 35 0c 3a 00 00 	lea    rsi,[rip+0x3a0c]        # 140005000 <.rdata>
   1400015f4:	48 89 f1             	mov    rcx,rsi
   1400015f7:	ff 15 db 8c 00 00    	call   QWORD PTR [rip+0x8cdb]        # 14000a2d8 <__imp_GetModuleHandleA>
   1400015fd:	48 89 c3             	mov    rbx,rax
   140001600:	48 85 c0             	test   rax,rax
   140001603:	74 6b                	je     140001670 <__gcc_register_frame+0x90>
   140001605:	48 89 f1             	mov    rcx,rsi
   140001608:	ff 15 ea 8c 00 00    	call   QWORD PTR [rip+0x8cea]        # 14000a2f8 <__imp_LoadLibraryA>
   14000160e:	48 8b 3d cb 8c 00 00 	mov    rdi,QWORD PTR [rip+0x8ccb]        # 14000a2e0 <__imp_GetProcAddress>
   140001615:	48 8d 15 f7 39 00 00 	lea    rdx,[rip+0x39f7]        # 140005013 <.rdata+0x13>
   14000161c:	48 89 d9             	mov    rcx,rbx
   14000161f:	48 89 05 1a 7a 00 00 	mov    QWORD PTR [rip+0x7a1a],rax        # 140009040 <hmod_libgcc>
   140001626:	ff d7                	call   rdi
   140001628:	48 8d 15 fa 39 00 00 	lea    rdx,[rip+0x39fa]        # 140005029 <.rdata+0x29>
   14000162f:	48 89 d9             	mov    rcx,rbx
   140001632:	48 89 c6             	mov    rsi,rax
   140001635:	ff d7                	call   rdi
   140001637:	48 89 05 c2 29 00 00 	mov    QWORD PTR [rip+0x29c2],rax        # 140004000 <__data_start__>
   14000163e:	48 85 f6             	test   rsi,rsi
   140001641:	74 10                	je     140001653 <__gcc_register_frame+0x73>
   140001643:	48 8d 15 16 7a 00 00 	lea    rdx,[rip+0x7a16]        # 140009060 <obj>
   14000164a:	48 8d 0d af 49 00 00 	lea    rcx,[rip+0x49af]        # 140006000 <__EH_FRAME_BEGIN__>
   140001651:	ff d6                	call   rsi
   140001653:	48 8d 0d 36 00 00 00 	lea    rcx,[rip+0x36]        # 140001690 <__gcc_deregister_frame>
   14000165a:	48 83 c4 28          	add    rsp,0x28
   14000165e:	5b                   	pop    rbx
   14000165f:	5e                   	pop    rsi
   140001660:	5f                   	pop    rdi
   140001661:	5d                   	pop    rbp
   140001662:	e9 1c ff ff ff       	jmp    140001583 <atexit>
   140001667:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000166e:	00 00 
   140001670:	48 8d 05 59 ff ff ff 	lea    rax,[rip+0xffffffffffffff59]        # 1400015d0 <.weak.__deregister_frame_info.hmod_libgcc>
   140001677:	48 8d 35 42 ff ff ff 	lea    rsi,[rip+0xffffffffffffff42]        # 1400015c0 <.weak.__register_frame_info.hmod_libgcc>
   14000167e:	48 89 05 7b 29 00 00 	mov    QWORD PTR [rip+0x297b],rax        # 140004000 <__data_start__>
   140001685:	eb bc                	jmp    140001643 <__gcc_register_frame+0x63>
   140001687:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000168e:	00 00 

0000000140001690 <__gcc_deregister_frame>:
   140001690:	55                   	push   rbp
   140001691:	48 89 e5             	mov    rbp,rsp
   140001694:	48 83 ec 20          	sub    rsp,0x20
   140001698:	48 8b 05 61 29 00 00 	mov    rax,QWORD PTR [rip+0x2961]        # 140004000 <__data_start__>
   14000169f:	48 85 c0             	test   rax,rax
   1400016a2:	74 09                	je     1400016ad <__gcc_deregister_frame+0x1d>
   1400016a4:	48 8d 0d 55 49 00 00 	lea    rcx,[rip+0x4955]        # 140006000 <__EH_FRAME_BEGIN__>
   1400016ab:	ff d0                	call   rax
   1400016ad:	48 8b 0d 8c 79 00 00 	mov    rcx,QWORD PTR [rip+0x798c]        # 140009040 <hmod_libgcc>
   1400016b4:	48 85 c9             	test   rcx,rcx
   1400016b7:	74 0f                	je     1400016c8 <__gcc_deregister_frame+0x38>
   1400016b9:	48 83 c4 20          	add    rsp,0x20
   1400016bd:	5d                   	pop    rbp
   1400016be:	48 ff 25 03 8c 00 00 	rex.W jmp QWORD PTR [rip+0x8c03]        # 14000a2c8 <__imp_FreeLibrary>
   1400016c5:	0f 1f 00             	nop    DWORD PTR [rax]
   1400016c8:	48 83 c4 20          	add    rsp,0x20
   1400016cc:	5d                   	pop    rbp
   1400016cd:	c3                   	ret
   1400016ce:	90                   	nop
   1400016cf:	90                   	nop

00000001400016d0 <test>:
   1400016d0:	55                   	push   rbp
   1400016d1:	48 89 e5             	mov    rbp,rsp
   1400016d4:	48 83 ec 20          	sub    rsp,0x20
   1400016d8:	48 8d 05 71 39 00 00 	lea    rax,[rip+0x3971]        # 140005050 <.rdata>
   1400016df:	48 89 c1             	mov    rcx,rax
   1400016e2:	e8 99 1b 00 00       	call   140003280 <puts>
   1400016e7:	90                   	nop
   1400016e8:	48 83 c4 20          	add    rsp,0x20
   1400016ec:	5d                   	pop    rbp
   1400016ed:	c3                   	ret

00000001400016ee <test2>:
   1400016ee:	55                   	push   rbp
   1400016ef:	48 89 e5             	mov    rbp,rsp
   1400016f2:	89 4d 10             	mov    DWORD PTR [rbp+0x10],ecx
   1400016f5:	89 55 18             	mov    DWORD PTR [rbp+0x18],edx
   1400016f8:	8b 55 10             	mov    edx,DWORD PTR [rbp+0x10]
   1400016fb:	8b 45 18             	mov    eax,DWORD PTR [rbp+0x18]
   1400016fe:	01 d0                	add    eax,edx
   140001700:	5d                   	pop    rbp
   140001701:	c3                   	ret

0000000140001702 <test3>:
   140001702:	55                   	push   rbp
   140001703:	48 89 e5             	mov    rbp,rsp
   140001706:	b8 01 00 00 00       	mov    eax,0x1
   14000170b:	5d                   	pop    rbp
   14000170c:	c3                   	ret

000000014000170d <test4>:
   14000170d:	55                   	push   rbp
   14000170e:	48 89 e5             	mov    rbp,rsp
   140001711:	f2 0f 10 05 bf 39 00 	movsd  xmm0,QWORD PTR [rip+0x39bf]        # 1400050d8 <.rdata+0x88>
   140001718:	00 
   140001719:	66 48 0f 7e c0       	movq   rax,xmm0
   14000171e:	66 48 0f 6e c0       	movq   xmm0,rax
   140001723:	5d                   	pop    rbp
   140001724:	c3                   	ret

0000000140001725 <test5>:
   140001725:	55                   	push   rbp
   140001726:	48 89 e5             	mov    rbp,rsp
   140001729:	f3 0f 10 05 af 39 00 	movss  xmm0,DWORD PTR [rip+0x39af]        # 1400050e0 <.rdata+0x90>
   140001730:	00 
   140001731:	5d                   	pop    rbp
   140001732:	c3                   	ret

0000000140001733 <test6>:
   140001733:	55                   	push   rbp
   140001734:	48 89 e5             	mov    rbp,rsp
   140001737:	b8 61 00 00 00       	mov    eax,0x61
   14000173c:	5d                   	pop    rbp
   14000173d:	c3                   	ret

000000014000173e <main>:
   14000173e:	55                   	push   rbp
   14000173f:	48 89 e5             	mov    rbp,rsp
   140001742:	48 83 ec 30          	sub    rsp,0x30
   140001746:	e8 9c 01 00 00       	call   1400018e7 <__main>
   14000174b:	48 8d 05 0d 39 00 00 	lea    rax,[rip+0x390d]        # 14000505f <.rdata+0xf>
   140001752:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140001756:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   14000175a:	48 89 c2             	mov    rdx,rax
   14000175d:	48 8d 05 04 39 00 00 	lea    rax,[rip+0x3904]        # 140005068 <.rdata+0x18>
   140001764:	48 89 c1             	mov    rcx,rax
   140001767:	e8 a4 17 00 00       	call   140002f10 <printf>
   14000176c:	e8 5f ff ff ff       	call   1400016d0 <test>
   140001771:	ba 02 00 00 00       	mov    edx,0x2
   140001776:	b9 01 00 00 00       	mov    ecx,0x1
   14000177b:	e8 6e ff ff ff       	call   1400016ee <test2>
   140001780:	89 c2                	mov    edx,eax
   140001782:	48 8d 05 e2 38 00 00 	lea    rax,[rip+0x38e2]        # 14000506b <.rdata+0x1b>
   140001789:	48 89 c1             	mov    rcx,rax
   14000178c:	e8 7f 17 00 00       	call   140002f10 <printf>
   140001791:	e8 6c ff ff ff       	call   140001702 <test3>
   140001796:	0f b6 c0             	movzx  eax,al
   140001799:	89 c2                	mov    edx,eax
   14000179b:	48 8d 05 dc 38 00 00 	lea    rax,[rip+0x38dc]        # 14000507e <.rdata+0x2e>
   1400017a2:	48 89 c1             	mov    rcx,rax
   1400017a5:	e8 66 17 00 00       	call   140002f10 <printf>
   1400017aa:	e8 5e ff ff ff       	call   14000170d <test4>
   1400017af:	66 48 0f 7e c0       	movq   rax,xmm0
   1400017b4:	48 89 c2             	mov    rdx,rax
   1400017b7:	66 48 0f 6e c2       	movq   xmm0,rdx
   1400017bc:	66 0f 28 c8          	movapd xmm1,xmm0
   1400017c0:	48 89 c2             	mov    rdx,rax
   1400017c3:	48 8d 05 c8 38 00 00 	lea    rax,[rip+0x38c8]        # 140005092 <.rdata+0x42>
   1400017ca:	48 89 c1             	mov    rcx,rax
   1400017cd:	e8 3e 17 00 00       	call   140002f10 <printf>
   1400017d2:	e8 4e ff ff ff       	call   140001725 <test5>
   1400017d7:	f3 0f 5a c0          	cvtss2sd xmm0,xmm0
   1400017db:	66 48 0f 7e c0       	movq   rax,xmm0
   1400017e0:	48 89 c2             	mov    rdx,rax
   1400017e3:	66 48 0f 6e c2       	movq   xmm0,rdx
   1400017e8:	66 0f 28 c8          	movapd xmm1,xmm0
   1400017ec:	48 89 c2             	mov    rdx,rax
   1400017ef:	48 8d 05 b5 38 00 00 	lea    rax,[rip+0x38b5]        # 1400050ab <.rdata+0x5b>
   1400017f6:	48 89 c1             	mov    rcx,rax
   1400017f9:	e8 12 17 00 00       	call   140002f10 <printf>
   1400017fe:	e8 30 ff ff ff       	call   140001733 <test6>
   140001803:	0f be c0             	movsx  eax,al
   140001806:	89 c2                	mov    edx,eax
   140001808:	48 8d 05 b1 38 00 00 	lea    rax,[rip+0x38b1]        # 1400050c0 <.rdata+0x70>
   14000180f:	48 89 c1             	mov    rcx,rax
   140001812:	e8 f9 16 00 00       	call   140002f10 <printf>
   140001817:	b8 00 00 00 00       	mov    eax,0x0
   14000181c:	48 83 c4 30          	add    rsp,0x30
   140001820:	5d                   	pop    rbp
   140001821:	c3                   	ret
   140001822:	90                   	nop
   140001823:	90                   	nop
   140001824:	90                   	nop
   140001825:	90                   	nop
   140001826:	90                   	nop
   140001827:	90                   	nop
   140001828:	90                   	nop
   140001829:	90                   	nop
   14000182a:	90                   	nop
   14000182b:	90                   	nop
   14000182c:	90                   	nop
   14000182d:	90                   	nop
   14000182e:	90                   	nop
   14000182f:	90                   	nop

0000000140001830 <__do_global_dtors>:
   140001830:	55                   	push   rbp
   140001831:	48 89 e5             	mov    rbp,rsp
   140001834:	48 83 ec 20          	sub    rsp,0x20
   140001838:	eb 1e                	jmp    140001858 <__do_global_dtors+0x28>
   14000183a:	48 8b 05 cf 27 00 00 	mov    rax,QWORD PTR [rip+0x27cf]        # 140004010 <p.0>
   140001841:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140001844:	ff d0                	call   rax
   140001846:	48 8b 05 c3 27 00 00 	mov    rax,QWORD PTR [rip+0x27c3]        # 140004010 <p.0>
   14000184d:	48 83 c0 08          	add    rax,0x8
   140001851:	48 89 05 b8 27 00 00 	mov    QWORD PTR [rip+0x27b8],rax        # 140004010 <p.0>
   140001858:	48 8b 05 b1 27 00 00 	mov    rax,QWORD PTR [rip+0x27b1]        # 140004010 <p.0>
   14000185f:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140001862:	48 85 c0             	test   rax,rax
   140001865:	75 d3                	jne    14000183a <__do_global_dtors+0xa>
   140001867:	90                   	nop
   140001868:	90                   	nop
   140001869:	48 83 c4 20          	add    rsp,0x20
   14000186d:	5d                   	pop    rbp
   14000186e:	c3                   	ret

000000014000186f <__do_global_ctors>:
   14000186f:	55                   	push   rbp
   140001870:	48 89 e5             	mov    rbp,rsp
   140001873:	48 83 ec 30          	sub    rsp,0x30
   140001877:	48 8b 05 d2 3b 00 00 	mov    rax,QWORD PTR [rip+0x3bd2]        # 140005450 <.refptr.__CTOR_LIST__>
   14000187e:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140001881:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   140001884:	83 7d fc ff          	cmp    DWORD PTR [rbp-0x4],0xffffffff
   140001888:	75 25                	jne    1400018af <__do_global_ctors+0x40>
   14000188a:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
   140001891:	eb 04                	jmp    140001897 <__do_global_ctors+0x28>
   140001893:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
   140001897:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   14000189a:	8d 50 01             	lea    edx,[rax+0x1]
   14000189d:	48 8b 05 ac 3b 00 00 	mov    rax,QWORD PTR [rip+0x3bac]        # 140005450 <.refptr.__CTOR_LIST__>
   1400018a4:	89 d2                	mov    edx,edx
   1400018a6:	48 8b 04 d0          	mov    rax,QWORD PTR [rax+rdx*8]
   1400018aa:	48 85 c0             	test   rax,rax
   1400018ad:	75 e4                	jne    140001893 <__do_global_ctors+0x24>
   1400018af:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   1400018b2:	89 45 f8             	mov    DWORD PTR [rbp-0x8],eax
   1400018b5:	eb 14                	jmp    1400018cb <__do_global_ctors+0x5c>
   1400018b7:	48 8b 05 92 3b 00 00 	mov    rax,QWORD PTR [rip+0x3b92]        # 140005450 <.refptr.__CTOR_LIST__>
   1400018be:	8b 55 f8             	mov    edx,DWORD PTR [rbp-0x8]
   1400018c1:	48 8b 04 d0          	mov    rax,QWORD PTR [rax+rdx*8]
   1400018c5:	ff d0                	call   rax
   1400018c7:	83 6d f8 01          	sub    DWORD PTR [rbp-0x8],0x1
   1400018cb:	83 7d f8 00          	cmp    DWORD PTR [rbp-0x8],0x0
   1400018cf:	75 e6                	jne    1400018b7 <__do_global_ctors+0x48>
   1400018d1:	48 8d 05 58 ff ff ff 	lea    rax,[rip+0xffffffffffffff58]        # 140001830 <__do_global_dtors>
   1400018d8:	48 89 c1             	mov    rcx,rax
   1400018db:	e8 a3 fc ff ff       	call   140001583 <atexit>
   1400018e0:	90                   	nop
   1400018e1:	48 83 c4 30          	add    rsp,0x30
   1400018e5:	5d                   	pop    rbp
   1400018e6:	c3                   	ret

00000001400018e7 <__main>:
   1400018e7:	55                   	push   rbp
   1400018e8:	48 89 e5             	mov    rbp,rsp
   1400018eb:	48 83 ec 20          	sub    rsp,0x20
   1400018ef:	8b 05 ab 77 00 00    	mov    eax,DWORD PTR [rip+0x77ab]        # 1400090a0 <initialized>
   1400018f5:	85 c0                	test   eax,eax
   1400018f7:	75 0f                	jne    140001908 <__main+0x21>
   1400018f9:	c7 05 9d 77 00 00 01 	mov    DWORD PTR [rip+0x779d],0x1        # 1400090a0 <initialized>
   140001900:	00 00 00 
   140001903:	e8 67 ff ff ff       	call   14000186f <__do_global_ctors>
   140001908:	90                   	nop
   140001909:	48 83 c4 20          	add    rsp,0x20
   14000190d:	5d                   	pop    rbp
   14000190e:	c3                   	ret
   14000190f:	90                   	nop

0000000140001910 <_setargv>:
   140001910:	55                   	push   rbp
   140001911:	48 89 e5             	mov    rbp,rsp
   140001914:	b8 00 00 00 00       	mov    eax,0x0
   140001919:	5d                   	pop    rbp
   14000191a:	c3                   	ret
   14000191b:	90                   	nop
   14000191c:	90                   	nop
   14000191d:	90                   	nop
   14000191e:	90                   	nop
   14000191f:	90                   	nop

0000000140001920 <__dyn_tls_init>:
   140001920:	55                   	push   rbp
   140001921:	48 89 e5             	mov    rbp,rsp
   140001924:	48 83 ec 30          	sub    rsp,0x30
   140001928:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   14000192c:	89 55 18             	mov    DWORD PTR [rbp+0x18],edx
   14000192f:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   140001933:	48 8b 05 f6 3a 00 00 	mov    rax,QWORD PTR [rip+0x3af6]        # 140005430 <.refptr._CRT_MT>
   14000193a:	8b 00                	mov    eax,DWORD PTR [rax]
   14000193c:	83 f8 02             	cmp    eax,0x2
   14000193f:	74 0d                	je     14000194e <__dyn_tls_init+0x2e>
   140001941:	48 8b 05 e8 3a 00 00 	mov    rax,QWORD PTR [rip+0x3ae8]        # 140005430 <.refptr._CRT_MT>
   140001948:	c7 00 02 00 00 00    	mov    DWORD PTR [rax],0x2
   14000194e:	83 7d 18 02          	cmp    DWORD PTR [rbp+0x18],0x2
   140001952:	74 23                	je     140001977 <__dyn_tls_init+0x57>
   140001954:	83 7d 18 01          	cmp    DWORD PTR [rbp+0x18],0x1
   140001958:	75 16                	jne    140001970 <__dyn_tls_init+0x50>
   14000195a:	48 8b 4d 20          	mov    rcx,QWORD PTR [rbp+0x20]
   14000195e:	8b 55 18             	mov    edx,DWORD PTR [rbp+0x18]
   140001961:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140001965:	49 89 c8             	mov    r8,rcx
   140001968:	48 89 c1             	mov    rcx,rax
   14000196b:	e8 61 0f 00 00       	call   1400028d1 <__mingw_TLScallback>
   140001970:	b8 01 00 00 00       	mov    eax,0x1
   140001975:	eb 46                	jmp    1400019bd <__dyn_tls_init+0x9d>
   140001977:	48 8d 05 d2 96 00 00 	lea    rax,[rip+0x96d2]        # 14000b050 <___crt_xp_end__>
   14000197e:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140001982:	48 83 45 f8 08       	add    QWORD PTR [rbp-0x8],0x8
   140001987:	eb 22                	jmp    1400019ab <__dyn_tls_init+0x8b>
   140001989:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   14000198d:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140001991:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140001995:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140001998:	48 85 c0             	test   rax,rax
   14000199b:	74 09                	je     1400019a6 <__dyn_tls_init+0x86>
   14000199d:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400019a1:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400019a4:	ff d0                	call   rax
   1400019a6:	48 83 45 f8 08       	add    QWORD PTR [rbp-0x8],0x8
   1400019ab:	48 8d 05 a6 96 00 00 	lea    rax,[rip+0x96a6]        # 14000b058 <__xd_z>
   1400019b2:	48 39 45 f8          	cmp    QWORD PTR [rbp-0x8],rax
   1400019b6:	75 d1                	jne    140001989 <__dyn_tls_init+0x69>
   1400019b8:	b8 01 00 00 00       	mov    eax,0x1
   1400019bd:	48 83 c4 30          	add    rsp,0x30
   1400019c1:	5d                   	pop    rbp
   1400019c2:	c3                   	ret

00000001400019c3 <__tlregdtor>:
   1400019c3:	55                   	push   rbp
   1400019c4:	48 89 e5             	mov    rbp,rsp
   1400019c7:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   1400019cb:	48 83 7d 10 00       	cmp    QWORD PTR [rbp+0x10],0x0
   1400019d0:	75 07                	jne    1400019d9 <__tlregdtor+0x16>
   1400019d2:	b8 00 00 00 00       	mov    eax,0x0
   1400019d7:	eb 05                	jmp    1400019de <__tlregdtor+0x1b>
   1400019d9:	b8 00 00 00 00       	mov    eax,0x0
   1400019de:	5d                   	pop    rbp
   1400019df:	c3                   	ret

00000001400019e0 <__dyn_tls_dtor>:
   1400019e0:	55                   	push   rbp
   1400019e1:	48 89 e5             	mov    rbp,rsp
   1400019e4:	48 83 ec 20          	sub    rsp,0x20
   1400019e8:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   1400019ec:	89 55 18             	mov    DWORD PTR [rbp+0x18],edx
   1400019ef:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   1400019f3:	83 7d 18 03          	cmp    DWORD PTR [rbp+0x18],0x3
   1400019f7:	74 0d                	je     140001a06 <__dyn_tls_dtor+0x26>
   1400019f9:	83 7d 18 00          	cmp    DWORD PTR [rbp+0x18],0x0
   1400019fd:	74 07                	je     140001a06 <__dyn_tls_dtor+0x26>
   1400019ff:	b8 01 00 00 00       	mov    eax,0x1
   140001a04:	eb 1b                	jmp    140001a21 <__dyn_tls_dtor+0x41>
   140001a06:	48 8b 4d 20          	mov    rcx,QWORD PTR [rbp+0x20]
   140001a0a:	8b 55 18             	mov    edx,DWORD PTR [rbp+0x18]
   140001a0d:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140001a11:	49 89 c8             	mov    r8,rcx
   140001a14:	48 89 c1             	mov    rcx,rax
   140001a17:	e8 b5 0e 00 00       	call   1400028d1 <__mingw_TLScallback>
   140001a1c:	b8 01 00 00 00       	mov    eax,0x1
   140001a21:	48 83 c4 20          	add    rsp,0x20
   140001a25:	5d                   	pop    rbp
   140001a26:	c3                   	ret
   140001a27:	90                   	nop
   140001a28:	90                   	nop
   140001a29:	90                   	nop
   140001a2a:	90                   	nop
   140001a2b:	90                   	nop
   140001a2c:	90                   	nop
   140001a2d:	90                   	nop
   140001a2e:	90                   	nop
   140001a2f:	90                   	nop

0000000140001a30 <_matherr>:
   140001a30:	55                   	push   rbp
   140001a31:	53                   	push   rbx
   140001a32:	48 81 ec 88 00 00 00 	sub    rsp,0x88
   140001a39:	48 8d 6c 24 50       	lea    rbp,[rsp+0x50]
   140001a3e:	0f 29 75 00          	movaps XMMWORD PTR [rbp+0x0],xmm6
   140001a42:	0f 29 7d 10          	movaps XMMWORD PTR [rbp+0x10],xmm7
   140001a46:	44 0f 29 45 20       	movaps XMMWORD PTR [rbp+0x20],xmm8
   140001a4b:	48 89 4d 50          	mov    QWORD PTR [rbp+0x50],rcx
   140001a4f:	48 8b 45 50          	mov    rax,QWORD PTR [rbp+0x50]
   140001a53:	8b 00                	mov    eax,DWORD PTR [rax]
   140001a55:	83 f8 06             	cmp    eax,0x6
   140001a58:	77 70                	ja     140001aca <_matherr+0x9a>
   140001a5a:	89 c0                	mov    eax,eax
   140001a5c:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
   140001a63:	00 
   140001a64:	48 8d 05 f9 37 00 00 	lea    rax,[rip+0x37f9]        # 140005264 <.rdata+0x124>
   140001a6b:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
   140001a6e:	48 98                	cdqe
   140001a70:	48 8d 15 ed 37 00 00 	lea    rdx,[rip+0x37ed]        # 140005264 <.rdata+0x124>
   140001a77:	48 01 d0             	add    rax,rdx
   140001a7a:	ff e0                	jmp    rax
   140001a7c:	48 8d 05 bd 36 00 00 	lea    rax,[rip+0x36bd]        # 140005140 <.rdata>
   140001a83:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140001a87:	eb 4d                	jmp    140001ad6 <_matherr+0xa6>
   140001a89:	48 8d 05 cf 36 00 00 	lea    rax,[rip+0x36cf]        # 14000515f <.rdata+0x1f>
   140001a90:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140001a94:	eb 40                	jmp    140001ad6 <_matherr+0xa6>
   140001a96:	48 8d 05 e3 36 00 00 	lea    rax,[rip+0x36e3]        # 140005180 <.rdata+0x40>
   140001a9d:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140001aa1:	eb 33                	jmp    140001ad6 <_matherr+0xa6>
   140001aa3:	48 8d 05 f6 36 00 00 	lea    rax,[rip+0x36f6]        # 1400051a0 <.rdata+0x60>
   140001aaa:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140001aae:	eb 26                	jmp    140001ad6 <_matherr+0xa6>
   140001ab0:	48 8d 05 11 37 00 00 	lea    rax,[rip+0x3711]        # 1400051c8 <.rdata+0x88>
   140001ab7:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140001abb:	eb 19                	jmp    140001ad6 <_matherr+0xa6>
   140001abd:	48 8d 05 2c 37 00 00 	lea    rax,[rip+0x372c]        # 1400051f0 <.rdata+0xb0>
   140001ac4:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140001ac8:	eb 0c                	jmp    140001ad6 <_matherr+0xa6>
   140001aca:	48 8d 05 55 37 00 00 	lea    rax,[rip+0x3755]        # 140005226 <.rdata+0xe6>
   140001ad1:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140001ad5:	90                   	nop
   140001ad6:	48 8b 45 50          	mov    rax,QWORD PTR [rbp+0x50]
   140001ada:	f2 44 0f 10 40 20    	movsd  xmm8,QWORD PTR [rax+0x20]
   140001ae0:	48 8b 45 50          	mov    rax,QWORD PTR [rbp+0x50]
   140001ae4:	f2 0f 10 78 18       	movsd  xmm7,QWORD PTR [rax+0x18]
   140001ae9:	48 8b 45 50          	mov    rax,QWORD PTR [rbp+0x50]
   140001aed:	f2 0f 10 70 10       	movsd  xmm6,QWORD PTR [rax+0x10]
   140001af2:	48 8b 45 50          	mov    rax,QWORD PTR [rbp+0x50]
   140001af6:	48 8b 58 08          	mov    rbx,QWORD PTR [rax+0x8]
   140001afa:	b9 02 00 00 00       	mov    ecx,0x2
   140001aff:	e8 4c 17 00 00       	call   140003250 <__acrt_iob_func>
   140001b04:	48 89 c1             	mov    rcx,rax
   140001b07:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140001b0b:	f2 44 0f 11 44 24 30 	movsd  QWORD PTR [rsp+0x30],xmm8
   140001b12:	f2 0f 11 7c 24 28    	movsd  QWORD PTR [rsp+0x28],xmm7
   140001b18:	f2 0f 11 74 24 20    	movsd  QWORD PTR [rsp+0x20],xmm6
   140001b1e:	49 89 d9             	mov    r9,rbx
   140001b21:	49 89 c0             	mov    r8,rax
   140001b24:	48 8d 05 0d 37 00 00 	lea    rax,[rip+0x370d]        # 140005238 <.rdata+0xf8>
   140001b2b:	48 89 c2             	mov    rdx,rax
   140001b2e:	e8 3d 14 00 00       	call   140002f70 <fprintf>
   140001b33:	b8 00 00 00 00       	mov    eax,0x0
   140001b38:	0f 28 75 00          	movaps xmm6,XMMWORD PTR [rbp+0x0]
   140001b3c:	0f 28 7d 10          	movaps xmm7,XMMWORD PTR [rbp+0x10]
   140001b40:	44 0f 28 45 20       	movaps xmm8,XMMWORD PTR [rbp+0x20]
   140001b45:	48 81 c4 88 00 00 00 	add    rsp,0x88
   140001b4c:	5b                   	pop    rbx
   140001b4d:	5d                   	pop    rbp
   140001b4e:	c3                   	ret
   140001b4f:	90                   	nop

0000000140001b50 <_fpreset>:
   140001b50:	55                   	push   rbp
   140001b51:	48 89 e5             	mov    rbp,rsp
   140001b54:	db e3                	fninit
   140001b56:	90                   	nop
   140001b57:	5d                   	pop    rbp
   140001b58:	c3                   	ret
   140001b59:	90                   	nop
   140001b5a:	90                   	nop
   140001b5b:	90                   	nop
   140001b5c:	90                   	nop
   140001b5d:	90                   	nop
   140001b5e:	90                   	nop
   140001b5f:	90                   	nop

0000000140001b60 <__report_error>:
   140001b60:	55                   	push   rbp
   140001b61:	53                   	push   rbx
   140001b62:	48 83 ec 38          	sub    rsp,0x38
   140001b66:	48 8d 6c 24 30       	lea    rbp,[rsp+0x30]
   140001b6b:	48 89 4d 20          	mov    QWORD PTR [rbp+0x20],rcx
   140001b6f:	48 89 55 28          	mov    QWORD PTR [rbp+0x28],rdx
   140001b73:	4c 89 45 30          	mov    QWORD PTR [rbp+0x30],r8
   140001b77:	4c 89 4d 38          	mov    QWORD PTR [rbp+0x38],r9
   140001b7b:	48 8d 45 28          	lea    rax,[rbp+0x28]
   140001b7f:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140001b83:	b9 02 00 00 00       	mov    ecx,0x2
   140001b88:	e8 c3 16 00 00       	call   140003250 <__acrt_iob_func>
   140001b8d:	49 89 c1             	mov    r9,rax
   140001b90:	41 b8 1b 00 00 00    	mov    r8d,0x1b
   140001b96:	ba 01 00 00 00       	mov    edx,0x1
   140001b9b:	48 8d 05 de 36 00 00 	lea    rax,[rip+0x36de]        # 140005280 <.rdata>
   140001ba2:	48 89 c1             	mov    rcx,rax
   140001ba5:	e8 ce 16 00 00       	call   140003278 <fwrite>
   140001baa:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
   140001bae:	b9 02 00 00 00       	mov    ecx,0x2
   140001bb3:	e8 98 16 00 00       	call   140003250 <__acrt_iob_func>
   140001bb8:	48 89 c1             	mov    rcx,rax
   140001bbb:	48 8b 45 20          	mov    rax,QWORD PTR [rbp+0x20]
   140001bbf:	49 89 d8             	mov    r8,rbx
   140001bc2:	48 89 c2             	mov    rdx,rax
   140001bc5:	e8 f6 12 00 00       	call   140002ec0 <vfprintf>
   140001bca:	e8 31 17 00 00       	call   140003300 <abort>
   140001bcf:	90                   	nop

0000000140001bd0 <mark_section_writable>:
   140001bd0:	55                   	push   rbp
   140001bd1:	48 89 e5             	mov    rbp,rsp
   140001bd4:	48 83 ec 60          	sub    rsp,0x60
   140001bd8:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140001bdc:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
   140001be3:	e9 82 00 00 00       	jmp    140001c6a <mark_section_writable+0x9a>
   140001be8:	48 8b 0d 01 75 00 00 	mov    rcx,QWORD PTR [rip+0x7501]        # 1400090f0 <the_secs>
   140001bef:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001bf2:	48 63 d0             	movsxd rdx,eax
   140001bf5:	48 89 d0             	mov    rax,rdx
   140001bf8:	48 c1 e0 02          	shl    rax,0x2
   140001bfc:	48 01 d0             	add    rax,rdx
   140001bff:	48 c1 e0 03          	shl    rax,0x3
   140001c03:	48 01 c8             	add    rax,rcx
   140001c06:	48 8b 40 18          	mov    rax,QWORD PTR [rax+0x18]
   140001c0a:	48 39 45 10          	cmp    QWORD PTR [rbp+0x10],rax
   140001c0e:	72 56                	jb     140001c66 <mark_section_writable+0x96>
   140001c10:	48 8b 0d d9 74 00 00 	mov    rcx,QWORD PTR [rip+0x74d9]        # 1400090f0 <the_secs>
   140001c17:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001c1a:	48 63 d0             	movsxd rdx,eax
   140001c1d:	48 89 d0             	mov    rax,rdx
   140001c20:	48 c1 e0 02          	shl    rax,0x2
   140001c24:	48 01 d0             	add    rax,rdx
   140001c27:	48 c1 e0 03          	shl    rax,0x3
   140001c2b:	48 01 c8             	add    rax,rcx
   140001c2e:	48 8b 48 18          	mov    rcx,QWORD PTR [rax+0x18]
   140001c32:	4c 8b 05 b7 74 00 00 	mov    r8,QWORD PTR [rip+0x74b7]        # 1400090f0 <the_secs>
   140001c39:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001c3c:	48 63 d0             	movsxd rdx,eax
   140001c3f:	48 89 d0             	mov    rax,rdx
   140001c42:	48 c1 e0 02          	shl    rax,0x2
   140001c46:	48 01 d0             	add    rax,rdx
   140001c49:	48 c1 e0 03          	shl    rax,0x3
   140001c4d:	4c 01 c0             	add    rax,r8
   140001c50:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
   140001c54:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   140001c57:	89 c0                	mov    eax,eax
   140001c59:	48 01 c8             	add    rax,rcx
   140001c5c:	48 39 45 10          	cmp    QWORD PTR [rbp+0x10],rax
   140001c60:	0f 82 42 02 00 00    	jb     140001ea8 <mark_section_writable+0x2d8>
   140001c66:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
   140001c6a:	8b 05 88 74 00 00    	mov    eax,DWORD PTR [rip+0x7488]        # 1400090f8 <maxSections>
   140001c70:	39 45 fc             	cmp    DWORD PTR [rbp-0x4],eax
   140001c73:	0f 8c 6f ff ff ff    	jl     140001be8 <mark_section_writable+0x18>
   140001c79:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140001c7d:	48 89 c1             	mov    rcx,rax
   140001c80:	e8 26 0f 00 00       	call   140002bab <__mingw_GetSectionForAddress>
   140001c85:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140001c89:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
   140001c8e:	75 16                	jne    140001ca6 <mark_section_writable+0xd6>
   140001c90:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140001c94:	48 89 c2             	mov    rdx,rax
   140001c97:	48 8d 05 02 36 00 00 	lea    rax,[rip+0x3602]        # 1400052a0 <.rdata+0x20>
   140001c9e:	48 89 c1             	mov    rcx,rax
   140001ca1:	e8 ba fe ff ff       	call   140001b60 <__report_error>
   140001ca6:	48 8b 0d 43 74 00 00 	mov    rcx,QWORD PTR [rip+0x7443]        # 1400090f0 <the_secs>
   140001cad:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001cb0:	48 63 d0             	movsxd rdx,eax
   140001cb3:	48 89 d0             	mov    rax,rdx
   140001cb6:	48 c1 e0 02          	shl    rax,0x2
   140001cba:	48 01 d0             	add    rax,rdx
   140001cbd:	48 c1 e0 03          	shl    rax,0x3
   140001cc1:	48 8d 14 01          	lea    rdx,[rcx+rax*1]
   140001cc5:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140001cc9:	48 89 42 20          	mov    QWORD PTR [rdx+0x20],rax
   140001ccd:	48 8b 0d 1c 74 00 00 	mov    rcx,QWORD PTR [rip+0x741c]        # 1400090f0 <the_secs>
   140001cd4:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001cd7:	48 63 d0             	movsxd rdx,eax
   140001cda:	48 89 d0             	mov    rax,rdx
   140001cdd:	48 c1 e0 02          	shl    rax,0x2
   140001ce1:	48 01 d0             	add    rax,rdx
   140001ce4:	48 c1 e0 03          	shl    rax,0x3
   140001ce8:	48 01 c8             	add    rax,rcx
   140001ceb:	c7 00 00 00 00 00    	mov    DWORD PTR [rax],0x0
   140001cf1:	e8 01 10 00 00       	call   140002cf7 <_GetPEImageBase>
   140001cf6:	48 89 c1             	mov    rcx,rax
   140001cf9:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140001cfd:	8b 40 0c             	mov    eax,DWORD PTR [rax+0xc]
   140001d00:	41 89 c1             	mov    r9d,eax
   140001d03:	4c 8b 05 e6 73 00 00 	mov    r8,QWORD PTR [rip+0x73e6]        # 1400090f0 <the_secs>
   140001d0a:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001d0d:	48 63 d0             	movsxd rdx,eax
   140001d10:	48 89 d0             	mov    rax,rdx
   140001d13:	48 c1 e0 02          	shl    rax,0x2
   140001d17:	48 01 d0             	add    rax,rdx
   140001d1a:	48 c1 e0 03          	shl    rax,0x3
   140001d1e:	4c 01 c0             	add    rax,r8
   140001d21:	4a 8d 14 09          	lea    rdx,[rcx+r9*1]
   140001d25:	48 89 50 18          	mov    QWORD PTR [rax+0x18],rdx
   140001d29:	48 8b 0d c0 73 00 00 	mov    rcx,QWORD PTR [rip+0x73c0]        # 1400090f0 <the_secs>
   140001d30:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001d33:	48 63 d0             	movsxd rdx,eax
   140001d36:	48 89 d0             	mov    rax,rdx
   140001d39:	48 c1 e0 02          	shl    rax,0x2
   140001d3d:	48 01 d0             	add    rax,rdx
   140001d40:	48 c1 e0 03          	shl    rax,0x3
   140001d44:	48 01 c8             	add    rax,rcx
   140001d47:	48 8b 40 18          	mov    rax,QWORD PTR [rax+0x18]
   140001d4b:	48 8d 55 c0          	lea    rdx,[rbp-0x40]
   140001d4f:	41 b8 30 00 00 00    	mov    r8d,0x30
   140001d55:	48 89 c1             	mov    rcx,rax
   140001d58:	48 8b 05 c1 85 00 00 	mov    rax,QWORD PTR [rip+0x85c1]        # 14000a320 <__imp_VirtualQuery>
   140001d5f:	ff d0                	call   rax
   140001d61:	48 85 c0             	test   rax,rax
   140001d64:	75 3d                	jne    140001da3 <mark_section_writable+0x1d3>
   140001d66:	48 8b 0d 83 73 00 00 	mov    rcx,QWORD PTR [rip+0x7383]        # 1400090f0 <the_secs>
   140001d6d:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001d70:	48 63 d0             	movsxd rdx,eax
   140001d73:	48 89 d0             	mov    rax,rdx
   140001d76:	48 c1 e0 02          	shl    rax,0x2
   140001d7a:	48 01 d0             	add    rax,rdx
   140001d7d:	48 c1 e0 03          	shl    rax,0x3
   140001d81:	48 01 c8             	add    rax,rcx
   140001d84:	48 8b 50 18          	mov    rdx,QWORD PTR [rax+0x18]
   140001d88:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140001d8c:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   140001d8f:	49 89 d0             	mov    r8,rdx
   140001d92:	89 c2                	mov    edx,eax
   140001d94:	48 8d 05 25 35 00 00 	lea    rax,[rip+0x3525]        # 1400052c0 <.rdata+0x40>
   140001d9b:	48 89 c1             	mov    rcx,rax
   140001d9e:	e8 bd fd ff ff       	call   140001b60 <__report_error>
   140001da3:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
   140001da6:	83 f8 40             	cmp    eax,0x40
   140001da9:	0f 84 e8 00 00 00    	je     140001e97 <mark_section_writable+0x2c7>
   140001daf:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
   140001db2:	83 f8 04             	cmp    eax,0x4
   140001db5:	0f 84 dc 00 00 00    	je     140001e97 <mark_section_writable+0x2c7>
   140001dbb:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
   140001dbe:	3d 80 00 00 00       	cmp    eax,0x80
   140001dc3:	0f 84 ce 00 00 00    	je     140001e97 <mark_section_writable+0x2c7>
   140001dc9:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
   140001dcc:	83 f8 08             	cmp    eax,0x8
   140001dcf:	0f 84 c2 00 00 00    	je     140001e97 <mark_section_writable+0x2c7>
   140001dd5:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
   140001dd8:	83 f8 02             	cmp    eax,0x2
   140001ddb:	75 09                	jne    140001de6 <mark_section_writable+0x216>
   140001ddd:	c7 45 f8 04 00 00 00 	mov    DWORD PTR [rbp-0x8],0x4
   140001de4:	eb 07                	jmp    140001ded <mark_section_writable+0x21d>
   140001de6:	c7 45 f8 40 00 00 00 	mov    DWORD PTR [rbp-0x8],0x40
   140001ded:	48 8b 0d fc 72 00 00 	mov    rcx,QWORD PTR [rip+0x72fc]        # 1400090f0 <the_secs>
   140001df4:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001df7:	48 63 d0             	movsxd rdx,eax
   140001dfa:	48 89 d0             	mov    rax,rdx
   140001dfd:	48 c1 e0 02          	shl    rax,0x2
   140001e01:	48 01 d0             	add    rax,rdx
   140001e04:	48 c1 e0 03          	shl    rax,0x3
   140001e08:	48 8d 14 01          	lea    rdx,[rcx+rax*1]
   140001e0c:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
   140001e10:	48 89 42 08          	mov    QWORD PTR [rdx+0x8],rax
   140001e14:	48 8b 0d d5 72 00 00 	mov    rcx,QWORD PTR [rip+0x72d5]        # 1400090f0 <the_secs>
   140001e1b:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001e1e:	48 63 d0             	movsxd rdx,eax
   140001e21:	48 89 d0             	mov    rax,rdx
   140001e24:	48 c1 e0 02          	shl    rax,0x2
   140001e28:	48 01 d0             	add    rax,rdx
   140001e2b:	48 c1 e0 03          	shl    rax,0x3
   140001e2f:	48 8d 14 01          	lea    rdx,[rcx+rax*1]
   140001e33:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
   140001e37:	48 89 42 10          	mov    QWORD PTR [rdx+0x10],rax
   140001e3b:	48 8b 0d ae 72 00 00 	mov    rcx,QWORD PTR [rip+0x72ae]        # 1400090f0 <the_secs>
   140001e42:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001e45:	48 63 d0             	movsxd rdx,eax
   140001e48:	48 89 d0             	mov    rax,rdx
   140001e4b:	48 c1 e0 02          	shl    rax,0x2
   140001e4f:	48 01 d0             	add    rax,rdx
   140001e52:	48 c1 e0 03          	shl    rax,0x3
   140001e56:	48 01 c8             	add    rax,rcx
   140001e59:	49 89 c0             	mov    r8,rax
   140001e5c:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
   140001e60:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
   140001e64:	8b 4d f8             	mov    ecx,DWORD PTR [rbp-0x8]
   140001e67:	4d 89 c1             	mov    r9,r8
   140001e6a:	41 89 c8             	mov    r8d,ecx
   140001e6d:	48 89 c1             	mov    rcx,rax
   140001e70:	48 8b 05 a1 84 00 00 	mov    rax,QWORD PTR [rip+0x84a1]        # 14000a318 <__imp_VirtualProtect>
   140001e77:	ff d0                	call   rax
   140001e79:	85 c0                	test   eax,eax
   140001e7b:	75 1a                	jne    140001e97 <mark_section_writable+0x2c7>
   140001e7d:	48 8b 05 4c 84 00 00 	mov    rax,QWORD PTR [rip+0x844c]        # 14000a2d0 <__imp_GetLastError>
   140001e84:	ff d0                	call   rax
   140001e86:	89 c2                	mov    edx,eax
   140001e88:	48 8d 05 69 34 00 00 	lea    rax,[rip+0x3469]        # 1400052f8 <.rdata+0x78>
   140001e8f:	48 89 c1             	mov    rcx,rax
   140001e92:	e8 c9 fc ff ff       	call   140001b60 <__report_error>
   140001e97:	8b 05 5b 72 00 00    	mov    eax,DWORD PTR [rip+0x725b]        # 1400090f8 <maxSections>
   140001e9d:	83 c0 01             	add    eax,0x1
   140001ea0:	89 05 52 72 00 00    	mov    DWORD PTR [rip+0x7252],eax        # 1400090f8 <maxSections>
   140001ea6:	eb 01                	jmp    140001ea9 <mark_section_writable+0x2d9>
   140001ea8:	90                   	nop
   140001ea9:	48 83 c4 60          	add    rsp,0x60
   140001ead:	5d                   	pop    rbp
   140001eae:	c3                   	ret

0000000140001eaf <restore_modified_sections>:
   140001eaf:	55                   	push   rbp
   140001eb0:	48 89 e5             	mov    rbp,rsp
   140001eb3:	48 83 ec 30          	sub    rsp,0x30
   140001eb7:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
   140001ebe:	e9 ad 00 00 00       	jmp    140001f70 <restore_modified_sections+0xc1>
   140001ec3:	48 8b 0d 26 72 00 00 	mov    rcx,QWORD PTR [rip+0x7226]        # 1400090f0 <the_secs>
   140001eca:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001ecd:	48 63 d0             	movsxd rdx,eax
   140001ed0:	48 89 d0             	mov    rax,rdx
   140001ed3:	48 c1 e0 02          	shl    rax,0x2
   140001ed7:	48 01 d0             	add    rax,rdx
   140001eda:	48 c1 e0 03          	shl    rax,0x3
   140001ede:	48 01 c8             	add    rax,rcx
   140001ee1:	8b 00                	mov    eax,DWORD PTR [rax]
   140001ee3:	85 c0                	test   eax,eax
   140001ee5:	0f 84 80 00 00 00    	je     140001f6b <restore_modified_sections+0xbc>
   140001eeb:	48 8b 0d fe 71 00 00 	mov    rcx,QWORD PTR [rip+0x71fe]        # 1400090f0 <the_secs>
   140001ef2:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001ef5:	48 63 d0             	movsxd rdx,eax
   140001ef8:	48 89 d0             	mov    rax,rdx
   140001efb:	48 c1 e0 02          	shl    rax,0x2
   140001eff:	48 01 d0             	add    rax,rdx
   140001f02:	48 c1 e0 03          	shl    rax,0x3
   140001f06:	48 01 c8             	add    rax,rcx
   140001f09:	44 8b 10             	mov    r10d,DWORD PTR [rax]
   140001f0c:	48 8b 0d dd 71 00 00 	mov    rcx,QWORD PTR [rip+0x71dd]        # 1400090f0 <the_secs>
   140001f13:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001f16:	48 63 d0             	movsxd rdx,eax
   140001f19:	48 89 d0             	mov    rax,rdx
   140001f1c:	48 c1 e0 02          	shl    rax,0x2
   140001f20:	48 01 d0             	add    rax,rdx
   140001f23:	48 c1 e0 03          	shl    rax,0x3
   140001f27:	48 01 c8             	add    rax,rcx
   140001f2a:	48 8b 48 10          	mov    rcx,QWORD PTR [rax+0x10]
   140001f2e:	4c 8b 05 bb 71 00 00 	mov    r8,QWORD PTR [rip+0x71bb]        # 1400090f0 <the_secs>
   140001f35:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001f38:	48 63 d0             	movsxd rdx,eax
   140001f3b:	48 89 d0             	mov    rax,rdx
   140001f3e:	48 c1 e0 02          	shl    rax,0x2
   140001f42:	48 01 d0             	add    rax,rdx
   140001f45:	48 c1 e0 03          	shl    rax,0x3
   140001f49:	4c 01 c0             	add    rax,r8
   140001f4c:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
   140001f50:	48 8d 55 f8          	lea    rdx,[rbp-0x8]
   140001f54:	49 89 d1             	mov    r9,rdx
   140001f57:	45 89 d0             	mov    r8d,r10d
   140001f5a:	48 89 ca             	mov    rdx,rcx
   140001f5d:	48 89 c1             	mov    rcx,rax
   140001f60:	48 8b 05 b1 83 00 00 	mov    rax,QWORD PTR [rip+0x83b1]        # 14000a318 <__imp_VirtualProtect>
   140001f67:	ff d0                	call   rax
   140001f69:	eb 01                	jmp    140001f6c <restore_modified_sections+0xbd>
   140001f6b:	90                   	nop
   140001f6c:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
   140001f70:	8b 05 82 71 00 00    	mov    eax,DWORD PTR [rip+0x7182]        # 1400090f8 <maxSections>
   140001f76:	39 45 fc             	cmp    DWORD PTR [rbp-0x4],eax
   140001f79:	0f 8c 44 ff ff ff    	jl     140001ec3 <restore_modified_sections+0x14>
   140001f7f:	90                   	nop
   140001f80:	90                   	nop
   140001f81:	48 83 c4 30          	add    rsp,0x30
   140001f85:	5d                   	pop    rbp
   140001f86:	c3                   	ret

0000000140001f87 <__write_memory>:
   140001f87:	55                   	push   rbp
   140001f88:	48 89 e5             	mov    rbp,rsp
   140001f8b:	48 83 ec 20          	sub    rsp,0x20
   140001f8f:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140001f93:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   140001f97:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   140001f9b:	48 83 7d 20 00       	cmp    QWORD PTR [rbp+0x20],0x0
   140001fa0:	74 25                	je     140001fc7 <__write_memory+0x40>
   140001fa2:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140001fa6:	48 89 c1             	mov    rcx,rax
   140001fa9:	e8 22 fc ff ff       	call   140001bd0 <mark_section_writable>
   140001fae:	48 8b 4d 20          	mov    rcx,QWORD PTR [rbp+0x20]
   140001fb2:	48 8b 55 18          	mov    rdx,QWORD PTR [rbp+0x18]
   140001fb6:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140001fba:	49 89 c8             	mov    r8,rcx
   140001fbd:	48 89 c1             	mov    rcx,rax
   140001fc0:	e8 63 13 00 00       	call   140003328 <memcpy>
   140001fc5:	eb 01                	jmp    140001fc8 <__write_memory+0x41>
   140001fc7:	90                   	nop
   140001fc8:	48 83 c4 20          	add    rsp,0x20
   140001fcc:	5d                   	pop    rbp
   140001fcd:	c3                   	ret

0000000140001fce <do_pseudo_reloc>:
   140001fce:	55                   	push   rbp
   140001fcf:	48 89 e5             	mov    rbp,rsp
   140001fd2:	48 83 c4 80          	add    rsp,0xffffffffffffff80
   140001fd6:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140001fda:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   140001fde:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   140001fe2:	48 8b 45 18          	mov    rax,QWORD PTR [rbp+0x18]
   140001fe6:	48 2b 45 10          	sub    rax,QWORD PTR [rbp+0x10]
   140001fea:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
   140001fee:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140001ff2:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140001ff6:	48 83 7d e0 07       	cmp    QWORD PTR [rbp-0x20],0x7
   140001ffb:	0f 8e 50 03 00 00    	jle    140002351 <do_pseudo_reloc+0x383>
   140002001:	48 83 7d e0 0b       	cmp    QWORD PTR [rbp-0x20],0xb
   140002006:	7e 25                	jle    14000202d <do_pseudo_reloc+0x5f>
   140002008:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   14000200c:	8b 00                	mov    eax,DWORD PTR [rax]
   14000200e:	85 c0                	test   eax,eax
   140002010:	75 1b                	jne    14000202d <do_pseudo_reloc+0x5f>
   140002012:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002016:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
   140002019:	85 c0                	test   eax,eax
   14000201b:	75 10                	jne    14000202d <do_pseudo_reloc+0x5f>
   14000201d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002021:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   140002024:	85 c0                	test   eax,eax
   140002026:	75 05                	jne    14000202d <do_pseudo_reloc+0x5f>
   140002028:	48 83 45 f8 0c       	add    QWORD PTR [rbp-0x8],0xc
   14000202d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002031:	8b 00                	mov    eax,DWORD PTR [rax]
   140002033:	85 c0                	test   eax,eax
   140002035:	75 0b                	jne    140002042 <do_pseudo_reloc+0x74>
   140002037:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   14000203b:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
   14000203e:	85 c0                	test   eax,eax
   140002040:	74 59                	je     14000209b <do_pseudo_reloc+0xcd>
   140002042:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002046:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
   14000204a:	eb 40                	jmp    14000208c <do_pseudo_reloc+0xbe>
   14000204c:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002050:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
   140002053:	89 c2                	mov    edx,eax
   140002055:	48 8b 45 20          	mov    rax,QWORD PTR [rbp+0x20]
   140002059:	48 01 d0             	add    rax,rdx
   14000205c:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
   140002060:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002064:	8b 10                	mov    edx,DWORD PTR [rax]
   140002066:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   14000206a:	8b 00                	mov    eax,DWORD PTR [rax]
   14000206c:	01 d0                	add    eax,edx
   14000206e:	89 45 b4             	mov    DWORD PTR [rbp-0x4c],eax
   140002071:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002075:	48 8d 55 b4          	lea    rdx,[rbp-0x4c]
   140002079:	41 b8 04 00 00 00    	mov    r8d,0x4
   14000207f:	48 89 c1             	mov    rcx,rax
   140002082:	e8 00 ff ff ff       	call   140001f87 <__write_memory>
   140002087:	48 83 45 e8 08       	add    QWORD PTR [rbp-0x18],0x8
   14000208c:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002090:	48 3b 45 18          	cmp    rax,QWORD PTR [rbp+0x18]
   140002094:	72 b6                	jb     14000204c <do_pseudo_reloc+0x7e>
   140002096:	e9 b7 02 00 00       	jmp    140002352 <do_pseudo_reloc+0x384>
   14000209b:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   14000209f:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   1400020a2:	83 f8 01             	cmp    eax,0x1
   1400020a5:	74 18                	je     1400020bf <do_pseudo_reloc+0xf1>
   1400020a7:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400020ab:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   1400020ae:	89 c2                	mov    edx,eax
   1400020b0:	48 8d 05 69 32 00 00 	lea    rax,[rip+0x3269]        # 140005320 <.rdata+0xa0>
   1400020b7:	48 89 c1             	mov    rcx,rax
   1400020ba:	e8 a1 fa ff ff       	call   140001b60 <__report_error>
   1400020bf:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400020c3:	48 83 c0 0c          	add    rax,0xc
   1400020c7:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   1400020cb:	e9 71 02 00 00       	jmp    140002341 <do_pseudo_reloc+0x373>
   1400020d0:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400020d4:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
   1400020d7:	89 c2                	mov    edx,eax
   1400020d9:	48 8b 45 20          	mov    rax,QWORD PTR [rbp+0x20]
   1400020dd:	48 01 d0             	add    rax,rdx
   1400020e0:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
   1400020e4:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400020e8:	8b 00                	mov    eax,DWORD PTR [rax]
   1400020ea:	89 c2                	mov    edx,eax
   1400020ec:	48 8b 45 20          	mov    rax,QWORD PTR [rbp+0x20]
   1400020f0:	48 01 d0             	add    rax,rdx
   1400020f3:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
   1400020f7:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
   1400020fb:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400020fe:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
   140002102:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002106:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   140002109:	0f b6 c0             	movzx  eax,al
   14000210c:	83 f8 40             	cmp    eax,0x40
   14000210f:	0f 84 b6 00 00 00    	je     1400021cb <do_pseudo_reloc+0x1fd>
   140002115:	83 f8 40             	cmp    eax,0x40
   140002118:	0f 87 ba 00 00 00    	ja     1400021d8 <do_pseudo_reloc+0x20a>
   14000211e:	83 f8 20             	cmp    eax,0x20
   140002121:	74 77                	je     14000219a <do_pseudo_reloc+0x1cc>
   140002123:	83 f8 20             	cmp    eax,0x20
   140002126:	0f 87 ac 00 00 00    	ja     1400021d8 <do_pseudo_reloc+0x20a>
   14000212c:	83 f8 08             	cmp    eax,0x8
   14000212f:	74 0a                	je     14000213b <do_pseudo_reloc+0x16d>
   140002131:	83 f8 10             	cmp    eax,0x10
   140002134:	74 38                	je     14000216e <do_pseudo_reloc+0x1a0>
   140002136:	e9 9d 00 00 00       	jmp    1400021d8 <do_pseudo_reloc+0x20a>
   14000213b:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   14000213f:	0f b6 00             	movzx  eax,BYTE PTR [rax]
   140002142:	0f b6 c0             	movzx  eax,al
   140002145:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   140002149:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   14000214d:	25 80 00 00 00       	and    eax,0x80
   140002152:	48 85 c0             	test   rax,rax
   140002155:	0f 84 a0 00 00 00    	je     1400021fb <do_pseudo_reloc+0x22d>
   14000215b:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   14000215f:	48 0d 00 ff ff ff    	or     rax,0xffffffffffffff00
   140002165:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   140002169:	e9 8d 00 00 00       	jmp    1400021fb <do_pseudo_reloc+0x22d>
   14000216e:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002172:	0f b7 00             	movzx  eax,WORD PTR [rax]
   140002175:	0f b7 c0             	movzx  eax,ax
   140002178:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   14000217c:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   140002180:	25 00 80 00 00       	and    eax,0x8000
   140002185:	48 85 c0             	test   rax,rax
   140002188:	74 74                	je     1400021fe <do_pseudo_reloc+0x230>
   14000218a:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   14000218e:	48 0d 00 00 ff ff    	or     rax,0xffffffffffff0000
   140002194:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   140002198:	eb 64                	jmp    1400021fe <do_pseudo_reloc+0x230>
   14000219a:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   14000219e:	8b 00                	mov    eax,DWORD PTR [rax]
   1400021a0:	89 c0                	mov    eax,eax
   1400021a2:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   1400021a6:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   1400021aa:	25 00 00 00 80       	and    eax,0x80000000
   1400021af:	48 85 c0             	test   rax,rax
   1400021b2:	74 4d                	je     140002201 <do_pseudo_reloc+0x233>
   1400021b4:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   1400021b8:	48 ba 00 00 00 00 ff 	movabs rdx,0xffffffff00000000
   1400021bf:	ff ff ff 
   1400021c2:	48 09 d0             	or     rax,rdx
   1400021c5:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   1400021c9:	eb 36                	jmp    140002201 <do_pseudo_reloc+0x233>
   1400021cb:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   1400021cf:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400021d2:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   1400021d6:	eb 2a                	jmp    140002202 <do_pseudo_reloc+0x234>
   1400021d8:	48 c7 45 b8 00 00 00 	mov    QWORD PTR [rbp-0x48],0x0
   1400021df:	00 
   1400021e0:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400021e4:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   1400021e7:	0f b6 c0             	movzx  eax,al
   1400021ea:	89 c2                	mov    edx,eax
   1400021ec:	48 8d 05 65 31 00 00 	lea    rax,[rip+0x3165]        # 140005358 <.rdata+0xd8>
   1400021f3:	48 89 c1             	mov    rcx,rax
   1400021f6:	e8 65 f9 ff ff       	call   140001b60 <__report_error>
   1400021fb:	90                   	nop
   1400021fc:	eb 04                	jmp    140002202 <do_pseudo_reloc+0x234>
   1400021fe:	90                   	nop
   1400021ff:	eb 01                	jmp    140002202 <do_pseudo_reloc+0x234>
   140002201:	90                   	nop
   140002202:	48 8b 4d b8          	mov    rcx,QWORD PTR [rbp-0x48]
   140002206:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   14000220a:	8b 00                	mov    eax,DWORD PTR [rax]
   14000220c:	89 c2                	mov    edx,eax
   14000220e:	48 8b 45 20          	mov    rax,QWORD PTR [rbp+0x20]
   140002212:	48 01 c2             	add    rdx,rax
   140002215:	48 89 c8             	mov    rax,rcx
   140002218:	48 29 d0             	sub    rax,rdx
   14000221b:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   14000221f:	48 8b 55 b8          	mov    rdx,QWORD PTR [rbp-0x48]
   140002223:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
   140002227:	48 01 d0             	add    rax,rdx
   14000222a:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   14000222e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002232:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   140002235:	25 ff 00 00 00       	and    eax,0xff
   14000223a:	89 45 d4             	mov    DWORD PTR [rbp-0x2c],eax
   14000223d:	83 7d d4 3f          	cmp    DWORD PTR [rbp-0x2c],0x3f
   140002241:	77 70                	ja     1400022b3 <do_pseudo_reloc+0x2e5>
   140002243:	8b 45 d4             	mov    eax,DWORD PTR [rbp-0x2c]
   140002246:	ba 01 00 00 00       	mov    edx,0x1
   14000224b:	89 c1                	mov    ecx,eax
   14000224d:	48 d3 e2             	shl    rdx,cl
   140002250:	48 89 d0             	mov    rax,rdx
   140002253:	48 83 e8 01          	sub    rax,0x1
   140002257:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
   14000225b:	8b 45 d4             	mov    eax,DWORD PTR [rbp-0x2c]
   14000225e:	83 e8 01             	sub    eax,0x1
   140002261:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
   140002268:	89 c1                	mov    ecx,eax
   14000226a:	48 d3 e2             	shl    rdx,cl
   14000226d:	48 89 d0             	mov    rax,rdx
   140002270:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax
   140002274:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   140002278:	48 39 45 c8          	cmp    QWORD PTR [rbp-0x38],rax
   14000227c:	7c 0a                	jl     140002288 <do_pseudo_reloc+0x2ba>
   14000227e:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   140002282:	48 39 45 c0          	cmp    QWORD PTR [rbp-0x40],rax
   140002286:	7e 2b                	jle    1400022b3 <do_pseudo_reloc+0x2e5>
   140002288:	48 8b 55 b8          	mov    rdx,QWORD PTR [rbp-0x48]
   14000228c:	4c 8b 45 d8          	mov    r8,QWORD PTR [rbp-0x28]
   140002290:	48 8b 4d e0          	mov    rcx,QWORD PTR [rbp-0x20]
   140002294:	8b 45 d4             	mov    eax,DWORD PTR [rbp-0x2c]
   140002297:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
   14000229c:	4d 89 c1             	mov    r9,r8
   14000229f:	49 89 c8             	mov    r8,rcx
   1400022a2:	89 c2                	mov    edx,eax
   1400022a4:	48 8d 05 dd 30 00 00 	lea    rax,[rip+0x30dd]        # 140005388 <.rdata+0x108>
   1400022ab:	48 89 c1             	mov    rcx,rax
   1400022ae:	e8 ad f8 ff ff       	call   140001b60 <__report_error>
   1400022b3:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400022b7:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   1400022ba:	0f b6 c0             	movzx  eax,al
   1400022bd:	83 f8 40             	cmp    eax,0x40
   1400022c0:	74 63                	je     140002325 <do_pseudo_reloc+0x357>
   1400022c2:	83 f8 40             	cmp    eax,0x40
   1400022c5:	77 75                	ja     14000233c <do_pseudo_reloc+0x36e>
   1400022c7:	83 f8 20             	cmp    eax,0x20
   1400022ca:	74 41                	je     14000230d <do_pseudo_reloc+0x33f>
   1400022cc:	83 f8 20             	cmp    eax,0x20
   1400022cf:	77 6b                	ja     14000233c <do_pseudo_reloc+0x36e>
   1400022d1:	83 f8 08             	cmp    eax,0x8
   1400022d4:	74 07                	je     1400022dd <do_pseudo_reloc+0x30f>
   1400022d6:	83 f8 10             	cmp    eax,0x10
   1400022d9:	74 1a                	je     1400022f5 <do_pseudo_reloc+0x327>
   1400022db:	eb 5f                	jmp    14000233c <do_pseudo_reloc+0x36e>
   1400022dd:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   1400022e1:	48 8d 55 b8          	lea    rdx,[rbp-0x48]
   1400022e5:	41 b8 01 00 00 00    	mov    r8d,0x1
   1400022eb:	48 89 c1             	mov    rcx,rax
   1400022ee:	e8 94 fc ff ff       	call   140001f87 <__write_memory>
   1400022f3:	eb 47                	jmp    14000233c <do_pseudo_reloc+0x36e>
   1400022f5:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   1400022f9:	48 8d 55 b8          	lea    rdx,[rbp-0x48]
   1400022fd:	41 b8 02 00 00 00    	mov    r8d,0x2
   140002303:	48 89 c1             	mov    rcx,rax
   140002306:	e8 7c fc ff ff       	call   140001f87 <__write_memory>
   14000230b:	eb 2f                	jmp    14000233c <do_pseudo_reloc+0x36e>
   14000230d:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002311:	48 8d 55 b8          	lea    rdx,[rbp-0x48]
   140002315:	41 b8 04 00 00 00    	mov    r8d,0x4
   14000231b:	48 89 c1             	mov    rcx,rax
   14000231e:	e8 64 fc ff ff       	call   140001f87 <__write_memory>
   140002323:	eb 17                	jmp    14000233c <do_pseudo_reloc+0x36e>
   140002325:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002329:	48 8d 55 b8          	lea    rdx,[rbp-0x48]
   14000232d:	41 b8 08 00 00 00    	mov    r8d,0x8
   140002333:	48 89 c1             	mov    rcx,rax
   140002336:	e8 4c fc ff ff       	call   140001f87 <__write_memory>
   14000233b:	90                   	nop
   14000233c:	48 83 45 f0 0c       	add    QWORD PTR [rbp-0x10],0xc
   140002341:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002345:	48 3b 45 18          	cmp    rax,QWORD PTR [rbp+0x18]
   140002349:	0f 82 81 fd ff ff    	jb     1400020d0 <do_pseudo_reloc+0x102>
   14000234f:	eb 01                	jmp    140002352 <do_pseudo_reloc+0x384>
   140002351:	90                   	nop
   140002352:	48 83 ec 80          	sub    rsp,0xffffffffffffff80
   140002356:	5d                   	pop    rbp
   140002357:	c3                   	ret

0000000140002358 <_pei386_runtime_relocator>:
   140002358:	55                   	push   rbp
   140002359:	48 89 e5             	mov    rbp,rsp
   14000235c:	48 83 ec 30          	sub    rsp,0x30
   140002360:	8b 05 96 6d 00 00    	mov    eax,DWORD PTR [rip+0x6d96]        # 1400090fc <was_init.0>
   140002366:	85 c0                	test   eax,eax
   140002368:	0f 85 88 00 00 00    	jne    1400023f6 <_pei386_runtime_relocator+0x9e>
   14000236e:	8b 05 88 6d 00 00    	mov    eax,DWORD PTR [rip+0x6d88]        # 1400090fc <was_init.0>
   140002374:	83 c0 01             	add    eax,0x1
   140002377:	89 05 7f 6d 00 00    	mov    DWORD PTR [rip+0x6d7f],eax        # 1400090fc <was_init.0>
   14000237d:	e8 79 08 00 00       	call   140002bfb <__mingw_GetSectionCount>
   140002382:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   140002385:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140002388:	48 63 d0             	movsxd rdx,eax
   14000238b:	48 89 d0             	mov    rax,rdx
   14000238e:	48 c1 e0 02          	shl    rax,0x2
   140002392:	48 01 d0             	add    rax,rdx
   140002395:	48 c1 e0 03          	shl    rax,0x3
   140002399:	48 83 c0 0f          	add    rax,0xf
   14000239d:	48 c1 e8 04          	shr    rax,0x4
   1400023a1:	48 c1 e0 04          	shl    rax,0x4
   1400023a5:	e8 d6 0a 00 00       	call   140002e80 <___chkstk_ms>
   1400023aa:	48 29 c4             	sub    rsp,rax
   1400023ad:	48 8d 44 24 20       	lea    rax,[rsp+0x20]
   1400023b2:	48 83 c0 0f          	add    rax,0xf
   1400023b6:	48 c1 e8 04          	shr    rax,0x4
   1400023ba:	48 c1 e0 04          	shl    rax,0x4
   1400023be:	48 89 05 2b 6d 00 00 	mov    QWORD PTR [rip+0x6d2b],rax        # 1400090f0 <the_secs>
   1400023c5:	c7 05 29 6d 00 00 00 	mov    DWORD PTR [rip+0x6d29],0x0        # 1400090f8 <maxSections>
   1400023cc:	00 00 00 
   1400023cf:	4c 8b 05 ca 30 00 00 	mov    r8,QWORD PTR [rip+0x30ca]        # 1400054a0 <.refptr.__image_base__>
   1400023d6:	48 8b 05 83 30 00 00 	mov    rax,QWORD PTR [rip+0x3083]        # 140005460 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   1400023dd:	48 89 c2             	mov    rdx,rax
   1400023e0:	48 8b 05 89 30 00 00 	mov    rax,QWORD PTR [rip+0x3089]        # 140005470 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   1400023e7:	48 89 c1             	mov    rcx,rax
   1400023ea:	e8 df fb ff ff       	call   140001fce <do_pseudo_reloc>
   1400023ef:	e8 bb fa ff ff       	call   140001eaf <restore_modified_sections>
   1400023f4:	eb 01                	jmp    1400023f7 <_pei386_runtime_relocator+0x9f>
   1400023f6:	90                   	nop
   1400023f7:	48 89 ec             	mov    rsp,rbp
   1400023fa:	5d                   	pop    rbp
   1400023fb:	c3                   	ret
   1400023fc:	90                   	nop
   1400023fd:	90                   	nop
   1400023fe:	90                   	nop
   1400023ff:	90                   	nop

0000000140002400 <__mingw_raise_matherr>:
   140002400:	55                   	push   rbp
   140002401:	48 89 e5             	mov    rbp,rsp
   140002404:	48 83 ec 50          	sub    rsp,0x50
   140002408:	89 4d 10             	mov    DWORD PTR [rbp+0x10],ecx
   14000240b:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   14000240f:	f2 0f 11 55 20       	movsd  QWORD PTR [rbp+0x20],xmm2
   140002414:	f2 0f 11 5d 28       	movsd  QWORD PTR [rbp+0x28],xmm3
   140002419:	48 8b 05 e0 6c 00 00 	mov    rax,QWORD PTR [rip+0x6ce0]        # 140009100 <stUserMathErr>
   140002420:	48 85 c0             	test   rax,rax
   140002423:	74 3e                	je     140002463 <__mingw_raise_matherr+0x63>
   140002425:	8b 45 10             	mov    eax,DWORD PTR [rbp+0x10]
   140002428:	89 45 d0             	mov    DWORD PTR [rbp-0x30],eax
   14000242b:	48 8b 45 18          	mov    rax,QWORD PTR [rbp+0x18]
   14000242f:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
   140002433:	f2 0f 10 45 20       	movsd  xmm0,QWORD PTR [rbp+0x20]
   140002438:	f2 0f 11 45 e0       	movsd  QWORD PTR [rbp-0x20],xmm0
   14000243d:	f2 0f 10 45 28       	movsd  xmm0,QWORD PTR [rbp+0x28]
   140002442:	f2 0f 11 45 e8       	movsd  QWORD PTR [rbp-0x18],xmm0
   140002447:	f2 0f 10 45 30       	movsd  xmm0,QWORD PTR [rbp+0x30]
   14000244c:	f2 0f 11 45 f0       	movsd  QWORD PTR [rbp-0x10],xmm0
   140002451:	48 8b 15 a8 6c 00 00 	mov    rdx,QWORD PTR [rip+0x6ca8]        # 140009100 <stUserMathErr>
   140002458:	48 8d 45 d0          	lea    rax,[rbp-0x30]
   14000245c:	48 89 c1             	mov    rcx,rax
   14000245f:	ff d2                	call   rdx
   140002461:	eb 01                	jmp    140002464 <__mingw_raise_matherr+0x64>
   140002463:	90                   	nop
   140002464:	48 83 c4 50          	add    rsp,0x50
   140002468:	5d                   	pop    rbp
   140002469:	c3                   	ret

000000014000246a <__mingw_setusermatherr>:
   14000246a:	55                   	push   rbp
   14000246b:	48 89 e5             	mov    rbp,rsp
   14000246e:	48 83 ec 20          	sub    rsp,0x20
   140002472:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002476:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   14000247a:	48 89 05 7f 6c 00 00 	mov    QWORD PTR [rip+0x6c7f],rax        # 140009100 <stUserMathErr>
   140002481:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002485:	48 89 c1             	mov    rcx,rax
   140002488:	e8 a3 0e 00 00       	call   140003330 <__setusermatherr>
   14000248d:	90                   	nop
   14000248e:	48 83 c4 20          	add    rsp,0x20
   140002492:	5d                   	pop    rbp
   140002493:	c3                   	ret
   140002494:	90                   	nop
   140002495:	90                   	nop
   140002496:	90                   	nop
   140002497:	90                   	nop
   140002498:	90                   	nop
   140002499:	90                   	nop
   14000249a:	90                   	nop
   14000249b:	90                   	nop
   14000249c:	90                   	nop
   14000249d:	90                   	nop
   14000249e:	90                   	nop
   14000249f:	90                   	nop

00000001400024a0 <_gnu_exception_handler>:
   1400024a0:	55                   	push   rbp
   1400024a1:	48 89 e5             	mov    rbp,rsp
   1400024a4:	48 83 ec 30          	sub    rsp,0x30
   1400024a8:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   1400024ac:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
   1400024b3:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
   1400024ba:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   1400024be:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400024c1:	8b 00                	mov    eax,DWORD PTR [rax]
   1400024c3:	25 ff ff ff 20       	and    eax,0x20ffffff
   1400024c8:	3d 43 43 47 20       	cmp    eax,0x20474343
   1400024cd:	75 1b                	jne    1400024ea <_gnu_exception_handler+0x4a>
   1400024cf:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   1400024d3:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400024d6:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
   1400024d9:	83 e0 01             	and    eax,0x1
   1400024dc:	85 c0                	test   eax,eax
   1400024de:	75 0a                	jne    1400024ea <_gnu_exception_handler+0x4a>
   1400024e0:	b8 ff ff ff ff       	mov    eax,0xffffffff
   1400024e5:	e9 d3 01 00 00       	jmp    1400026bd <_gnu_exception_handler+0x21d>
   1400024ea:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   1400024ee:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400024f1:	8b 00                	mov    eax,DWORD PTR [rax]
   1400024f3:	3d 96 00 00 c0       	cmp    eax,0xc0000096
   1400024f8:	0f 87 8d 01 00 00    	ja     14000268b <_gnu_exception_handler+0x1eb>
   1400024fe:	3d 8c 00 00 c0       	cmp    eax,0xc000008c
   140002503:	73 43                	jae    140002548 <_gnu_exception_handler+0xa8>
   140002505:	3d 1d 00 00 c0       	cmp    eax,0xc000001d
   14000250a:	0f 84 bf 00 00 00    	je     1400025cf <_gnu_exception_handler+0x12f>
   140002510:	3d 1d 00 00 c0       	cmp    eax,0xc000001d
   140002515:	0f 87 70 01 00 00    	ja     14000268b <_gnu_exception_handler+0x1eb>
   14000251b:	3d 08 00 00 c0       	cmp    eax,0xc0000008
   140002520:	0f 84 5c 01 00 00    	je     140002682 <_gnu_exception_handler+0x1e2>
   140002526:	3d 08 00 00 c0       	cmp    eax,0xc0000008
   14000252b:	0f 87 5a 01 00 00    	ja     14000268b <_gnu_exception_handler+0x1eb>
   140002531:	3d 02 00 00 80       	cmp    eax,0x80000002
   140002536:	0f 84 46 01 00 00    	je     140002682 <_gnu_exception_handler+0x1e2>
   14000253c:	3d 05 00 00 c0       	cmp    eax,0xc0000005
   140002541:	74 35                	je     140002578 <_gnu_exception_handler+0xd8>
   140002543:	e9 43 01 00 00       	jmp    14000268b <_gnu_exception_handler+0x1eb>
   140002548:	05 74 ff ff 3f       	add    eax,0x3fffff74
   14000254d:	83 f8 0a             	cmp    eax,0xa
   140002550:	0f 87 35 01 00 00    	ja     14000268b <_gnu_exception_handler+0x1eb>
   140002556:	89 c0                	mov    eax,eax
   140002558:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
   14000255f:	00 
   140002560:	48 8d 05 79 2e 00 00 	lea    rax,[rip+0x2e79]        # 1400053e0 <.rdata>
   140002567:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
   14000256a:	48 98                	cdqe
   14000256c:	48 8d 15 6d 2e 00 00 	lea    rdx,[rip+0x2e6d]        # 1400053e0 <.rdata>
   140002573:	48 01 d0             	add    rax,rdx
   140002576:	ff e0                	jmp    rax
   140002578:	ba 00 00 00 00       	mov    edx,0x0
   14000257d:	b9 0b 00 00 00       	mov    ecx,0xb
   140002582:	e8 89 0d 00 00       	call   140003310 <signal>
   140002587:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   14000258b:	48 83 7d f0 01       	cmp    QWORD PTR [rbp-0x10],0x1
   140002590:	75 1b                	jne    1400025ad <_gnu_exception_handler+0x10d>
   140002592:	ba 01 00 00 00       	mov    edx,0x1
   140002597:	b9 0b 00 00 00       	mov    ecx,0xb
   14000259c:	e8 6f 0d 00 00       	call   140003310 <signal>
   1400025a1:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [rbp-0x4],0xffffffff
   1400025a8:	e9 e1 00 00 00       	jmp    14000268e <_gnu_exception_handler+0x1ee>
   1400025ad:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
   1400025b2:	0f 84 d6 00 00 00    	je     14000268e <_gnu_exception_handler+0x1ee>
   1400025b8:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400025bc:	b9 0b 00 00 00       	mov    ecx,0xb
   1400025c1:	ff d0                	call   rax
   1400025c3:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [rbp-0x4],0xffffffff
   1400025ca:	e9 bf 00 00 00       	jmp    14000268e <_gnu_exception_handler+0x1ee>
   1400025cf:	ba 00 00 00 00       	mov    edx,0x0
   1400025d4:	b9 04 00 00 00       	mov    ecx,0x4
   1400025d9:	e8 32 0d 00 00       	call   140003310 <signal>
   1400025de:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   1400025e2:	48 83 7d f0 01       	cmp    QWORD PTR [rbp-0x10],0x1
   1400025e7:	75 1b                	jne    140002604 <_gnu_exception_handler+0x164>
   1400025e9:	ba 01 00 00 00       	mov    edx,0x1
   1400025ee:	b9 04 00 00 00       	mov    ecx,0x4
   1400025f3:	e8 18 0d 00 00       	call   140003310 <signal>
   1400025f8:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [rbp-0x4],0xffffffff
   1400025ff:	e9 8d 00 00 00       	jmp    140002691 <_gnu_exception_handler+0x1f1>
   140002604:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
   140002609:	0f 84 82 00 00 00    	je     140002691 <_gnu_exception_handler+0x1f1>
   14000260f:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002613:	b9 04 00 00 00       	mov    ecx,0x4
   140002618:	ff d0                	call   rax
   14000261a:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [rbp-0x4],0xffffffff
   140002621:	eb 6e                	jmp    140002691 <_gnu_exception_handler+0x1f1>
   140002623:	c7 45 f8 01 00 00 00 	mov    DWORD PTR [rbp-0x8],0x1
   14000262a:	ba 00 00 00 00       	mov    edx,0x0
   14000262f:	b9 08 00 00 00       	mov    ecx,0x8
   140002634:	e8 d7 0c 00 00       	call   140003310 <signal>
   140002639:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   14000263d:	48 83 7d f0 01       	cmp    QWORD PTR [rbp-0x10],0x1
   140002642:	75 23                	jne    140002667 <_gnu_exception_handler+0x1c7>
   140002644:	ba 01 00 00 00       	mov    edx,0x1
   140002649:	b9 08 00 00 00       	mov    ecx,0x8
   14000264e:	e8 bd 0c 00 00       	call   140003310 <signal>
   140002653:	83 7d f8 00          	cmp    DWORD PTR [rbp-0x8],0x0
   140002657:	74 05                	je     14000265e <_gnu_exception_handler+0x1be>
   140002659:	e8 f2 f4 ff ff       	call   140001b50 <_fpreset>
   14000265e:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [rbp-0x4],0xffffffff
   140002665:	eb 2d                	jmp    140002694 <_gnu_exception_handler+0x1f4>
   140002667:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
   14000266c:	74 26                	je     140002694 <_gnu_exception_handler+0x1f4>
   14000266e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002672:	b9 08 00 00 00       	mov    ecx,0x8
   140002677:	ff d0                	call   rax
   140002679:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [rbp-0x4],0xffffffff
   140002680:	eb 12                	jmp    140002694 <_gnu_exception_handler+0x1f4>
   140002682:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [rbp-0x4],0xffffffff
   140002689:	eb 0a                	jmp    140002695 <_gnu_exception_handler+0x1f5>
   14000268b:	90                   	nop
   14000268c:	eb 07                	jmp    140002695 <_gnu_exception_handler+0x1f5>
   14000268e:	90                   	nop
   14000268f:	eb 04                	jmp    140002695 <_gnu_exception_handler+0x1f5>
   140002691:	90                   	nop
   140002692:	eb 01                	jmp    140002695 <_gnu_exception_handler+0x1f5>
   140002694:	90                   	nop
   140002695:	83 7d fc 00          	cmp    DWORD PTR [rbp-0x4],0x0
   140002699:	75 1f                	jne    1400026ba <_gnu_exception_handler+0x21a>
   14000269b:	48 8b 05 7e 6a 00 00 	mov    rax,QWORD PTR [rip+0x6a7e]        # 140009120 <__mingw_oldexcpt_handler>
   1400026a2:	48 85 c0             	test   rax,rax
   1400026a5:	74 13                	je     1400026ba <_gnu_exception_handler+0x21a>
   1400026a7:	48 8b 15 72 6a 00 00 	mov    rdx,QWORD PTR [rip+0x6a72]        # 140009120 <__mingw_oldexcpt_handler>
   1400026ae:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   1400026b2:	48 89 c1             	mov    rcx,rax
   1400026b5:	ff d2                	call   rdx
   1400026b7:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   1400026ba:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   1400026bd:	48 83 c4 30          	add    rsp,0x30
   1400026c1:	5d                   	pop    rbp
   1400026c2:	c3                   	ret
   1400026c3:	90                   	nop
   1400026c4:	90                   	nop
   1400026c5:	90                   	nop
   1400026c6:	90                   	nop
   1400026c7:	90                   	nop
   1400026c8:	90                   	nop
   1400026c9:	90                   	nop
   1400026ca:	90                   	nop
   1400026cb:	90                   	nop
   1400026cc:	90                   	nop
   1400026cd:	90                   	nop
   1400026ce:	90                   	nop
   1400026cf:	90                   	nop

00000001400026d0 <___w64_mingwthr_add_key_dtor>:
   1400026d0:	55                   	push   rbp
   1400026d1:	48 89 e5             	mov    rbp,rsp
   1400026d4:	48 83 ec 30          	sub    rsp,0x30
   1400026d8:	89 4d 10             	mov    DWORD PTR [rbp+0x10],ecx
   1400026db:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   1400026df:	8b 05 83 6a 00 00    	mov    eax,DWORD PTR [rip+0x6a83]        # 140009168 <__mingwthr_cs_init>
   1400026e5:	85 c0                	test   eax,eax
   1400026e7:	75 07                	jne    1400026f0 <___w64_mingwthr_add_key_dtor+0x20>
   1400026e9:	b8 00 00 00 00       	mov    eax,0x0
   1400026ee:	eb 7b                	jmp    14000276b <___w64_mingwthr_add_key_dtor+0x9b>
   1400026f0:	ba 18 00 00 00       	mov    edx,0x18
   1400026f5:	b9 01 00 00 00       	mov    ecx,0x1
   1400026fa:	e8 49 0c 00 00       	call   140003348 <calloc>
   1400026ff:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002703:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
   140002708:	75 07                	jne    140002711 <___w64_mingwthr_add_key_dtor+0x41>
   14000270a:	b8 ff ff ff ff       	mov    eax,0xffffffff
   14000270f:	eb 5a                	jmp    14000276b <___w64_mingwthr_add_key_dtor+0x9b>
   140002711:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002715:	8b 55 10             	mov    edx,DWORD PTR [rbp+0x10]
   140002718:	89 10                	mov    DWORD PTR [rax],edx
   14000271a:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   14000271e:	48 8b 55 18          	mov    rdx,QWORD PTR [rbp+0x18]
   140002722:	48 89 50 08          	mov    QWORD PTR [rax+0x8],rdx
   140002726:	48 8d 05 13 6a 00 00 	lea    rax,[rip+0x6a13]        # 140009140 <__mingwthr_cs>
   14000272d:	48 89 c1             	mov    rcx,rax
   140002730:	48 8b 05 89 7b 00 00 	mov    rax,QWORD PTR [rip+0x7b89]        # 14000a2c0 <__imp_EnterCriticalSection>
   140002737:	ff d0                	call   rax
   140002739:	48 8b 15 30 6a 00 00 	mov    rdx,QWORD PTR [rip+0x6a30]        # 140009170 <key_dtor_list>
   140002740:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002744:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
   140002748:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   14000274c:	48 89 05 1d 6a 00 00 	mov    QWORD PTR [rip+0x6a1d],rax        # 140009170 <key_dtor_list>
   140002753:	48 8d 05 e6 69 00 00 	lea    rax,[rip+0x69e6]        # 140009140 <__mingwthr_cs>
   14000275a:	48 89 c1             	mov    rcx,rax
   14000275d:	48 8b 05 8c 7b 00 00 	mov    rax,QWORD PTR [rip+0x7b8c]        # 14000a2f0 <__imp_LeaveCriticalSection>
   140002764:	ff d0                	call   rax
   140002766:	b8 00 00 00 00       	mov    eax,0x0
   14000276b:	48 83 c4 30          	add    rsp,0x30
   14000276f:	5d                   	pop    rbp
   140002770:	c3                   	ret

0000000140002771 <___w64_mingwthr_remove_key_dtor>:
   140002771:	55                   	push   rbp
   140002772:	48 89 e5             	mov    rbp,rsp
   140002775:	48 83 ec 30          	sub    rsp,0x30
   140002779:	89 4d 10             	mov    DWORD PTR [rbp+0x10],ecx
   14000277c:	8b 05 e6 69 00 00    	mov    eax,DWORD PTR [rip+0x69e6]        # 140009168 <__mingwthr_cs_init>
   140002782:	85 c0                	test   eax,eax
   140002784:	75 0a                	jne    140002790 <___w64_mingwthr_remove_key_dtor+0x1f>
   140002786:	b8 00 00 00 00       	mov    eax,0x0
   14000278b:	e9 9c 00 00 00       	jmp    14000282c <___w64_mingwthr_remove_key_dtor+0xbb>
   140002790:	48 8d 05 a9 69 00 00 	lea    rax,[rip+0x69a9]        # 140009140 <__mingwthr_cs>
   140002797:	48 89 c1             	mov    rcx,rax
   14000279a:	48 8b 05 1f 7b 00 00 	mov    rax,QWORD PTR [rip+0x7b1f]        # 14000a2c0 <__imp_EnterCriticalSection>
   1400027a1:	ff d0                	call   rax
   1400027a3:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
   1400027aa:	00 
   1400027ab:	48 8b 05 be 69 00 00 	mov    rax,QWORD PTR [rip+0x69be]        # 140009170 <key_dtor_list>
   1400027b2:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   1400027b6:	eb 55                	jmp    14000280d <___w64_mingwthr_remove_key_dtor+0x9c>
   1400027b8:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400027bc:	8b 00                	mov    eax,DWORD PTR [rax]
   1400027be:	39 45 10             	cmp    DWORD PTR [rbp+0x10],eax
   1400027c1:	75 36                	jne    1400027f9 <___w64_mingwthr_remove_key_dtor+0x88>
   1400027c3:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
   1400027c8:	75 11                	jne    1400027db <___w64_mingwthr_remove_key_dtor+0x6a>
   1400027ca:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400027ce:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
   1400027d2:	48 89 05 97 69 00 00 	mov    QWORD PTR [rip+0x6997],rax        # 140009170 <key_dtor_list>
   1400027d9:	eb 10                	jmp    1400027eb <___w64_mingwthr_remove_key_dtor+0x7a>
   1400027db:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400027df:	48 8b 50 10          	mov    rdx,QWORD PTR [rax+0x10]
   1400027e3:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400027e7:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
   1400027eb:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400027ef:	48 89 c1             	mov    rcx,rax
   1400027f2:	e8 59 0b 00 00       	call   140003350 <free>
   1400027f7:	eb 1b                	jmp    140002814 <___w64_mingwthr_remove_key_dtor+0xa3>
   1400027f9:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400027fd:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002801:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002805:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
   140002809:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   14000280d:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
   140002812:	75 a4                	jne    1400027b8 <___w64_mingwthr_remove_key_dtor+0x47>
   140002814:	48 8d 05 25 69 00 00 	lea    rax,[rip+0x6925]        # 140009140 <__mingwthr_cs>
   14000281b:	48 89 c1             	mov    rcx,rax
   14000281e:	48 8b 05 cb 7a 00 00 	mov    rax,QWORD PTR [rip+0x7acb]        # 14000a2f0 <__imp_LeaveCriticalSection>
   140002825:	ff d0                	call   rax
   140002827:	b8 00 00 00 00       	mov    eax,0x0
   14000282c:	48 83 c4 30          	add    rsp,0x30
   140002830:	5d                   	pop    rbp
   140002831:	c3                   	ret

0000000140002832 <__mingwthr_run_key_dtors>:
   140002832:	55                   	push   rbp
   140002833:	48 89 e5             	mov    rbp,rsp
   140002836:	48 83 ec 30          	sub    rsp,0x30
   14000283a:	8b 05 28 69 00 00    	mov    eax,DWORD PTR [rip+0x6928]        # 140009168 <__mingwthr_cs_init>
   140002840:	85 c0                	test   eax,eax
   140002842:	0f 84 82 00 00 00    	je     1400028ca <__mingwthr_run_key_dtors+0x98>
   140002848:	48 8d 05 f1 68 00 00 	lea    rax,[rip+0x68f1]        # 140009140 <__mingwthr_cs>
   14000284f:	48 89 c1             	mov    rcx,rax
   140002852:	48 8b 05 67 7a 00 00 	mov    rax,QWORD PTR [rip+0x7a67]        # 14000a2c0 <__imp_EnterCriticalSection>
   140002859:	ff d0                	call   rax
   14000285b:	48 8b 05 0e 69 00 00 	mov    rax,QWORD PTR [rip+0x690e]        # 140009170 <key_dtor_list>
   140002862:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002866:	eb 46                	jmp    1400028ae <__mingwthr_run_key_dtors+0x7c>
   140002868:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   14000286c:	8b 00                	mov    eax,DWORD PTR [rax]
   14000286e:	89 c1                	mov    ecx,eax
   140002870:	48 8b 05 99 7a 00 00 	mov    rax,QWORD PTR [rip+0x7a99]        # 14000a310 <__imp_TlsGetValue>
   140002877:	ff d0                	call   rax
   140002879:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   14000287d:	48 8b 05 4c 7a 00 00 	mov    rax,QWORD PTR [rip+0x7a4c]        # 14000a2d0 <__imp_GetLastError>
   140002884:	ff d0                	call   rax
   140002886:	85 c0                	test   eax,eax
   140002888:	75 18                	jne    1400028a2 <__mingwthr_run_key_dtors+0x70>
   14000288a:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
   14000288f:	74 11                	je     1400028a2 <__mingwthr_run_key_dtors+0x70>
   140002891:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002895:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
   140002899:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   14000289d:	48 89 c1             	mov    rcx,rax
   1400028a0:	ff d2                	call   rdx
   1400028a2:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400028a6:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
   1400028aa:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   1400028ae:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
   1400028b3:	75 b3                	jne    140002868 <__mingwthr_run_key_dtors+0x36>
   1400028b5:	48 8d 05 84 68 00 00 	lea    rax,[rip+0x6884]        # 140009140 <__mingwthr_cs>
   1400028bc:	48 89 c1             	mov    rcx,rax
   1400028bf:	48 8b 05 2a 7a 00 00 	mov    rax,QWORD PTR [rip+0x7a2a]        # 14000a2f0 <__imp_LeaveCriticalSection>
   1400028c6:	ff d0                	call   rax
   1400028c8:	eb 01                	jmp    1400028cb <__mingwthr_run_key_dtors+0x99>
   1400028ca:	90                   	nop
   1400028cb:	48 83 c4 30          	add    rsp,0x30
   1400028cf:	5d                   	pop    rbp
   1400028d0:	c3                   	ret

00000001400028d1 <__mingw_TLScallback>:
   1400028d1:	55                   	push   rbp
   1400028d2:	48 89 e5             	mov    rbp,rsp
   1400028d5:	48 83 ec 30          	sub    rsp,0x30
   1400028d9:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   1400028dd:	89 55 18             	mov    DWORD PTR [rbp+0x18],edx
   1400028e0:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   1400028e4:	83 7d 18 03          	cmp    DWORD PTR [rbp+0x18],0x3
   1400028e8:	0f 84 cc 00 00 00    	je     1400029ba <__mingw_TLScallback+0xe9>
   1400028ee:	83 7d 18 03          	cmp    DWORD PTR [rbp+0x18],0x3
   1400028f2:	0f 87 ca 00 00 00    	ja     1400029c2 <__mingw_TLScallback+0xf1>
   1400028f8:	83 7d 18 02          	cmp    DWORD PTR [rbp+0x18],0x2
   1400028fc:	0f 84 b1 00 00 00    	je     1400029b3 <__mingw_TLScallback+0xe2>
   140002902:	83 7d 18 02          	cmp    DWORD PTR [rbp+0x18],0x2
   140002906:	0f 87 b6 00 00 00    	ja     1400029c2 <__mingw_TLScallback+0xf1>
   14000290c:	83 7d 18 00          	cmp    DWORD PTR [rbp+0x18],0x0
   140002910:	74 33                	je     140002945 <__mingw_TLScallback+0x74>
   140002912:	83 7d 18 01          	cmp    DWORD PTR [rbp+0x18],0x1
   140002916:	0f 85 a6 00 00 00    	jne    1400029c2 <__mingw_TLScallback+0xf1>
   14000291c:	8b 05 46 68 00 00    	mov    eax,DWORD PTR [rip+0x6846]        # 140009168 <__mingwthr_cs_init>
   140002922:	85 c0                	test   eax,eax
   140002924:	75 13                	jne    140002939 <__mingw_TLScallback+0x68>
   140002926:	48 8d 05 13 68 00 00 	lea    rax,[rip+0x6813]        # 140009140 <__mingwthr_cs>
   14000292d:	48 89 c1             	mov    rcx,rax
   140002930:	48 8b 05 b1 79 00 00 	mov    rax,QWORD PTR [rip+0x79b1]        # 14000a2e8 <__imp_InitializeCriticalSection>
   140002937:	ff d0                	call   rax
   140002939:	c7 05 25 68 00 00 01 	mov    DWORD PTR [rip+0x6825],0x1        # 140009168 <__mingwthr_cs_init>
   140002940:	00 00 00 
   140002943:	eb 7d                	jmp    1400029c2 <__mingw_TLScallback+0xf1>
   140002945:	e8 e8 fe ff ff       	call   140002832 <__mingwthr_run_key_dtors>
   14000294a:	8b 05 18 68 00 00    	mov    eax,DWORD PTR [rip+0x6818]        # 140009168 <__mingwthr_cs_init>
   140002950:	83 f8 01             	cmp    eax,0x1
   140002953:	75 6c                	jne    1400029c1 <__mingw_TLScallback+0xf0>
   140002955:	48 8b 05 14 68 00 00 	mov    rax,QWORD PTR [rip+0x6814]        # 140009170 <key_dtor_list>
   14000295c:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002960:	eb 20                	jmp    140002982 <__mingw_TLScallback+0xb1>
   140002962:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002966:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
   14000296a:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   14000296e:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002972:	48 89 c1             	mov    rcx,rax
   140002975:	e8 d6 09 00 00       	call   140003350 <free>
   14000297a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   14000297e:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002982:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
   140002987:	75 d9                	jne    140002962 <__mingw_TLScallback+0x91>
   140002989:	48 c7 05 dc 67 00 00 	mov    QWORD PTR [rip+0x67dc],0x0        # 140009170 <key_dtor_list>
   140002990:	00 00 00 00 
   140002994:	c7 05 ca 67 00 00 00 	mov    DWORD PTR [rip+0x67ca],0x0        # 140009168 <__mingwthr_cs_init>
   14000299b:	00 00 00 
   14000299e:	48 8d 05 9b 67 00 00 	lea    rax,[rip+0x679b]        # 140009140 <__mingwthr_cs>
   1400029a5:	48 89 c1             	mov    rcx,rax
   1400029a8:	48 8b 05 09 79 00 00 	mov    rax,QWORD PTR [rip+0x7909]        # 14000a2b8 <__IAT_start__>
   1400029af:	ff d0                	call   rax
   1400029b1:	eb 0e                	jmp    1400029c1 <__mingw_TLScallback+0xf0>
   1400029b3:	e8 98 f1 ff ff       	call   140001b50 <_fpreset>
   1400029b8:	eb 08                	jmp    1400029c2 <__mingw_TLScallback+0xf1>
   1400029ba:	e8 73 fe ff ff       	call   140002832 <__mingwthr_run_key_dtors>
   1400029bf:	eb 01                	jmp    1400029c2 <__mingw_TLScallback+0xf1>
   1400029c1:	90                   	nop
   1400029c2:	b8 01 00 00 00       	mov    eax,0x1
   1400029c7:	48 83 c4 30          	add    rsp,0x30
   1400029cb:	5d                   	pop    rbp
   1400029cc:	c3                   	ret
   1400029cd:	90                   	nop
   1400029ce:	90                   	nop
   1400029cf:	90                   	nop

00000001400029d0 <_ValidateImageBase>:
   1400029d0:	55                   	push   rbp
   1400029d1:	48 89 e5             	mov    rbp,rsp
   1400029d4:	48 83 ec 20          	sub    rsp,0x20
   1400029d8:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   1400029dc:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   1400029e0:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   1400029e4:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400029e8:	0f b7 00             	movzx  eax,WORD PTR [rax]
   1400029eb:	66 3d 4d 5a          	cmp    ax,0x5a4d
   1400029ef:	74 07                	je     1400029f8 <_ValidateImageBase+0x28>
   1400029f1:	b8 00 00 00 00       	mov    eax,0x0
   1400029f6:	eb 4e                	jmp    140002a46 <_ValidateImageBase+0x76>
   1400029f8:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400029fc:	8b 40 3c             	mov    eax,DWORD PTR [rax+0x3c]
   1400029ff:	48 63 d0             	movsxd rdx,eax
   140002a02:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002a06:	48 01 d0             	add    rax,rdx
   140002a09:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140002a0d:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002a11:	8b 00                	mov    eax,DWORD PTR [rax]
   140002a13:	3d 50 45 00 00       	cmp    eax,0x4550
   140002a18:	74 07                	je     140002a21 <_ValidateImageBase+0x51>
   140002a1a:	b8 00 00 00 00       	mov    eax,0x0
   140002a1f:	eb 25                	jmp    140002a46 <_ValidateImageBase+0x76>
   140002a21:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002a25:	48 83 c0 18          	add    rax,0x18
   140002a29:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
   140002a2d:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002a31:	0f b7 00             	movzx  eax,WORD PTR [rax]
   140002a34:	66 3d 0b 02          	cmp    ax,0x20b
   140002a38:	74 07                	je     140002a41 <_ValidateImageBase+0x71>
   140002a3a:	b8 00 00 00 00       	mov    eax,0x0
   140002a3f:	eb 05                	jmp    140002a46 <_ValidateImageBase+0x76>
   140002a41:	b8 01 00 00 00       	mov    eax,0x1
   140002a46:	48 83 c4 20          	add    rsp,0x20
   140002a4a:	5d                   	pop    rbp
   140002a4b:	c3                   	ret

0000000140002a4c <_FindPESection>:
   140002a4c:	55                   	push   rbp
   140002a4d:	48 89 e5             	mov    rbp,rsp
   140002a50:	48 83 ec 20          	sub    rsp,0x20
   140002a54:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002a58:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   140002a5c:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002a60:	8b 40 3c             	mov    eax,DWORD PTR [rax+0x3c]
   140002a63:	48 63 d0             	movsxd rdx,eax
   140002a66:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002a6a:	48 01 d0             	add    rax,rdx
   140002a6d:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
   140002a71:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
   140002a78:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002a7c:	0f b7 40 14          	movzx  eax,WORD PTR [rax+0x14]
   140002a80:	0f b7 d0             	movzx  edx,ax
   140002a83:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002a87:	48 01 d0             	add    rax,rdx
   140002a8a:	48 83 c0 18          	add    rax,0x18
   140002a8e:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002a92:	eb 36                	jmp    140002aca <_FindPESection+0x7e>
   140002a94:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002a98:	8b 40 0c             	mov    eax,DWORD PTR [rax+0xc]
   140002a9b:	89 c0                	mov    eax,eax
   140002a9d:	48 39 45 18          	cmp    QWORD PTR [rbp+0x18],rax
   140002aa1:	72 1e                	jb     140002ac1 <_FindPESection+0x75>
   140002aa3:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002aa7:	8b 50 0c             	mov    edx,DWORD PTR [rax+0xc]
   140002aaa:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002aae:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   140002ab1:	01 d0                	add    eax,edx
   140002ab3:	89 c0                	mov    eax,eax
   140002ab5:	48 39 45 18          	cmp    QWORD PTR [rbp+0x18],rax
   140002ab9:	73 06                	jae    140002ac1 <_FindPESection+0x75>
   140002abb:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002abf:	eb 1e                	jmp    140002adf <_FindPESection+0x93>
   140002ac1:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
   140002ac5:	48 83 45 f8 28       	add    QWORD PTR [rbp-0x8],0x28
   140002aca:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002ace:	0f b7 40 06          	movzx  eax,WORD PTR [rax+0x6]
   140002ad2:	0f b7 c0             	movzx  eax,ax
   140002ad5:	39 45 f4             	cmp    DWORD PTR [rbp-0xc],eax
   140002ad8:	72 ba                	jb     140002a94 <_FindPESection+0x48>
   140002ada:	b8 00 00 00 00       	mov    eax,0x0
   140002adf:	48 83 c4 20          	add    rsp,0x20
   140002ae3:	5d                   	pop    rbp
   140002ae4:	c3                   	ret

0000000140002ae5 <_FindPESectionByName>:
   140002ae5:	55                   	push   rbp
   140002ae6:	48 89 e5             	mov    rbp,rsp
   140002ae9:	48 83 ec 40          	sub    rsp,0x40
   140002aed:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002af1:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002af5:	48 89 c1             	mov    rcx,rax
   140002af8:	e8 43 07 00 00       	call   140003240 <strlen>
   140002afd:	48 83 f8 08          	cmp    rax,0x8
   140002b01:	76 0a                	jbe    140002b0d <_FindPESectionByName+0x28>
   140002b03:	b8 00 00 00 00       	mov    eax,0x0
   140002b08:	e9 98 00 00 00       	jmp    140002ba5 <_FindPESectionByName+0xc0>
   140002b0d:	48 8b 05 8c 29 00 00 	mov    rax,QWORD PTR [rip+0x298c]        # 1400054a0 <.refptr.__image_base__>
   140002b14:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
   140002b18:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002b1c:	48 89 c1             	mov    rcx,rax
   140002b1f:	e8 ac fe ff ff       	call   1400029d0 <_ValidateImageBase>
   140002b24:	85 c0                	test   eax,eax
   140002b26:	75 07                	jne    140002b2f <_FindPESectionByName+0x4a>
   140002b28:	b8 00 00 00 00       	mov    eax,0x0
   140002b2d:	eb 76                	jmp    140002ba5 <_FindPESectionByName+0xc0>
   140002b2f:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002b33:	8b 40 3c             	mov    eax,DWORD PTR [rax+0x3c]
   140002b36:	48 63 d0             	movsxd rdx,eax
   140002b39:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002b3d:	48 01 d0             	add    rax,rdx
   140002b40:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
   140002b44:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
   140002b4b:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002b4f:	0f b7 40 14          	movzx  eax,WORD PTR [rax+0x14]
   140002b53:	0f b7 d0             	movzx  edx,ax
   140002b56:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002b5a:	48 01 d0             	add    rax,rdx
   140002b5d:	48 83 c0 18          	add    rax,0x18
   140002b61:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002b65:	eb 29                	jmp    140002b90 <_FindPESectionByName+0xab>
   140002b67:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002b6b:	48 8b 55 10          	mov    rdx,QWORD PTR [rbp+0x10]
   140002b6f:	41 b8 08 00 00 00    	mov    r8d,0x8
   140002b75:	48 89 c1             	mov    rcx,rax
   140002b78:	e8 cb 06 00 00       	call   140003248 <strncmp>
   140002b7d:	85 c0                	test   eax,eax
   140002b7f:	75 06                	jne    140002b87 <_FindPESectionByName+0xa2>
   140002b81:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002b85:	eb 1e                	jmp    140002ba5 <_FindPESectionByName+0xc0>
   140002b87:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
   140002b8b:	48 83 45 f8 28       	add    QWORD PTR [rbp-0x8],0x28
   140002b90:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002b94:	0f b7 40 06          	movzx  eax,WORD PTR [rax+0x6]
   140002b98:	0f b7 c0             	movzx  eax,ax
   140002b9b:	39 45 f4             	cmp    DWORD PTR [rbp-0xc],eax
   140002b9e:	72 c7                	jb     140002b67 <_FindPESectionByName+0x82>
   140002ba0:	b8 00 00 00 00       	mov    eax,0x0
   140002ba5:	48 83 c4 40          	add    rsp,0x40
   140002ba9:	5d                   	pop    rbp
   140002baa:	c3                   	ret

0000000140002bab <__mingw_GetSectionForAddress>:
   140002bab:	55                   	push   rbp
   140002bac:	48 89 e5             	mov    rbp,rsp
   140002baf:	48 83 ec 30          	sub    rsp,0x30
   140002bb3:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002bb7:	48 8b 05 e2 28 00 00 	mov    rax,QWORD PTR [rip+0x28e2]        # 1400054a0 <.refptr.__image_base__>
   140002bbe:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002bc2:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002bc6:	48 89 c1             	mov    rcx,rax
   140002bc9:	e8 02 fe ff ff       	call   1400029d0 <_ValidateImageBase>
   140002bce:	85 c0                	test   eax,eax
   140002bd0:	75 07                	jne    140002bd9 <__mingw_GetSectionForAddress+0x2e>
   140002bd2:	b8 00 00 00 00       	mov    eax,0x0
   140002bd7:	eb 1c                	jmp    140002bf5 <__mingw_GetSectionForAddress+0x4a>
   140002bd9:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002bdd:	48 2b 45 f8          	sub    rax,QWORD PTR [rbp-0x8]
   140002be1:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140002be5:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
   140002be9:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002bed:	48 89 c1             	mov    rcx,rax
   140002bf0:	e8 57 fe ff ff       	call   140002a4c <_FindPESection>
   140002bf5:	48 83 c4 30          	add    rsp,0x30
   140002bf9:	5d                   	pop    rbp
   140002bfa:	c3                   	ret

0000000140002bfb <__mingw_GetSectionCount>:
   140002bfb:	55                   	push   rbp
   140002bfc:	48 89 e5             	mov    rbp,rsp
   140002bff:	48 83 ec 30          	sub    rsp,0x30
   140002c03:	48 8b 05 96 28 00 00 	mov    rax,QWORD PTR [rip+0x2896]        # 1400054a0 <.refptr.__image_base__>
   140002c0a:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002c0e:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002c12:	48 89 c1             	mov    rcx,rax
   140002c15:	e8 b6 fd ff ff       	call   1400029d0 <_ValidateImageBase>
   140002c1a:	85 c0                	test   eax,eax
   140002c1c:	75 07                	jne    140002c25 <__mingw_GetSectionCount+0x2a>
   140002c1e:	b8 00 00 00 00       	mov    eax,0x0
   140002c23:	eb 20                	jmp    140002c45 <__mingw_GetSectionCount+0x4a>
   140002c25:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002c29:	8b 40 3c             	mov    eax,DWORD PTR [rax+0x3c]
   140002c2c:	48 63 d0             	movsxd rdx,eax
   140002c2f:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002c33:	48 01 d0             	add    rax,rdx
   140002c36:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140002c3a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002c3e:	0f b7 40 06          	movzx  eax,WORD PTR [rax+0x6]
   140002c42:	0f b7 c0             	movzx  eax,ax
   140002c45:	48 83 c4 30          	add    rsp,0x30
   140002c49:	5d                   	pop    rbp
   140002c4a:	c3                   	ret

0000000140002c4b <_FindPESectionExec>:
   140002c4b:	55                   	push   rbp
   140002c4c:	48 89 e5             	mov    rbp,rsp
   140002c4f:	48 83 ec 40          	sub    rsp,0x40
   140002c53:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002c57:	48 8b 05 42 28 00 00 	mov    rax,QWORD PTR [rip+0x2842]        # 1400054a0 <.refptr.__image_base__>
   140002c5e:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
   140002c62:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002c66:	48 89 c1             	mov    rcx,rax
   140002c69:	e8 62 fd ff ff       	call   1400029d0 <_ValidateImageBase>
   140002c6e:	85 c0                	test   eax,eax
   140002c70:	75 07                	jne    140002c79 <_FindPESectionExec+0x2e>
   140002c72:	b8 00 00 00 00       	mov    eax,0x0
   140002c77:	eb 78                	jmp    140002cf1 <_FindPESectionExec+0xa6>
   140002c79:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002c7d:	8b 40 3c             	mov    eax,DWORD PTR [rax+0x3c]
   140002c80:	48 63 d0             	movsxd rdx,eax
   140002c83:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002c87:	48 01 d0             	add    rax,rdx
   140002c8a:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
   140002c8e:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
   140002c95:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002c99:	0f b7 40 14          	movzx  eax,WORD PTR [rax+0x14]
   140002c9d:	0f b7 d0             	movzx  edx,ax
   140002ca0:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002ca4:	48 01 d0             	add    rax,rdx
   140002ca7:	48 83 c0 18          	add    rax,0x18
   140002cab:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002caf:	eb 2b                	jmp    140002cdc <_FindPESectionExec+0x91>
   140002cb1:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002cb5:	8b 40 24             	mov    eax,DWORD PTR [rax+0x24]
   140002cb8:	25 00 00 00 20       	and    eax,0x20000000
   140002cbd:	85 c0                	test   eax,eax
   140002cbf:	74 12                	je     140002cd3 <_FindPESectionExec+0x88>
   140002cc1:	48 83 7d 10 00       	cmp    QWORD PTR [rbp+0x10],0x0
   140002cc6:	75 06                	jne    140002cce <_FindPESectionExec+0x83>
   140002cc8:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002ccc:	eb 23                	jmp    140002cf1 <_FindPESectionExec+0xa6>
   140002cce:	48 83 6d 10 01       	sub    QWORD PTR [rbp+0x10],0x1
   140002cd3:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
   140002cd7:	48 83 45 f8 28       	add    QWORD PTR [rbp-0x8],0x28
   140002cdc:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002ce0:	0f b7 40 06          	movzx  eax,WORD PTR [rax+0x6]
   140002ce4:	0f b7 c0             	movzx  eax,ax
   140002ce7:	39 45 f4             	cmp    DWORD PTR [rbp-0xc],eax
   140002cea:	72 c5                	jb     140002cb1 <_FindPESectionExec+0x66>
   140002cec:	b8 00 00 00 00       	mov    eax,0x0
   140002cf1:	48 83 c4 40          	add    rsp,0x40
   140002cf5:	5d                   	pop    rbp
   140002cf6:	c3                   	ret

0000000140002cf7 <_GetPEImageBase>:
   140002cf7:	55                   	push   rbp
   140002cf8:	48 89 e5             	mov    rbp,rsp
   140002cfb:	48 83 ec 30          	sub    rsp,0x30
   140002cff:	48 8b 05 9a 27 00 00 	mov    rax,QWORD PTR [rip+0x279a]        # 1400054a0 <.refptr.__image_base__>
   140002d06:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002d0a:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002d0e:	48 89 c1             	mov    rcx,rax
   140002d11:	e8 ba fc ff ff       	call   1400029d0 <_ValidateImageBase>
   140002d16:	85 c0                	test   eax,eax
   140002d18:	75 07                	jne    140002d21 <_GetPEImageBase+0x2a>
   140002d1a:	b8 00 00 00 00       	mov    eax,0x0
   140002d1f:	eb 04                	jmp    140002d25 <_GetPEImageBase+0x2e>
   140002d21:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002d25:	48 83 c4 30          	add    rsp,0x30
   140002d29:	5d                   	pop    rbp
   140002d2a:	c3                   	ret

0000000140002d2b <_IsNonwritableInCurrentImage>:
   140002d2b:	55                   	push   rbp
   140002d2c:	48 89 e5             	mov    rbp,rsp
   140002d2f:	48 83 ec 40          	sub    rsp,0x40
   140002d33:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002d37:	48 8b 05 62 27 00 00 	mov    rax,QWORD PTR [rip+0x2762]        # 1400054a0 <.refptr.__image_base__>
   140002d3e:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002d42:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002d46:	48 89 c1             	mov    rcx,rax
   140002d49:	e8 82 fc ff ff       	call   1400029d0 <_ValidateImageBase>
   140002d4e:	85 c0                	test   eax,eax
   140002d50:	75 07                	jne    140002d59 <_IsNonwritableInCurrentImage+0x2e>
   140002d52:	b8 00 00 00 00       	mov    eax,0x0
   140002d57:	eb 3d                	jmp    140002d96 <_IsNonwritableInCurrentImage+0x6b>
   140002d59:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002d5d:	48 2b 45 f8          	sub    rax,QWORD PTR [rbp-0x8]
   140002d61:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140002d65:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
   140002d69:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002d6d:	48 89 c1             	mov    rcx,rax
   140002d70:	e8 d7 fc ff ff       	call   140002a4c <_FindPESection>
   140002d75:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
   140002d79:	48 83 7d e8 00       	cmp    QWORD PTR [rbp-0x18],0x0
   140002d7e:	75 07                	jne    140002d87 <_IsNonwritableInCurrentImage+0x5c>
   140002d80:	b8 00 00 00 00       	mov    eax,0x0
   140002d85:	eb 0f                	jmp    140002d96 <_IsNonwritableInCurrentImage+0x6b>
   140002d87:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002d8b:	8b 40 24             	mov    eax,DWORD PTR [rax+0x24]
   140002d8e:	f7 d0                	not    eax
   140002d90:	c1 e8 1f             	shr    eax,0x1f
   140002d93:	0f b6 c0             	movzx  eax,al
   140002d96:	48 83 c4 40          	add    rsp,0x40
   140002d9a:	5d                   	pop    rbp
   140002d9b:	c3                   	ret

0000000140002d9c <__mingw_enum_import_library_names>:
   140002d9c:	55                   	push   rbp
   140002d9d:	48 89 e5             	mov    rbp,rsp
   140002da0:	48 83 ec 50          	sub    rsp,0x50
   140002da4:	89 4d 10             	mov    DWORD PTR [rbp+0x10],ecx
   140002da7:	48 8b 05 f2 26 00 00 	mov    rax,QWORD PTR [rip+0x26f2]        # 1400054a0 <.refptr.__image_base__>
   140002dae:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140002db2:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002db6:	48 89 c1             	mov    rcx,rax
   140002db9:	e8 12 fc ff ff       	call   1400029d0 <_ValidateImageBase>
   140002dbe:	85 c0                	test   eax,eax
   140002dc0:	75 0a                	jne    140002dcc <__mingw_enum_import_library_names+0x30>
   140002dc2:	b8 00 00 00 00       	mov    eax,0x0
   140002dc7:	e9 ab 00 00 00       	jmp    140002e77 <__mingw_enum_import_library_names+0xdb>
   140002dcc:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002dd0:	8b 40 3c             	mov    eax,DWORD PTR [rax+0x3c]
   140002dd3:	48 63 d0             	movsxd rdx,eax
   140002dd6:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002dda:	48 01 d0             	add    rax,rdx
   140002ddd:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
   140002de1:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002de5:	8b 80 90 00 00 00    	mov    eax,DWORD PTR [rax+0x90]
   140002deb:	89 45 e4             	mov    DWORD PTR [rbp-0x1c],eax
   140002dee:	83 7d e4 00          	cmp    DWORD PTR [rbp-0x1c],0x0
   140002df2:	75 07                	jne    140002dfb <__mingw_enum_import_library_names+0x5f>
   140002df4:	b8 00 00 00 00       	mov    eax,0x0
   140002df9:	eb 7c                	jmp    140002e77 <__mingw_enum_import_library_names+0xdb>
   140002dfb:	8b 55 e4             	mov    edx,DWORD PTR [rbp-0x1c]
   140002dfe:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002e02:	48 89 c1             	mov    rcx,rax
   140002e05:	e8 42 fc ff ff       	call   140002a4c <_FindPESection>
   140002e0a:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
   140002e0e:	48 83 7d d8 00       	cmp    QWORD PTR [rbp-0x28],0x0
   140002e13:	75 07                	jne    140002e1c <__mingw_enum_import_library_names+0x80>
   140002e15:	b8 00 00 00 00       	mov    eax,0x0
   140002e1a:	eb 5b                	jmp    140002e77 <__mingw_enum_import_library_names+0xdb>
   140002e1c:	8b 55 e4             	mov    edx,DWORD PTR [rbp-0x1c]
   140002e1f:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002e23:	48 01 d0             	add    rax,rdx
   140002e26:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002e2a:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
   140002e2f:	75 07                	jne    140002e38 <__mingw_enum_import_library_names+0x9c>
   140002e31:	b8 00 00 00 00       	mov    eax,0x0
   140002e36:	eb 3f                	jmp    140002e77 <__mingw_enum_import_library_names+0xdb>
   140002e38:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002e3c:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
   140002e3f:	85 c0                	test   eax,eax
   140002e41:	75 0b                	jne    140002e4e <__mingw_enum_import_library_names+0xb2>
   140002e43:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002e47:	8b 40 0c             	mov    eax,DWORD PTR [rax+0xc]
   140002e4a:	85 c0                	test   eax,eax
   140002e4c:	74 23                	je     140002e71 <__mingw_enum_import_library_names+0xd5>
   140002e4e:	83 7d 10 00          	cmp    DWORD PTR [rbp+0x10],0x0
   140002e52:	7f 12                	jg     140002e66 <__mingw_enum_import_library_names+0xca>
   140002e54:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002e58:	8b 40 0c             	mov    eax,DWORD PTR [rax+0xc]
   140002e5b:	89 c2                	mov    edx,eax
   140002e5d:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002e61:	48 01 d0             	add    rax,rdx
   140002e64:	eb 11                	jmp    140002e77 <__mingw_enum_import_library_names+0xdb>
   140002e66:	83 6d 10 01          	sub    DWORD PTR [rbp+0x10],0x1
   140002e6a:	48 83 45 f8 14       	add    QWORD PTR [rbp-0x8],0x14
   140002e6f:	eb c7                	jmp    140002e38 <__mingw_enum_import_library_names+0x9c>
   140002e71:	90                   	nop
   140002e72:	b8 00 00 00 00       	mov    eax,0x0
   140002e77:	48 83 c4 50          	add    rsp,0x50
   140002e7b:	5d                   	pop    rbp
   140002e7c:	c3                   	ret
   140002e7d:	90                   	nop
   140002e7e:	90                   	nop
   140002e7f:	90                   	nop

0000000140002e80 <___chkstk_ms>:
   140002e80:	51                   	push   rcx
   140002e81:	50                   	push   rax
   140002e82:	48 3d 00 10 00 00    	cmp    rax,0x1000
   140002e88:	48 8d 4c 24 18       	lea    rcx,[rsp+0x18]
   140002e8d:	72 19                	jb     140002ea8 <___chkstk_ms+0x28>
   140002e8f:	48 81 e9 00 10 00 00 	sub    rcx,0x1000
   140002e96:	48 83 09 00          	or     QWORD PTR [rcx],0x0
   140002e9a:	48 2d 00 10 00 00    	sub    rax,0x1000
   140002ea0:	48 3d 00 10 00 00    	cmp    rax,0x1000
   140002ea6:	77 e7                	ja     140002e8f <___chkstk_ms+0xf>
   140002ea8:	48 29 c1             	sub    rcx,rax
   140002eab:	48 83 09 00          	or     QWORD PTR [rcx],0x0
   140002eaf:	58                   	pop    rax
   140002eb0:	59                   	pop    rcx
   140002eb1:	c3                   	ret
   140002eb2:	90                   	nop
   140002eb3:	90                   	nop
   140002eb4:	90                   	nop
   140002eb5:	90                   	nop
   140002eb6:	90                   	nop
   140002eb7:	90                   	nop
   140002eb8:	90                   	nop
   140002eb9:	90                   	nop
   140002eba:	90                   	nop
   140002ebb:	90                   	nop
   140002ebc:	90                   	nop
   140002ebd:	90                   	nop
   140002ebe:	90                   	nop
   140002ebf:	90                   	nop

0000000140002ec0 <vfprintf>:
   140002ec0:	55                   	push   rbp
   140002ec1:	48 89 e5             	mov    rbp,rsp
   140002ec4:	48 83 ec 30          	sub    rsp,0x30
   140002ec8:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002ecc:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   140002ed0:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   140002ed4:	48 8b 4d 18          	mov    rcx,QWORD PTR [rbp+0x18]
   140002ed8:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002edc:	48 8b 55 20          	mov    rdx,QWORD PTR [rbp+0x20]
   140002ee0:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
   140002ee5:	41 b9 00 00 00 00    	mov    r9d,0x0
   140002eeb:	49 89 c8             	mov    r8,rcx
   140002eee:	48 89 c2             	mov    rdx,rax
   140002ef1:	b9 00 00 00 00       	mov    ecx,0x0
   140002ef6:	e8 6d 03 00 00       	call   140003268 <__stdio_common_vfprintf>
   140002efb:	48 83 c4 30          	add    rsp,0x30
   140002eff:	5d                   	pop    rbp
   140002f00:	c3                   	ret
   140002f01:	90                   	nop
   140002f02:	90                   	nop
   140002f03:	90                   	nop
   140002f04:	90                   	nop
   140002f05:	90                   	nop
   140002f06:	90                   	nop
   140002f07:	90                   	nop
   140002f08:	90                   	nop
   140002f09:	90                   	nop
   140002f0a:	90                   	nop
   140002f0b:	90                   	nop
   140002f0c:	90                   	nop
   140002f0d:	90                   	nop
   140002f0e:	90                   	nop
   140002f0f:	90                   	nop

0000000140002f10 <printf>:
   140002f10:	55                   	push   rbp
   140002f11:	53                   	push   rbx
   140002f12:	48 83 ec 48          	sub    rsp,0x48
   140002f16:	48 8d 6c 24 40       	lea    rbp,[rsp+0x40]
   140002f1b:	48 89 4d 20          	mov    QWORD PTR [rbp+0x20],rcx
   140002f1f:	48 89 55 28          	mov    QWORD PTR [rbp+0x28],rdx
   140002f23:	4c 89 45 30          	mov    QWORD PTR [rbp+0x30],r8
   140002f27:	4c 89 4d 38          	mov    QWORD PTR [rbp+0x38],r9
   140002f2b:	48 8d 45 28          	lea    rax,[rbp+0x28]
   140002f2f:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140002f33:	48 8b 5d f0          	mov    rbx,QWORD PTR [rbp-0x10]
   140002f37:	b9 01 00 00 00       	mov    ecx,0x1
   140002f3c:	e8 0f 03 00 00       	call   140003250 <__acrt_iob_func>
   140002f41:	48 8b 55 20          	mov    rdx,QWORD PTR [rbp+0x20]
   140002f45:	48 89 5c 24 20       	mov    QWORD PTR [rsp+0x20],rbx
   140002f4a:	41 b9 00 00 00 00    	mov    r9d,0x0
   140002f50:	49 89 d0             	mov    r8,rdx
   140002f53:	48 89 c2             	mov    rdx,rax
   140002f56:	b9 00 00 00 00       	mov    ecx,0x0
   140002f5b:	e8 08 03 00 00       	call   140003268 <__stdio_common_vfprintf>
   140002f60:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   140002f63:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140002f66:	48 83 c4 48          	add    rsp,0x48
   140002f6a:	5b                   	pop    rbx
   140002f6b:	5d                   	pop    rbp
   140002f6c:	c3                   	ret
   140002f6d:	90                   	nop
   140002f6e:	90                   	nop
   140002f6f:	90                   	nop

0000000140002f70 <fprintf>:
   140002f70:	55                   	push   rbp
   140002f71:	48 89 e5             	mov    rbp,rsp
   140002f74:	48 83 ec 40          	sub    rsp,0x40
   140002f78:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002f7c:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   140002f80:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   140002f84:	4c 89 4d 28          	mov    QWORD PTR [rbp+0x28],r9
   140002f88:	48 8d 45 20          	lea    rax,[rbp+0x20]
   140002f8c:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140002f90:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
   140002f94:	48 8b 4d 18          	mov    rcx,QWORD PTR [rbp+0x18]
   140002f98:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002f9c:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
   140002fa1:	41 b9 00 00 00 00    	mov    r9d,0x0
   140002fa7:	49 89 c8             	mov    r8,rcx
   140002faa:	48 89 c2             	mov    rdx,rax
   140002fad:	b9 00 00 00 00       	mov    ecx,0x0
   140002fb2:	e8 b1 02 00 00       	call   140003268 <__stdio_common_vfprintf>
   140002fb7:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   140002fba:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140002fbd:	48 83 c4 40          	add    rsp,0x40
   140002fc1:	5d                   	pop    rbp
   140002fc2:	c3                   	ret
   140002fc3:	90                   	nop
   140002fc4:	90                   	nop
   140002fc5:	90                   	nop
   140002fc6:	90                   	nop
   140002fc7:	90                   	nop
   140002fc8:	90                   	nop
   140002fc9:	90                   	nop
   140002fca:	90                   	nop
   140002fcb:	90                   	nop
   140002fcc:	90                   	nop
   140002fcd:	90                   	nop
   140002fce:	90                   	nop
   140002fcf:	90                   	nop

0000000140002fd0 <__getmainargs>:
   140002fd0:	55                   	push   rbp
   140002fd1:	48 89 e5             	mov    rbp,rsp
   140002fd4:	48 83 ec 20          	sub    rsp,0x20
   140002fd8:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002fdc:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   140002fe0:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   140002fe4:	44 89 4d 28          	mov    DWORD PTR [rbp+0x28],r9d
   140002fe8:	e8 eb 02 00 00       	call   1400032d8 <_initialize_narrow_environment>
   140002fed:	83 7d 28 00          	cmp    DWORD PTR [rbp+0x28],0x0
   140002ff1:	74 07                	je     140002ffa <__getmainargs+0x2a>
   140002ff3:	b8 02 00 00 00       	mov    eax,0x2
   140002ff8:	eb 05                	jmp    140002fff <__getmainargs+0x2f>
   140002ffa:	b8 01 00 00 00       	mov    eax,0x1
   140002fff:	89 c1                	mov    ecx,eax
   140003001:	e8 aa 02 00 00       	call   1400032b0 <_configure_narrow_argv>
   140003006:	e8 85 02 00 00       	call   140003290 <__p___argc>
   14000300b:	8b 10                	mov    edx,DWORD PTR [rax]
   14000300d:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140003011:	89 10                	mov    DWORD PTR [rax],edx
   140003013:	e8 80 02 00 00       	call   140003298 <__p___argv>
   140003018:	48 8b 10             	mov    rdx,QWORD PTR [rax]
   14000301b:	48 8b 45 18          	mov    rax,QWORD PTR [rbp+0x18]
   14000301f:	48 89 10             	mov    QWORD PTR [rax],rdx
   140003022:	e8 39 03 00 00       	call   140003360 <__p__environ>
   140003027:	48 8b 10             	mov    rdx,QWORD PTR [rax]
   14000302a:	48 8b 45 20          	mov    rax,QWORD PTR [rbp+0x20]
   14000302e:	48 89 10             	mov    QWORD PTR [rax],rdx
   140003031:	48 83 7d 30 00       	cmp    QWORD PTR [rbp+0x30],0x0
   140003036:	74 0d                	je     140003045 <__getmainargs+0x75>
   140003038:	48 8b 45 30          	mov    rax,QWORD PTR [rbp+0x30]
   14000303c:	8b 00                	mov    eax,DWORD PTR [rax]
   14000303e:	89 c1                	mov    ecx,eax
   140003040:	e8 fb 02 00 00       	call   140003340 <_set_new_mode>
   140003045:	b8 00 00 00 00       	mov    eax,0x0
   14000304a:	48 83 c4 20          	add    rsp,0x20
   14000304e:	5d                   	pop    rbp
   14000304f:	c3                   	ret

0000000140003050 <__wgetmainargs>:
   140003050:	55                   	push   rbp
   140003051:	48 89 e5             	mov    rbp,rsp
   140003054:	48 83 ec 20          	sub    rsp,0x20
   140003058:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   14000305c:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   140003060:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   140003064:	44 89 4d 28          	mov    DWORD PTR [rbp+0x28],r9d
   140003068:	e8 73 02 00 00       	call   1400032e0 <_initialize_wide_environment>
   14000306d:	83 7d 28 00          	cmp    DWORD PTR [rbp+0x28],0x0
   140003071:	74 07                	je     14000307a <__wgetmainargs+0x2a>
   140003073:	b8 02 00 00 00       	mov    eax,0x2
   140003078:	eb 05                	jmp    14000307f <__wgetmainargs+0x2f>
   14000307a:	b8 01 00 00 00       	mov    eax,0x1
   14000307f:	89 c1                	mov    ecx,eax
   140003081:	e8 32 02 00 00       	call   1400032b8 <_configure_wide_argv>
   140003086:	e8 05 02 00 00       	call   140003290 <__p___argc>
   14000308b:	8b 10                	mov    edx,DWORD PTR [rax]
   14000308d:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140003091:	89 10                	mov    DWORD PTR [rax],edx
   140003093:	e8 08 02 00 00       	call   1400032a0 <__p___wargv>
   140003098:	48 8b 10             	mov    rdx,QWORD PTR [rax]
   14000309b:	48 8b 45 18          	mov    rax,QWORD PTR [rbp+0x18]
   14000309f:	48 89 10             	mov    QWORD PTR [rax],rdx
   1400030a2:	e8 c1 02 00 00       	call   140003368 <__p__wenviron>
   1400030a7:	48 8b 10             	mov    rdx,QWORD PTR [rax]
   1400030aa:	48 8b 45 20          	mov    rax,QWORD PTR [rbp+0x20]
   1400030ae:	48 89 10             	mov    QWORD PTR [rax],rdx
   1400030b1:	48 83 7d 30 00       	cmp    QWORD PTR [rbp+0x30],0x0
   1400030b6:	74 0d                	je     1400030c5 <__wgetmainargs+0x75>
   1400030b8:	48 8b 45 30          	mov    rax,QWORD PTR [rbp+0x30]
   1400030bc:	8b 00                	mov    eax,DWORD PTR [rax]
   1400030be:	89 c1                	mov    ecx,eax
   1400030c0:	e8 7b 02 00 00       	call   140003340 <_set_new_mode>
   1400030c5:	b8 00 00 00 00       	mov    eax,0x0
   1400030ca:	48 83 c4 20          	add    rsp,0x20
   1400030ce:	5d                   	pop    rbp
   1400030cf:	c3                   	ret

00000001400030d0 <_onexit>:
   1400030d0:	55                   	push   rbp
   1400030d1:	48 89 e5             	mov    rbp,rsp
   1400030d4:	48 83 ec 20          	sub    rsp,0x20
   1400030d8:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   1400030dc:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   1400030e0:	48 89 c1             	mov    rcx,rax
   1400030e3:	e8 e0 01 00 00       	call   1400032c8 <_crt_atexit>
   1400030e8:	85 c0                	test   eax,eax
   1400030ea:	75 06                	jne    1400030f2 <_onexit+0x22>
   1400030ec:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   1400030f0:	eb 05                	jmp    1400030f7 <_onexit+0x27>
   1400030f2:	b8 00 00 00 00       	mov    eax,0x0
   1400030f7:	48 83 c4 20          	add    rsp,0x20
   1400030fb:	5d                   	pop    rbp
   1400030fc:	c3                   	ret

00000001400030fd <at_quick_exit>:
   1400030fd:	55                   	push   rbp
   1400030fe:	48 89 e5             	mov    rbp,rsp
   140003101:	48 83 ec 20          	sub    rsp,0x20
   140003105:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140003109:	48 8b 05 00 24 00 00 	mov    rax,QWORD PTR [rip+0x2400]        # 140005510 <.refptr.__mingw_module_is_dll>
   140003110:	0f b6 00             	movzx  eax,BYTE PTR [rax]
   140003113:	84 c0                	test   al,al
   140003115:	74 07                	je     14000311e <at_quick_exit+0x21>
   140003117:	b8 00 00 00 00       	mov    eax,0x0
   14000311c:	eb 0c                	jmp    14000312a <at_quick_exit+0x2d>
   14000311e:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140003122:	48 89 c1             	mov    rcx,rax
   140003125:	e8 96 01 00 00       	call   1400032c0 <_crt_at_quick_exit>
   14000312a:	48 83 c4 20          	add    rsp,0x20
   14000312e:	5d                   	pop    rbp
   14000312f:	c3                   	ret

0000000140003130 <_amsg_exit>:
   140003130:	55                   	push   rbp
   140003131:	48 89 e5             	mov    rbp,rsp
   140003134:	48 83 ec 20          	sub    rsp,0x20
   140003138:	89 4d 10             	mov    DWORD PTR [rbp+0x10],ecx
   14000313b:	b9 02 00 00 00       	mov    ecx,0x2
   140003140:	e8 0b 01 00 00       	call   140003250 <__acrt_iob_func>
   140003145:	48 89 c1             	mov    rcx,rax
   140003148:	8b 45 10             	mov    eax,DWORD PTR [rbp+0x10]
   14000314b:	41 89 c0             	mov    r8d,eax
   14000314e:	48 8d 05 bb 22 00 00 	lea    rax,[rip+0x22bb]        # 140005410 <.rdata>
   140003155:	48 89 c2             	mov    rdx,rax
   140003158:	e8 13 fe ff ff       	call   140002f70 <fprintf>
   14000315d:	b9 ff 00 00 00       	mov    ecx,0xff
   140003162:	e8 69 01 00 00       	call   1400032d0 <_exit>
   140003167:	90                   	nop

0000000140003168 <_get_output_format>:
   140003168:	55                   	push   rbp
   140003169:	48 89 e5             	mov    rbp,rsp
   14000316c:	b8 00 00 00 00       	mov    eax,0x0
   140003171:	5d                   	pop    rbp
   140003172:	c3                   	ret

0000000140003173 <_tzset>:
   140003173:	55                   	push   rbp
   140003174:	48 89 e5             	mov    rbp,rsp
   140003177:	48 83 ec 20          	sub    rsp,0x20
   14000317b:	48 8b 05 3e 23 00 00 	mov    rax,QWORD PTR [rip+0x233e]        # 1400054c0 <.refptr.__imp__tzset>
   140003182:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140003185:	ff d0                	call   rax
   140003187:	e8 a4 00 00 00       	call   140003230 <__tzname>
   14000318c:	48 89 05 55 0f 00 00 	mov    QWORD PTR [rip+0xf55],rax        # 1400040e8 <__imp_tzname>
   140003193:	e8 90 00 00 00       	call   140003228 <__timezone>
   140003198:	48 89 05 51 0f 00 00 	mov    QWORD PTR [rip+0xf51],rax        # 1400040f0 <__imp_timezone>
   14000319f:	e8 7c 00 00 00       	call   140003220 <__daylight>
   1400031a4:	48 89 05 4d 0f 00 00 	mov    QWORD PTR [rip+0xf4d],rax        # 1400040f8 <__imp_daylight>
   1400031ab:	90                   	nop
   1400031ac:	48 83 c4 20          	add    rsp,0x20
   1400031b0:	5d                   	pop    rbp
   1400031b1:	c3                   	ret

00000001400031b2 <tzset>:
   1400031b2:	55                   	push   rbp
   1400031b3:	48 89 e5             	mov    rbp,rsp
   1400031b6:	48 83 ec 20          	sub    rsp,0x20
   1400031ba:	e8 b4 ff ff ff       	call   140003173 <_tzset>
   1400031bf:	90                   	nop
   1400031c0:	48 83 c4 20          	add    rsp,0x20
   1400031c4:	5d                   	pop    rbp
   1400031c5:	c3                   	ret

00000001400031c6 <__ms_fwprintf>:
   1400031c6:	55                   	push   rbp
   1400031c7:	48 89 e5             	mov    rbp,rsp
   1400031ca:	48 83 ec 40          	sub    rsp,0x40
   1400031ce:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   1400031d2:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   1400031d6:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   1400031da:	4c 89 4d 28          	mov    QWORD PTR [rbp+0x28],r9
   1400031de:	48 8d 45 20          	lea    rax,[rbp+0x20]
   1400031e2:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   1400031e6:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
   1400031ea:	48 8b 4d 18          	mov    rcx,QWORD PTR [rbp+0x18]
   1400031ee:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   1400031f2:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
   1400031f7:	41 b9 00 00 00 00    	mov    r9d,0x0
   1400031fd:	49 89 c8             	mov    r8,rcx
   140003200:	48 89 c2             	mov    rdx,rax
   140003203:	b9 04 00 00 00       	mov    ecx,0x4
   140003208:	e8 63 00 00 00       	call   140003270 <__stdio_common_vfwprintf>
   14000320d:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   140003210:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140003213:	48 83 c4 40          	add    rsp,0x40
   140003217:	5d                   	pop    rbp
   140003218:	c3                   	ret
   140003219:	90                   	nop
   14000321a:	90                   	nop
   14000321b:	90                   	nop
   14000321c:	90                   	nop
   14000321d:	90                   	nop
   14000321e:	90                   	nop
   14000321f:	90                   	nop

0000000140003220 <__daylight>:
   140003220:	ff 25 5a 72 00 00    	jmp    QWORD PTR [rip+0x725a]        # 14000a480 <__imp___daylight>
   140003226:	90                   	nop
   140003227:	90                   	nop

0000000140003228 <__timezone>:
   140003228:	ff 25 5a 72 00 00    	jmp    QWORD PTR [rip+0x725a]        # 14000a488 <__imp___timezone>
   14000322e:	90                   	nop
   14000322f:	90                   	nop

0000000140003230 <__tzname>:
   140003230:	ff 25 5a 72 00 00    	jmp    QWORD PTR [rip+0x725a]        # 14000a490 <__imp___tzname>
   140003236:	90                   	nop
   140003237:	90                   	nop

0000000140003238 <.text>:
   140003238:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000323f:	00 

0000000140003240 <strlen>:
   140003240:	ff 25 22 72 00 00    	jmp    QWORD PTR [rip+0x7222]        # 14000a468 <__imp_strlen>
   140003246:	90                   	nop
   140003247:	90                   	nop

0000000140003248 <strncmp>:
   140003248:	ff 25 22 72 00 00    	jmp    QWORD PTR [rip+0x7222]        # 14000a470 <__imp_strncmp>
   14000324e:	90                   	nop
   14000324f:	90                   	nop

0000000140003250 <__acrt_iob_func>:
   140003250:	ff 25 d2 71 00 00    	jmp    QWORD PTR [rip+0x71d2]        # 14000a428 <__imp___acrt_iob_func>
   140003256:	90                   	nop
   140003257:	90                   	nop

0000000140003258 <__p__commode>:
   140003258:	ff 25 d2 71 00 00    	jmp    QWORD PTR [rip+0x71d2]        # 14000a430 <__imp___p__commode>
   14000325e:	90                   	nop
   14000325f:	90                   	nop

0000000140003260 <__p__fmode>:
   140003260:	ff 25 d2 71 00 00    	jmp    QWORD PTR [rip+0x71d2]        # 14000a438 <__imp___p__fmode>
   140003266:	90                   	nop
   140003267:	90                   	nop

0000000140003268 <__stdio_common_vfprintf>:
   140003268:	ff 25 d2 71 00 00    	jmp    QWORD PTR [rip+0x71d2]        # 14000a440 <__imp___stdio_common_vfprintf>
   14000326e:	90                   	nop
   14000326f:	90                   	nop

0000000140003270 <__stdio_common_vfwprintf>:
   140003270:	ff 25 d2 71 00 00    	jmp    QWORD PTR [rip+0x71d2]        # 14000a448 <__imp___stdio_common_vfwprintf>
   140003276:	90                   	nop
   140003277:	90                   	nop

0000000140003278 <fwrite>:
   140003278:	ff 25 d2 71 00 00    	jmp    QWORD PTR [rip+0x71d2]        # 14000a450 <__imp_fwrite>
   14000327e:	90                   	nop
   14000327f:	90                   	nop

0000000140003280 <puts>:
   140003280:	ff 25 d2 71 00 00    	jmp    QWORD PTR [rip+0x71d2]        # 14000a458 <__imp_puts>
   140003286:	90                   	nop
   140003287:	90                   	nop
   140003288:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000328f:	00 

0000000140003290 <__p___argc>:
   140003290:	ff 25 02 71 00 00    	jmp    QWORD PTR [rip+0x7102]        # 14000a398 <__imp___p___argc>
   140003296:	90                   	nop
   140003297:	90                   	nop

0000000140003298 <__p___argv>:
   140003298:	ff 25 02 71 00 00    	jmp    QWORD PTR [rip+0x7102]        # 14000a3a0 <__imp___p___argv>
   14000329e:	90                   	nop
   14000329f:	90                   	nop

00000001400032a0 <__p___wargv>:
   1400032a0:	ff 25 02 71 00 00    	jmp    QWORD PTR [rip+0x7102]        # 14000a3a8 <__imp___p___wargv>
   1400032a6:	90                   	nop
   1400032a7:	90                   	nop

00000001400032a8 <_cexit>:
   1400032a8:	ff 25 02 71 00 00    	jmp    QWORD PTR [rip+0x7102]        # 14000a3b0 <__imp__cexit>
   1400032ae:	90                   	nop
   1400032af:	90                   	nop

00000001400032b0 <_configure_narrow_argv>:
   1400032b0:	ff 25 02 71 00 00    	jmp    QWORD PTR [rip+0x7102]        # 14000a3b8 <__imp__configure_narrow_argv>
   1400032b6:	90                   	nop
   1400032b7:	90                   	nop

00000001400032b8 <_configure_wide_argv>:
   1400032b8:	ff 25 02 71 00 00    	jmp    QWORD PTR [rip+0x7102]        # 14000a3c0 <__imp__configure_wide_argv>
   1400032be:	90                   	nop
   1400032bf:	90                   	nop

00000001400032c0 <_crt_at_quick_exit>:
   1400032c0:	ff 25 02 71 00 00    	jmp    QWORD PTR [rip+0x7102]        # 14000a3c8 <__imp__crt_at_quick_exit>
   1400032c6:	90                   	nop
   1400032c7:	90                   	nop

00000001400032c8 <_crt_atexit>:
   1400032c8:	ff 25 02 71 00 00    	jmp    QWORD PTR [rip+0x7102]        # 14000a3d0 <__imp__crt_atexit>
   1400032ce:	90                   	nop
   1400032cf:	90                   	nop

00000001400032d0 <_exit>:
   1400032d0:	ff 25 02 71 00 00    	jmp    QWORD PTR [rip+0x7102]        # 14000a3d8 <__imp__exit>
   1400032d6:	90                   	nop
   1400032d7:	90                   	nop

00000001400032d8 <_initialize_narrow_environment>:
   1400032d8:	ff 25 02 71 00 00    	jmp    QWORD PTR [rip+0x7102]        # 14000a3e0 <__imp__initialize_narrow_environment>
   1400032de:	90                   	nop
   1400032df:	90                   	nop

00000001400032e0 <_initialize_wide_environment>:
   1400032e0:	ff 25 02 71 00 00    	jmp    QWORD PTR [rip+0x7102]        # 14000a3e8 <__imp__initialize_wide_environment>
   1400032e6:	90                   	nop
   1400032e7:	90                   	nop

00000001400032e8 <_initterm>:
   1400032e8:	ff 25 02 71 00 00    	jmp    QWORD PTR [rip+0x7102]        # 14000a3f0 <__imp__initterm>
   1400032ee:	90                   	nop
   1400032ef:	90                   	nop

00000001400032f0 <__set_app_type>:
   1400032f0:	ff 25 02 71 00 00    	jmp    QWORD PTR [rip+0x7102]        # 14000a3f8 <__imp___set_app_type>
   1400032f6:	90                   	nop
   1400032f7:	90                   	nop

00000001400032f8 <_set_invalid_parameter_handler>:
   1400032f8:	ff 25 02 71 00 00    	jmp    QWORD PTR [rip+0x7102]        # 14000a400 <__imp__set_invalid_parameter_handler>
   1400032fe:	90                   	nop
   1400032ff:	90                   	nop

0000000140003300 <abort>:
   140003300:	ff 25 02 71 00 00    	jmp    QWORD PTR [rip+0x7102]        # 14000a408 <__imp_abort>
   140003306:	90                   	nop
   140003307:	90                   	nop

0000000140003308 <exit>:
   140003308:	ff 25 02 71 00 00    	jmp    QWORD PTR [rip+0x7102]        # 14000a410 <__imp_exit>
   14000330e:	90                   	nop
   14000330f:	90                   	nop

0000000140003310 <signal>:
   140003310:	ff 25 02 71 00 00    	jmp    QWORD PTR [rip+0x7102]        # 14000a418 <__imp_signal>
   140003316:	90                   	nop
   140003317:	90                   	nop
   140003318:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000331f:	00 

0000000140003320 <__C_specific_handler>:
   140003320:	ff 25 5a 70 00 00    	jmp    QWORD PTR [rip+0x705a]        # 14000a380 <__imp___C_specific_handler>
   140003326:	90                   	nop
   140003327:	90                   	nop

0000000140003328 <memcpy>:
   140003328:	ff 25 5a 70 00 00    	jmp    QWORD PTR [rip+0x705a]        # 14000a388 <__imp_memcpy>
   14000332e:	90                   	nop
   14000332f:	90                   	nop

0000000140003330 <__setusermatherr>:
   140003330:	ff 25 3a 70 00 00    	jmp    QWORD PTR [rip+0x703a]        # 14000a370 <__imp___setusermatherr>
   140003336:	90                   	nop
   140003337:	90                   	nop
   140003338:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000333f:	00 

0000000140003340 <_set_new_mode>:
   140003340:	ff 25 02 70 00 00    	jmp    QWORD PTR [rip+0x7002]        # 14000a348 <__imp__set_new_mode>
   140003346:	90                   	nop
   140003347:	90                   	nop

0000000140003348 <calloc>:
   140003348:	ff 25 02 70 00 00    	jmp    QWORD PTR [rip+0x7002]        # 14000a350 <__imp_calloc>
   14000334e:	90                   	nop
   14000334f:	90                   	nop

0000000140003350 <free>:
   140003350:	ff 25 02 70 00 00    	jmp    QWORD PTR [rip+0x7002]        # 14000a358 <__imp_free>
   140003356:	90                   	nop
   140003357:	90                   	nop

0000000140003358 <malloc>:
   140003358:	ff 25 02 70 00 00    	jmp    QWORD PTR [rip+0x7002]        # 14000a360 <__imp_malloc>
   14000335e:	90                   	nop
   14000335f:	90                   	nop

0000000140003360 <__p__environ>:
   140003360:	ff 25 ca 6f 00 00    	jmp    QWORD PTR [rip+0x6fca]        # 14000a330 <__imp___p__environ>
   140003366:	90                   	nop
   140003367:	90                   	nop

0000000140003368 <__p__wenviron>:
   140003368:	ff 25 ca 6f 00 00    	jmp    QWORD PTR [rip+0x6fca]        # 14000a338 <__imp___p__wenviron>
   14000336e:	90                   	nop
   14000336f:	90                   	nop

0000000140003370 <VirtualQuery>:
   140003370:	ff 25 aa 6f 00 00    	jmp    QWORD PTR [rip+0x6faa]        # 14000a320 <__imp_VirtualQuery>
   140003376:	90                   	nop
   140003377:	90                   	nop

0000000140003378 <VirtualProtect>:
   140003378:	ff 25 9a 6f 00 00    	jmp    QWORD PTR [rip+0x6f9a]        # 14000a318 <__imp_VirtualProtect>
   14000337e:	90                   	nop
   14000337f:	90                   	nop

0000000140003380 <TlsGetValue>:
   140003380:	ff 25 8a 6f 00 00    	jmp    QWORD PTR [rip+0x6f8a]        # 14000a310 <__imp_TlsGetValue>
   140003386:	90                   	nop
   140003387:	90                   	nop

0000000140003388 <Sleep>:
   140003388:	ff 25 7a 6f 00 00    	jmp    QWORD PTR [rip+0x6f7a]        # 14000a308 <__imp_Sleep>
   14000338e:	90                   	nop
   14000338f:	90                   	nop

0000000140003390 <SetUnhandledExceptionFilter>:
   140003390:	ff 25 6a 6f 00 00    	jmp    QWORD PTR [rip+0x6f6a]        # 14000a300 <__imp_SetUnhandledExceptionFilter>
   140003396:	90                   	nop
   140003397:	90                   	nop

0000000140003398 <LoadLibraryA>:
   140003398:	ff 25 5a 6f 00 00    	jmp    QWORD PTR [rip+0x6f5a]        # 14000a2f8 <__imp_LoadLibraryA>
   14000339e:	90                   	nop
   14000339f:	90                   	nop

00000001400033a0 <LeaveCriticalSection>:
   1400033a0:	ff 25 4a 6f 00 00    	jmp    QWORD PTR [rip+0x6f4a]        # 14000a2f0 <__imp_LeaveCriticalSection>
   1400033a6:	90                   	nop
   1400033a7:	90                   	nop

00000001400033a8 <InitializeCriticalSection>:
   1400033a8:	ff 25 3a 6f 00 00    	jmp    QWORD PTR [rip+0x6f3a]        # 14000a2e8 <__imp_InitializeCriticalSection>
   1400033ae:	90                   	nop
   1400033af:	90                   	nop

00000001400033b0 <GetProcAddress>:
   1400033b0:	ff 25 2a 6f 00 00    	jmp    QWORD PTR [rip+0x6f2a]        # 14000a2e0 <__imp_GetProcAddress>
   1400033b6:	90                   	nop
   1400033b7:	90                   	nop

00000001400033b8 <GetModuleHandleA>:
   1400033b8:	ff 25 1a 6f 00 00    	jmp    QWORD PTR [rip+0x6f1a]        # 14000a2d8 <__imp_GetModuleHandleA>
   1400033be:	90                   	nop
   1400033bf:	90                   	nop

00000001400033c0 <GetLastError>:
   1400033c0:	ff 25 0a 6f 00 00    	jmp    QWORD PTR [rip+0x6f0a]        # 14000a2d0 <__imp_GetLastError>
   1400033c6:	90                   	nop
   1400033c7:	90                   	nop

00000001400033c8 <FreeLibrary>:
   1400033c8:	ff 25 fa 6e 00 00    	jmp    QWORD PTR [rip+0x6efa]        # 14000a2c8 <__imp_FreeLibrary>
   1400033ce:	90                   	nop
   1400033cf:	90                   	nop

00000001400033d0 <EnterCriticalSection>:
   1400033d0:	ff 25 ea 6e 00 00    	jmp    QWORD PTR [rip+0x6eea]        # 14000a2c0 <__imp_EnterCriticalSection>
   1400033d6:	90                   	nop
   1400033d7:	90                   	nop

00000001400033d8 <DeleteCriticalSection>:
   1400033d8:	ff 25 da 6e 00 00    	jmp    QWORD PTR [rip+0x6eda]        # 14000a2b8 <__IAT_start__>
   1400033de:	90                   	nop
   1400033df:	90                   	nop

00000001400033e0 <register_frame_ctor>:
   1400033e0:	e9 fb e1 ff ff       	jmp    1400015e0 <__gcc_register_frame>
   1400033e5:	90                   	nop
   1400033e6:	90                   	nop
   1400033e7:	90                   	nop
   1400033e8:	90                   	nop
   1400033e9:	90                   	nop
   1400033ea:	90                   	nop
   1400033eb:	90                   	nop
   1400033ec:	90                   	nop
   1400033ed:	90                   	nop
   1400033ee:	90                   	nop
   1400033ef:	90                   	nop

00000001400033f0 <__CTOR_LIST__>:
   1400033f0:	ff                   	(bad)
   1400033f1:	ff                   	(bad)
   1400033f2:	ff                   	(bad)
   1400033f3:	ff                   	(bad)
   1400033f4:	ff                   	(bad)
   1400033f5:	ff                   	(bad)
   1400033f6:	ff                   	(bad)
   1400033f7:	ff                   	.byte 0xff

00000001400033f8 <.ctors.65535>:
   1400033f8:	e0 33                	loopne 14000342d <__DTOR_LIST__+0x25>
   1400033fa:	00 40 01             	add    BYTE PTR [rax+0x1],al
	...

0000000140003408 <__DTOR_LIST__>:
   140003408:	ff                   	(bad)
   140003409:	ff                   	(bad)
   14000340a:	ff                   	(bad)
   14000340b:	ff                   	(bad)
   14000340c:	ff                   	(bad)
   14000340d:	ff                   	(bad)
   14000340e:	ff                   	(bad)
   14000340f:	ff 00                	inc    DWORD PTR [rax]
   140003411:	00 00                	add    BYTE PTR [rax],al
   140003413:	00 00                	add    BYTE PTR [rax],al
   140003415:	00 00                	add    BYTE PTR [rax],al
	...
