
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
   140001024:	89 05 f6 8f 00 00    	mov    DWORD PTR [rip+0x8ff6],eax        # 14000a020 <managedapp>
   14000102a:	48 8b 05 df 45 00 00 	mov    rax,QWORD PTR [rip+0x45df]        # 140005610 <.refptr.__mingw_app_type>
   140001031:	8b 00                	mov    eax,DWORD PTR [rax]
   140001033:	85 c0                	test   eax,eax
   140001035:	74 0c                	je     140001043 <pre_c_init+0x2c>
   140001037:	b9 02 00 00 00       	mov    ecx,0x2
   14000103c:	e8 6f 24 00 00       	call   1400034b0 <__set_app_type>
   140001041:	eb 0a                	jmp    14000104d <pre_c_init+0x36>
   140001043:	b9 01 00 00 00       	mov    ecx,0x1
   140001048:	e8 63 24 00 00       	call   1400034b0 <__set_app_type>
   14000104d:	e8 ce 23 00 00       	call   140003420 <__p__fmode>
   140001052:	48 8b 15 97 46 00 00 	mov    rdx,QWORD PTR [rip+0x4697]        # 1400056f0 <.refptr._fmode>
   140001059:	8b 12                	mov    edx,DWORD PTR [rdx]
   14000105b:	89 10                	mov    DWORD PTR [rax],edx
   14000105d:	e8 b6 23 00 00       	call   140003418 <__p__commode>
   140001062:	48 8b 15 67 46 00 00 	mov    rdx,QWORD PTR [rip+0x4667]        # 1400056d0 <.refptr._commode>
   140001069:	8b 12                	mov    edx,DWORD PTR [rdx]
   14000106b:	89 10                	mov    DWORD PTR [rax],edx
   14000106d:	e8 5e 0a 00 00       	call   140001ad0 <_setargv>
   140001072:	48 8b 05 07 45 00 00 	mov    rax,QWORD PTR [rip+0x4507]        # 140005580 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   140001079:	8b 00                	mov    eax,DWORD PTR [rax]
   14000107b:	83 f8 01             	cmp    eax,0x1
   14000107e:	75 0f                	jne    14000108f <pre_c_init+0x78>
   140001080:	48 8b 05 89 46 00 00 	mov    rax,QWORD PTR [rip+0x4689]        # 140005710 <.refptr._matherr>
   140001087:	48 89 c1             	mov    rcx,rax
   14000108a:	e8 9b 15 00 00       	call   14000262a <__mingw_setusermatherr>
   14000108f:	b8 00 00 00 00       	mov    eax,0x0
   140001094:	48 83 c4 20          	add    rsp,0x20
   140001098:	5d                   	pop    rbp
   140001099:	c3                   	ret

000000014000109a <pre_cpp_init>:
   14000109a:	55                   	push   rbp
   14000109b:	48 89 e5             	mov    rbp,rsp
   14000109e:	48 83 ec 30          	sub    rsp,0x30
   1400010a2:	48 8b 05 77 46 00 00 	mov    rax,QWORD PTR [rip+0x4677]        # 140005720 <.refptr._newmode>
   1400010a9:	8b 00                	mov    eax,DWORD PTR [rax]
   1400010ab:	89 05 77 8f 00 00    	mov    DWORD PTR [rip+0x8f77],eax        # 14000a028 <startinfo>
   1400010b1:	48 8b 05 28 46 00 00 	mov    rax,QWORD PTR [rip+0x4628]        # 1400056e0 <.refptr._dowildcard>
   1400010b8:	8b 10                	mov    edx,DWORD PTR [rax]
   1400010ba:	48 8d 05 67 8f 00 00 	lea    rax,[rip+0x8f67]        # 14000a028 <startinfo>
   1400010c1:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
   1400010c6:	41 89 d1             	mov    r9d,edx
   1400010c9:	4c 8d 05 40 8f 00 00 	lea    r8,[rip+0x8f40]        # 14000a010 <envp>
   1400010d0:	48 8d 05 31 8f 00 00 	lea    rax,[rip+0x8f31]        # 14000a008 <argv>
   1400010d7:	48 89 c2             	mov    rdx,rax
   1400010da:	48 8d 05 23 8f 00 00 	lea    rax,[rip+0x8f23]        # 14000a004 <argc>
   1400010e1:	48 89 c1             	mov    rcx,rax
   1400010e4:	e8 a7 20 00 00       	call   140003190 <__getmainargs>
   1400010e9:	89 05 29 8f 00 00    	mov    DWORD PTR [rip+0x8f29],eax        # 14000a018 <argret>
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
   140001105:	48 8b 05 04 45 00 00 	mov    rax,QWORD PTR [rip+0x4504]        # 140005610 <.refptr.__mingw_app_type>
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
   140001134:	48 8b 05 d5 44 00 00 	mov    rax,QWORD PTR [rip+0x44d5]        # 140005610 <.refptr.__mingw_app_type>
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
   1400011a3:	48 8b 05 5e a1 00 00 	mov    rax,QWORD PTR [rip+0xa15e]        # 14000b308 <__imp_Sleep>
   1400011aa:	ff d0                	call   rax
   1400011ac:	48 8b 05 bd 44 00 00 	mov    rax,QWORD PTR [rip+0x44bd]        # 140005670 <.refptr.__native_startup_lock>
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
   1400011e3:	48 8b 05 96 44 00 00 	mov    rax,QWORD PTR [rip+0x4496]        # 140005680 <.refptr.__native_startup_state>
   1400011ea:	8b 00                	mov    eax,DWORD PTR [rax]
   1400011ec:	83 f8 01             	cmp    eax,0x1
   1400011ef:	75 0c                	jne    1400011fd <__tmainCRTStartup+0xa9>
   1400011f1:	b9 1f 00 00 00       	mov    ecx,0x1f
   1400011f6:	e8 f5 20 00 00       	call   1400032f0 <_amsg_exit>
   1400011fb:	eb 3f                	jmp    14000123c <__tmainCRTStartup+0xe8>
   1400011fd:	48 8b 05 7c 44 00 00 	mov    rax,QWORD PTR [rip+0x447c]        # 140005680 <.refptr.__native_startup_state>
   140001204:	8b 00                	mov    eax,DWORD PTR [rax]
   140001206:	85 c0                	test   eax,eax
   140001208:	75 28                	jne    140001232 <__tmainCRTStartup+0xde>
   14000120a:	48 8b 05 6f 44 00 00 	mov    rax,QWORD PTR [rip+0x446f]        # 140005680 <.refptr.__native_startup_state>
   140001211:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   140001217:	48 8b 05 a2 44 00 00 	mov    rax,QWORD PTR [rip+0x44a2]        # 1400056c0 <.refptr.__xi_z>
   14000121e:	48 89 c2             	mov    rdx,rax
   140001221:	48 8b 05 88 44 00 00 	mov    rax,QWORD PTR [rip+0x4488]        # 1400056b0 <.refptr.__xi_a>
   140001228:	48 89 c1             	mov    rcx,rax
   14000122b:	e8 78 22 00 00       	call   1400034a8 <_initterm>
   140001230:	eb 0a                	jmp    14000123c <__tmainCRTStartup+0xe8>
   140001232:	c7 05 e8 8d 00 00 01 	mov    DWORD PTR [rip+0x8de8],0x1        # 14000a024 <has_cctor>
   140001239:	00 00 00 
   14000123c:	48 8b 05 3d 44 00 00 	mov    rax,QWORD PTR [rip+0x443d]        # 140005680 <.refptr.__native_startup_state>
   140001243:	8b 00                	mov    eax,DWORD PTR [rax]
   140001245:	83 f8 01             	cmp    eax,0x1
   140001248:	75 26                	jne    140001270 <__tmainCRTStartup+0x11c>
   14000124a:	48 8b 05 4f 44 00 00 	mov    rax,QWORD PTR [rip+0x444f]        # 1400056a0 <.refptr.__xc_z>
   140001251:	48 89 c2             	mov    rdx,rax
   140001254:	48 8b 05 35 44 00 00 	mov    rax,QWORD PTR [rip+0x4435]        # 140005690 <.refptr.__xc_a>
   14000125b:	48 89 c1             	mov    rcx,rax
   14000125e:	e8 45 22 00 00       	call   1400034a8 <_initterm>
   140001263:	48 8b 05 16 44 00 00 	mov    rax,QWORD PTR [rip+0x4416]        # 140005680 <.refptr.__native_startup_state>
   14000126a:	c7 00 02 00 00 00    	mov    DWORD PTR [rax],0x2
   140001270:	83 7d fc 00          	cmp    DWORD PTR [rbp-0x4],0x0
   140001274:	75 1e                	jne    140001294 <__tmainCRTStartup+0x140>
   140001276:	48 8b 05 f3 43 00 00 	mov    rax,QWORD PTR [rip+0x43f3]        # 140005670 <.refptr.__native_startup_lock>
   14000127d:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   140001281:	48 c7 45 b0 00 00 00 	mov    QWORD PTR [rbp-0x50],0x0
   140001288:	00 
   140001289:	48 8b 55 b0          	mov    rdx,QWORD PTR [rbp-0x50]
   14000128d:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   140001291:	48 87 10             	xchg   QWORD PTR [rax],rdx
   140001294:	48 8b 05 25 43 00 00 	mov    rax,QWORD PTR [rip+0x4325]        # 1400055c0 <.refptr.__dyn_tls_init_callback>
   14000129b:	48 8b 00             	mov    rax,QWORD PTR [rax]
   14000129e:	48 85 c0             	test   rax,rax
   1400012a1:	74 1c                	je     1400012bf <__tmainCRTStartup+0x16b>
   1400012a3:	48 8b 05 16 43 00 00 	mov    rax,QWORD PTR [rip+0x4316]        # 1400055c0 <.refptr.__dyn_tls_init_callback>
   1400012aa:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400012ad:	41 b8 00 00 00 00    	mov    r8d,0x0
   1400012b3:	ba 02 00 00 00       	mov    edx,0x2
   1400012b8:	b9 00 00 00 00       	mov    ecx,0x0
   1400012bd:	ff d0                	call   rax
   1400012bf:	e8 54 12 00 00       	call   140002518 <_pei386_runtime_relocator>
   1400012c4:	48 8b 05 35 44 00 00 	mov    rax,QWORD PTR [rip+0x4435]        # 140005700 <.refptr._gnu_exception_handler>
   1400012cb:	48 89 c1             	mov    rcx,rax
   1400012ce:	48 8b 05 2b a0 00 00 	mov    rax,QWORD PTR [rip+0xa02b]        # 14000b300 <__imp_SetUnhandledExceptionFilter>
   1400012d5:	ff d0                	call   rax
   1400012d7:	48 8b 15 82 43 00 00 	mov    rdx,QWORD PTR [rip+0x4382]        # 140005660 <.refptr.__mingw_oldexcpt_handler>
   1400012de:	48 89 02             	mov    QWORD PTR [rdx],rax
   1400012e1:	48 8d 05 18 fd ff ff 	lea    rax,[rip+0xfffffffffffffd18]        # 140001000 <__mingw_invalidParameterHandler>
   1400012e8:	48 89 c1             	mov    rcx,rax
   1400012eb:	e8 c8 21 00 00       	call   1400034b8 <_set_invalid_parameter_handler>
   1400012f0:	e8 1b 0a 00 00       	call   140001d10 <_fpreset>
   1400012f5:	8b 05 09 8d 00 00    	mov    eax,DWORD PTR [rip+0x8d09]        # 14000a004 <argc>
   1400012fb:	48 8d 15 06 8d 00 00 	lea    rdx,[rip+0x8d06]        # 14000a008 <argv>
   140001302:	89 c1                	mov    ecx,eax
   140001304:	e8 73 01 00 00       	call   14000147c <duplicate_ppstrings>
   140001309:	e8 99 07 00 00       	call   140001aa7 <__main>
   14000130e:	48 8b 05 db 42 00 00 	mov    rax,QWORD PTR [rip+0x42db]        # 1400055f0 <.refptr.__imp___initenv>
   140001315:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140001318:	48 8b 15 f1 8c 00 00 	mov    rdx,QWORD PTR [rip+0x8cf1]        # 14000a010 <envp>
   14000131f:	48 89 10             	mov    QWORD PTR [rax],rdx
   140001322:	48 8b 0d e7 8c 00 00 	mov    rcx,QWORD PTR [rip+0x8ce7]        # 14000a010 <envp>
   140001329:	48 8b 15 d8 8c 00 00 	mov    rdx,QWORD PTR [rip+0x8cd8]        # 14000a008 <argv>
   140001330:	8b 05 ce 8c 00 00    	mov    eax,DWORD PTR [rip+0x8cce]        # 14000a004 <argc>
   140001336:	49 89 c8             	mov    r8,rcx
   140001339:	89 c1                	mov    ecx,eax
   14000133b:	e8 9b 04 00 00       	call   1400017db <main>
   140001340:	89 05 d6 8c 00 00    	mov    DWORD PTR [rip+0x8cd6],eax        # 14000a01c <mainret>
   140001346:	8b 05 d4 8c 00 00    	mov    eax,DWORD PTR [rip+0x8cd4]        # 14000a020 <managedapp>
   14000134c:	85 c0                	test   eax,eax
   14000134e:	75 0d                	jne    14000135d <__tmainCRTStartup+0x209>
   140001350:	8b 05 c6 8c 00 00    	mov    eax,DWORD PTR [rip+0x8cc6]        # 14000a01c <mainret>
   140001356:	89 c1                	mov    ecx,eax
   140001358:	e8 6b 21 00 00       	call   1400034c8 <exit>
   14000135d:	8b 05 c1 8c 00 00    	mov    eax,DWORD PTR [rip+0x8cc1]        # 14000a024 <has_cctor>
   140001363:	85 c0                	test   eax,eax
   140001365:	75 05                	jne    14000136c <__tmainCRTStartup+0x218>
   140001367:	e8 fc 20 00 00       	call   140003468 <_cexit>
   14000136c:	8b 05 aa 8c 00 00    	mov    eax,DWORD PTR [rip+0x8caa]        # 14000a01c <mainret>
   140001372:	48 83 c4 70          	add    rsp,0x70
   140001376:	5d                   	pop    rbp
   140001377:	c3                   	ret

0000000140001378 <check_managed_app>:
   140001378:	55                   	push   rbp
   140001379:	48 89 e5             	mov    rbp,rsp
   14000137c:	48 83 ec 20          	sub    rsp,0x20
   140001380:	48 8b 05 99 42 00 00 	mov    rax,QWORD PTR [rip+0x4299]        # 140005620 <.refptr.__mingw_initltsdrot_force>
   140001387:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   14000138d:	48 8b 05 9c 42 00 00 	mov    rax,QWORD PTR [rip+0x429c]        # 140005630 <.refptr.__mingw_initltsdyn_force>
   140001394:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   14000139a:	48 8b 05 9f 42 00 00 	mov    rax,QWORD PTR [rip+0x429f]        # 140005640 <.refptr.__mingw_initltssuo_force>
   1400013a1:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   1400013a7:	48 8b 05 32 42 00 00 	mov    rax,QWORD PTR [rip+0x4232]        # 1400055e0 <.refptr.__image_base__>
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
   14000149d:	e8 76 20 00 00       	call   140003518 <malloc>
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
   1400014d7:	e8 24 1f 00 00       	call   140003400 <strlen>
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
   140001500:	e8 13 20 00 00       	call   140003518 <malloc>
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
   140001540:	e8 a3 1f 00 00       	call   1400034e8 <memcpy>
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
   140001596:	e8 f5 1c 00 00       	call   140003290 <_onexit>
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
   1400015f7:	ff 15 db 9c 00 00    	call   QWORD PTR [rip+0x9cdb]        # 14000b2d8 <__imp_GetModuleHandleA>
   1400015fd:	48 89 c3             	mov    rbx,rax
   140001600:	48 85 c0             	test   rax,rax
   140001603:	74 6b                	je     140001670 <__gcc_register_frame+0x90>
   140001605:	48 89 f1             	mov    rcx,rsi
   140001608:	ff 15 ea 9c 00 00    	call   QWORD PTR [rip+0x9cea]        # 14000b2f8 <__imp_LoadLibraryA>
   14000160e:	48 8b 3d cb 9c 00 00 	mov    rdi,QWORD PTR [rip+0x9ccb]        # 14000b2e0 <__imp_GetProcAddress>
   140001615:	48 8d 15 f7 39 00 00 	lea    rdx,[rip+0x39f7]        # 140005013 <.rdata+0x13>
   14000161c:	48 89 d9             	mov    rcx,rbx
   14000161f:	48 89 05 1a 8a 00 00 	mov    QWORD PTR [rip+0x8a1a],rax        # 14000a040 <hmod_libgcc>
   140001626:	ff d7                	call   rdi
   140001628:	48 8d 15 fa 39 00 00 	lea    rdx,[rip+0x39fa]        # 140005029 <.rdata+0x29>
   14000162f:	48 89 d9             	mov    rcx,rbx
   140001632:	48 89 c6             	mov    rsi,rax
   140001635:	ff d7                	call   rdi
   140001637:	48 89 05 c2 29 00 00 	mov    QWORD PTR [rip+0x29c2],rax        # 140004000 <__data_start__>
   14000163e:	48 85 f6             	test   rsi,rsi
   140001641:	74 10                	je     140001653 <__gcc_register_frame+0x73>
   140001643:	48 8d 15 16 8a 00 00 	lea    rdx,[rip+0x8a16]        # 14000a060 <obj>
   14000164a:	48 8d 0d af 59 00 00 	lea    rcx,[rip+0x59af]        # 140007000 <__EH_FRAME_BEGIN__>
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
   1400016a4:	48 8d 0d 55 59 00 00 	lea    rcx,[rip+0x5955]        # 140007000 <__EH_FRAME_BEGIN__>
   1400016ab:	ff d0                	call   rax
   1400016ad:	48 8b 0d 8c 89 00 00 	mov    rcx,QWORD PTR [rip+0x898c]        # 14000a040 <hmod_libgcc>
   1400016b4:	48 85 c9             	test   rcx,rcx
   1400016b7:	74 0f                	je     1400016c8 <__gcc_deregister_frame+0x38>
   1400016b9:	48 83 c4 20          	add    rsp,0x20
   1400016bd:	5d                   	pop    rbp
   1400016be:	48 ff 25 03 9c 00 00 	rex.W jmp QWORD PTR [rip+0x9c03]        # 14000b2c8 <__imp_FreeLibrary>
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
   1400016e2:	e8 59 1d 00 00       	call   140003440 <puts>
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
   140001711:	f2 0f 10 05 17 3b 00 	movsd  xmm0,QWORD PTR [rip+0x3b17]        # 140005230 <.rdata+0x1e0>
   140001718:	00 
   140001719:	66 48 0f 7e c0       	movq   rax,xmm0
   14000171e:	66 48 0f 6e c0       	movq   xmm0,rax
   140001723:	5d                   	pop    rbp
   140001724:	c3                   	ret

0000000140001725 <test5>:
   140001725:	55                   	push   rbp
   140001726:	48 89 e5             	mov    rbp,rsp
   140001729:	f3 0f 10 05 07 3b 00 	movss  xmm0,DWORD PTR [rip+0x3b07]        # 140005238 <.rdata+0x1e8>
   140001730:	00 
   140001731:	5d                   	pop    rbp
   140001732:	c3                   	ret

0000000140001733 <test6>:
   140001733:	55                   	push   rbp
   140001734:	48 89 e5             	mov    rbp,rsp
   140001737:	b8 61 00 00 00       	mov    eax,0x61
   14000173c:	5d                   	pop    rbp
   14000173d:	c3                   	ret

000000014000173e <test7>:
   14000173e:	55                   	push   rbp
   14000173f:	48 89 e5             	mov    rbp,rsp
   140001742:	b8 d2 02 96 49       	mov    eax,0x499602d2
   140001747:	5d                   	pop    rbp
   140001748:	c3                   	ret

0000000140001749 <test8>:
   140001749:	55                   	push   rbp
   14000174a:	48 89 e5             	mov    rbp,rsp
   14000174d:	b8 39 30 00 00       	mov    eax,0x3039
   140001752:	5d                   	pop    rbp
   140001753:	c3                   	ret

0000000140001754 <test9>:
   140001754:	55                   	push   rbp
   140001755:	48 89 e5             	mov    rbp,rsp
   140001758:	b8 39 30 00 00       	mov    eax,0x3039
   14000175d:	5d                   	pop    rbp
   14000175e:	c3                   	ret

000000014000175f <test10>:
   14000175f:	55                   	push   rbp
   140001760:	48 89 e5             	mov    rbp,rsp
   140001763:	b8 d2 02 96 49       	mov    eax,0x499602d2
   140001768:	5d                   	pop    rbp
   140001769:	c3                   	ret

000000014000176a <test11>:
   14000176a:	55                   	push   rbp
   14000176b:	48 89 e5             	mov    rbp,rsp
   14000176e:	b8 d2 02 96 49       	mov    eax,0x499602d2
   140001773:	5d                   	pop    rbp
   140001774:	c3                   	ret

0000000140001775 <test12>:
   140001775:	55                   	push   rbp
   140001776:	48 89 e5             	mov    rbp,rsp
   140001779:	b8 d2 02 96 49       	mov    eax,0x499602d2
   14000177e:	5d                   	pop    rbp
   14000177f:	c3                   	ret

0000000140001780 <test13>:
   140001780:	55                   	push   rbp
   140001781:	48 89 e5             	mov    rbp,rsp
   140001784:	48 ba 00 00 00 00 ff 	movabs rdx,0xffffffff00000000
   14000178b:	ff ff ff 
   14000178e:	48 21 d0             	and    rax,rdx
   140001791:	48 83 c8 0a          	or     rax,0xa
   140001795:	89 c2                	mov    edx,eax
   140001797:	48 b8 00 00 00 00 14 	movabs rax,0x1400000000
   14000179e:	00 00 00 
   1400017a1:	48 09 d0             	or     rax,rdx
   1400017a4:	5d                   	pop    rbp
   1400017a5:	c3                   	ret

00000001400017a6 <test14>:
   1400017a6:	55                   	push   rbp
   1400017a7:	48 89 e5             	mov    rbp,rsp
   1400017aa:	b8 ff 00 00 00       	mov    eax,0xff
   1400017af:	5d                   	pop    rbp
   1400017b0:	c3                   	ret

00000001400017b1 <test15>:
   1400017b1:	55                   	push   rbp
   1400017b2:	48 89 e5             	mov    rbp,rsp
   1400017b5:	48 83 ec 30          	sub    rsp,0x30
   1400017b9:	b9 04 00 00 00       	mov    ecx,0x4
   1400017be:	e8 55 1d 00 00       	call   140003518 <malloc>
   1400017c3:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   1400017c7:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400017cb:	c7 00 2a 00 00 00    	mov    DWORD PTR [rax],0x2a
   1400017d1:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400017d5:	48 83 c4 30          	add    rsp,0x30
   1400017d9:	5d                   	pop    rbp
   1400017da:	c3                   	ret

00000001400017db <main>:
   1400017db:	55                   	push   rbp
   1400017dc:	48 89 e5             	mov    rbp,rsp
   1400017df:	48 83 ec 40          	sub    rsp,0x40
   1400017e3:	e8 bf 02 00 00       	call   140001aa7 <__main>
   1400017e8:	48 8d 05 70 38 00 00 	lea    rax,[rip+0x3870]        # 14000505f <.rdata+0xf>
   1400017ef:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   1400017f3:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400017f7:	48 89 c2             	mov    rdx,rax
   1400017fa:	48 8d 05 67 38 00 00 	lea    rax,[rip+0x3867]        # 140005068 <.rdata+0x18>
   140001801:	48 89 c1             	mov    rcx,rax
   140001804:	e8 c7 18 00 00       	call   1400030d0 <printf>
   140001809:	e8 c2 fe ff ff       	call   1400016d0 <test>
   14000180e:	ba 02 00 00 00       	mov    edx,0x2
   140001813:	b9 01 00 00 00       	mov    ecx,0x1
   140001818:	e8 d1 fe ff ff       	call   1400016ee <test2>
   14000181d:	89 c2                	mov    edx,eax
   14000181f:	48 8d 05 45 38 00 00 	lea    rax,[rip+0x3845]        # 14000506b <.rdata+0x1b>
   140001826:	48 89 c1             	mov    rcx,rax
   140001829:	e8 a2 18 00 00       	call   1400030d0 <printf>
   14000182e:	e8 cf fe ff ff       	call   140001702 <test3>
   140001833:	84 c0                	test   al,al
   140001835:	74 09                	je     140001840 <main+0x65>
   140001837:	48 8d 05 40 38 00 00 	lea    rax,[rip+0x3840]        # 14000507e <.rdata+0x2e>
   14000183e:	eb 07                	jmp    140001847 <main+0x6c>
   140001840:	48 8d 05 3c 38 00 00 	lea    rax,[rip+0x383c]        # 140005083 <.rdata+0x33>
   140001847:	48 89 c2             	mov    rdx,rax
   14000184a:	48 8d 05 38 38 00 00 	lea    rax,[rip+0x3838]        # 140005089 <.rdata+0x39>
   140001851:	48 89 c1             	mov    rcx,rax
   140001854:	e8 77 18 00 00       	call   1400030d0 <printf>
   140001859:	e8 a4 fe ff ff       	call   140001702 <test3>
   14000185e:	0f b6 c0             	movzx  eax,al
   140001861:	89 c2                	mov    edx,eax
   140001863:	48 8d 05 33 38 00 00 	lea    rax,[rip+0x3833]        # 14000509d <.rdata+0x4d>
   14000186a:	48 89 c1             	mov    rcx,rax
   14000186d:	e8 5e 18 00 00       	call   1400030d0 <printf>
   140001872:	e8 96 fe ff ff       	call   14000170d <test4>
   140001877:	66 48 0f 7e c0       	movq   rax,xmm0
   14000187c:	48 89 c2             	mov    rdx,rax
   14000187f:	66 48 0f 6e c2       	movq   xmm0,rdx
   140001884:	66 0f 28 c8          	movapd xmm1,xmm0
   140001888:	48 89 c2             	mov    rdx,rax
   14000188b:	48 8d 05 25 38 00 00 	lea    rax,[rip+0x3825]        # 1400050b7 <.rdata+0x67>
   140001892:	48 89 c1             	mov    rcx,rax
   140001895:	e8 36 18 00 00       	call   1400030d0 <printf>
   14000189a:	e8 86 fe ff ff       	call   140001725 <test5>
   14000189f:	f3 0f 5a c0          	cvtss2sd xmm0,xmm0
   1400018a3:	66 48 0f 7e c0       	movq   rax,xmm0
   1400018a8:	48 89 c2             	mov    rdx,rax
   1400018ab:	66 48 0f 6e c2       	movq   xmm0,rdx
   1400018b0:	66 0f 28 c8          	movapd xmm1,xmm0
   1400018b4:	48 89 c2             	mov    rdx,rax
   1400018b7:	48 8d 05 12 38 00 00 	lea    rax,[rip+0x3812]        # 1400050d0 <.rdata+0x80>
   1400018be:	48 89 c1             	mov    rcx,rax
   1400018c1:	e8 0a 18 00 00       	call   1400030d0 <printf>
   1400018c6:	e8 68 fe ff ff       	call   140001733 <test6>
   1400018cb:	0f be c0             	movsx  eax,al
   1400018ce:	89 c2                	mov    edx,eax
   1400018d0:	48 8d 05 0e 38 00 00 	lea    rax,[rip+0x380e]        # 1400050e5 <.rdata+0x95>
   1400018d7:	48 89 c1             	mov    rcx,rax
   1400018da:	e8 f1 17 00 00       	call   1400030d0 <printf>
   1400018df:	e8 5a fe ff ff       	call   14000173e <test7>
   1400018e4:	89 c2                	mov    edx,eax
   1400018e6:	48 8d 05 0c 38 00 00 	lea    rax,[rip+0x380c]        # 1400050f9 <.rdata+0xa9>
   1400018ed:	48 89 c1             	mov    rcx,rax
   1400018f0:	e8 db 17 00 00       	call   1400030d0 <printf>
   1400018f5:	e8 4f fe ff ff       	call   140001749 <test8>
   1400018fa:	98                   	cwde
   1400018fb:	89 c2                	mov    edx,eax
   1400018fd:	48 8d 05 0a 38 00 00 	lea    rax,[rip+0x380a]        # 14000510e <.rdata+0xbe>
   140001904:	48 89 c1             	mov    rcx,rax
   140001907:	e8 c4 17 00 00       	call   1400030d0 <printf>
   14000190c:	e8 43 fe ff ff       	call   140001754 <test9>
   140001911:	0f b7 c0             	movzx  eax,ax
   140001914:	89 c2                	mov    edx,eax
   140001916:	48 8d 05 06 38 00 00 	lea    rax,[rip+0x3806]        # 140005123 <.rdata+0xd3>
   14000191d:	48 89 c1             	mov    rcx,rax
   140001920:	e8 ab 17 00 00       	call   1400030d0 <printf>
   140001925:	e8 35 fe ff ff       	call   14000175f <test10>
   14000192a:	89 c2                	mov    edx,eax
   14000192c:	48 8d 05 0e 38 00 00 	lea    rax,[rip+0x380e]        # 140005141 <.rdata+0xf1>
   140001933:	48 89 c1             	mov    rcx,rax
   140001936:	e8 95 17 00 00       	call   1400030d0 <printf>
   14000193b:	e8 2a fe ff ff       	call   14000176a <test11>
   140001940:	89 c2                	mov    edx,eax
   140001942:	48 8d 05 14 38 00 00 	lea    rax,[rip+0x3814]        # 14000515d <.rdata+0x10d>
   140001949:	48 89 c1             	mov    rcx,rax
   14000194c:	e8 7f 17 00 00       	call   1400030d0 <printf>
   140001951:	e8 1f fe ff ff       	call   140001775 <test12>
   140001956:	48 89 c2             	mov    rdx,rax
   140001959:	48 8d 05 1b 38 00 00 	lea    rax,[rip+0x381b]        # 14000517b <.rdata+0x12b>
   140001960:	48 89 c1             	mov    rcx,rax
   140001963:	e8 68 17 00 00       	call   1400030d0 <printf>
   140001968:	e8 13 fe ff ff       	call   140001780 <test13>
   14000196d:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
   140001971:	8b 55 ec             	mov    edx,DWORD PTR [rbp-0x14]
   140001974:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
   140001977:	41 89 d0             	mov    r8d,edx
   14000197a:	89 c2                	mov    edx,eax
   14000197c:	48 8d 05 15 38 00 00 	lea    rax,[rip+0x3815]        # 140005198 <.rdata+0x148>
   140001983:	48 89 c1             	mov    rcx,rax
   140001986:	e8 45 17 00 00       	call   1400030d0 <printf>
   14000198b:	e8 16 fe ff ff       	call   1400017a6 <test14>
   140001990:	89 c2                	mov    edx,eax
   140001992:	48 8d 05 27 38 00 00 	lea    rax,[rip+0x3827]        # 1400051c0 <.rdata+0x170>
   140001999:	48 89 c1             	mov    rcx,rax
   14000199c:	e8 2f 17 00 00       	call   1400030d0 <printf>
   1400019a1:	e8 0b fe ff ff       	call   1400017b1 <test15>
   1400019a6:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   1400019aa:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400019ae:	8b 00                	mov    eax,DWORD PTR [rax]
   1400019b0:	89 c2                	mov    edx,eax
   1400019b2:	48 8d 05 2f 38 00 00 	lea    rax,[rip+0x382f]        # 1400051e8 <.rdata+0x198>
   1400019b9:	48 89 c1             	mov    rcx,rax
   1400019bc:	e8 0f 17 00 00       	call   1400030d0 <printf>
   1400019c1:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400019c5:	48 89 c2             	mov    rdx,rax
   1400019c8:	48 8d 05 3e 38 00 00 	lea    rax,[rip+0x383e]        # 14000520d <.rdata+0x1bd>
   1400019cf:	48 89 c1             	mov    rcx,rax
   1400019d2:	e8 f9 16 00 00       	call   1400030d0 <printf>
   1400019d7:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400019db:	48 89 c1             	mov    rcx,rax
   1400019de:	e8 2d 1b 00 00       	call   140003510 <free>
   1400019e3:	b8 00 00 00 00       	mov    eax,0x0
   1400019e8:	48 83 c4 40          	add    rsp,0x40
   1400019ec:	5d                   	pop    rbp
   1400019ed:	c3                   	ret
   1400019ee:	90                   	nop
   1400019ef:	90                   	nop

00000001400019f0 <__do_global_dtors>:
   1400019f0:	55                   	push   rbp
   1400019f1:	48 89 e5             	mov    rbp,rsp
   1400019f4:	48 83 ec 20          	sub    rsp,0x20
   1400019f8:	eb 1e                	jmp    140001a18 <__do_global_dtors+0x28>
   1400019fa:	48 8b 05 0f 26 00 00 	mov    rax,QWORD PTR [rip+0x260f]        # 140004010 <p.0>
   140001a01:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140001a04:	ff d0                	call   rax
   140001a06:	48 8b 05 03 26 00 00 	mov    rax,QWORD PTR [rip+0x2603]        # 140004010 <p.0>
   140001a0d:	48 83 c0 08          	add    rax,0x8
   140001a11:	48 89 05 f8 25 00 00 	mov    QWORD PTR [rip+0x25f8],rax        # 140004010 <p.0>
   140001a18:	48 8b 05 f1 25 00 00 	mov    rax,QWORD PTR [rip+0x25f1]        # 140004010 <p.0>
   140001a1f:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140001a22:	48 85 c0             	test   rax,rax
   140001a25:	75 d3                	jne    1400019fa <__do_global_dtors+0xa>
   140001a27:	90                   	nop
   140001a28:	90                   	nop
   140001a29:	48 83 c4 20          	add    rsp,0x20
   140001a2d:	5d                   	pop    rbp
   140001a2e:	c3                   	ret

0000000140001a2f <__do_global_ctors>:
   140001a2f:	55                   	push   rbp
   140001a30:	48 89 e5             	mov    rbp,rsp
   140001a33:	48 83 ec 30          	sub    rsp,0x30
   140001a37:	48 8b 05 52 3b 00 00 	mov    rax,QWORD PTR [rip+0x3b52]        # 140005590 <.refptr.__CTOR_LIST__>
   140001a3e:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140001a41:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   140001a44:	83 7d fc ff          	cmp    DWORD PTR [rbp-0x4],0xffffffff
   140001a48:	75 25                	jne    140001a6f <__do_global_ctors+0x40>
   140001a4a:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
   140001a51:	eb 04                	jmp    140001a57 <__do_global_ctors+0x28>
   140001a53:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
   140001a57:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001a5a:	8d 50 01             	lea    edx,[rax+0x1]
   140001a5d:	48 8b 05 2c 3b 00 00 	mov    rax,QWORD PTR [rip+0x3b2c]        # 140005590 <.refptr.__CTOR_LIST__>
   140001a64:	89 d2                	mov    edx,edx
   140001a66:	48 8b 04 d0          	mov    rax,QWORD PTR [rax+rdx*8]
   140001a6a:	48 85 c0             	test   rax,rax
   140001a6d:	75 e4                	jne    140001a53 <__do_global_ctors+0x24>
   140001a6f:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001a72:	89 45 f8             	mov    DWORD PTR [rbp-0x8],eax
   140001a75:	eb 14                	jmp    140001a8b <__do_global_ctors+0x5c>
   140001a77:	48 8b 05 12 3b 00 00 	mov    rax,QWORD PTR [rip+0x3b12]        # 140005590 <.refptr.__CTOR_LIST__>
   140001a7e:	8b 55 f8             	mov    edx,DWORD PTR [rbp-0x8]
   140001a81:	48 8b 04 d0          	mov    rax,QWORD PTR [rax+rdx*8]
   140001a85:	ff d0                	call   rax
   140001a87:	83 6d f8 01          	sub    DWORD PTR [rbp-0x8],0x1
   140001a8b:	83 7d f8 00          	cmp    DWORD PTR [rbp-0x8],0x0
   140001a8f:	75 e6                	jne    140001a77 <__do_global_ctors+0x48>
   140001a91:	48 8d 05 58 ff ff ff 	lea    rax,[rip+0xffffffffffffff58]        # 1400019f0 <__do_global_dtors>
   140001a98:	48 89 c1             	mov    rcx,rax
   140001a9b:	e8 e3 fa ff ff       	call   140001583 <atexit>
   140001aa0:	90                   	nop
   140001aa1:	48 83 c4 30          	add    rsp,0x30
   140001aa5:	5d                   	pop    rbp
   140001aa6:	c3                   	ret

0000000140001aa7 <__main>:
   140001aa7:	55                   	push   rbp
   140001aa8:	48 89 e5             	mov    rbp,rsp
   140001aab:	48 83 ec 20          	sub    rsp,0x20
   140001aaf:	8b 05 eb 85 00 00    	mov    eax,DWORD PTR [rip+0x85eb]        # 14000a0a0 <initialized>
   140001ab5:	85 c0                	test   eax,eax
   140001ab7:	75 0f                	jne    140001ac8 <__main+0x21>
   140001ab9:	c7 05 dd 85 00 00 01 	mov    DWORD PTR [rip+0x85dd],0x1        # 14000a0a0 <initialized>
   140001ac0:	00 00 00 
   140001ac3:	e8 67 ff ff ff       	call   140001a2f <__do_global_ctors>
   140001ac8:	90                   	nop
   140001ac9:	48 83 c4 20          	add    rsp,0x20
   140001acd:	5d                   	pop    rbp
   140001ace:	c3                   	ret
   140001acf:	90                   	nop

0000000140001ad0 <_setargv>:
   140001ad0:	55                   	push   rbp
   140001ad1:	48 89 e5             	mov    rbp,rsp
   140001ad4:	b8 00 00 00 00       	mov    eax,0x0
   140001ad9:	5d                   	pop    rbp
   140001ada:	c3                   	ret
   140001adb:	90                   	nop
   140001adc:	90                   	nop
   140001add:	90                   	nop
   140001ade:	90                   	nop
   140001adf:	90                   	nop

0000000140001ae0 <__dyn_tls_init>:
   140001ae0:	55                   	push   rbp
   140001ae1:	48 89 e5             	mov    rbp,rsp
   140001ae4:	48 83 ec 30          	sub    rsp,0x30
   140001ae8:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140001aec:	89 55 18             	mov    DWORD PTR [rbp+0x18],edx
   140001aef:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   140001af3:	48 8b 05 76 3a 00 00 	mov    rax,QWORD PTR [rip+0x3a76]        # 140005570 <.refptr._CRT_MT>
   140001afa:	8b 00                	mov    eax,DWORD PTR [rax]
   140001afc:	83 f8 02             	cmp    eax,0x2
   140001aff:	74 0d                	je     140001b0e <__dyn_tls_init+0x2e>
   140001b01:	48 8b 05 68 3a 00 00 	mov    rax,QWORD PTR [rip+0x3a68]        # 140005570 <.refptr._CRT_MT>
   140001b08:	c7 00 02 00 00 00    	mov    DWORD PTR [rax],0x2
   140001b0e:	83 7d 18 02          	cmp    DWORD PTR [rbp+0x18],0x2
   140001b12:	74 23                	je     140001b37 <__dyn_tls_init+0x57>
   140001b14:	83 7d 18 01          	cmp    DWORD PTR [rbp+0x18],0x1
   140001b18:	75 16                	jne    140001b30 <__dyn_tls_init+0x50>
   140001b1a:	48 8b 4d 20          	mov    rcx,QWORD PTR [rbp+0x20]
   140001b1e:	8b 55 18             	mov    edx,DWORD PTR [rbp+0x18]
   140001b21:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140001b25:	49 89 c8             	mov    r8,rcx
   140001b28:	48 89 c1             	mov    rcx,rax
   140001b2b:	e8 61 0f 00 00       	call   140002a91 <__mingw_TLScallback>
   140001b30:	b8 01 00 00 00       	mov    eax,0x1
   140001b35:	eb 46                	jmp    140001b7d <__dyn_tls_init+0x9d>
   140001b37:	48 8d 05 12 a5 00 00 	lea    rax,[rip+0xa512]        # 14000c050 <___crt_xp_end__>
   140001b3e:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140001b42:	48 83 45 f8 08       	add    QWORD PTR [rbp-0x8],0x8
   140001b47:	eb 22                	jmp    140001b6b <__dyn_tls_init+0x8b>
   140001b49:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140001b4d:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140001b51:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140001b55:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140001b58:	48 85 c0             	test   rax,rax
   140001b5b:	74 09                	je     140001b66 <__dyn_tls_init+0x86>
   140001b5d:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140001b61:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140001b64:	ff d0                	call   rax
   140001b66:	48 83 45 f8 08       	add    QWORD PTR [rbp-0x8],0x8
   140001b6b:	48 8d 05 e6 a4 00 00 	lea    rax,[rip+0xa4e6]        # 14000c058 <__xd_z>
   140001b72:	48 39 45 f8          	cmp    QWORD PTR [rbp-0x8],rax
   140001b76:	75 d1                	jne    140001b49 <__dyn_tls_init+0x69>
   140001b78:	b8 01 00 00 00       	mov    eax,0x1
   140001b7d:	48 83 c4 30          	add    rsp,0x30
   140001b81:	5d                   	pop    rbp
   140001b82:	c3                   	ret

0000000140001b83 <__tlregdtor>:
   140001b83:	55                   	push   rbp
   140001b84:	48 89 e5             	mov    rbp,rsp
   140001b87:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140001b8b:	48 83 7d 10 00       	cmp    QWORD PTR [rbp+0x10],0x0
   140001b90:	75 07                	jne    140001b99 <__tlregdtor+0x16>
   140001b92:	b8 00 00 00 00       	mov    eax,0x0
   140001b97:	eb 05                	jmp    140001b9e <__tlregdtor+0x1b>
   140001b99:	b8 00 00 00 00       	mov    eax,0x0
   140001b9e:	5d                   	pop    rbp
   140001b9f:	c3                   	ret

0000000140001ba0 <__dyn_tls_dtor>:
   140001ba0:	55                   	push   rbp
   140001ba1:	48 89 e5             	mov    rbp,rsp
   140001ba4:	48 83 ec 20          	sub    rsp,0x20
   140001ba8:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140001bac:	89 55 18             	mov    DWORD PTR [rbp+0x18],edx
   140001baf:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   140001bb3:	83 7d 18 03          	cmp    DWORD PTR [rbp+0x18],0x3
   140001bb7:	74 0d                	je     140001bc6 <__dyn_tls_dtor+0x26>
   140001bb9:	83 7d 18 00          	cmp    DWORD PTR [rbp+0x18],0x0
   140001bbd:	74 07                	je     140001bc6 <__dyn_tls_dtor+0x26>
   140001bbf:	b8 01 00 00 00       	mov    eax,0x1
   140001bc4:	eb 1b                	jmp    140001be1 <__dyn_tls_dtor+0x41>
   140001bc6:	48 8b 4d 20          	mov    rcx,QWORD PTR [rbp+0x20]
   140001bca:	8b 55 18             	mov    edx,DWORD PTR [rbp+0x18]
   140001bcd:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140001bd1:	49 89 c8             	mov    r8,rcx
   140001bd4:	48 89 c1             	mov    rcx,rax
   140001bd7:	e8 b5 0e 00 00       	call   140002a91 <__mingw_TLScallback>
   140001bdc:	b8 01 00 00 00       	mov    eax,0x1
   140001be1:	48 83 c4 20          	add    rsp,0x20
   140001be5:	5d                   	pop    rbp
   140001be6:	c3                   	ret
   140001be7:	90                   	nop
   140001be8:	90                   	nop
   140001be9:	90                   	nop
   140001bea:	90                   	nop
   140001beb:	90                   	nop
   140001bec:	90                   	nop
   140001bed:	90                   	nop
   140001bee:	90                   	nop
   140001bef:	90                   	nop

0000000140001bf0 <_matherr>:
   140001bf0:	55                   	push   rbp
   140001bf1:	53                   	push   rbx
   140001bf2:	48 81 ec 88 00 00 00 	sub    rsp,0x88
   140001bf9:	48 8d 6c 24 50       	lea    rbp,[rsp+0x50]
   140001bfe:	0f 29 75 00          	movaps XMMWORD PTR [rbp+0x0],xmm6
   140001c02:	0f 29 7d 10          	movaps XMMWORD PTR [rbp+0x10],xmm7
   140001c06:	44 0f 29 45 20       	movaps XMMWORD PTR [rbp+0x20],xmm8
   140001c0b:	48 89 4d 50          	mov    QWORD PTR [rbp+0x50],rcx
   140001c0f:	48 8b 45 50          	mov    rax,QWORD PTR [rbp+0x50]
   140001c13:	8b 00                	mov    eax,DWORD PTR [rax]
   140001c15:	83 f8 06             	cmp    eax,0x6
   140001c18:	77 70                	ja     140001c8a <_matherr+0x9a>
   140001c1a:	89 c0                	mov    eax,eax
   140001c1c:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
   140001c23:	00 
   140001c24:	48 8d 05 79 37 00 00 	lea    rax,[rip+0x3779]        # 1400053a4 <.rdata+0x124>
   140001c2b:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
   140001c2e:	48 98                	cdqe
   140001c30:	48 8d 15 6d 37 00 00 	lea    rdx,[rip+0x376d]        # 1400053a4 <.rdata+0x124>
   140001c37:	48 01 d0             	add    rax,rdx
   140001c3a:	ff e0                	jmp    rax
   140001c3c:	48 8d 05 3d 36 00 00 	lea    rax,[rip+0x363d]        # 140005280 <.rdata>
   140001c43:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140001c47:	eb 4d                	jmp    140001c96 <_matherr+0xa6>
   140001c49:	48 8d 05 4f 36 00 00 	lea    rax,[rip+0x364f]        # 14000529f <.rdata+0x1f>
   140001c50:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140001c54:	eb 40                	jmp    140001c96 <_matherr+0xa6>
   140001c56:	48 8d 05 63 36 00 00 	lea    rax,[rip+0x3663]        # 1400052c0 <.rdata+0x40>
   140001c5d:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140001c61:	eb 33                	jmp    140001c96 <_matherr+0xa6>
   140001c63:	48 8d 05 76 36 00 00 	lea    rax,[rip+0x3676]        # 1400052e0 <.rdata+0x60>
   140001c6a:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140001c6e:	eb 26                	jmp    140001c96 <_matherr+0xa6>
   140001c70:	48 8d 05 91 36 00 00 	lea    rax,[rip+0x3691]        # 140005308 <.rdata+0x88>
   140001c77:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140001c7b:	eb 19                	jmp    140001c96 <_matherr+0xa6>
   140001c7d:	48 8d 05 ac 36 00 00 	lea    rax,[rip+0x36ac]        # 140005330 <.rdata+0xb0>
   140001c84:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140001c88:	eb 0c                	jmp    140001c96 <_matherr+0xa6>
   140001c8a:	48 8d 05 d5 36 00 00 	lea    rax,[rip+0x36d5]        # 140005366 <.rdata+0xe6>
   140001c91:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140001c95:	90                   	nop
   140001c96:	48 8b 45 50          	mov    rax,QWORD PTR [rbp+0x50]
   140001c9a:	f2 44 0f 10 40 20    	movsd  xmm8,QWORD PTR [rax+0x20]
   140001ca0:	48 8b 45 50          	mov    rax,QWORD PTR [rbp+0x50]
   140001ca4:	f2 0f 10 78 18       	movsd  xmm7,QWORD PTR [rax+0x18]
   140001ca9:	48 8b 45 50          	mov    rax,QWORD PTR [rbp+0x50]
   140001cad:	f2 0f 10 70 10       	movsd  xmm6,QWORD PTR [rax+0x10]
   140001cb2:	48 8b 45 50          	mov    rax,QWORD PTR [rbp+0x50]
   140001cb6:	48 8b 58 08          	mov    rbx,QWORD PTR [rax+0x8]
   140001cba:	b9 02 00 00 00       	mov    ecx,0x2
   140001cbf:	e8 4c 17 00 00       	call   140003410 <__acrt_iob_func>
   140001cc4:	48 89 c1             	mov    rcx,rax
   140001cc7:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140001ccb:	f2 44 0f 11 44 24 30 	movsd  QWORD PTR [rsp+0x30],xmm8
   140001cd2:	f2 0f 11 7c 24 28    	movsd  QWORD PTR [rsp+0x28],xmm7
   140001cd8:	f2 0f 11 74 24 20    	movsd  QWORD PTR [rsp+0x20],xmm6
   140001cde:	49 89 d9             	mov    r9,rbx
   140001ce1:	49 89 c0             	mov    r8,rax
   140001ce4:	48 8d 05 8d 36 00 00 	lea    rax,[rip+0x368d]        # 140005378 <.rdata+0xf8>
   140001ceb:	48 89 c2             	mov    rdx,rax
   140001cee:	e8 3d 14 00 00       	call   140003130 <fprintf>
   140001cf3:	b8 00 00 00 00       	mov    eax,0x0
   140001cf8:	0f 28 75 00          	movaps xmm6,XMMWORD PTR [rbp+0x0]
   140001cfc:	0f 28 7d 10          	movaps xmm7,XMMWORD PTR [rbp+0x10]
   140001d00:	44 0f 28 45 20       	movaps xmm8,XMMWORD PTR [rbp+0x20]
   140001d05:	48 81 c4 88 00 00 00 	add    rsp,0x88
   140001d0c:	5b                   	pop    rbx
   140001d0d:	5d                   	pop    rbp
   140001d0e:	c3                   	ret
   140001d0f:	90                   	nop

0000000140001d10 <_fpreset>:
   140001d10:	55                   	push   rbp
   140001d11:	48 89 e5             	mov    rbp,rsp
   140001d14:	db e3                	fninit
   140001d16:	90                   	nop
   140001d17:	5d                   	pop    rbp
   140001d18:	c3                   	ret
   140001d19:	90                   	nop
   140001d1a:	90                   	nop
   140001d1b:	90                   	nop
   140001d1c:	90                   	nop
   140001d1d:	90                   	nop
   140001d1e:	90                   	nop
   140001d1f:	90                   	nop

0000000140001d20 <__report_error>:
   140001d20:	55                   	push   rbp
   140001d21:	53                   	push   rbx
   140001d22:	48 83 ec 38          	sub    rsp,0x38
   140001d26:	48 8d 6c 24 30       	lea    rbp,[rsp+0x30]
   140001d2b:	48 89 4d 20          	mov    QWORD PTR [rbp+0x20],rcx
   140001d2f:	48 89 55 28          	mov    QWORD PTR [rbp+0x28],rdx
   140001d33:	4c 89 45 30          	mov    QWORD PTR [rbp+0x30],r8
   140001d37:	4c 89 4d 38          	mov    QWORD PTR [rbp+0x38],r9
   140001d3b:	48 8d 45 28          	lea    rax,[rbp+0x28]
   140001d3f:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140001d43:	b9 02 00 00 00       	mov    ecx,0x2
   140001d48:	e8 c3 16 00 00       	call   140003410 <__acrt_iob_func>
   140001d4d:	49 89 c1             	mov    r9,rax
   140001d50:	41 b8 1b 00 00 00    	mov    r8d,0x1b
   140001d56:	ba 01 00 00 00       	mov    edx,0x1
   140001d5b:	48 8d 05 5e 36 00 00 	lea    rax,[rip+0x365e]        # 1400053c0 <.rdata>
   140001d62:	48 89 c1             	mov    rcx,rax
   140001d65:	e8 ce 16 00 00       	call   140003438 <fwrite>
   140001d6a:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
   140001d6e:	b9 02 00 00 00       	mov    ecx,0x2
   140001d73:	e8 98 16 00 00       	call   140003410 <__acrt_iob_func>
   140001d78:	48 89 c1             	mov    rcx,rax
   140001d7b:	48 8b 45 20          	mov    rax,QWORD PTR [rbp+0x20]
   140001d7f:	49 89 d8             	mov    r8,rbx
   140001d82:	48 89 c2             	mov    rdx,rax
   140001d85:	e8 f6 12 00 00       	call   140003080 <vfprintf>
   140001d8a:	e8 31 17 00 00       	call   1400034c0 <abort>
   140001d8f:	90                   	nop

0000000140001d90 <mark_section_writable>:
   140001d90:	55                   	push   rbp
   140001d91:	48 89 e5             	mov    rbp,rsp
   140001d94:	48 83 ec 60          	sub    rsp,0x60
   140001d98:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140001d9c:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
   140001da3:	e9 82 00 00 00       	jmp    140001e2a <mark_section_writable+0x9a>
   140001da8:	48 8b 0d 41 83 00 00 	mov    rcx,QWORD PTR [rip+0x8341]        # 14000a0f0 <the_secs>
   140001daf:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001db2:	48 63 d0             	movsxd rdx,eax
   140001db5:	48 89 d0             	mov    rax,rdx
   140001db8:	48 c1 e0 02          	shl    rax,0x2
   140001dbc:	48 01 d0             	add    rax,rdx
   140001dbf:	48 c1 e0 03          	shl    rax,0x3
   140001dc3:	48 01 c8             	add    rax,rcx
   140001dc6:	48 8b 40 18          	mov    rax,QWORD PTR [rax+0x18]
   140001dca:	48 39 45 10          	cmp    QWORD PTR [rbp+0x10],rax
   140001dce:	72 56                	jb     140001e26 <mark_section_writable+0x96>
   140001dd0:	48 8b 0d 19 83 00 00 	mov    rcx,QWORD PTR [rip+0x8319]        # 14000a0f0 <the_secs>
   140001dd7:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001dda:	48 63 d0             	movsxd rdx,eax
   140001ddd:	48 89 d0             	mov    rax,rdx
   140001de0:	48 c1 e0 02          	shl    rax,0x2
   140001de4:	48 01 d0             	add    rax,rdx
   140001de7:	48 c1 e0 03          	shl    rax,0x3
   140001deb:	48 01 c8             	add    rax,rcx
   140001dee:	48 8b 48 18          	mov    rcx,QWORD PTR [rax+0x18]
   140001df2:	4c 8b 05 f7 82 00 00 	mov    r8,QWORD PTR [rip+0x82f7]        # 14000a0f0 <the_secs>
   140001df9:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001dfc:	48 63 d0             	movsxd rdx,eax
   140001dff:	48 89 d0             	mov    rax,rdx
   140001e02:	48 c1 e0 02          	shl    rax,0x2
   140001e06:	48 01 d0             	add    rax,rdx
   140001e09:	48 c1 e0 03          	shl    rax,0x3
   140001e0d:	4c 01 c0             	add    rax,r8
   140001e10:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
   140001e14:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   140001e17:	89 c0                	mov    eax,eax
   140001e19:	48 01 c8             	add    rax,rcx
   140001e1c:	48 39 45 10          	cmp    QWORD PTR [rbp+0x10],rax
   140001e20:	0f 82 42 02 00 00    	jb     140002068 <mark_section_writable+0x2d8>
   140001e26:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
   140001e2a:	8b 05 c8 82 00 00    	mov    eax,DWORD PTR [rip+0x82c8]        # 14000a0f8 <maxSections>
   140001e30:	39 45 fc             	cmp    DWORD PTR [rbp-0x4],eax
   140001e33:	0f 8c 6f ff ff ff    	jl     140001da8 <mark_section_writable+0x18>
   140001e39:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140001e3d:	48 89 c1             	mov    rcx,rax
   140001e40:	e8 26 0f 00 00       	call   140002d6b <__mingw_GetSectionForAddress>
   140001e45:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140001e49:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
   140001e4e:	75 16                	jne    140001e66 <mark_section_writable+0xd6>
   140001e50:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140001e54:	48 89 c2             	mov    rdx,rax
   140001e57:	48 8d 05 82 35 00 00 	lea    rax,[rip+0x3582]        # 1400053e0 <.rdata+0x20>
   140001e5e:	48 89 c1             	mov    rcx,rax
   140001e61:	e8 ba fe ff ff       	call   140001d20 <__report_error>
   140001e66:	48 8b 0d 83 82 00 00 	mov    rcx,QWORD PTR [rip+0x8283]        # 14000a0f0 <the_secs>
   140001e6d:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001e70:	48 63 d0             	movsxd rdx,eax
   140001e73:	48 89 d0             	mov    rax,rdx
   140001e76:	48 c1 e0 02          	shl    rax,0x2
   140001e7a:	48 01 d0             	add    rax,rdx
   140001e7d:	48 c1 e0 03          	shl    rax,0x3
   140001e81:	48 8d 14 01          	lea    rdx,[rcx+rax*1]
   140001e85:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140001e89:	48 89 42 20          	mov    QWORD PTR [rdx+0x20],rax
   140001e8d:	48 8b 0d 5c 82 00 00 	mov    rcx,QWORD PTR [rip+0x825c]        # 14000a0f0 <the_secs>
   140001e94:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001e97:	48 63 d0             	movsxd rdx,eax
   140001e9a:	48 89 d0             	mov    rax,rdx
   140001e9d:	48 c1 e0 02          	shl    rax,0x2
   140001ea1:	48 01 d0             	add    rax,rdx
   140001ea4:	48 c1 e0 03          	shl    rax,0x3
   140001ea8:	48 01 c8             	add    rax,rcx
   140001eab:	c7 00 00 00 00 00    	mov    DWORD PTR [rax],0x0
   140001eb1:	e8 01 10 00 00       	call   140002eb7 <_GetPEImageBase>
   140001eb6:	48 89 c1             	mov    rcx,rax
   140001eb9:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140001ebd:	8b 40 0c             	mov    eax,DWORD PTR [rax+0xc]
   140001ec0:	41 89 c1             	mov    r9d,eax
   140001ec3:	4c 8b 05 26 82 00 00 	mov    r8,QWORD PTR [rip+0x8226]        # 14000a0f0 <the_secs>
   140001eca:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001ecd:	48 63 d0             	movsxd rdx,eax
   140001ed0:	48 89 d0             	mov    rax,rdx
   140001ed3:	48 c1 e0 02          	shl    rax,0x2
   140001ed7:	48 01 d0             	add    rax,rdx
   140001eda:	48 c1 e0 03          	shl    rax,0x3
   140001ede:	4c 01 c0             	add    rax,r8
   140001ee1:	4a 8d 14 09          	lea    rdx,[rcx+r9*1]
   140001ee5:	48 89 50 18          	mov    QWORD PTR [rax+0x18],rdx
   140001ee9:	48 8b 0d 00 82 00 00 	mov    rcx,QWORD PTR [rip+0x8200]        # 14000a0f0 <the_secs>
   140001ef0:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001ef3:	48 63 d0             	movsxd rdx,eax
   140001ef6:	48 89 d0             	mov    rax,rdx
   140001ef9:	48 c1 e0 02          	shl    rax,0x2
   140001efd:	48 01 d0             	add    rax,rdx
   140001f00:	48 c1 e0 03          	shl    rax,0x3
   140001f04:	48 01 c8             	add    rax,rcx
   140001f07:	48 8b 40 18          	mov    rax,QWORD PTR [rax+0x18]
   140001f0b:	48 8d 55 c0          	lea    rdx,[rbp-0x40]
   140001f0f:	41 b8 30 00 00 00    	mov    r8d,0x30
   140001f15:	48 89 c1             	mov    rcx,rax
   140001f18:	48 8b 05 01 94 00 00 	mov    rax,QWORD PTR [rip+0x9401]        # 14000b320 <__imp_VirtualQuery>
   140001f1f:	ff d0                	call   rax
   140001f21:	48 85 c0             	test   rax,rax
   140001f24:	75 3d                	jne    140001f63 <mark_section_writable+0x1d3>
   140001f26:	48 8b 0d c3 81 00 00 	mov    rcx,QWORD PTR [rip+0x81c3]        # 14000a0f0 <the_secs>
   140001f2d:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001f30:	48 63 d0             	movsxd rdx,eax
   140001f33:	48 89 d0             	mov    rax,rdx
   140001f36:	48 c1 e0 02          	shl    rax,0x2
   140001f3a:	48 01 d0             	add    rax,rdx
   140001f3d:	48 c1 e0 03          	shl    rax,0x3
   140001f41:	48 01 c8             	add    rax,rcx
   140001f44:	48 8b 50 18          	mov    rdx,QWORD PTR [rax+0x18]
   140001f48:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140001f4c:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   140001f4f:	49 89 d0             	mov    r8,rdx
   140001f52:	89 c2                	mov    edx,eax
   140001f54:	48 8d 05 a5 34 00 00 	lea    rax,[rip+0x34a5]        # 140005400 <.rdata+0x40>
   140001f5b:	48 89 c1             	mov    rcx,rax
   140001f5e:	e8 bd fd ff ff       	call   140001d20 <__report_error>
   140001f63:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
   140001f66:	83 f8 40             	cmp    eax,0x40
   140001f69:	0f 84 e8 00 00 00    	je     140002057 <mark_section_writable+0x2c7>
   140001f6f:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
   140001f72:	83 f8 04             	cmp    eax,0x4
   140001f75:	0f 84 dc 00 00 00    	je     140002057 <mark_section_writable+0x2c7>
   140001f7b:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
   140001f7e:	3d 80 00 00 00       	cmp    eax,0x80
   140001f83:	0f 84 ce 00 00 00    	je     140002057 <mark_section_writable+0x2c7>
   140001f89:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
   140001f8c:	83 f8 08             	cmp    eax,0x8
   140001f8f:	0f 84 c2 00 00 00    	je     140002057 <mark_section_writable+0x2c7>
   140001f95:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
   140001f98:	83 f8 02             	cmp    eax,0x2
   140001f9b:	75 09                	jne    140001fa6 <mark_section_writable+0x216>
   140001f9d:	c7 45 f8 04 00 00 00 	mov    DWORD PTR [rbp-0x8],0x4
   140001fa4:	eb 07                	jmp    140001fad <mark_section_writable+0x21d>
   140001fa6:	c7 45 f8 40 00 00 00 	mov    DWORD PTR [rbp-0x8],0x40
   140001fad:	48 8b 0d 3c 81 00 00 	mov    rcx,QWORD PTR [rip+0x813c]        # 14000a0f0 <the_secs>
   140001fb4:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001fb7:	48 63 d0             	movsxd rdx,eax
   140001fba:	48 89 d0             	mov    rax,rdx
   140001fbd:	48 c1 e0 02          	shl    rax,0x2
   140001fc1:	48 01 d0             	add    rax,rdx
   140001fc4:	48 c1 e0 03          	shl    rax,0x3
   140001fc8:	48 8d 14 01          	lea    rdx,[rcx+rax*1]
   140001fcc:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
   140001fd0:	48 89 42 08          	mov    QWORD PTR [rdx+0x8],rax
   140001fd4:	48 8b 0d 15 81 00 00 	mov    rcx,QWORD PTR [rip+0x8115]        # 14000a0f0 <the_secs>
   140001fdb:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001fde:	48 63 d0             	movsxd rdx,eax
   140001fe1:	48 89 d0             	mov    rax,rdx
   140001fe4:	48 c1 e0 02          	shl    rax,0x2
   140001fe8:	48 01 d0             	add    rax,rdx
   140001feb:	48 c1 e0 03          	shl    rax,0x3
   140001fef:	48 8d 14 01          	lea    rdx,[rcx+rax*1]
   140001ff3:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
   140001ff7:	48 89 42 10          	mov    QWORD PTR [rdx+0x10],rax
   140001ffb:	48 8b 0d ee 80 00 00 	mov    rcx,QWORD PTR [rip+0x80ee]        # 14000a0f0 <the_secs>
   140002002:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140002005:	48 63 d0             	movsxd rdx,eax
   140002008:	48 89 d0             	mov    rax,rdx
   14000200b:	48 c1 e0 02          	shl    rax,0x2
   14000200f:	48 01 d0             	add    rax,rdx
   140002012:	48 c1 e0 03          	shl    rax,0x3
   140002016:	48 01 c8             	add    rax,rcx
   140002019:	49 89 c0             	mov    r8,rax
   14000201c:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
   140002020:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
   140002024:	8b 4d f8             	mov    ecx,DWORD PTR [rbp-0x8]
   140002027:	4d 89 c1             	mov    r9,r8
   14000202a:	41 89 c8             	mov    r8d,ecx
   14000202d:	48 89 c1             	mov    rcx,rax
   140002030:	48 8b 05 e1 92 00 00 	mov    rax,QWORD PTR [rip+0x92e1]        # 14000b318 <__imp_VirtualProtect>
   140002037:	ff d0                	call   rax
   140002039:	85 c0                	test   eax,eax
   14000203b:	75 1a                	jne    140002057 <mark_section_writable+0x2c7>
   14000203d:	48 8b 05 8c 92 00 00 	mov    rax,QWORD PTR [rip+0x928c]        # 14000b2d0 <__imp_GetLastError>
   140002044:	ff d0                	call   rax
   140002046:	89 c2                	mov    edx,eax
   140002048:	48 8d 05 e9 33 00 00 	lea    rax,[rip+0x33e9]        # 140005438 <.rdata+0x78>
   14000204f:	48 89 c1             	mov    rcx,rax
   140002052:	e8 c9 fc ff ff       	call   140001d20 <__report_error>
   140002057:	8b 05 9b 80 00 00    	mov    eax,DWORD PTR [rip+0x809b]        # 14000a0f8 <maxSections>
   14000205d:	83 c0 01             	add    eax,0x1
   140002060:	89 05 92 80 00 00    	mov    DWORD PTR [rip+0x8092],eax        # 14000a0f8 <maxSections>
   140002066:	eb 01                	jmp    140002069 <mark_section_writable+0x2d9>
   140002068:	90                   	nop
   140002069:	48 83 c4 60          	add    rsp,0x60
   14000206d:	5d                   	pop    rbp
   14000206e:	c3                   	ret

000000014000206f <restore_modified_sections>:
   14000206f:	55                   	push   rbp
   140002070:	48 89 e5             	mov    rbp,rsp
   140002073:	48 83 ec 30          	sub    rsp,0x30
   140002077:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
   14000207e:	e9 ad 00 00 00       	jmp    140002130 <restore_modified_sections+0xc1>
   140002083:	48 8b 0d 66 80 00 00 	mov    rcx,QWORD PTR [rip+0x8066]        # 14000a0f0 <the_secs>
   14000208a:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   14000208d:	48 63 d0             	movsxd rdx,eax
   140002090:	48 89 d0             	mov    rax,rdx
   140002093:	48 c1 e0 02          	shl    rax,0x2
   140002097:	48 01 d0             	add    rax,rdx
   14000209a:	48 c1 e0 03          	shl    rax,0x3
   14000209e:	48 01 c8             	add    rax,rcx
   1400020a1:	8b 00                	mov    eax,DWORD PTR [rax]
   1400020a3:	85 c0                	test   eax,eax
   1400020a5:	0f 84 80 00 00 00    	je     14000212b <restore_modified_sections+0xbc>
   1400020ab:	48 8b 0d 3e 80 00 00 	mov    rcx,QWORD PTR [rip+0x803e]        # 14000a0f0 <the_secs>
   1400020b2:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   1400020b5:	48 63 d0             	movsxd rdx,eax
   1400020b8:	48 89 d0             	mov    rax,rdx
   1400020bb:	48 c1 e0 02          	shl    rax,0x2
   1400020bf:	48 01 d0             	add    rax,rdx
   1400020c2:	48 c1 e0 03          	shl    rax,0x3
   1400020c6:	48 01 c8             	add    rax,rcx
   1400020c9:	44 8b 10             	mov    r10d,DWORD PTR [rax]
   1400020cc:	48 8b 0d 1d 80 00 00 	mov    rcx,QWORD PTR [rip+0x801d]        # 14000a0f0 <the_secs>
   1400020d3:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   1400020d6:	48 63 d0             	movsxd rdx,eax
   1400020d9:	48 89 d0             	mov    rax,rdx
   1400020dc:	48 c1 e0 02          	shl    rax,0x2
   1400020e0:	48 01 d0             	add    rax,rdx
   1400020e3:	48 c1 e0 03          	shl    rax,0x3
   1400020e7:	48 01 c8             	add    rax,rcx
   1400020ea:	48 8b 48 10          	mov    rcx,QWORD PTR [rax+0x10]
   1400020ee:	4c 8b 05 fb 7f 00 00 	mov    r8,QWORD PTR [rip+0x7ffb]        # 14000a0f0 <the_secs>
   1400020f5:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   1400020f8:	48 63 d0             	movsxd rdx,eax
   1400020fb:	48 89 d0             	mov    rax,rdx
   1400020fe:	48 c1 e0 02          	shl    rax,0x2
   140002102:	48 01 d0             	add    rax,rdx
   140002105:	48 c1 e0 03          	shl    rax,0x3
   140002109:	4c 01 c0             	add    rax,r8
   14000210c:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
   140002110:	48 8d 55 f8          	lea    rdx,[rbp-0x8]
   140002114:	49 89 d1             	mov    r9,rdx
   140002117:	45 89 d0             	mov    r8d,r10d
   14000211a:	48 89 ca             	mov    rdx,rcx
   14000211d:	48 89 c1             	mov    rcx,rax
   140002120:	48 8b 05 f1 91 00 00 	mov    rax,QWORD PTR [rip+0x91f1]        # 14000b318 <__imp_VirtualProtect>
   140002127:	ff d0                	call   rax
   140002129:	eb 01                	jmp    14000212c <restore_modified_sections+0xbd>
   14000212b:	90                   	nop
   14000212c:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
   140002130:	8b 05 c2 7f 00 00    	mov    eax,DWORD PTR [rip+0x7fc2]        # 14000a0f8 <maxSections>
   140002136:	39 45 fc             	cmp    DWORD PTR [rbp-0x4],eax
   140002139:	0f 8c 44 ff ff ff    	jl     140002083 <restore_modified_sections+0x14>
   14000213f:	90                   	nop
   140002140:	90                   	nop
   140002141:	48 83 c4 30          	add    rsp,0x30
   140002145:	5d                   	pop    rbp
   140002146:	c3                   	ret

0000000140002147 <__write_memory>:
   140002147:	55                   	push   rbp
   140002148:	48 89 e5             	mov    rbp,rsp
   14000214b:	48 83 ec 20          	sub    rsp,0x20
   14000214f:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002153:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   140002157:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   14000215b:	48 83 7d 20 00       	cmp    QWORD PTR [rbp+0x20],0x0
   140002160:	74 25                	je     140002187 <__write_memory+0x40>
   140002162:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002166:	48 89 c1             	mov    rcx,rax
   140002169:	e8 22 fc ff ff       	call   140001d90 <mark_section_writable>
   14000216e:	48 8b 4d 20          	mov    rcx,QWORD PTR [rbp+0x20]
   140002172:	48 8b 55 18          	mov    rdx,QWORD PTR [rbp+0x18]
   140002176:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   14000217a:	49 89 c8             	mov    r8,rcx
   14000217d:	48 89 c1             	mov    rcx,rax
   140002180:	e8 63 13 00 00       	call   1400034e8 <memcpy>
   140002185:	eb 01                	jmp    140002188 <__write_memory+0x41>
   140002187:	90                   	nop
   140002188:	48 83 c4 20          	add    rsp,0x20
   14000218c:	5d                   	pop    rbp
   14000218d:	c3                   	ret

000000014000218e <do_pseudo_reloc>:
   14000218e:	55                   	push   rbp
   14000218f:	48 89 e5             	mov    rbp,rsp
   140002192:	48 83 c4 80          	add    rsp,0xffffffffffffff80
   140002196:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   14000219a:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   14000219e:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   1400021a2:	48 8b 45 18          	mov    rax,QWORD PTR [rbp+0x18]
   1400021a6:	48 2b 45 10          	sub    rax,QWORD PTR [rbp+0x10]
   1400021aa:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
   1400021ae:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   1400021b2:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   1400021b6:	48 83 7d e0 07       	cmp    QWORD PTR [rbp-0x20],0x7
   1400021bb:	0f 8e 50 03 00 00    	jle    140002511 <do_pseudo_reloc+0x383>
   1400021c1:	48 83 7d e0 0b       	cmp    QWORD PTR [rbp-0x20],0xb
   1400021c6:	7e 25                	jle    1400021ed <do_pseudo_reloc+0x5f>
   1400021c8:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400021cc:	8b 00                	mov    eax,DWORD PTR [rax]
   1400021ce:	85 c0                	test   eax,eax
   1400021d0:	75 1b                	jne    1400021ed <do_pseudo_reloc+0x5f>
   1400021d2:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400021d6:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
   1400021d9:	85 c0                	test   eax,eax
   1400021db:	75 10                	jne    1400021ed <do_pseudo_reloc+0x5f>
   1400021dd:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400021e1:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   1400021e4:	85 c0                	test   eax,eax
   1400021e6:	75 05                	jne    1400021ed <do_pseudo_reloc+0x5f>
   1400021e8:	48 83 45 f8 0c       	add    QWORD PTR [rbp-0x8],0xc
   1400021ed:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400021f1:	8b 00                	mov    eax,DWORD PTR [rax]
   1400021f3:	85 c0                	test   eax,eax
   1400021f5:	75 0b                	jne    140002202 <do_pseudo_reloc+0x74>
   1400021f7:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400021fb:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
   1400021fe:	85 c0                	test   eax,eax
   140002200:	74 59                	je     14000225b <do_pseudo_reloc+0xcd>
   140002202:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002206:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
   14000220a:	eb 40                	jmp    14000224c <do_pseudo_reloc+0xbe>
   14000220c:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002210:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
   140002213:	89 c2                	mov    edx,eax
   140002215:	48 8b 45 20          	mov    rax,QWORD PTR [rbp+0x20]
   140002219:	48 01 d0             	add    rax,rdx
   14000221c:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
   140002220:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002224:	8b 10                	mov    edx,DWORD PTR [rax]
   140002226:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   14000222a:	8b 00                	mov    eax,DWORD PTR [rax]
   14000222c:	01 d0                	add    eax,edx
   14000222e:	89 45 b4             	mov    DWORD PTR [rbp-0x4c],eax
   140002231:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002235:	48 8d 55 b4          	lea    rdx,[rbp-0x4c]
   140002239:	41 b8 04 00 00 00    	mov    r8d,0x4
   14000223f:	48 89 c1             	mov    rcx,rax
   140002242:	e8 00 ff ff ff       	call   140002147 <__write_memory>
   140002247:	48 83 45 e8 08       	add    QWORD PTR [rbp-0x18],0x8
   14000224c:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002250:	48 3b 45 18          	cmp    rax,QWORD PTR [rbp+0x18]
   140002254:	72 b6                	jb     14000220c <do_pseudo_reloc+0x7e>
   140002256:	e9 b7 02 00 00       	jmp    140002512 <do_pseudo_reloc+0x384>
   14000225b:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   14000225f:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   140002262:	83 f8 01             	cmp    eax,0x1
   140002265:	74 18                	je     14000227f <do_pseudo_reloc+0xf1>
   140002267:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   14000226b:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   14000226e:	89 c2                	mov    edx,eax
   140002270:	48 8d 05 e9 31 00 00 	lea    rax,[rip+0x31e9]        # 140005460 <.rdata+0xa0>
   140002277:	48 89 c1             	mov    rcx,rax
   14000227a:	e8 a1 fa ff ff       	call   140001d20 <__report_error>
   14000227f:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002283:	48 83 c0 0c          	add    rax,0xc
   140002287:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   14000228b:	e9 71 02 00 00       	jmp    140002501 <do_pseudo_reloc+0x373>
   140002290:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002294:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
   140002297:	89 c2                	mov    edx,eax
   140002299:	48 8b 45 20          	mov    rax,QWORD PTR [rbp+0x20]
   14000229d:	48 01 d0             	add    rax,rdx
   1400022a0:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
   1400022a4:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400022a8:	8b 00                	mov    eax,DWORD PTR [rax]
   1400022aa:	89 c2                	mov    edx,eax
   1400022ac:	48 8b 45 20          	mov    rax,QWORD PTR [rbp+0x20]
   1400022b0:	48 01 d0             	add    rax,rdx
   1400022b3:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
   1400022b7:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
   1400022bb:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400022be:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
   1400022c2:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400022c6:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   1400022c9:	0f b6 c0             	movzx  eax,al
   1400022cc:	83 f8 40             	cmp    eax,0x40
   1400022cf:	0f 84 b6 00 00 00    	je     14000238b <do_pseudo_reloc+0x1fd>
   1400022d5:	83 f8 40             	cmp    eax,0x40
   1400022d8:	0f 87 ba 00 00 00    	ja     140002398 <do_pseudo_reloc+0x20a>
   1400022de:	83 f8 20             	cmp    eax,0x20
   1400022e1:	74 77                	je     14000235a <do_pseudo_reloc+0x1cc>
   1400022e3:	83 f8 20             	cmp    eax,0x20
   1400022e6:	0f 87 ac 00 00 00    	ja     140002398 <do_pseudo_reloc+0x20a>
   1400022ec:	83 f8 08             	cmp    eax,0x8
   1400022ef:	74 0a                	je     1400022fb <do_pseudo_reloc+0x16d>
   1400022f1:	83 f8 10             	cmp    eax,0x10
   1400022f4:	74 38                	je     14000232e <do_pseudo_reloc+0x1a0>
   1400022f6:	e9 9d 00 00 00       	jmp    140002398 <do_pseudo_reloc+0x20a>
   1400022fb:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   1400022ff:	0f b6 00             	movzx  eax,BYTE PTR [rax]
   140002302:	0f b6 c0             	movzx  eax,al
   140002305:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   140002309:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   14000230d:	25 80 00 00 00       	and    eax,0x80
   140002312:	48 85 c0             	test   rax,rax
   140002315:	0f 84 a0 00 00 00    	je     1400023bb <do_pseudo_reloc+0x22d>
   14000231b:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   14000231f:	48 0d 00 ff ff ff    	or     rax,0xffffffffffffff00
   140002325:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   140002329:	e9 8d 00 00 00       	jmp    1400023bb <do_pseudo_reloc+0x22d>
   14000232e:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002332:	0f b7 00             	movzx  eax,WORD PTR [rax]
   140002335:	0f b7 c0             	movzx  eax,ax
   140002338:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   14000233c:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   140002340:	25 00 80 00 00       	and    eax,0x8000
   140002345:	48 85 c0             	test   rax,rax
   140002348:	74 74                	je     1400023be <do_pseudo_reloc+0x230>
   14000234a:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   14000234e:	48 0d 00 00 ff ff    	or     rax,0xffffffffffff0000
   140002354:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   140002358:	eb 64                	jmp    1400023be <do_pseudo_reloc+0x230>
   14000235a:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   14000235e:	8b 00                	mov    eax,DWORD PTR [rax]
   140002360:	89 c0                	mov    eax,eax
   140002362:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   140002366:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   14000236a:	25 00 00 00 80       	and    eax,0x80000000
   14000236f:	48 85 c0             	test   rax,rax
   140002372:	74 4d                	je     1400023c1 <do_pseudo_reloc+0x233>
   140002374:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   140002378:	48 ba 00 00 00 00 ff 	movabs rdx,0xffffffff00000000
   14000237f:	ff ff ff 
   140002382:	48 09 d0             	or     rax,rdx
   140002385:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   140002389:	eb 36                	jmp    1400023c1 <do_pseudo_reloc+0x233>
   14000238b:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   14000238f:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140002392:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   140002396:	eb 2a                	jmp    1400023c2 <do_pseudo_reloc+0x234>
   140002398:	48 c7 45 b8 00 00 00 	mov    QWORD PTR [rbp-0x48],0x0
   14000239f:	00 
   1400023a0:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400023a4:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   1400023a7:	0f b6 c0             	movzx  eax,al
   1400023aa:	89 c2                	mov    edx,eax
   1400023ac:	48 8d 05 e5 30 00 00 	lea    rax,[rip+0x30e5]        # 140005498 <.rdata+0xd8>
   1400023b3:	48 89 c1             	mov    rcx,rax
   1400023b6:	e8 65 f9 ff ff       	call   140001d20 <__report_error>
   1400023bb:	90                   	nop
   1400023bc:	eb 04                	jmp    1400023c2 <do_pseudo_reloc+0x234>
   1400023be:	90                   	nop
   1400023bf:	eb 01                	jmp    1400023c2 <do_pseudo_reloc+0x234>
   1400023c1:	90                   	nop
   1400023c2:	48 8b 4d b8          	mov    rcx,QWORD PTR [rbp-0x48]
   1400023c6:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400023ca:	8b 00                	mov    eax,DWORD PTR [rax]
   1400023cc:	89 c2                	mov    edx,eax
   1400023ce:	48 8b 45 20          	mov    rax,QWORD PTR [rbp+0x20]
   1400023d2:	48 01 c2             	add    rdx,rax
   1400023d5:	48 89 c8             	mov    rax,rcx
   1400023d8:	48 29 d0             	sub    rax,rdx
   1400023db:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   1400023df:	48 8b 55 b8          	mov    rdx,QWORD PTR [rbp-0x48]
   1400023e3:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
   1400023e7:	48 01 d0             	add    rax,rdx
   1400023ea:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   1400023ee:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400023f2:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   1400023f5:	25 ff 00 00 00       	and    eax,0xff
   1400023fa:	89 45 d4             	mov    DWORD PTR [rbp-0x2c],eax
   1400023fd:	83 7d d4 3f          	cmp    DWORD PTR [rbp-0x2c],0x3f
   140002401:	77 70                	ja     140002473 <do_pseudo_reloc+0x2e5>
   140002403:	8b 45 d4             	mov    eax,DWORD PTR [rbp-0x2c]
   140002406:	ba 01 00 00 00       	mov    edx,0x1
   14000240b:	89 c1                	mov    ecx,eax
   14000240d:	48 d3 e2             	shl    rdx,cl
   140002410:	48 89 d0             	mov    rax,rdx
   140002413:	48 83 e8 01          	sub    rax,0x1
   140002417:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
   14000241b:	8b 45 d4             	mov    eax,DWORD PTR [rbp-0x2c]
   14000241e:	83 e8 01             	sub    eax,0x1
   140002421:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
   140002428:	89 c1                	mov    ecx,eax
   14000242a:	48 d3 e2             	shl    rdx,cl
   14000242d:	48 89 d0             	mov    rax,rdx
   140002430:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax
   140002434:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   140002438:	48 39 45 c8          	cmp    QWORD PTR [rbp-0x38],rax
   14000243c:	7c 0a                	jl     140002448 <do_pseudo_reloc+0x2ba>
   14000243e:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   140002442:	48 39 45 c0          	cmp    QWORD PTR [rbp-0x40],rax
   140002446:	7e 2b                	jle    140002473 <do_pseudo_reloc+0x2e5>
   140002448:	48 8b 55 b8          	mov    rdx,QWORD PTR [rbp-0x48]
   14000244c:	4c 8b 45 d8          	mov    r8,QWORD PTR [rbp-0x28]
   140002450:	48 8b 4d e0          	mov    rcx,QWORD PTR [rbp-0x20]
   140002454:	8b 45 d4             	mov    eax,DWORD PTR [rbp-0x2c]
   140002457:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
   14000245c:	4d 89 c1             	mov    r9,r8
   14000245f:	49 89 c8             	mov    r8,rcx
   140002462:	89 c2                	mov    edx,eax
   140002464:	48 8d 05 5d 30 00 00 	lea    rax,[rip+0x305d]        # 1400054c8 <.rdata+0x108>
   14000246b:	48 89 c1             	mov    rcx,rax
   14000246e:	e8 ad f8 ff ff       	call   140001d20 <__report_error>
   140002473:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002477:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   14000247a:	0f b6 c0             	movzx  eax,al
   14000247d:	83 f8 40             	cmp    eax,0x40
   140002480:	74 63                	je     1400024e5 <do_pseudo_reloc+0x357>
   140002482:	83 f8 40             	cmp    eax,0x40
   140002485:	77 75                	ja     1400024fc <do_pseudo_reloc+0x36e>
   140002487:	83 f8 20             	cmp    eax,0x20
   14000248a:	74 41                	je     1400024cd <do_pseudo_reloc+0x33f>
   14000248c:	83 f8 20             	cmp    eax,0x20
   14000248f:	77 6b                	ja     1400024fc <do_pseudo_reloc+0x36e>
   140002491:	83 f8 08             	cmp    eax,0x8
   140002494:	74 07                	je     14000249d <do_pseudo_reloc+0x30f>
   140002496:	83 f8 10             	cmp    eax,0x10
   140002499:	74 1a                	je     1400024b5 <do_pseudo_reloc+0x327>
   14000249b:	eb 5f                	jmp    1400024fc <do_pseudo_reloc+0x36e>
   14000249d:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   1400024a1:	48 8d 55 b8          	lea    rdx,[rbp-0x48]
   1400024a5:	41 b8 01 00 00 00    	mov    r8d,0x1
   1400024ab:	48 89 c1             	mov    rcx,rax
   1400024ae:	e8 94 fc ff ff       	call   140002147 <__write_memory>
   1400024b3:	eb 47                	jmp    1400024fc <do_pseudo_reloc+0x36e>
   1400024b5:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   1400024b9:	48 8d 55 b8          	lea    rdx,[rbp-0x48]
   1400024bd:	41 b8 02 00 00 00    	mov    r8d,0x2
   1400024c3:	48 89 c1             	mov    rcx,rax
   1400024c6:	e8 7c fc ff ff       	call   140002147 <__write_memory>
   1400024cb:	eb 2f                	jmp    1400024fc <do_pseudo_reloc+0x36e>
   1400024cd:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   1400024d1:	48 8d 55 b8          	lea    rdx,[rbp-0x48]
   1400024d5:	41 b8 04 00 00 00    	mov    r8d,0x4
   1400024db:	48 89 c1             	mov    rcx,rax
   1400024de:	e8 64 fc ff ff       	call   140002147 <__write_memory>
   1400024e3:	eb 17                	jmp    1400024fc <do_pseudo_reloc+0x36e>
   1400024e5:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   1400024e9:	48 8d 55 b8          	lea    rdx,[rbp-0x48]
   1400024ed:	41 b8 08 00 00 00    	mov    r8d,0x8
   1400024f3:	48 89 c1             	mov    rcx,rax
   1400024f6:	e8 4c fc ff ff       	call   140002147 <__write_memory>
   1400024fb:	90                   	nop
   1400024fc:	48 83 45 f0 0c       	add    QWORD PTR [rbp-0x10],0xc
   140002501:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002505:	48 3b 45 18          	cmp    rax,QWORD PTR [rbp+0x18]
   140002509:	0f 82 81 fd ff ff    	jb     140002290 <do_pseudo_reloc+0x102>
   14000250f:	eb 01                	jmp    140002512 <do_pseudo_reloc+0x384>
   140002511:	90                   	nop
   140002512:	48 83 ec 80          	sub    rsp,0xffffffffffffff80
   140002516:	5d                   	pop    rbp
   140002517:	c3                   	ret

0000000140002518 <_pei386_runtime_relocator>:
   140002518:	55                   	push   rbp
   140002519:	48 89 e5             	mov    rbp,rsp
   14000251c:	48 83 ec 30          	sub    rsp,0x30
   140002520:	8b 05 d6 7b 00 00    	mov    eax,DWORD PTR [rip+0x7bd6]        # 14000a0fc <was_init.0>
   140002526:	85 c0                	test   eax,eax
   140002528:	0f 85 88 00 00 00    	jne    1400025b6 <_pei386_runtime_relocator+0x9e>
   14000252e:	8b 05 c8 7b 00 00    	mov    eax,DWORD PTR [rip+0x7bc8]        # 14000a0fc <was_init.0>
   140002534:	83 c0 01             	add    eax,0x1
   140002537:	89 05 bf 7b 00 00    	mov    DWORD PTR [rip+0x7bbf],eax        # 14000a0fc <was_init.0>
   14000253d:	e8 79 08 00 00       	call   140002dbb <__mingw_GetSectionCount>
   140002542:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   140002545:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140002548:	48 63 d0             	movsxd rdx,eax
   14000254b:	48 89 d0             	mov    rax,rdx
   14000254e:	48 c1 e0 02          	shl    rax,0x2
   140002552:	48 01 d0             	add    rax,rdx
   140002555:	48 c1 e0 03          	shl    rax,0x3
   140002559:	48 83 c0 0f          	add    rax,0xf
   14000255d:	48 c1 e8 04          	shr    rax,0x4
   140002561:	48 c1 e0 04          	shl    rax,0x4
   140002565:	e8 d6 0a 00 00       	call   140003040 <___chkstk_ms>
   14000256a:	48 29 c4             	sub    rsp,rax
   14000256d:	48 8d 44 24 20       	lea    rax,[rsp+0x20]
   140002572:	48 83 c0 0f          	add    rax,0xf
   140002576:	48 c1 e8 04          	shr    rax,0x4
   14000257a:	48 c1 e0 04          	shl    rax,0x4
   14000257e:	48 89 05 6b 7b 00 00 	mov    QWORD PTR [rip+0x7b6b],rax        # 14000a0f0 <the_secs>
   140002585:	c7 05 69 7b 00 00 00 	mov    DWORD PTR [rip+0x7b69],0x0        # 14000a0f8 <maxSections>
   14000258c:	00 00 00 
   14000258f:	4c 8b 05 4a 30 00 00 	mov    r8,QWORD PTR [rip+0x304a]        # 1400055e0 <.refptr.__image_base__>
   140002596:	48 8b 05 03 30 00 00 	mov    rax,QWORD PTR [rip+0x3003]        # 1400055a0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   14000259d:	48 89 c2             	mov    rdx,rax
   1400025a0:	48 8b 05 09 30 00 00 	mov    rax,QWORD PTR [rip+0x3009]        # 1400055b0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   1400025a7:	48 89 c1             	mov    rcx,rax
   1400025aa:	e8 df fb ff ff       	call   14000218e <do_pseudo_reloc>
   1400025af:	e8 bb fa ff ff       	call   14000206f <restore_modified_sections>
   1400025b4:	eb 01                	jmp    1400025b7 <_pei386_runtime_relocator+0x9f>
   1400025b6:	90                   	nop
   1400025b7:	48 89 ec             	mov    rsp,rbp
   1400025ba:	5d                   	pop    rbp
   1400025bb:	c3                   	ret
   1400025bc:	90                   	nop
   1400025bd:	90                   	nop
   1400025be:	90                   	nop
   1400025bf:	90                   	nop

00000001400025c0 <__mingw_raise_matherr>:
   1400025c0:	55                   	push   rbp
   1400025c1:	48 89 e5             	mov    rbp,rsp
   1400025c4:	48 83 ec 50          	sub    rsp,0x50
   1400025c8:	89 4d 10             	mov    DWORD PTR [rbp+0x10],ecx
   1400025cb:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   1400025cf:	f2 0f 11 55 20       	movsd  QWORD PTR [rbp+0x20],xmm2
   1400025d4:	f2 0f 11 5d 28       	movsd  QWORD PTR [rbp+0x28],xmm3
   1400025d9:	48 8b 05 20 7b 00 00 	mov    rax,QWORD PTR [rip+0x7b20]        # 14000a100 <stUserMathErr>
   1400025e0:	48 85 c0             	test   rax,rax
   1400025e3:	74 3e                	je     140002623 <__mingw_raise_matherr+0x63>
   1400025e5:	8b 45 10             	mov    eax,DWORD PTR [rbp+0x10]
   1400025e8:	89 45 d0             	mov    DWORD PTR [rbp-0x30],eax
   1400025eb:	48 8b 45 18          	mov    rax,QWORD PTR [rbp+0x18]
   1400025ef:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
   1400025f3:	f2 0f 10 45 20       	movsd  xmm0,QWORD PTR [rbp+0x20]
   1400025f8:	f2 0f 11 45 e0       	movsd  QWORD PTR [rbp-0x20],xmm0
   1400025fd:	f2 0f 10 45 28       	movsd  xmm0,QWORD PTR [rbp+0x28]
   140002602:	f2 0f 11 45 e8       	movsd  QWORD PTR [rbp-0x18],xmm0
   140002607:	f2 0f 10 45 30       	movsd  xmm0,QWORD PTR [rbp+0x30]
   14000260c:	f2 0f 11 45 f0       	movsd  QWORD PTR [rbp-0x10],xmm0
   140002611:	48 8b 15 e8 7a 00 00 	mov    rdx,QWORD PTR [rip+0x7ae8]        # 14000a100 <stUserMathErr>
   140002618:	48 8d 45 d0          	lea    rax,[rbp-0x30]
   14000261c:	48 89 c1             	mov    rcx,rax
   14000261f:	ff d2                	call   rdx
   140002621:	eb 01                	jmp    140002624 <__mingw_raise_matherr+0x64>
   140002623:	90                   	nop
   140002624:	48 83 c4 50          	add    rsp,0x50
   140002628:	5d                   	pop    rbp
   140002629:	c3                   	ret

000000014000262a <__mingw_setusermatherr>:
   14000262a:	55                   	push   rbp
   14000262b:	48 89 e5             	mov    rbp,rsp
   14000262e:	48 83 ec 20          	sub    rsp,0x20
   140002632:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002636:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   14000263a:	48 89 05 bf 7a 00 00 	mov    QWORD PTR [rip+0x7abf],rax        # 14000a100 <stUserMathErr>
   140002641:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002645:	48 89 c1             	mov    rcx,rax
   140002648:	e8 a3 0e 00 00       	call   1400034f0 <__setusermatherr>
   14000264d:	90                   	nop
   14000264e:	48 83 c4 20          	add    rsp,0x20
   140002652:	5d                   	pop    rbp
   140002653:	c3                   	ret
   140002654:	90                   	nop
   140002655:	90                   	nop
   140002656:	90                   	nop
   140002657:	90                   	nop
   140002658:	90                   	nop
   140002659:	90                   	nop
   14000265a:	90                   	nop
   14000265b:	90                   	nop
   14000265c:	90                   	nop
   14000265d:	90                   	nop
   14000265e:	90                   	nop
   14000265f:	90                   	nop

0000000140002660 <_gnu_exception_handler>:
   140002660:	55                   	push   rbp
   140002661:	48 89 e5             	mov    rbp,rsp
   140002664:	48 83 ec 30          	sub    rsp,0x30
   140002668:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   14000266c:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
   140002673:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
   14000267a:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   14000267e:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140002681:	8b 00                	mov    eax,DWORD PTR [rax]
   140002683:	25 ff ff ff 20       	and    eax,0x20ffffff
   140002688:	3d 43 43 47 20       	cmp    eax,0x20474343
   14000268d:	75 1b                	jne    1400026aa <_gnu_exception_handler+0x4a>
   14000268f:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002693:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140002696:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
   140002699:	83 e0 01             	and    eax,0x1
   14000269c:	85 c0                	test   eax,eax
   14000269e:	75 0a                	jne    1400026aa <_gnu_exception_handler+0x4a>
   1400026a0:	b8 ff ff ff ff       	mov    eax,0xffffffff
   1400026a5:	e9 d3 01 00 00       	jmp    14000287d <_gnu_exception_handler+0x21d>
   1400026aa:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   1400026ae:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400026b1:	8b 00                	mov    eax,DWORD PTR [rax]
   1400026b3:	3d 96 00 00 c0       	cmp    eax,0xc0000096
   1400026b8:	0f 87 8d 01 00 00    	ja     14000284b <_gnu_exception_handler+0x1eb>
   1400026be:	3d 8c 00 00 c0       	cmp    eax,0xc000008c
   1400026c3:	73 43                	jae    140002708 <_gnu_exception_handler+0xa8>
   1400026c5:	3d 1d 00 00 c0       	cmp    eax,0xc000001d
   1400026ca:	0f 84 bf 00 00 00    	je     14000278f <_gnu_exception_handler+0x12f>
   1400026d0:	3d 1d 00 00 c0       	cmp    eax,0xc000001d
   1400026d5:	0f 87 70 01 00 00    	ja     14000284b <_gnu_exception_handler+0x1eb>
   1400026db:	3d 08 00 00 c0       	cmp    eax,0xc0000008
   1400026e0:	0f 84 5c 01 00 00    	je     140002842 <_gnu_exception_handler+0x1e2>
   1400026e6:	3d 08 00 00 c0       	cmp    eax,0xc0000008
   1400026eb:	0f 87 5a 01 00 00    	ja     14000284b <_gnu_exception_handler+0x1eb>
   1400026f1:	3d 02 00 00 80       	cmp    eax,0x80000002
   1400026f6:	0f 84 46 01 00 00    	je     140002842 <_gnu_exception_handler+0x1e2>
   1400026fc:	3d 05 00 00 c0       	cmp    eax,0xc0000005
   140002701:	74 35                	je     140002738 <_gnu_exception_handler+0xd8>
   140002703:	e9 43 01 00 00       	jmp    14000284b <_gnu_exception_handler+0x1eb>
   140002708:	05 74 ff ff 3f       	add    eax,0x3fffff74
   14000270d:	83 f8 0a             	cmp    eax,0xa
   140002710:	0f 87 35 01 00 00    	ja     14000284b <_gnu_exception_handler+0x1eb>
   140002716:	89 c0                	mov    eax,eax
   140002718:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
   14000271f:	00 
   140002720:	48 8d 05 f9 2d 00 00 	lea    rax,[rip+0x2df9]        # 140005520 <.rdata>
   140002727:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
   14000272a:	48 98                	cdqe
   14000272c:	48 8d 15 ed 2d 00 00 	lea    rdx,[rip+0x2ded]        # 140005520 <.rdata>
   140002733:	48 01 d0             	add    rax,rdx
   140002736:	ff e0                	jmp    rax
   140002738:	ba 00 00 00 00       	mov    edx,0x0
   14000273d:	b9 0b 00 00 00       	mov    ecx,0xb
   140002742:	e8 89 0d 00 00       	call   1400034d0 <signal>
   140002747:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   14000274b:	48 83 7d f0 01       	cmp    QWORD PTR [rbp-0x10],0x1
   140002750:	75 1b                	jne    14000276d <_gnu_exception_handler+0x10d>
   140002752:	ba 01 00 00 00       	mov    edx,0x1
   140002757:	b9 0b 00 00 00       	mov    ecx,0xb
   14000275c:	e8 6f 0d 00 00       	call   1400034d0 <signal>
   140002761:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [rbp-0x4],0xffffffff
   140002768:	e9 e1 00 00 00       	jmp    14000284e <_gnu_exception_handler+0x1ee>
   14000276d:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
   140002772:	0f 84 d6 00 00 00    	je     14000284e <_gnu_exception_handler+0x1ee>
   140002778:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   14000277c:	b9 0b 00 00 00       	mov    ecx,0xb
   140002781:	ff d0                	call   rax
   140002783:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [rbp-0x4],0xffffffff
   14000278a:	e9 bf 00 00 00       	jmp    14000284e <_gnu_exception_handler+0x1ee>
   14000278f:	ba 00 00 00 00       	mov    edx,0x0
   140002794:	b9 04 00 00 00       	mov    ecx,0x4
   140002799:	e8 32 0d 00 00       	call   1400034d0 <signal>
   14000279e:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   1400027a2:	48 83 7d f0 01       	cmp    QWORD PTR [rbp-0x10],0x1
   1400027a7:	75 1b                	jne    1400027c4 <_gnu_exception_handler+0x164>
   1400027a9:	ba 01 00 00 00       	mov    edx,0x1
   1400027ae:	b9 04 00 00 00       	mov    ecx,0x4
   1400027b3:	e8 18 0d 00 00       	call   1400034d0 <signal>
   1400027b8:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [rbp-0x4],0xffffffff
   1400027bf:	e9 8d 00 00 00       	jmp    140002851 <_gnu_exception_handler+0x1f1>
   1400027c4:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
   1400027c9:	0f 84 82 00 00 00    	je     140002851 <_gnu_exception_handler+0x1f1>
   1400027cf:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400027d3:	b9 04 00 00 00       	mov    ecx,0x4
   1400027d8:	ff d0                	call   rax
   1400027da:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [rbp-0x4],0xffffffff
   1400027e1:	eb 6e                	jmp    140002851 <_gnu_exception_handler+0x1f1>
   1400027e3:	c7 45 f8 01 00 00 00 	mov    DWORD PTR [rbp-0x8],0x1
   1400027ea:	ba 00 00 00 00       	mov    edx,0x0
   1400027ef:	b9 08 00 00 00       	mov    ecx,0x8
   1400027f4:	e8 d7 0c 00 00       	call   1400034d0 <signal>
   1400027f9:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   1400027fd:	48 83 7d f0 01       	cmp    QWORD PTR [rbp-0x10],0x1
   140002802:	75 23                	jne    140002827 <_gnu_exception_handler+0x1c7>
   140002804:	ba 01 00 00 00       	mov    edx,0x1
   140002809:	b9 08 00 00 00       	mov    ecx,0x8
   14000280e:	e8 bd 0c 00 00       	call   1400034d0 <signal>
   140002813:	83 7d f8 00          	cmp    DWORD PTR [rbp-0x8],0x0
   140002817:	74 05                	je     14000281e <_gnu_exception_handler+0x1be>
   140002819:	e8 f2 f4 ff ff       	call   140001d10 <_fpreset>
   14000281e:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [rbp-0x4],0xffffffff
   140002825:	eb 2d                	jmp    140002854 <_gnu_exception_handler+0x1f4>
   140002827:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
   14000282c:	74 26                	je     140002854 <_gnu_exception_handler+0x1f4>
   14000282e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002832:	b9 08 00 00 00       	mov    ecx,0x8
   140002837:	ff d0                	call   rax
   140002839:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [rbp-0x4],0xffffffff
   140002840:	eb 12                	jmp    140002854 <_gnu_exception_handler+0x1f4>
   140002842:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [rbp-0x4],0xffffffff
   140002849:	eb 0a                	jmp    140002855 <_gnu_exception_handler+0x1f5>
   14000284b:	90                   	nop
   14000284c:	eb 07                	jmp    140002855 <_gnu_exception_handler+0x1f5>
   14000284e:	90                   	nop
   14000284f:	eb 04                	jmp    140002855 <_gnu_exception_handler+0x1f5>
   140002851:	90                   	nop
   140002852:	eb 01                	jmp    140002855 <_gnu_exception_handler+0x1f5>
   140002854:	90                   	nop
   140002855:	83 7d fc 00          	cmp    DWORD PTR [rbp-0x4],0x0
   140002859:	75 1f                	jne    14000287a <_gnu_exception_handler+0x21a>
   14000285b:	48 8b 05 be 78 00 00 	mov    rax,QWORD PTR [rip+0x78be]        # 14000a120 <__mingw_oldexcpt_handler>
   140002862:	48 85 c0             	test   rax,rax
   140002865:	74 13                	je     14000287a <_gnu_exception_handler+0x21a>
   140002867:	48 8b 15 b2 78 00 00 	mov    rdx,QWORD PTR [rip+0x78b2]        # 14000a120 <__mingw_oldexcpt_handler>
   14000286e:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002872:	48 89 c1             	mov    rcx,rax
   140002875:	ff d2                	call   rdx
   140002877:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   14000287a:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   14000287d:	48 83 c4 30          	add    rsp,0x30
   140002881:	5d                   	pop    rbp
   140002882:	c3                   	ret
   140002883:	90                   	nop
   140002884:	90                   	nop
   140002885:	90                   	nop
   140002886:	90                   	nop
   140002887:	90                   	nop
   140002888:	90                   	nop
   140002889:	90                   	nop
   14000288a:	90                   	nop
   14000288b:	90                   	nop
   14000288c:	90                   	nop
   14000288d:	90                   	nop
   14000288e:	90                   	nop
   14000288f:	90                   	nop

0000000140002890 <___w64_mingwthr_add_key_dtor>:
   140002890:	55                   	push   rbp
   140002891:	48 89 e5             	mov    rbp,rsp
   140002894:	48 83 ec 30          	sub    rsp,0x30
   140002898:	89 4d 10             	mov    DWORD PTR [rbp+0x10],ecx
   14000289b:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   14000289f:	8b 05 c3 78 00 00    	mov    eax,DWORD PTR [rip+0x78c3]        # 14000a168 <__mingwthr_cs_init>
   1400028a5:	85 c0                	test   eax,eax
   1400028a7:	75 07                	jne    1400028b0 <___w64_mingwthr_add_key_dtor+0x20>
   1400028a9:	b8 00 00 00 00       	mov    eax,0x0
   1400028ae:	eb 7b                	jmp    14000292b <___w64_mingwthr_add_key_dtor+0x9b>
   1400028b0:	ba 18 00 00 00       	mov    edx,0x18
   1400028b5:	b9 01 00 00 00       	mov    ecx,0x1
   1400028ba:	e8 49 0c 00 00       	call   140003508 <calloc>
   1400028bf:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   1400028c3:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
   1400028c8:	75 07                	jne    1400028d1 <___w64_mingwthr_add_key_dtor+0x41>
   1400028ca:	b8 ff ff ff ff       	mov    eax,0xffffffff
   1400028cf:	eb 5a                	jmp    14000292b <___w64_mingwthr_add_key_dtor+0x9b>
   1400028d1:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400028d5:	8b 55 10             	mov    edx,DWORD PTR [rbp+0x10]
   1400028d8:	89 10                	mov    DWORD PTR [rax],edx
   1400028da:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400028de:	48 8b 55 18          	mov    rdx,QWORD PTR [rbp+0x18]
   1400028e2:	48 89 50 08          	mov    QWORD PTR [rax+0x8],rdx
   1400028e6:	48 8d 05 53 78 00 00 	lea    rax,[rip+0x7853]        # 14000a140 <__mingwthr_cs>
   1400028ed:	48 89 c1             	mov    rcx,rax
   1400028f0:	48 8b 05 c9 89 00 00 	mov    rax,QWORD PTR [rip+0x89c9]        # 14000b2c0 <__imp_EnterCriticalSection>
   1400028f7:	ff d0                	call   rax
   1400028f9:	48 8b 15 70 78 00 00 	mov    rdx,QWORD PTR [rip+0x7870]        # 14000a170 <key_dtor_list>
   140002900:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002904:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
   140002908:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   14000290c:	48 89 05 5d 78 00 00 	mov    QWORD PTR [rip+0x785d],rax        # 14000a170 <key_dtor_list>
   140002913:	48 8d 05 26 78 00 00 	lea    rax,[rip+0x7826]        # 14000a140 <__mingwthr_cs>
   14000291a:	48 89 c1             	mov    rcx,rax
   14000291d:	48 8b 05 cc 89 00 00 	mov    rax,QWORD PTR [rip+0x89cc]        # 14000b2f0 <__imp_LeaveCriticalSection>
   140002924:	ff d0                	call   rax
   140002926:	b8 00 00 00 00       	mov    eax,0x0
   14000292b:	48 83 c4 30          	add    rsp,0x30
   14000292f:	5d                   	pop    rbp
   140002930:	c3                   	ret

0000000140002931 <___w64_mingwthr_remove_key_dtor>:
   140002931:	55                   	push   rbp
   140002932:	48 89 e5             	mov    rbp,rsp
   140002935:	48 83 ec 30          	sub    rsp,0x30
   140002939:	89 4d 10             	mov    DWORD PTR [rbp+0x10],ecx
   14000293c:	8b 05 26 78 00 00    	mov    eax,DWORD PTR [rip+0x7826]        # 14000a168 <__mingwthr_cs_init>
   140002942:	85 c0                	test   eax,eax
   140002944:	75 0a                	jne    140002950 <___w64_mingwthr_remove_key_dtor+0x1f>
   140002946:	b8 00 00 00 00       	mov    eax,0x0
   14000294b:	e9 9c 00 00 00       	jmp    1400029ec <___w64_mingwthr_remove_key_dtor+0xbb>
   140002950:	48 8d 05 e9 77 00 00 	lea    rax,[rip+0x77e9]        # 14000a140 <__mingwthr_cs>
   140002957:	48 89 c1             	mov    rcx,rax
   14000295a:	48 8b 05 5f 89 00 00 	mov    rax,QWORD PTR [rip+0x895f]        # 14000b2c0 <__imp_EnterCriticalSection>
   140002961:	ff d0                	call   rax
   140002963:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
   14000296a:	00 
   14000296b:	48 8b 05 fe 77 00 00 	mov    rax,QWORD PTR [rip+0x77fe]        # 14000a170 <key_dtor_list>
   140002972:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140002976:	eb 55                	jmp    1400029cd <___w64_mingwthr_remove_key_dtor+0x9c>
   140002978:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   14000297c:	8b 00                	mov    eax,DWORD PTR [rax]
   14000297e:	39 45 10             	cmp    DWORD PTR [rbp+0x10],eax
   140002981:	75 36                	jne    1400029b9 <___w64_mingwthr_remove_key_dtor+0x88>
   140002983:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
   140002988:	75 11                	jne    14000299b <___w64_mingwthr_remove_key_dtor+0x6a>
   14000298a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   14000298e:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
   140002992:	48 89 05 d7 77 00 00 	mov    QWORD PTR [rip+0x77d7],rax        # 14000a170 <key_dtor_list>
   140002999:	eb 10                	jmp    1400029ab <___w64_mingwthr_remove_key_dtor+0x7a>
   14000299b:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   14000299f:	48 8b 50 10          	mov    rdx,QWORD PTR [rax+0x10]
   1400029a3:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400029a7:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
   1400029ab:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400029af:	48 89 c1             	mov    rcx,rax
   1400029b2:	e8 59 0b 00 00       	call   140003510 <free>
   1400029b7:	eb 1b                	jmp    1400029d4 <___w64_mingwthr_remove_key_dtor+0xa3>
   1400029b9:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400029bd:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   1400029c1:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400029c5:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
   1400029c9:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   1400029cd:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
   1400029d2:	75 a4                	jne    140002978 <___w64_mingwthr_remove_key_dtor+0x47>
   1400029d4:	48 8d 05 65 77 00 00 	lea    rax,[rip+0x7765]        # 14000a140 <__mingwthr_cs>
   1400029db:	48 89 c1             	mov    rcx,rax
   1400029de:	48 8b 05 0b 89 00 00 	mov    rax,QWORD PTR [rip+0x890b]        # 14000b2f0 <__imp_LeaveCriticalSection>
   1400029e5:	ff d0                	call   rax
   1400029e7:	b8 00 00 00 00       	mov    eax,0x0
   1400029ec:	48 83 c4 30          	add    rsp,0x30
   1400029f0:	5d                   	pop    rbp
   1400029f1:	c3                   	ret

00000001400029f2 <__mingwthr_run_key_dtors>:
   1400029f2:	55                   	push   rbp
   1400029f3:	48 89 e5             	mov    rbp,rsp
   1400029f6:	48 83 ec 30          	sub    rsp,0x30
   1400029fa:	8b 05 68 77 00 00    	mov    eax,DWORD PTR [rip+0x7768]        # 14000a168 <__mingwthr_cs_init>
   140002a00:	85 c0                	test   eax,eax
   140002a02:	0f 84 82 00 00 00    	je     140002a8a <__mingwthr_run_key_dtors+0x98>
   140002a08:	48 8d 05 31 77 00 00 	lea    rax,[rip+0x7731]        # 14000a140 <__mingwthr_cs>
   140002a0f:	48 89 c1             	mov    rcx,rax
   140002a12:	48 8b 05 a7 88 00 00 	mov    rax,QWORD PTR [rip+0x88a7]        # 14000b2c0 <__imp_EnterCriticalSection>
   140002a19:	ff d0                	call   rax
   140002a1b:	48 8b 05 4e 77 00 00 	mov    rax,QWORD PTR [rip+0x774e]        # 14000a170 <key_dtor_list>
   140002a22:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002a26:	eb 46                	jmp    140002a6e <__mingwthr_run_key_dtors+0x7c>
   140002a28:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002a2c:	8b 00                	mov    eax,DWORD PTR [rax]
   140002a2e:	89 c1                	mov    ecx,eax
   140002a30:	48 8b 05 d9 88 00 00 	mov    rax,QWORD PTR [rip+0x88d9]        # 14000b310 <__imp_TlsGetValue>
   140002a37:	ff d0                	call   rax
   140002a39:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140002a3d:	48 8b 05 8c 88 00 00 	mov    rax,QWORD PTR [rip+0x888c]        # 14000b2d0 <__imp_GetLastError>
   140002a44:	ff d0                	call   rax
   140002a46:	85 c0                	test   eax,eax
   140002a48:	75 18                	jne    140002a62 <__mingwthr_run_key_dtors+0x70>
   140002a4a:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
   140002a4f:	74 11                	je     140002a62 <__mingwthr_run_key_dtors+0x70>
   140002a51:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002a55:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
   140002a59:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002a5d:	48 89 c1             	mov    rcx,rax
   140002a60:	ff d2                	call   rdx
   140002a62:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002a66:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
   140002a6a:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002a6e:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
   140002a73:	75 b3                	jne    140002a28 <__mingwthr_run_key_dtors+0x36>
   140002a75:	48 8d 05 c4 76 00 00 	lea    rax,[rip+0x76c4]        # 14000a140 <__mingwthr_cs>
   140002a7c:	48 89 c1             	mov    rcx,rax
   140002a7f:	48 8b 05 6a 88 00 00 	mov    rax,QWORD PTR [rip+0x886a]        # 14000b2f0 <__imp_LeaveCriticalSection>
   140002a86:	ff d0                	call   rax
   140002a88:	eb 01                	jmp    140002a8b <__mingwthr_run_key_dtors+0x99>
   140002a8a:	90                   	nop
   140002a8b:	48 83 c4 30          	add    rsp,0x30
   140002a8f:	5d                   	pop    rbp
   140002a90:	c3                   	ret

0000000140002a91 <__mingw_TLScallback>:
   140002a91:	55                   	push   rbp
   140002a92:	48 89 e5             	mov    rbp,rsp
   140002a95:	48 83 ec 30          	sub    rsp,0x30
   140002a99:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002a9d:	89 55 18             	mov    DWORD PTR [rbp+0x18],edx
   140002aa0:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   140002aa4:	83 7d 18 03          	cmp    DWORD PTR [rbp+0x18],0x3
   140002aa8:	0f 84 cc 00 00 00    	je     140002b7a <__mingw_TLScallback+0xe9>
   140002aae:	83 7d 18 03          	cmp    DWORD PTR [rbp+0x18],0x3
   140002ab2:	0f 87 ca 00 00 00    	ja     140002b82 <__mingw_TLScallback+0xf1>
   140002ab8:	83 7d 18 02          	cmp    DWORD PTR [rbp+0x18],0x2
   140002abc:	0f 84 b1 00 00 00    	je     140002b73 <__mingw_TLScallback+0xe2>
   140002ac2:	83 7d 18 02          	cmp    DWORD PTR [rbp+0x18],0x2
   140002ac6:	0f 87 b6 00 00 00    	ja     140002b82 <__mingw_TLScallback+0xf1>
   140002acc:	83 7d 18 00          	cmp    DWORD PTR [rbp+0x18],0x0
   140002ad0:	74 33                	je     140002b05 <__mingw_TLScallback+0x74>
   140002ad2:	83 7d 18 01          	cmp    DWORD PTR [rbp+0x18],0x1
   140002ad6:	0f 85 a6 00 00 00    	jne    140002b82 <__mingw_TLScallback+0xf1>
   140002adc:	8b 05 86 76 00 00    	mov    eax,DWORD PTR [rip+0x7686]        # 14000a168 <__mingwthr_cs_init>
   140002ae2:	85 c0                	test   eax,eax
   140002ae4:	75 13                	jne    140002af9 <__mingw_TLScallback+0x68>
   140002ae6:	48 8d 05 53 76 00 00 	lea    rax,[rip+0x7653]        # 14000a140 <__mingwthr_cs>
   140002aed:	48 89 c1             	mov    rcx,rax
   140002af0:	48 8b 05 f1 87 00 00 	mov    rax,QWORD PTR [rip+0x87f1]        # 14000b2e8 <__imp_InitializeCriticalSection>
   140002af7:	ff d0                	call   rax
   140002af9:	c7 05 65 76 00 00 01 	mov    DWORD PTR [rip+0x7665],0x1        # 14000a168 <__mingwthr_cs_init>
   140002b00:	00 00 00 
   140002b03:	eb 7d                	jmp    140002b82 <__mingw_TLScallback+0xf1>
   140002b05:	e8 e8 fe ff ff       	call   1400029f2 <__mingwthr_run_key_dtors>
   140002b0a:	8b 05 58 76 00 00    	mov    eax,DWORD PTR [rip+0x7658]        # 14000a168 <__mingwthr_cs_init>
   140002b10:	83 f8 01             	cmp    eax,0x1
   140002b13:	75 6c                	jne    140002b81 <__mingw_TLScallback+0xf0>
   140002b15:	48 8b 05 54 76 00 00 	mov    rax,QWORD PTR [rip+0x7654]        # 14000a170 <key_dtor_list>
   140002b1c:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002b20:	eb 20                	jmp    140002b42 <__mingw_TLScallback+0xb1>
   140002b22:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002b26:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
   140002b2a:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140002b2e:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002b32:	48 89 c1             	mov    rcx,rax
   140002b35:	e8 d6 09 00 00       	call   140003510 <free>
   140002b3a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002b3e:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002b42:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
   140002b47:	75 d9                	jne    140002b22 <__mingw_TLScallback+0x91>
   140002b49:	48 c7 05 1c 76 00 00 	mov    QWORD PTR [rip+0x761c],0x0        # 14000a170 <key_dtor_list>
   140002b50:	00 00 00 00 
   140002b54:	c7 05 0a 76 00 00 00 	mov    DWORD PTR [rip+0x760a],0x0        # 14000a168 <__mingwthr_cs_init>
   140002b5b:	00 00 00 
   140002b5e:	48 8d 05 db 75 00 00 	lea    rax,[rip+0x75db]        # 14000a140 <__mingwthr_cs>
   140002b65:	48 89 c1             	mov    rcx,rax
   140002b68:	48 8b 05 49 87 00 00 	mov    rax,QWORD PTR [rip+0x8749]        # 14000b2b8 <__IAT_start__>
   140002b6f:	ff d0                	call   rax
   140002b71:	eb 0e                	jmp    140002b81 <__mingw_TLScallback+0xf0>
   140002b73:	e8 98 f1 ff ff       	call   140001d10 <_fpreset>
   140002b78:	eb 08                	jmp    140002b82 <__mingw_TLScallback+0xf1>
   140002b7a:	e8 73 fe ff ff       	call   1400029f2 <__mingwthr_run_key_dtors>
   140002b7f:	eb 01                	jmp    140002b82 <__mingw_TLScallback+0xf1>
   140002b81:	90                   	nop
   140002b82:	b8 01 00 00 00       	mov    eax,0x1
   140002b87:	48 83 c4 30          	add    rsp,0x30
   140002b8b:	5d                   	pop    rbp
   140002b8c:	c3                   	ret
   140002b8d:	90                   	nop
   140002b8e:	90                   	nop
   140002b8f:	90                   	nop

0000000140002b90 <_ValidateImageBase>:
   140002b90:	55                   	push   rbp
   140002b91:	48 89 e5             	mov    rbp,rsp
   140002b94:	48 83 ec 20          	sub    rsp,0x20
   140002b98:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002b9c:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002ba0:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002ba4:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002ba8:	0f b7 00             	movzx  eax,WORD PTR [rax]
   140002bab:	66 3d 4d 5a          	cmp    ax,0x5a4d
   140002baf:	74 07                	je     140002bb8 <_ValidateImageBase+0x28>
   140002bb1:	b8 00 00 00 00       	mov    eax,0x0
   140002bb6:	eb 4e                	jmp    140002c06 <_ValidateImageBase+0x76>
   140002bb8:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002bbc:	8b 40 3c             	mov    eax,DWORD PTR [rax+0x3c]
   140002bbf:	48 63 d0             	movsxd rdx,eax
   140002bc2:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002bc6:	48 01 d0             	add    rax,rdx
   140002bc9:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140002bcd:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002bd1:	8b 00                	mov    eax,DWORD PTR [rax]
   140002bd3:	3d 50 45 00 00       	cmp    eax,0x4550
   140002bd8:	74 07                	je     140002be1 <_ValidateImageBase+0x51>
   140002bda:	b8 00 00 00 00       	mov    eax,0x0
   140002bdf:	eb 25                	jmp    140002c06 <_ValidateImageBase+0x76>
   140002be1:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002be5:	48 83 c0 18          	add    rax,0x18
   140002be9:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
   140002bed:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002bf1:	0f b7 00             	movzx  eax,WORD PTR [rax]
   140002bf4:	66 3d 0b 02          	cmp    ax,0x20b
   140002bf8:	74 07                	je     140002c01 <_ValidateImageBase+0x71>
   140002bfa:	b8 00 00 00 00       	mov    eax,0x0
   140002bff:	eb 05                	jmp    140002c06 <_ValidateImageBase+0x76>
   140002c01:	b8 01 00 00 00       	mov    eax,0x1
   140002c06:	48 83 c4 20          	add    rsp,0x20
   140002c0a:	5d                   	pop    rbp
   140002c0b:	c3                   	ret

0000000140002c0c <_FindPESection>:
   140002c0c:	55                   	push   rbp
   140002c0d:	48 89 e5             	mov    rbp,rsp
   140002c10:	48 83 ec 20          	sub    rsp,0x20
   140002c14:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002c18:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   140002c1c:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002c20:	8b 40 3c             	mov    eax,DWORD PTR [rax+0x3c]
   140002c23:	48 63 d0             	movsxd rdx,eax
   140002c26:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002c2a:	48 01 d0             	add    rax,rdx
   140002c2d:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
   140002c31:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
   140002c38:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002c3c:	0f b7 40 14          	movzx  eax,WORD PTR [rax+0x14]
   140002c40:	0f b7 d0             	movzx  edx,ax
   140002c43:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002c47:	48 01 d0             	add    rax,rdx
   140002c4a:	48 83 c0 18          	add    rax,0x18
   140002c4e:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002c52:	eb 36                	jmp    140002c8a <_FindPESection+0x7e>
   140002c54:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002c58:	8b 40 0c             	mov    eax,DWORD PTR [rax+0xc]
   140002c5b:	89 c0                	mov    eax,eax
   140002c5d:	48 39 45 18          	cmp    QWORD PTR [rbp+0x18],rax
   140002c61:	72 1e                	jb     140002c81 <_FindPESection+0x75>
   140002c63:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002c67:	8b 50 0c             	mov    edx,DWORD PTR [rax+0xc]
   140002c6a:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002c6e:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   140002c71:	01 d0                	add    eax,edx
   140002c73:	89 c0                	mov    eax,eax
   140002c75:	48 39 45 18          	cmp    QWORD PTR [rbp+0x18],rax
   140002c79:	73 06                	jae    140002c81 <_FindPESection+0x75>
   140002c7b:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002c7f:	eb 1e                	jmp    140002c9f <_FindPESection+0x93>
   140002c81:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
   140002c85:	48 83 45 f8 28       	add    QWORD PTR [rbp-0x8],0x28
   140002c8a:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002c8e:	0f b7 40 06          	movzx  eax,WORD PTR [rax+0x6]
   140002c92:	0f b7 c0             	movzx  eax,ax
   140002c95:	39 45 f4             	cmp    DWORD PTR [rbp-0xc],eax
   140002c98:	72 ba                	jb     140002c54 <_FindPESection+0x48>
   140002c9a:	b8 00 00 00 00       	mov    eax,0x0
   140002c9f:	48 83 c4 20          	add    rsp,0x20
   140002ca3:	5d                   	pop    rbp
   140002ca4:	c3                   	ret

0000000140002ca5 <_FindPESectionByName>:
   140002ca5:	55                   	push   rbp
   140002ca6:	48 89 e5             	mov    rbp,rsp
   140002ca9:	48 83 ec 40          	sub    rsp,0x40
   140002cad:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002cb1:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002cb5:	48 89 c1             	mov    rcx,rax
   140002cb8:	e8 43 07 00 00       	call   140003400 <strlen>
   140002cbd:	48 83 f8 08          	cmp    rax,0x8
   140002cc1:	76 0a                	jbe    140002ccd <_FindPESectionByName+0x28>
   140002cc3:	b8 00 00 00 00       	mov    eax,0x0
   140002cc8:	e9 98 00 00 00       	jmp    140002d65 <_FindPESectionByName+0xc0>
   140002ccd:	48 8b 05 0c 29 00 00 	mov    rax,QWORD PTR [rip+0x290c]        # 1400055e0 <.refptr.__image_base__>
   140002cd4:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
   140002cd8:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002cdc:	48 89 c1             	mov    rcx,rax
   140002cdf:	e8 ac fe ff ff       	call   140002b90 <_ValidateImageBase>
   140002ce4:	85 c0                	test   eax,eax
   140002ce6:	75 07                	jne    140002cef <_FindPESectionByName+0x4a>
   140002ce8:	b8 00 00 00 00       	mov    eax,0x0
   140002ced:	eb 76                	jmp    140002d65 <_FindPESectionByName+0xc0>
   140002cef:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002cf3:	8b 40 3c             	mov    eax,DWORD PTR [rax+0x3c]
   140002cf6:	48 63 d0             	movsxd rdx,eax
   140002cf9:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002cfd:	48 01 d0             	add    rax,rdx
   140002d00:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
   140002d04:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
   140002d0b:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002d0f:	0f b7 40 14          	movzx  eax,WORD PTR [rax+0x14]
   140002d13:	0f b7 d0             	movzx  edx,ax
   140002d16:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002d1a:	48 01 d0             	add    rax,rdx
   140002d1d:	48 83 c0 18          	add    rax,0x18
   140002d21:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002d25:	eb 29                	jmp    140002d50 <_FindPESectionByName+0xab>
   140002d27:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002d2b:	48 8b 55 10          	mov    rdx,QWORD PTR [rbp+0x10]
   140002d2f:	41 b8 08 00 00 00    	mov    r8d,0x8
   140002d35:	48 89 c1             	mov    rcx,rax
   140002d38:	e8 cb 06 00 00       	call   140003408 <strncmp>
   140002d3d:	85 c0                	test   eax,eax
   140002d3f:	75 06                	jne    140002d47 <_FindPESectionByName+0xa2>
   140002d41:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002d45:	eb 1e                	jmp    140002d65 <_FindPESectionByName+0xc0>
   140002d47:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
   140002d4b:	48 83 45 f8 28       	add    QWORD PTR [rbp-0x8],0x28
   140002d50:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002d54:	0f b7 40 06          	movzx  eax,WORD PTR [rax+0x6]
   140002d58:	0f b7 c0             	movzx  eax,ax
   140002d5b:	39 45 f4             	cmp    DWORD PTR [rbp-0xc],eax
   140002d5e:	72 c7                	jb     140002d27 <_FindPESectionByName+0x82>
   140002d60:	b8 00 00 00 00       	mov    eax,0x0
   140002d65:	48 83 c4 40          	add    rsp,0x40
   140002d69:	5d                   	pop    rbp
   140002d6a:	c3                   	ret

0000000140002d6b <__mingw_GetSectionForAddress>:
   140002d6b:	55                   	push   rbp
   140002d6c:	48 89 e5             	mov    rbp,rsp
   140002d6f:	48 83 ec 30          	sub    rsp,0x30
   140002d73:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002d77:	48 8b 05 62 28 00 00 	mov    rax,QWORD PTR [rip+0x2862]        # 1400055e0 <.refptr.__image_base__>
   140002d7e:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002d82:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002d86:	48 89 c1             	mov    rcx,rax
   140002d89:	e8 02 fe ff ff       	call   140002b90 <_ValidateImageBase>
   140002d8e:	85 c0                	test   eax,eax
   140002d90:	75 07                	jne    140002d99 <__mingw_GetSectionForAddress+0x2e>
   140002d92:	b8 00 00 00 00       	mov    eax,0x0
   140002d97:	eb 1c                	jmp    140002db5 <__mingw_GetSectionForAddress+0x4a>
   140002d99:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002d9d:	48 2b 45 f8          	sub    rax,QWORD PTR [rbp-0x8]
   140002da1:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140002da5:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
   140002da9:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002dad:	48 89 c1             	mov    rcx,rax
   140002db0:	e8 57 fe ff ff       	call   140002c0c <_FindPESection>
   140002db5:	48 83 c4 30          	add    rsp,0x30
   140002db9:	5d                   	pop    rbp
   140002dba:	c3                   	ret

0000000140002dbb <__mingw_GetSectionCount>:
   140002dbb:	55                   	push   rbp
   140002dbc:	48 89 e5             	mov    rbp,rsp
   140002dbf:	48 83 ec 30          	sub    rsp,0x30
   140002dc3:	48 8b 05 16 28 00 00 	mov    rax,QWORD PTR [rip+0x2816]        # 1400055e0 <.refptr.__image_base__>
   140002dca:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002dce:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002dd2:	48 89 c1             	mov    rcx,rax
   140002dd5:	e8 b6 fd ff ff       	call   140002b90 <_ValidateImageBase>
   140002dda:	85 c0                	test   eax,eax
   140002ddc:	75 07                	jne    140002de5 <__mingw_GetSectionCount+0x2a>
   140002dde:	b8 00 00 00 00       	mov    eax,0x0
   140002de3:	eb 20                	jmp    140002e05 <__mingw_GetSectionCount+0x4a>
   140002de5:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002de9:	8b 40 3c             	mov    eax,DWORD PTR [rax+0x3c]
   140002dec:	48 63 d0             	movsxd rdx,eax
   140002def:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002df3:	48 01 d0             	add    rax,rdx
   140002df6:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140002dfa:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002dfe:	0f b7 40 06          	movzx  eax,WORD PTR [rax+0x6]
   140002e02:	0f b7 c0             	movzx  eax,ax
   140002e05:	48 83 c4 30          	add    rsp,0x30
   140002e09:	5d                   	pop    rbp
   140002e0a:	c3                   	ret

0000000140002e0b <_FindPESectionExec>:
   140002e0b:	55                   	push   rbp
   140002e0c:	48 89 e5             	mov    rbp,rsp
   140002e0f:	48 83 ec 40          	sub    rsp,0x40
   140002e13:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002e17:	48 8b 05 c2 27 00 00 	mov    rax,QWORD PTR [rip+0x27c2]        # 1400055e0 <.refptr.__image_base__>
   140002e1e:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
   140002e22:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002e26:	48 89 c1             	mov    rcx,rax
   140002e29:	e8 62 fd ff ff       	call   140002b90 <_ValidateImageBase>
   140002e2e:	85 c0                	test   eax,eax
   140002e30:	75 07                	jne    140002e39 <_FindPESectionExec+0x2e>
   140002e32:	b8 00 00 00 00       	mov    eax,0x0
   140002e37:	eb 78                	jmp    140002eb1 <_FindPESectionExec+0xa6>
   140002e39:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002e3d:	8b 40 3c             	mov    eax,DWORD PTR [rax+0x3c]
   140002e40:	48 63 d0             	movsxd rdx,eax
   140002e43:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002e47:	48 01 d0             	add    rax,rdx
   140002e4a:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
   140002e4e:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
   140002e55:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002e59:	0f b7 40 14          	movzx  eax,WORD PTR [rax+0x14]
   140002e5d:	0f b7 d0             	movzx  edx,ax
   140002e60:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002e64:	48 01 d0             	add    rax,rdx
   140002e67:	48 83 c0 18          	add    rax,0x18
   140002e6b:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002e6f:	eb 2b                	jmp    140002e9c <_FindPESectionExec+0x91>
   140002e71:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002e75:	8b 40 24             	mov    eax,DWORD PTR [rax+0x24]
   140002e78:	25 00 00 00 20       	and    eax,0x20000000
   140002e7d:	85 c0                	test   eax,eax
   140002e7f:	74 12                	je     140002e93 <_FindPESectionExec+0x88>
   140002e81:	48 83 7d 10 00       	cmp    QWORD PTR [rbp+0x10],0x0
   140002e86:	75 06                	jne    140002e8e <_FindPESectionExec+0x83>
   140002e88:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002e8c:	eb 23                	jmp    140002eb1 <_FindPESectionExec+0xa6>
   140002e8e:	48 83 6d 10 01       	sub    QWORD PTR [rbp+0x10],0x1
   140002e93:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
   140002e97:	48 83 45 f8 28       	add    QWORD PTR [rbp-0x8],0x28
   140002e9c:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002ea0:	0f b7 40 06          	movzx  eax,WORD PTR [rax+0x6]
   140002ea4:	0f b7 c0             	movzx  eax,ax
   140002ea7:	39 45 f4             	cmp    DWORD PTR [rbp-0xc],eax
   140002eaa:	72 c5                	jb     140002e71 <_FindPESectionExec+0x66>
   140002eac:	b8 00 00 00 00       	mov    eax,0x0
   140002eb1:	48 83 c4 40          	add    rsp,0x40
   140002eb5:	5d                   	pop    rbp
   140002eb6:	c3                   	ret

0000000140002eb7 <_GetPEImageBase>:
   140002eb7:	55                   	push   rbp
   140002eb8:	48 89 e5             	mov    rbp,rsp
   140002ebb:	48 83 ec 30          	sub    rsp,0x30
   140002ebf:	48 8b 05 1a 27 00 00 	mov    rax,QWORD PTR [rip+0x271a]        # 1400055e0 <.refptr.__image_base__>
   140002ec6:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002eca:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002ece:	48 89 c1             	mov    rcx,rax
   140002ed1:	e8 ba fc ff ff       	call   140002b90 <_ValidateImageBase>
   140002ed6:	85 c0                	test   eax,eax
   140002ed8:	75 07                	jne    140002ee1 <_GetPEImageBase+0x2a>
   140002eda:	b8 00 00 00 00       	mov    eax,0x0
   140002edf:	eb 04                	jmp    140002ee5 <_GetPEImageBase+0x2e>
   140002ee1:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002ee5:	48 83 c4 30          	add    rsp,0x30
   140002ee9:	5d                   	pop    rbp
   140002eea:	c3                   	ret

0000000140002eeb <_IsNonwritableInCurrentImage>:
   140002eeb:	55                   	push   rbp
   140002eec:	48 89 e5             	mov    rbp,rsp
   140002eef:	48 83 ec 40          	sub    rsp,0x40
   140002ef3:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002ef7:	48 8b 05 e2 26 00 00 	mov    rax,QWORD PTR [rip+0x26e2]        # 1400055e0 <.refptr.__image_base__>
   140002efe:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002f02:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002f06:	48 89 c1             	mov    rcx,rax
   140002f09:	e8 82 fc ff ff       	call   140002b90 <_ValidateImageBase>
   140002f0e:	85 c0                	test   eax,eax
   140002f10:	75 07                	jne    140002f19 <_IsNonwritableInCurrentImage+0x2e>
   140002f12:	b8 00 00 00 00       	mov    eax,0x0
   140002f17:	eb 3d                	jmp    140002f56 <_IsNonwritableInCurrentImage+0x6b>
   140002f19:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002f1d:	48 2b 45 f8          	sub    rax,QWORD PTR [rbp-0x8]
   140002f21:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140002f25:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
   140002f29:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002f2d:	48 89 c1             	mov    rcx,rax
   140002f30:	e8 d7 fc ff ff       	call   140002c0c <_FindPESection>
   140002f35:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
   140002f39:	48 83 7d e8 00       	cmp    QWORD PTR [rbp-0x18],0x0
   140002f3e:	75 07                	jne    140002f47 <_IsNonwritableInCurrentImage+0x5c>
   140002f40:	b8 00 00 00 00       	mov    eax,0x0
   140002f45:	eb 0f                	jmp    140002f56 <_IsNonwritableInCurrentImage+0x6b>
   140002f47:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002f4b:	8b 40 24             	mov    eax,DWORD PTR [rax+0x24]
   140002f4e:	f7 d0                	not    eax
   140002f50:	c1 e8 1f             	shr    eax,0x1f
   140002f53:	0f b6 c0             	movzx  eax,al
   140002f56:	48 83 c4 40          	add    rsp,0x40
   140002f5a:	5d                   	pop    rbp
   140002f5b:	c3                   	ret

0000000140002f5c <__mingw_enum_import_library_names>:
   140002f5c:	55                   	push   rbp
   140002f5d:	48 89 e5             	mov    rbp,rsp
   140002f60:	48 83 ec 50          	sub    rsp,0x50
   140002f64:	89 4d 10             	mov    DWORD PTR [rbp+0x10],ecx
   140002f67:	48 8b 05 72 26 00 00 	mov    rax,QWORD PTR [rip+0x2672]        # 1400055e0 <.refptr.__image_base__>
   140002f6e:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140002f72:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002f76:	48 89 c1             	mov    rcx,rax
   140002f79:	e8 12 fc ff ff       	call   140002b90 <_ValidateImageBase>
   140002f7e:	85 c0                	test   eax,eax
   140002f80:	75 0a                	jne    140002f8c <__mingw_enum_import_library_names+0x30>
   140002f82:	b8 00 00 00 00       	mov    eax,0x0
   140002f87:	e9 ab 00 00 00       	jmp    140003037 <__mingw_enum_import_library_names+0xdb>
   140002f8c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002f90:	8b 40 3c             	mov    eax,DWORD PTR [rax+0x3c]
   140002f93:	48 63 d0             	movsxd rdx,eax
   140002f96:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002f9a:	48 01 d0             	add    rax,rdx
   140002f9d:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
   140002fa1:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002fa5:	8b 80 90 00 00 00    	mov    eax,DWORD PTR [rax+0x90]
   140002fab:	89 45 e4             	mov    DWORD PTR [rbp-0x1c],eax
   140002fae:	83 7d e4 00          	cmp    DWORD PTR [rbp-0x1c],0x0
   140002fb2:	75 07                	jne    140002fbb <__mingw_enum_import_library_names+0x5f>
   140002fb4:	b8 00 00 00 00       	mov    eax,0x0
   140002fb9:	eb 7c                	jmp    140003037 <__mingw_enum_import_library_names+0xdb>
   140002fbb:	8b 55 e4             	mov    edx,DWORD PTR [rbp-0x1c]
   140002fbe:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002fc2:	48 89 c1             	mov    rcx,rax
   140002fc5:	e8 42 fc ff ff       	call   140002c0c <_FindPESection>
   140002fca:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
   140002fce:	48 83 7d d8 00       	cmp    QWORD PTR [rbp-0x28],0x0
   140002fd3:	75 07                	jne    140002fdc <__mingw_enum_import_library_names+0x80>
   140002fd5:	b8 00 00 00 00       	mov    eax,0x0
   140002fda:	eb 5b                	jmp    140003037 <__mingw_enum_import_library_names+0xdb>
   140002fdc:	8b 55 e4             	mov    edx,DWORD PTR [rbp-0x1c]
   140002fdf:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002fe3:	48 01 d0             	add    rax,rdx
   140002fe6:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002fea:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
   140002fef:	75 07                	jne    140002ff8 <__mingw_enum_import_library_names+0x9c>
   140002ff1:	b8 00 00 00 00       	mov    eax,0x0
   140002ff6:	eb 3f                	jmp    140003037 <__mingw_enum_import_library_names+0xdb>
   140002ff8:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002ffc:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
   140002fff:	85 c0                	test   eax,eax
   140003001:	75 0b                	jne    14000300e <__mingw_enum_import_library_names+0xb2>
   140003003:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140003007:	8b 40 0c             	mov    eax,DWORD PTR [rax+0xc]
   14000300a:	85 c0                	test   eax,eax
   14000300c:	74 23                	je     140003031 <__mingw_enum_import_library_names+0xd5>
   14000300e:	83 7d 10 00          	cmp    DWORD PTR [rbp+0x10],0x0
   140003012:	7f 12                	jg     140003026 <__mingw_enum_import_library_names+0xca>
   140003014:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140003018:	8b 40 0c             	mov    eax,DWORD PTR [rax+0xc]
   14000301b:	89 c2                	mov    edx,eax
   14000301d:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140003021:	48 01 d0             	add    rax,rdx
   140003024:	eb 11                	jmp    140003037 <__mingw_enum_import_library_names+0xdb>
   140003026:	83 6d 10 01          	sub    DWORD PTR [rbp+0x10],0x1
   14000302a:	48 83 45 f8 14       	add    QWORD PTR [rbp-0x8],0x14
   14000302f:	eb c7                	jmp    140002ff8 <__mingw_enum_import_library_names+0x9c>
   140003031:	90                   	nop
   140003032:	b8 00 00 00 00       	mov    eax,0x0
   140003037:	48 83 c4 50          	add    rsp,0x50
   14000303b:	5d                   	pop    rbp
   14000303c:	c3                   	ret
   14000303d:	90                   	nop
   14000303e:	90                   	nop
   14000303f:	90                   	nop

0000000140003040 <___chkstk_ms>:
   140003040:	51                   	push   rcx
   140003041:	50                   	push   rax
   140003042:	48 3d 00 10 00 00    	cmp    rax,0x1000
   140003048:	48 8d 4c 24 18       	lea    rcx,[rsp+0x18]
   14000304d:	72 19                	jb     140003068 <___chkstk_ms+0x28>
   14000304f:	48 81 e9 00 10 00 00 	sub    rcx,0x1000
   140003056:	48 83 09 00          	or     QWORD PTR [rcx],0x0
   14000305a:	48 2d 00 10 00 00    	sub    rax,0x1000
   140003060:	48 3d 00 10 00 00    	cmp    rax,0x1000
   140003066:	77 e7                	ja     14000304f <___chkstk_ms+0xf>
   140003068:	48 29 c1             	sub    rcx,rax
   14000306b:	48 83 09 00          	or     QWORD PTR [rcx],0x0
   14000306f:	58                   	pop    rax
   140003070:	59                   	pop    rcx
   140003071:	c3                   	ret
   140003072:	90                   	nop
   140003073:	90                   	nop
   140003074:	90                   	nop
   140003075:	90                   	nop
   140003076:	90                   	nop
   140003077:	90                   	nop
   140003078:	90                   	nop
   140003079:	90                   	nop
   14000307a:	90                   	nop
   14000307b:	90                   	nop
   14000307c:	90                   	nop
   14000307d:	90                   	nop
   14000307e:	90                   	nop
   14000307f:	90                   	nop

0000000140003080 <vfprintf>:
   140003080:	55                   	push   rbp
   140003081:	48 89 e5             	mov    rbp,rsp
   140003084:	48 83 ec 30          	sub    rsp,0x30
   140003088:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   14000308c:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   140003090:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   140003094:	48 8b 4d 18          	mov    rcx,QWORD PTR [rbp+0x18]
   140003098:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   14000309c:	48 8b 55 20          	mov    rdx,QWORD PTR [rbp+0x20]
   1400030a0:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
   1400030a5:	41 b9 00 00 00 00    	mov    r9d,0x0
   1400030ab:	49 89 c8             	mov    r8,rcx
   1400030ae:	48 89 c2             	mov    rdx,rax
   1400030b1:	b9 00 00 00 00       	mov    ecx,0x0
   1400030b6:	e8 6d 03 00 00       	call   140003428 <__stdio_common_vfprintf>
   1400030bb:	48 83 c4 30          	add    rsp,0x30
   1400030bf:	5d                   	pop    rbp
   1400030c0:	c3                   	ret
   1400030c1:	90                   	nop
   1400030c2:	90                   	nop
   1400030c3:	90                   	nop
   1400030c4:	90                   	nop
   1400030c5:	90                   	nop
   1400030c6:	90                   	nop
   1400030c7:	90                   	nop
   1400030c8:	90                   	nop
   1400030c9:	90                   	nop
   1400030ca:	90                   	nop
   1400030cb:	90                   	nop
   1400030cc:	90                   	nop
   1400030cd:	90                   	nop
   1400030ce:	90                   	nop
   1400030cf:	90                   	nop

00000001400030d0 <printf>:
   1400030d0:	55                   	push   rbp
   1400030d1:	53                   	push   rbx
   1400030d2:	48 83 ec 48          	sub    rsp,0x48
   1400030d6:	48 8d 6c 24 40       	lea    rbp,[rsp+0x40]
   1400030db:	48 89 4d 20          	mov    QWORD PTR [rbp+0x20],rcx
   1400030df:	48 89 55 28          	mov    QWORD PTR [rbp+0x28],rdx
   1400030e3:	4c 89 45 30          	mov    QWORD PTR [rbp+0x30],r8
   1400030e7:	4c 89 4d 38          	mov    QWORD PTR [rbp+0x38],r9
   1400030eb:	48 8d 45 28          	lea    rax,[rbp+0x28]
   1400030ef:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   1400030f3:	48 8b 5d f0          	mov    rbx,QWORD PTR [rbp-0x10]
   1400030f7:	b9 01 00 00 00       	mov    ecx,0x1
   1400030fc:	e8 0f 03 00 00       	call   140003410 <__acrt_iob_func>
   140003101:	48 8b 55 20          	mov    rdx,QWORD PTR [rbp+0x20]
   140003105:	48 89 5c 24 20       	mov    QWORD PTR [rsp+0x20],rbx
   14000310a:	41 b9 00 00 00 00    	mov    r9d,0x0
   140003110:	49 89 d0             	mov    r8,rdx
   140003113:	48 89 c2             	mov    rdx,rax
   140003116:	b9 00 00 00 00       	mov    ecx,0x0
   14000311b:	e8 08 03 00 00       	call   140003428 <__stdio_common_vfprintf>
   140003120:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   140003123:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140003126:	48 83 c4 48          	add    rsp,0x48
   14000312a:	5b                   	pop    rbx
   14000312b:	5d                   	pop    rbp
   14000312c:	c3                   	ret
   14000312d:	90                   	nop
   14000312e:	90                   	nop
   14000312f:	90                   	nop

0000000140003130 <fprintf>:
   140003130:	55                   	push   rbp
   140003131:	48 89 e5             	mov    rbp,rsp
   140003134:	48 83 ec 40          	sub    rsp,0x40
   140003138:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   14000313c:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   140003140:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   140003144:	4c 89 4d 28          	mov    QWORD PTR [rbp+0x28],r9
   140003148:	48 8d 45 20          	lea    rax,[rbp+0x20]
   14000314c:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140003150:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
   140003154:	48 8b 4d 18          	mov    rcx,QWORD PTR [rbp+0x18]
   140003158:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   14000315c:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
   140003161:	41 b9 00 00 00 00    	mov    r9d,0x0
   140003167:	49 89 c8             	mov    r8,rcx
   14000316a:	48 89 c2             	mov    rdx,rax
   14000316d:	b9 00 00 00 00       	mov    ecx,0x0
   140003172:	e8 b1 02 00 00       	call   140003428 <__stdio_common_vfprintf>
   140003177:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   14000317a:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   14000317d:	48 83 c4 40          	add    rsp,0x40
   140003181:	5d                   	pop    rbp
   140003182:	c3                   	ret
   140003183:	90                   	nop
   140003184:	90                   	nop
   140003185:	90                   	nop
   140003186:	90                   	nop
   140003187:	90                   	nop
   140003188:	90                   	nop
   140003189:	90                   	nop
   14000318a:	90                   	nop
   14000318b:	90                   	nop
   14000318c:	90                   	nop
   14000318d:	90                   	nop
   14000318e:	90                   	nop
   14000318f:	90                   	nop

0000000140003190 <__getmainargs>:
   140003190:	55                   	push   rbp
   140003191:	48 89 e5             	mov    rbp,rsp
   140003194:	48 83 ec 20          	sub    rsp,0x20
   140003198:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   14000319c:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   1400031a0:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   1400031a4:	44 89 4d 28          	mov    DWORD PTR [rbp+0x28],r9d
   1400031a8:	e8 eb 02 00 00       	call   140003498 <_initialize_narrow_environment>
   1400031ad:	83 7d 28 00          	cmp    DWORD PTR [rbp+0x28],0x0
   1400031b1:	74 07                	je     1400031ba <__getmainargs+0x2a>
   1400031b3:	b8 02 00 00 00       	mov    eax,0x2
   1400031b8:	eb 05                	jmp    1400031bf <__getmainargs+0x2f>
   1400031ba:	b8 01 00 00 00       	mov    eax,0x1
   1400031bf:	89 c1                	mov    ecx,eax
   1400031c1:	e8 aa 02 00 00       	call   140003470 <_configure_narrow_argv>
   1400031c6:	e8 85 02 00 00       	call   140003450 <__p___argc>
   1400031cb:	8b 10                	mov    edx,DWORD PTR [rax]
   1400031cd:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   1400031d1:	89 10                	mov    DWORD PTR [rax],edx
   1400031d3:	e8 80 02 00 00       	call   140003458 <__p___argv>
   1400031d8:	48 8b 10             	mov    rdx,QWORD PTR [rax]
   1400031db:	48 8b 45 18          	mov    rax,QWORD PTR [rbp+0x18]
   1400031df:	48 89 10             	mov    QWORD PTR [rax],rdx
   1400031e2:	e8 39 03 00 00       	call   140003520 <__p__environ>
   1400031e7:	48 8b 10             	mov    rdx,QWORD PTR [rax]
   1400031ea:	48 8b 45 20          	mov    rax,QWORD PTR [rbp+0x20]
   1400031ee:	48 89 10             	mov    QWORD PTR [rax],rdx
   1400031f1:	48 83 7d 30 00       	cmp    QWORD PTR [rbp+0x30],0x0
   1400031f6:	74 0d                	je     140003205 <__getmainargs+0x75>
   1400031f8:	48 8b 45 30          	mov    rax,QWORD PTR [rbp+0x30]
   1400031fc:	8b 00                	mov    eax,DWORD PTR [rax]
   1400031fe:	89 c1                	mov    ecx,eax
   140003200:	e8 fb 02 00 00       	call   140003500 <_set_new_mode>
   140003205:	b8 00 00 00 00       	mov    eax,0x0
   14000320a:	48 83 c4 20          	add    rsp,0x20
   14000320e:	5d                   	pop    rbp
   14000320f:	c3                   	ret

0000000140003210 <__wgetmainargs>:
   140003210:	55                   	push   rbp
   140003211:	48 89 e5             	mov    rbp,rsp
   140003214:	48 83 ec 20          	sub    rsp,0x20
   140003218:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   14000321c:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   140003220:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   140003224:	44 89 4d 28          	mov    DWORD PTR [rbp+0x28],r9d
   140003228:	e8 73 02 00 00       	call   1400034a0 <_initialize_wide_environment>
   14000322d:	83 7d 28 00          	cmp    DWORD PTR [rbp+0x28],0x0
   140003231:	74 07                	je     14000323a <__wgetmainargs+0x2a>
   140003233:	b8 02 00 00 00       	mov    eax,0x2
   140003238:	eb 05                	jmp    14000323f <__wgetmainargs+0x2f>
   14000323a:	b8 01 00 00 00       	mov    eax,0x1
   14000323f:	89 c1                	mov    ecx,eax
   140003241:	e8 32 02 00 00       	call   140003478 <_configure_wide_argv>
   140003246:	e8 05 02 00 00       	call   140003450 <__p___argc>
   14000324b:	8b 10                	mov    edx,DWORD PTR [rax]
   14000324d:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140003251:	89 10                	mov    DWORD PTR [rax],edx
   140003253:	e8 08 02 00 00       	call   140003460 <__p___wargv>
   140003258:	48 8b 10             	mov    rdx,QWORD PTR [rax]
   14000325b:	48 8b 45 18          	mov    rax,QWORD PTR [rbp+0x18]
   14000325f:	48 89 10             	mov    QWORD PTR [rax],rdx
   140003262:	e8 c1 02 00 00       	call   140003528 <__p__wenviron>
   140003267:	48 8b 10             	mov    rdx,QWORD PTR [rax]
   14000326a:	48 8b 45 20          	mov    rax,QWORD PTR [rbp+0x20]
   14000326e:	48 89 10             	mov    QWORD PTR [rax],rdx
   140003271:	48 83 7d 30 00       	cmp    QWORD PTR [rbp+0x30],0x0
   140003276:	74 0d                	je     140003285 <__wgetmainargs+0x75>
   140003278:	48 8b 45 30          	mov    rax,QWORD PTR [rbp+0x30]
   14000327c:	8b 00                	mov    eax,DWORD PTR [rax]
   14000327e:	89 c1                	mov    ecx,eax
   140003280:	e8 7b 02 00 00       	call   140003500 <_set_new_mode>
   140003285:	b8 00 00 00 00       	mov    eax,0x0
   14000328a:	48 83 c4 20          	add    rsp,0x20
   14000328e:	5d                   	pop    rbp
   14000328f:	c3                   	ret

0000000140003290 <_onexit>:
   140003290:	55                   	push   rbp
   140003291:	48 89 e5             	mov    rbp,rsp
   140003294:	48 83 ec 20          	sub    rsp,0x20
   140003298:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   14000329c:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   1400032a0:	48 89 c1             	mov    rcx,rax
   1400032a3:	e8 e0 01 00 00       	call   140003488 <_crt_atexit>
   1400032a8:	85 c0                	test   eax,eax
   1400032aa:	75 06                	jne    1400032b2 <_onexit+0x22>
   1400032ac:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   1400032b0:	eb 05                	jmp    1400032b7 <_onexit+0x27>
   1400032b2:	b8 00 00 00 00       	mov    eax,0x0
   1400032b7:	48 83 c4 20          	add    rsp,0x20
   1400032bb:	5d                   	pop    rbp
   1400032bc:	c3                   	ret

00000001400032bd <at_quick_exit>:
   1400032bd:	55                   	push   rbp
   1400032be:	48 89 e5             	mov    rbp,rsp
   1400032c1:	48 83 ec 20          	sub    rsp,0x20
   1400032c5:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   1400032c9:	48 8b 05 80 23 00 00 	mov    rax,QWORD PTR [rip+0x2380]        # 140005650 <.refptr.__mingw_module_is_dll>
   1400032d0:	0f b6 00             	movzx  eax,BYTE PTR [rax]
   1400032d3:	84 c0                	test   al,al
   1400032d5:	74 07                	je     1400032de <at_quick_exit+0x21>
   1400032d7:	b8 00 00 00 00       	mov    eax,0x0
   1400032dc:	eb 0c                	jmp    1400032ea <at_quick_exit+0x2d>
   1400032de:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   1400032e2:	48 89 c1             	mov    rcx,rax
   1400032e5:	e8 96 01 00 00       	call   140003480 <_crt_at_quick_exit>
   1400032ea:	48 83 c4 20          	add    rsp,0x20
   1400032ee:	5d                   	pop    rbp
   1400032ef:	c3                   	ret

00000001400032f0 <_amsg_exit>:
   1400032f0:	55                   	push   rbp
   1400032f1:	48 89 e5             	mov    rbp,rsp
   1400032f4:	48 83 ec 20          	sub    rsp,0x20
   1400032f8:	89 4d 10             	mov    DWORD PTR [rbp+0x10],ecx
   1400032fb:	b9 02 00 00 00       	mov    ecx,0x2
   140003300:	e8 0b 01 00 00       	call   140003410 <__acrt_iob_func>
   140003305:	48 89 c1             	mov    rcx,rax
   140003308:	8b 45 10             	mov    eax,DWORD PTR [rbp+0x10]
   14000330b:	41 89 c0             	mov    r8d,eax
   14000330e:	48 8d 05 3b 22 00 00 	lea    rax,[rip+0x223b]        # 140005550 <.rdata>
   140003315:	48 89 c2             	mov    rdx,rax
   140003318:	e8 13 fe ff ff       	call   140003130 <fprintf>
   14000331d:	b9 ff 00 00 00       	mov    ecx,0xff
   140003322:	e8 69 01 00 00       	call   140003490 <_exit>
   140003327:	90                   	nop

0000000140003328 <_get_output_format>:
   140003328:	55                   	push   rbp
   140003329:	48 89 e5             	mov    rbp,rsp
   14000332c:	b8 00 00 00 00       	mov    eax,0x0
   140003331:	5d                   	pop    rbp
   140003332:	c3                   	ret

0000000140003333 <_tzset>:
   140003333:	55                   	push   rbp
   140003334:	48 89 e5             	mov    rbp,rsp
   140003337:	48 83 ec 20          	sub    rsp,0x20
   14000333b:	48 8b 05 be 22 00 00 	mov    rax,QWORD PTR [rip+0x22be]        # 140005600 <.refptr.__imp__tzset>
   140003342:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140003345:	ff d0                	call   rax
   140003347:	e8 a4 00 00 00       	call   1400033f0 <__tzname>
   14000334c:	48 89 05 95 0d 00 00 	mov    QWORD PTR [rip+0xd95],rax        # 1400040e8 <__imp_tzname>
   140003353:	e8 90 00 00 00       	call   1400033e8 <__timezone>
   140003358:	48 89 05 91 0d 00 00 	mov    QWORD PTR [rip+0xd91],rax        # 1400040f0 <__imp_timezone>
   14000335f:	e8 7c 00 00 00       	call   1400033e0 <__daylight>
   140003364:	48 89 05 8d 0d 00 00 	mov    QWORD PTR [rip+0xd8d],rax        # 1400040f8 <__imp_daylight>
   14000336b:	90                   	nop
   14000336c:	48 83 c4 20          	add    rsp,0x20
   140003370:	5d                   	pop    rbp
   140003371:	c3                   	ret

0000000140003372 <tzset>:
   140003372:	55                   	push   rbp
   140003373:	48 89 e5             	mov    rbp,rsp
   140003376:	48 83 ec 20          	sub    rsp,0x20
   14000337a:	e8 b4 ff ff ff       	call   140003333 <_tzset>
   14000337f:	90                   	nop
   140003380:	48 83 c4 20          	add    rsp,0x20
   140003384:	5d                   	pop    rbp
   140003385:	c3                   	ret

0000000140003386 <__ms_fwprintf>:
   140003386:	55                   	push   rbp
   140003387:	48 89 e5             	mov    rbp,rsp
   14000338a:	48 83 ec 40          	sub    rsp,0x40
   14000338e:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140003392:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   140003396:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   14000339a:	4c 89 4d 28          	mov    QWORD PTR [rbp+0x28],r9
   14000339e:	48 8d 45 20          	lea    rax,[rbp+0x20]
   1400033a2:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   1400033a6:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
   1400033aa:	48 8b 4d 18          	mov    rcx,QWORD PTR [rbp+0x18]
   1400033ae:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   1400033b2:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
   1400033b7:	41 b9 00 00 00 00    	mov    r9d,0x0
   1400033bd:	49 89 c8             	mov    r8,rcx
   1400033c0:	48 89 c2             	mov    rdx,rax
   1400033c3:	b9 04 00 00 00       	mov    ecx,0x4
   1400033c8:	e8 63 00 00 00       	call   140003430 <__stdio_common_vfwprintf>
   1400033cd:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   1400033d0:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   1400033d3:	48 83 c4 40          	add    rsp,0x40
   1400033d7:	5d                   	pop    rbp
   1400033d8:	c3                   	ret
   1400033d9:	90                   	nop
   1400033da:	90                   	nop
   1400033db:	90                   	nop
   1400033dc:	90                   	nop
   1400033dd:	90                   	nop
   1400033de:	90                   	nop
   1400033df:	90                   	nop

00000001400033e0 <__daylight>:
   1400033e0:	ff 25 9a 80 00 00    	jmp    QWORD PTR [rip+0x809a]        # 14000b480 <__imp___daylight>
   1400033e6:	90                   	nop
   1400033e7:	90                   	nop

00000001400033e8 <__timezone>:
   1400033e8:	ff 25 9a 80 00 00    	jmp    QWORD PTR [rip+0x809a]        # 14000b488 <__imp___timezone>
   1400033ee:	90                   	nop
   1400033ef:	90                   	nop

00000001400033f0 <__tzname>:
   1400033f0:	ff 25 9a 80 00 00    	jmp    QWORD PTR [rip+0x809a]        # 14000b490 <__imp___tzname>
   1400033f6:	90                   	nop
   1400033f7:	90                   	nop

00000001400033f8 <.text>:
   1400033f8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1400033ff:	00 

0000000140003400 <strlen>:
   140003400:	ff 25 62 80 00 00    	jmp    QWORD PTR [rip+0x8062]        # 14000b468 <__imp_strlen>
   140003406:	90                   	nop
   140003407:	90                   	nop

0000000140003408 <strncmp>:
   140003408:	ff 25 62 80 00 00    	jmp    QWORD PTR [rip+0x8062]        # 14000b470 <__imp_strncmp>
   14000340e:	90                   	nop
   14000340f:	90                   	nop

0000000140003410 <__acrt_iob_func>:
   140003410:	ff 25 12 80 00 00    	jmp    QWORD PTR [rip+0x8012]        # 14000b428 <__imp___acrt_iob_func>
   140003416:	90                   	nop
   140003417:	90                   	nop

0000000140003418 <__p__commode>:
   140003418:	ff 25 12 80 00 00    	jmp    QWORD PTR [rip+0x8012]        # 14000b430 <__imp___p__commode>
   14000341e:	90                   	nop
   14000341f:	90                   	nop

0000000140003420 <__p__fmode>:
   140003420:	ff 25 12 80 00 00    	jmp    QWORD PTR [rip+0x8012]        # 14000b438 <__imp___p__fmode>
   140003426:	90                   	nop
   140003427:	90                   	nop

0000000140003428 <__stdio_common_vfprintf>:
   140003428:	ff 25 12 80 00 00    	jmp    QWORD PTR [rip+0x8012]        # 14000b440 <__imp___stdio_common_vfprintf>
   14000342e:	90                   	nop
   14000342f:	90                   	nop

0000000140003430 <__stdio_common_vfwprintf>:
   140003430:	ff 25 12 80 00 00    	jmp    QWORD PTR [rip+0x8012]        # 14000b448 <__imp___stdio_common_vfwprintf>
   140003436:	90                   	nop
   140003437:	90                   	nop

0000000140003438 <fwrite>:
   140003438:	ff 25 12 80 00 00    	jmp    QWORD PTR [rip+0x8012]        # 14000b450 <__imp_fwrite>
   14000343e:	90                   	nop
   14000343f:	90                   	nop

0000000140003440 <puts>:
   140003440:	ff 25 12 80 00 00    	jmp    QWORD PTR [rip+0x8012]        # 14000b458 <__imp_puts>
   140003446:	90                   	nop
   140003447:	90                   	nop
   140003448:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000344f:	00 

0000000140003450 <__p___argc>:
   140003450:	ff 25 42 7f 00 00    	jmp    QWORD PTR [rip+0x7f42]        # 14000b398 <__imp___p___argc>
   140003456:	90                   	nop
   140003457:	90                   	nop

0000000140003458 <__p___argv>:
   140003458:	ff 25 42 7f 00 00    	jmp    QWORD PTR [rip+0x7f42]        # 14000b3a0 <__imp___p___argv>
   14000345e:	90                   	nop
   14000345f:	90                   	nop

0000000140003460 <__p___wargv>:
   140003460:	ff 25 42 7f 00 00    	jmp    QWORD PTR [rip+0x7f42]        # 14000b3a8 <__imp___p___wargv>
   140003466:	90                   	nop
   140003467:	90                   	nop

0000000140003468 <_cexit>:
   140003468:	ff 25 42 7f 00 00    	jmp    QWORD PTR [rip+0x7f42]        # 14000b3b0 <__imp__cexit>
   14000346e:	90                   	nop
   14000346f:	90                   	nop

0000000140003470 <_configure_narrow_argv>:
   140003470:	ff 25 42 7f 00 00    	jmp    QWORD PTR [rip+0x7f42]        # 14000b3b8 <__imp__configure_narrow_argv>
   140003476:	90                   	nop
   140003477:	90                   	nop

0000000140003478 <_configure_wide_argv>:
   140003478:	ff 25 42 7f 00 00    	jmp    QWORD PTR [rip+0x7f42]        # 14000b3c0 <__imp__configure_wide_argv>
   14000347e:	90                   	nop
   14000347f:	90                   	nop

0000000140003480 <_crt_at_quick_exit>:
   140003480:	ff 25 42 7f 00 00    	jmp    QWORD PTR [rip+0x7f42]        # 14000b3c8 <__imp__crt_at_quick_exit>
   140003486:	90                   	nop
   140003487:	90                   	nop

0000000140003488 <_crt_atexit>:
   140003488:	ff 25 42 7f 00 00    	jmp    QWORD PTR [rip+0x7f42]        # 14000b3d0 <__imp__crt_atexit>
   14000348e:	90                   	nop
   14000348f:	90                   	nop

0000000140003490 <_exit>:
   140003490:	ff 25 42 7f 00 00    	jmp    QWORD PTR [rip+0x7f42]        # 14000b3d8 <__imp__exit>
   140003496:	90                   	nop
   140003497:	90                   	nop

0000000140003498 <_initialize_narrow_environment>:
   140003498:	ff 25 42 7f 00 00    	jmp    QWORD PTR [rip+0x7f42]        # 14000b3e0 <__imp__initialize_narrow_environment>
   14000349e:	90                   	nop
   14000349f:	90                   	nop

00000001400034a0 <_initialize_wide_environment>:
   1400034a0:	ff 25 42 7f 00 00    	jmp    QWORD PTR [rip+0x7f42]        # 14000b3e8 <__imp__initialize_wide_environment>
   1400034a6:	90                   	nop
   1400034a7:	90                   	nop

00000001400034a8 <_initterm>:
   1400034a8:	ff 25 42 7f 00 00    	jmp    QWORD PTR [rip+0x7f42]        # 14000b3f0 <__imp__initterm>
   1400034ae:	90                   	nop
   1400034af:	90                   	nop

00000001400034b0 <__set_app_type>:
   1400034b0:	ff 25 42 7f 00 00    	jmp    QWORD PTR [rip+0x7f42]        # 14000b3f8 <__imp___set_app_type>
   1400034b6:	90                   	nop
   1400034b7:	90                   	nop

00000001400034b8 <_set_invalid_parameter_handler>:
   1400034b8:	ff 25 42 7f 00 00    	jmp    QWORD PTR [rip+0x7f42]        # 14000b400 <__imp__set_invalid_parameter_handler>
   1400034be:	90                   	nop
   1400034bf:	90                   	nop

00000001400034c0 <abort>:
   1400034c0:	ff 25 42 7f 00 00    	jmp    QWORD PTR [rip+0x7f42]        # 14000b408 <__imp_abort>
   1400034c6:	90                   	nop
   1400034c7:	90                   	nop

00000001400034c8 <exit>:
   1400034c8:	ff 25 42 7f 00 00    	jmp    QWORD PTR [rip+0x7f42]        # 14000b410 <__imp_exit>
   1400034ce:	90                   	nop
   1400034cf:	90                   	nop

00000001400034d0 <signal>:
   1400034d0:	ff 25 42 7f 00 00    	jmp    QWORD PTR [rip+0x7f42]        # 14000b418 <__imp_signal>
   1400034d6:	90                   	nop
   1400034d7:	90                   	nop
   1400034d8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1400034df:	00 

00000001400034e0 <__C_specific_handler>:
   1400034e0:	ff 25 9a 7e 00 00    	jmp    QWORD PTR [rip+0x7e9a]        # 14000b380 <__imp___C_specific_handler>
   1400034e6:	90                   	nop
   1400034e7:	90                   	nop

00000001400034e8 <memcpy>:
   1400034e8:	ff 25 9a 7e 00 00    	jmp    QWORD PTR [rip+0x7e9a]        # 14000b388 <__imp_memcpy>
   1400034ee:	90                   	nop
   1400034ef:	90                   	nop

00000001400034f0 <__setusermatherr>:
   1400034f0:	ff 25 7a 7e 00 00    	jmp    QWORD PTR [rip+0x7e7a]        # 14000b370 <__imp___setusermatherr>
   1400034f6:	90                   	nop
   1400034f7:	90                   	nop
   1400034f8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1400034ff:	00 

0000000140003500 <_set_new_mode>:
   140003500:	ff 25 42 7e 00 00    	jmp    QWORD PTR [rip+0x7e42]        # 14000b348 <__imp__set_new_mode>
   140003506:	90                   	nop
   140003507:	90                   	nop

0000000140003508 <calloc>:
   140003508:	ff 25 42 7e 00 00    	jmp    QWORD PTR [rip+0x7e42]        # 14000b350 <__imp_calloc>
   14000350e:	90                   	nop
   14000350f:	90                   	nop

0000000140003510 <free>:
   140003510:	ff 25 42 7e 00 00    	jmp    QWORD PTR [rip+0x7e42]        # 14000b358 <__imp_free>
   140003516:	90                   	nop
   140003517:	90                   	nop

0000000140003518 <malloc>:
   140003518:	ff 25 42 7e 00 00    	jmp    QWORD PTR [rip+0x7e42]        # 14000b360 <__imp_malloc>
   14000351e:	90                   	nop
   14000351f:	90                   	nop

0000000140003520 <__p__environ>:
   140003520:	ff 25 0a 7e 00 00    	jmp    QWORD PTR [rip+0x7e0a]        # 14000b330 <__imp___p__environ>
   140003526:	90                   	nop
   140003527:	90                   	nop

0000000140003528 <__p__wenviron>:
   140003528:	ff 25 0a 7e 00 00    	jmp    QWORD PTR [rip+0x7e0a]        # 14000b338 <__imp___p__wenviron>
   14000352e:	90                   	nop
   14000352f:	90                   	nop

0000000140003530 <VirtualQuery>:
   140003530:	ff 25 ea 7d 00 00    	jmp    QWORD PTR [rip+0x7dea]        # 14000b320 <__imp_VirtualQuery>
   140003536:	90                   	nop
   140003537:	90                   	nop

0000000140003538 <VirtualProtect>:
   140003538:	ff 25 da 7d 00 00    	jmp    QWORD PTR [rip+0x7dda]        # 14000b318 <__imp_VirtualProtect>
   14000353e:	90                   	nop
   14000353f:	90                   	nop

0000000140003540 <TlsGetValue>:
   140003540:	ff 25 ca 7d 00 00    	jmp    QWORD PTR [rip+0x7dca]        # 14000b310 <__imp_TlsGetValue>
   140003546:	90                   	nop
   140003547:	90                   	nop

0000000140003548 <Sleep>:
   140003548:	ff 25 ba 7d 00 00    	jmp    QWORD PTR [rip+0x7dba]        # 14000b308 <__imp_Sleep>
   14000354e:	90                   	nop
   14000354f:	90                   	nop

0000000140003550 <SetUnhandledExceptionFilter>:
   140003550:	ff 25 aa 7d 00 00    	jmp    QWORD PTR [rip+0x7daa]        # 14000b300 <__imp_SetUnhandledExceptionFilter>
   140003556:	90                   	nop
   140003557:	90                   	nop

0000000140003558 <LoadLibraryA>:
   140003558:	ff 25 9a 7d 00 00    	jmp    QWORD PTR [rip+0x7d9a]        # 14000b2f8 <__imp_LoadLibraryA>
   14000355e:	90                   	nop
   14000355f:	90                   	nop

0000000140003560 <LeaveCriticalSection>:
   140003560:	ff 25 8a 7d 00 00    	jmp    QWORD PTR [rip+0x7d8a]        # 14000b2f0 <__imp_LeaveCriticalSection>
   140003566:	90                   	nop
   140003567:	90                   	nop

0000000140003568 <InitializeCriticalSection>:
   140003568:	ff 25 7a 7d 00 00    	jmp    QWORD PTR [rip+0x7d7a]        # 14000b2e8 <__imp_InitializeCriticalSection>
   14000356e:	90                   	nop
   14000356f:	90                   	nop

0000000140003570 <GetProcAddress>:
   140003570:	ff 25 6a 7d 00 00    	jmp    QWORD PTR [rip+0x7d6a]        # 14000b2e0 <__imp_GetProcAddress>
   140003576:	90                   	nop
   140003577:	90                   	nop

0000000140003578 <GetModuleHandleA>:
   140003578:	ff 25 5a 7d 00 00    	jmp    QWORD PTR [rip+0x7d5a]        # 14000b2d8 <__imp_GetModuleHandleA>
   14000357e:	90                   	nop
   14000357f:	90                   	nop

0000000140003580 <GetLastError>:
   140003580:	ff 25 4a 7d 00 00    	jmp    QWORD PTR [rip+0x7d4a]        # 14000b2d0 <__imp_GetLastError>
   140003586:	90                   	nop
   140003587:	90                   	nop

0000000140003588 <FreeLibrary>:
   140003588:	ff 25 3a 7d 00 00    	jmp    QWORD PTR [rip+0x7d3a]        # 14000b2c8 <__imp_FreeLibrary>
   14000358e:	90                   	nop
   14000358f:	90                   	nop

0000000140003590 <EnterCriticalSection>:
   140003590:	ff 25 2a 7d 00 00    	jmp    QWORD PTR [rip+0x7d2a]        # 14000b2c0 <__imp_EnterCriticalSection>
   140003596:	90                   	nop
   140003597:	90                   	nop

0000000140003598 <DeleteCriticalSection>:
   140003598:	ff 25 1a 7d 00 00    	jmp    QWORD PTR [rip+0x7d1a]        # 14000b2b8 <__IAT_start__>
   14000359e:	90                   	nop
   14000359f:	90                   	nop

00000001400035a0 <register_frame_ctor>:
   1400035a0:	e9 3b e0 ff ff       	jmp    1400015e0 <__gcc_register_frame>
   1400035a5:	90                   	nop
   1400035a6:	90                   	nop
   1400035a7:	90                   	nop
   1400035a8:	90                   	nop
   1400035a9:	90                   	nop
   1400035aa:	90                   	nop
   1400035ab:	90                   	nop
   1400035ac:	90                   	nop
   1400035ad:	90                   	nop
   1400035ae:	90                   	nop
   1400035af:	90                   	nop

00000001400035b0 <__CTOR_LIST__>:
   1400035b0:	ff                   	(bad)
   1400035b1:	ff                   	(bad)
   1400035b2:	ff                   	(bad)
   1400035b3:	ff                   	(bad)
   1400035b4:	ff                   	(bad)
   1400035b5:	ff                   	(bad)
   1400035b6:	ff                   	(bad)
   1400035b7:	ff                   	.byte 0xff

00000001400035b8 <.ctors.65535>:
   1400035b8:	a0 35 00 40 01 00 00 	movabs al,ds:0x1400035
   1400035bf:	00 00 
   1400035c1:	00 00                	add    BYTE PTR [rax],al
   1400035c3:	00 00                	add    BYTE PTR [rax],al
   1400035c5:	00 00                	add    BYTE PTR [rax],al
	...

00000001400035c8 <__DTOR_LIST__>:
   1400035c8:	ff                   	(bad)
   1400035c9:	ff                   	(bad)
   1400035ca:	ff                   	(bad)
   1400035cb:	ff                   	(bad)
   1400035cc:	ff                   	(bad)
   1400035cd:	ff                   	(bad)
   1400035ce:	ff                   	(bad)
   1400035cf:	ff 00                	inc    DWORD PTR [rax]
   1400035d1:	00 00                	add    BYTE PTR [rax],al
   1400035d3:	00 00                	add    BYTE PTR [rax],al
   1400035d5:	00 00                	add    BYTE PTR [rax],al
	...
