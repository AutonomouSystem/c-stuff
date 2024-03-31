
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
   14000102a:	48 8b 05 ff 43 00 00 	mov    rax,QWORD PTR [rip+0x43ff]        # 140005430 <.refptr.__mingw_app_type>
   140001031:	8b 00                	mov    eax,DWORD PTR [rax]
   140001033:	85 c0                	test   eax,eax
   140001035:	74 0c                	je     140001043 <pre_c_init+0x2c>
   140001037:	b9 02 00 00 00       	mov    ecx,0x2
   14000103c:	e8 7f 21 00 00       	call   1400031c0 <__set_app_type>
   140001041:	eb 0a                	jmp    14000104d <pre_c_init+0x36>
   140001043:	b9 01 00 00 00       	mov    ecx,0x1
   140001048:	e8 73 21 00 00       	call   1400031c0 <__set_app_type>
   14000104d:	e8 ee 20 00 00       	call   140003140 <__p__fmode>
   140001052:	48 8b 15 b7 44 00 00 	mov    rdx,QWORD PTR [rip+0x44b7]        # 140005510 <.refptr._fmode>
   140001059:	8b 12                	mov    edx,DWORD PTR [rdx]
   14000105b:	89 10                	mov    DWORD PTR [rax],edx
   14000105d:	e8 d6 20 00 00       	call   140003138 <__p__commode>
   140001062:	48 8b 15 87 44 00 00 	mov    rdx,QWORD PTR [rip+0x4487]        # 1400054f0 <.refptr._commode>
   140001069:	8b 12                	mov    edx,DWORD PTR [rdx]
   14000106b:	89 10                	mov    DWORD PTR [rax],edx
   14000106d:	e8 7e 07 00 00       	call   1400017f0 <_setargv>
   140001072:	48 8b 05 27 43 00 00 	mov    rax,QWORD PTR [rip+0x4327]        # 1400053a0 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   140001079:	8b 00                	mov    eax,DWORD PTR [rax]
   14000107b:	83 f8 01             	cmp    eax,0x1
   14000107e:	75 0f                	jne    14000108f <pre_c_init+0x78>
   140001080:	48 8b 05 a9 44 00 00 	mov    rax,QWORD PTR [rip+0x44a9]        # 140005530 <.refptr._matherr>
   140001087:	48 89 c1             	mov    rcx,rax
   14000108a:	e8 bb 12 00 00       	call   14000234a <__mingw_setusermatherr>
   14000108f:	b8 00 00 00 00       	mov    eax,0x0
   140001094:	48 83 c4 20          	add    rsp,0x20
   140001098:	5d                   	pop    rbp
   140001099:	c3                   	ret

000000014000109a <pre_cpp_init>:
   14000109a:	55                   	push   rbp
   14000109b:	48 89 e5             	mov    rbp,rsp
   14000109e:	48 83 ec 30          	sub    rsp,0x30
   1400010a2:	48 8b 05 97 44 00 00 	mov    rax,QWORD PTR [rip+0x4497]        # 140005540 <.refptr._newmode>
   1400010a9:	8b 00                	mov    eax,DWORD PTR [rax]
   1400010ab:	89 05 77 7f 00 00    	mov    DWORD PTR [rip+0x7f77],eax        # 140009028 <startinfo>
   1400010b1:	48 8b 05 48 44 00 00 	mov    rax,QWORD PTR [rip+0x4448]        # 140005500 <.refptr._dowildcard>
   1400010b8:	8b 10                	mov    edx,DWORD PTR [rax]
   1400010ba:	48 8d 05 67 7f 00 00 	lea    rax,[rip+0x7f67]        # 140009028 <startinfo>
   1400010c1:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
   1400010c6:	41 89 d1             	mov    r9d,edx
   1400010c9:	4c 8d 05 40 7f 00 00 	lea    r8,[rip+0x7f40]        # 140009010 <envp>
   1400010d0:	48 8d 05 31 7f 00 00 	lea    rax,[rip+0x7f31]        # 140009008 <argv>
   1400010d7:	48 89 c2             	mov    rdx,rax
   1400010da:	48 8d 05 23 7f 00 00 	lea    rax,[rip+0x7f23]        # 140009004 <argc>
   1400010e1:	48 89 c1             	mov    rcx,rax
   1400010e4:	e8 c7 1d 00 00       	call   140002eb0 <__getmainargs>
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
   140001105:	48 8b 05 24 43 00 00 	mov    rax,QWORD PTR [rip+0x4324]        # 140005430 <.refptr.__mingw_app_type>
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
   140001134:	48 8b 05 f5 42 00 00 	mov    rax,QWORD PTR [rip+0x42f5]        # 140005430 <.refptr.__mingw_app_type>
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
   1400011a3:	48 8b 05 56 91 00 00 	mov    rax,QWORD PTR [rip+0x9156]        # 14000a300 <__imp_Sleep>
   1400011aa:	ff d0                	call   rax
   1400011ac:	48 8b 05 dd 42 00 00 	mov    rax,QWORD PTR [rip+0x42dd]        # 140005490 <.refptr.__native_startup_lock>
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
   1400011e3:	48 8b 05 b6 42 00 00 	mov    rax,QWORD PTR [rip+0x42b6]        # 1400054a0 <.refptr.__native_startup_state>
   1400011ea:	8b 00                	mov    eax,DWORD PTR [rax]
   1400011ec:	83 f8 01             	cmp    eax,0x1
   1400011ef:	75 0c                	jne    1400011fd <__tmainCRTStartup+0xa9>
   1400011f1:	b9 1f 00 00 00       	mov    ecx,0x1f
   1400011f6:	e8 15 1e 00 00       	call   140003010 <_amsg_exit>
   1400011fb:	eb 3f                	jmp    14000123c <__tmainCRTStartup+0xe8>
   1400011fd:	48 8b 05 9c 42 00 00 	mov    rax,QWORD PTR [rip+0x429c]        # 1400054a0 <.refptr.__native_startup_state>
   140001204:	8b 00                	mov    eax,DWORD PTR [rax]
   140001206:	85 c0                	test   eax,eax
   140001208:	75 28                	jne    140001232 <__tmainCRTStartup+0xde>
   14000120a:	48 8b 05 8f 42 00 00 	mov    rax,QWORD PTR [rip+0x428f]        # 1400054a0 <.refptr.__native_startup_state>
   140001211:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   140001217:	48 8b 05 c2 42 00 00 	mov    rax,QWORD PTR [rip+0x42c2]        # 1400054e0 <.refptr.__xi_z>
   14000121e:	48 89 c2             	mov    rdx,rax
   140001221:	48 8b 05 a8 42 00 00 	mov    rax,QWORD PTR [rip+0x42a8]        # 1400054d0 <.refptr.__xi_a>
   140001228:	48 89 c1             	mov    rcx,rax
   14000122b:	e8 88 1f 00 00       	call   1400031b8 <_initterm>
   140001230:	eb 0a                	jmp    14000123c <__tmainCRTStartup+0xe8>
   140001232:	c7 05 e8 7d 00 00 01 	mov    DWORD PTR [rip+0x7de8],0x1        # 140009024 <has_cctor>
   140001239:	00 00 00 
   14000123c:	48 8b 05 5d 42 00 00 	mov    rax,QWORD PTR [rip+0x425d]        # 1400054a0 <.refptr.__native_startup_state>
   140001243:	8b 00                	mov    eax,DWORD PTR [rax]
   140001245:	83 f8 01             	cmp    eax,0x1
   140001248:	75 26                	jne    140001270 <__tmainCRTStartup+0x11c>
   14000124a:	48 8b 05 6f 42 00 00 	mov    rax,QWORD PTR [rip+0x426f]        # 1400054c0 <.refptr.__xc_z>
   140001251:	48 89 c2             	mov    rdx,rax
   140001254:	48 8b 05 55 42 00 00 	mov    rax,QWORD PTR [rip+0x4255]        # 1400054b0 <.refptr.__xc_a>
   14000125b:	48 89 c1             	mov    rcx,rax
   14000125e:	e8 55 1f 00 00       	call   1400031b8 <_initterm>
   140001263:	48 8b 05 36 42 00 00 	mov    rax,QWORD PTR [rip+0x4236]        # 1400054a0 <.refptr.__native_startup_state>
   14000126a:	c7 00 02 00 00 00    	mov    DWORD PTR [rax],0x2
   140001270:	83 7d fc 00          	cmp    DWORD PTR [rbp-0x4],0x0
   140001274:	75 1e                	jne    140001294 <__tmainCRTStartup+0x140>
   140001276:	48 8b 05 13 42 00 00 	mov    rax,QWORD PTR [rip+0x4213]        # 140005490 <.refptr.__native_startup_lock>
   14000127d:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   140001281:	48 c7 45 b0 00 00 00 	mov    QWORD PTR [rbp-0x50],0x0
   140001288:	00 
   140001289:	48 8b 55 b0          	mov    rdx,QWORD PTR [rbp-0x50]
   14000128d:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   140001291:	48 87 10             	xchg   QWORD PTR [rax],rdx
   140001294:	48 8b 05 45 41 00 00 	mov    rax,QWORD PTR [rip+0x4145]        # 1400053e0 <.refptr.__dyn_tls_init_callback>
   14000129b:	48 8b 00             	mov    rax,QWORD PTR [rax]
   14000129e:	48 85 c0             	test   rax,rax
   1400012a1:	74 1c                	je     1400012bf <__tmainCRTStartup+0x16b>
   1400012a3:	48 8b 05 36 41 00 00 	mov    rax,QWORD PTR [rip+0x4136]        # 1400053e0 <.refptr.__dyn_tls_init_callback>
   1400012aa:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400012ad:	41 b8 00 00 00 00    	mov    r8d,0x0
   1400012b3:	ba 02 00 00 00       	mov    edx,0x2
   1400012b8:	b9 00 00 00 00       	mov    ecx,0x0
   1400012bd:	ff d0                	call   rax
   1400012bf:	e8 74 0f 00 00       	call   140002238 <_pei386_runtime_relocator>
   1400012c4:	48 8b 05 55 42 00 00 	mov    rax,QWORD PTR [rip+0x4255]        # 140005520 <.refptr._gnu_exception_handler>
   1400012cb:	48 89 c1             	mov    rcx,rax
   1400012ce:	48 8b 05 23 90 00 00 	mov    rax,QWORD PTR [rip+0x9023]        # 14000a2f8 <__imp_SetUnhandledExceptionFilter>
   1400012d5:	ff d0                	call   rax
   1400012d7:	48 8b 15 a2 41 00 00 	mov    rdx,QWORD PTR [rip+0x41a2]        # 140005480 <.refptr.__mingw_oldexcpt_handler>
   1400012de:	48 89 02             	mov    QWORD PTR [rdx],rax
   1400012e1:	48 8d 05 18 fd ff ff 	lea    rax,[rip+0xfffffffffffffd18]        # 140001000 <__mingw_invalidParameterHandler>
   1400012e8:	48 89 c1             	mov    rcx,rax
   1400012eb:	e8 d8 1e 00 00       	call   1400031c8 <_set_invalid_parameter_handler>
   1400012f0:	e8 3b 07 00 00       	call   140001a30 <_fpreset>
   1400012f5:	8b 05 09 7d 00 00    	mov    eax,DWORD PTR [rip+0x7d09]        # 140009004 <argc>
   1400012fb:	48 8d 15 06 7d 00 00 	lea    rdx,[rip+0x7d06]        # 140009008 <argv>
   140001302:	89 c1                	mov    ecx,eax
   140001304:	e8 73 01 00 00       	call   14000147c <duplicate_ppstrings>
   140001309:	e8 b9 04 00 00       	call   1400017c7 <__main>
   14000130e:	48 8b 05 fb 40 00 00 	mov    rax,QWORD PTR [rip+0x40fb]        # 140005410 <.refptr.__imp___initenv>
   140001315:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140001318:	48 8b 15 f1 7c 00 00 	mov    rdx,QWORD PTR [rip+0x7cf1]        # 140009010 <envp>
   14000131f:	48 89 10             	mov    QWORD PTR [rax],rdx
   140001322:	48 8b 0d e7 7c 00 00 	mov    rcx,QWORD PTR [rip+0x7ce7]        # 140009010 <envp>
   140001329:	48 8b 15 d8 7c 00 00 	mov    rdx,QWORD PTR [rip+0x7cd8]        # 140009008 <argv>
   140001330:	8b 05 ce 7c 00 00    	mov    eax,DWORD PTR [rip+0x7cce]        # 140009004 <argc>
   140001336:	49 89 c8             	mov    r8,rcx
   140001339:	89 c1                	mov    ecx,eax
   14000133b:	e8 90 03 00 00       	call   1400016d0 <main>
   140001340:	89 05 d6 7c 00 00    	mov    DWORD PTR [rip+0x7cd6],eax        # 14000901c <mainret>
   140001346:	8b 05 d4 7c 00 00    	mov    eax,DWORD PTR [rip+0x7cd4]        # 140009020 <managedapp>
   14000134c:	85 c0                	test   eax,eax
   14000134e:	75 0d                	jne    14000135d <__tmainCRTStartup+0x209>
   140001350:	8b 05 c6 7c 00 00    	mov    eax,DWORD PTR [rip+0x7cc6]        # 14000901c <mainret>
   140001356:	89 c1                	mov    ecx,eax
   140001358:	e8 7b 1e 00 00       	call   1400031d8 <exit>
   14000135d:	8b 05 c1 7c 00 00    	mov    eax,DWORD PTR [rip+0x7cc1]        # 140009024 <has_cctor>
   140001363:	85 c0                	test   eax,eax
   140001365:	75 05                	jne    14000136c <__tmainCRTStartup+0x218>
   140001367:	e8 0c 1e 00 00       	call   140003178 <_cexit>
   14000136c:	8b 05 aa 7c 00 00    	mov    eax,DWORD PTR [rip+0x7caa]        # 14000901c <mainret>
   140001372:	48 83 c4 70          	add    rsp,0x70
   140001376:	5d                   	pop    rbp
   140001377:	c3                   	ret

0000000140001378 <check_managed_app>:
   140001378:	55                   	push   rbp
   140001379:	48 89 e5             	mov    rbp,rsp
   14000137c:	48 83 ec 20          	sub    rsp,0x20
   140001380:	48 8b 05 b9 40 00 00 	mov    rax,QWORD PTR [rip+0x40b9]        # 140005440 <.refptr.__mingw_initltsdrot_force>
   140001387:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   14000138d:	48 8b 05 bc 40 00 00 	mov    rax,QWORD PTR [rip+0x40bc]        # 140005450 <.refptr.__mingw_initltsdyn_force>
   140001394:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   14000139a:	48 8b 05 bf 40 00 00 	mov    rax,QWORD PTR [rip+0x40bf]        # 140005460 <.refptr.__mingw_initltssuo_force>
   1400013a1:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   1400013a7:	48 8b 05 52 40 00 00 	mov    rax,QWORD PTR [rip+0x4052]        # 140005400 <.refptr.__image_base__>
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
   14000149d:	e8 86 1d 00 00       	call   140003228 <malloc>
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
   1400014d7:	e8 44 1c 00 00       	call   140003120 <strlen>
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
   140001500:	e8 23 1d 00 00       	call   140003228 <malloc>
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
   140001540:	e8 b3 1c 00 00       	call   1400031f8 <memcpy>
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
   140001596:	e8 15 1a 00 00       	call   140002fb0 <_onexit>
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
   1400015f7:	ff 15 d3 8c 00 00    	call   QWORD PTR [rip+0x8cd3]        # 14000a2d0 <__imp_GetModuleHandleA>
   1400015fd:	48 89 c3             	mov    rbx,rax
   140001600:	48 85 c0             	test   rax,rax
   140001603:	74 6b                	je     140001670 <__gcc_register_frame+0x90>
   140001605:	48 89 f1             	mov    rcx,rsi
   140001608:	ff 15 e2 8c 00 00    	call   QWORD PTR [rip+0x8ce2]        # 14000a2f0 <__imp_LoadLibraryA>
   14000160e:	48 8b 3d c3 8c 00 00 	mov    rdi,QWORD PTR [rip+0x8cc3]        # 14000a2d8 <__imp_GetProcAddress>
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
   1400016be:	48 ff 25 fb 8b 00 00 	rex.W jmp QWORD PTR [rip+0x8bfb]        # 14000a2c0 <__imp_FreeLibrary>
   1400016c5:	0f 1f 00             	nop    DWORD PTR [rax]
   1400016c8:	48 83 c4 20          	add    rsp,0x20
   1400016cc:	5d                   	pop    rbp
   1400016cd:	c3                   	ret
   1400016ce:	90                   	nop
   1400016cf:	90                   	nop

00000001400016d0 <main>:
   1400016d0:	55                   	push   rbp
   1400016d1:	48 89 e5             	mov    rbp,rsp
   1400016d4:	48 83 ec 30          	sub    rsp,0x30
   1400016d8:	e8 ea 00 00 00       	call   1400017c7 <__main>
   1400016dd:	48 8d 05 6c 39 00 00 	lea    rax,[rip+0x396c]        # 140005050 <.rdata>
   1400016e4:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   1400016e8:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400016ec:	48 89 c2             	mov    rdx,rax
   1400016ef:	48 8d 05 63 39 00 00 	lea    rax,[rip+0x3963]        # 140005059 <.rdata+0x9>
   1400016f6:	48 89 c1             	mov    rcx,rax
   1400016f9:	e8 f2 16 00 00       	call   140002df0 <printf>
   1400016fe:	b8 00 00 00 00       	mov    eax,0x0
   140001703:	48 83 c4 30          	add    rsp,0x30
   140001707:	5d                   	pop    rbp
   140001708:	c3                   	ret
   140001709:	90                   	nop
   14000170a:	90                   	nop
   14000170b:	90                   	nop
   14000170c:	90                   	nop
   14000170d:	90                   	nop
   14000170e:	90                   	nop
   14000170f:	90                   	nop

0000000140001710 <__do_global_dtors>:
   140001710:	55                   	push   rbp
   140001711:	48 89 e5             	mov    rbp,rsp
   140001714:	48 83 ec 20          	sub    rsp,0x20
   140001718:	eb 1e                	jmp    140001738 <__do_global_dtors+0x28>
   14000171a:	48 8b 05 ef 28 00 00 	mov    rax,QWORD PTR [rip+0x28ef]        # 140004010 <p.0>
   140001721:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140001724:	ff d0                	call   rax
   140001726:	48 8b 05 e3 28 00 00 	mov    rax,QWORD PTR [rip+0x28e3]        # 140004010 <p.0>
   14000172d:	48 83 c0 08          	add    rax,0x8
   140001731:	48 89 05 d8 28 00 00 	mov    QWORD PTR [rip+0x28d8],rax        # 140004010 <p.0>
   140001738:	48 8b 05 d1 28 00 00 	mov    rax,QWORD PTR [rip+0x28d1]        # 140004010 <p.0>
   14000173f:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140001742:	48 85 c0             	test   rax,rax
   140001745:	75 d3                	jne    14000171a <__do_global_dtors+0xa>
   140001747:	90                   	nop
   140001748:	90                   	nop
   140001749:	48 83 c4 20          	add    rsp,0x20
   14000174d:	5d                   	pop    rbp
   14000174e:	c3                   	ret

000000014000174f <__do_global_ctors>:
   14000174f:	55                   	push   rbp
   140001750:	48 89 e5             	mov    rbp,rsp
   140001753:	48 83 ec 30          	sub    rsp,0x30
   140001757:	48 8b 05 52 3c 00 00 	mov    rax,QWORD PTR [rip+0x3c52]        # 1400053b0 <.refptr.__CTOR_LIST__>
   14000175e:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140001761:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   140001764:	83 7d fc ff          	cmp    DWORD PTR [rbp-0x4],0xffffffff
   140001768:	75 25                	jne    14000178f <__do_global_ctors+0x40>
   14000176a:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
   140001771:	eb 04                	jmp    140001777 <__do_global_ctors+0x28>
   140001773:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
   140001777:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   14000177a:	8d 50 01             	lea    edx,[rax+0x1]
   14000177d:	48 8b 05 2c 3c 00 00 	mov    rax,QWORD PTR [rip+0x3c2c]        # 1400053b0 <.refptr.__CTOR_LIST__>
   140001784:	89 d2                	mov    edx,edx
   140001786:	48 8b 04 d0          	mov    rax,QWORD PTR [rax+rdx*8]
   14000178a:	48 85 c0             	test   rax,rax
   14000178d:	75 e4                	jne    140001773 <__do_global_ctors+0x24>
   14000178f:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001792:	89 45 f8             	mov    DWORD PTR [rbp-0x8],eax
   140001795:	eb 14                	jmp    1400017ab <__do_global_ctors+0x5c>
   140001797:	48 8b 05 12 3c 00 00 	mov    rax,QWORD PTR [rip+0x3c12]        # 1400053b0 <.refptr.__CTOR_LIST__>
   14000179e:	8b 55 f8             	mov    edx,DWORD PTR [rbp-0x8]
   1400017a1:	48 8b 04 d0          	mov    rax,QWORD PTR [rax+rdx*8]
   1400017a5:	ff d0                	call   rax
   1400017a7:	83 6d f8 01          	sub    DWORD PTR [rbp-0x8],0x1
   1400017ab:	83 7d f8 00          	cmp    DWORD PTR [rbp-0x8],0x0
   1400017af:	75 e6                	jne    140001797 <__do_global_ctors+0x48>
   1400017b1:	48 8d 05 58 ff ff ff 	lea    rax,[rip+0xffffffffffffff58]        # 140001710 <__do_global_dtors>
   1400017b8:	48 89 c1             	mov    rcx,rax
   1400017bb:	e8 c3 fd ff ff       	call   140001583 <atexit>
   1400017c0:	90                   	nop
   1400017c1:	48 83 c4 30          	add    rsp,0x30
   1400017c5:	5d                   	pop    rbp
   1400017c6:	c3                   	ret

00000001400017c7 <__main>:
   1400017c7:	55                   	push   rbp
   1400017c8:	48 89 e5             	mov    rbp,rsp
   1400017cb:	48 83 ec 20          	sub    rsp,0x20
   1400017cf:	8b 05 cb 78 00 00    	mov    eax,DWORD PTR [rip+0x78cb]        # 1400090a0 <initialized>
   1400017d5:	85 c0                	test   eax,eax
   1400017d7:	75 0f                	jne    1400017e8 <__main+0x21>
   1400017d9:	c7 05 bd 78 00 00 01 	mov    DWORD PTR [rip+0x78bd],0x1        # 1400090a0 <initialized>
   1400017e0:	00 00 00 
   1400017e3:	e8 67 ff ff ff       	call   14000174f <__do_global_ctors>
   1400017e8:	90                   	nop
   1400017e9:	48 83 c4 20          	add    rsp,0x20
   1400017ed:	5d                   	pop    rbp
   1400017ee:	c3                   	ret
   1400017ef:	90                   	nop

00000001400017f0 <_setargv>:
   1400017f0:	55                   	push   rbp
   1400017f1:	48 89 e5             	mov    rbp,rsp
   1400017f4:	b8 00 00 00 00       	mov    eax,0x0
   1400017f9:	5d                   	pop    rbp
   1400017fa:	c3                   	ret
   1400017fb:	90                   	nop
   1400017fc:	90                   	nop
   1400017fd:	90                   	nop
   1400017fe:	90                   	nop
   1400017ff:	90                   	nop

0000000140001800 <__dyn_tls_init>:
   140001800:	55                   	push   rbp
   140001801:	48 89 e5             	mov    rbp,rsp
   140001804:	48 83 ec 30          	sub    rsp,0x30
   140001808:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   14000180c:	89 55 18             	mov    DWORD PTR [rbp+0x18],edx
   14000180f:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   140001813:	48 8b 05 76 3b 00 00 	mov    rax,QWORD PTR [rip+0x3b76]        # 140005390 <.refptr._CRT_MT>
   14000181a:	8b 00                	mov    eax,DWORD PTR [rax]
   14000181c:	83 f8 02             	cmp    eax,0x2
   14000181f:	74 0d                	je     14000182e <__dyn_tls_init+0x2e>
   140001821:	48 8b 05 68 3b 00 00 	mov    rax,QWORD PTR [rip+0x3b68]        # 140005390 <.refptr._CRT_MT>
   140001828:	c7 00 02 00 00 00    	mov    DWORD PTR [rax],0x2
   14000182e:	83 7d 18 02          	cmp    DWORD PTR [rbp+0x18],0x2
   140001832:	74 23                	je     140001857 <__dyn_tls_init+0x57>
   140001834:	83 7d 18 01          	cmp    DWORD PTR [rbp+0x18],0x1
   140001838:	75 16                	jne    140001850 <__dyn_tls_init+0x50>
   14000183a:	48 8b 4d 20          	mov    rcx,QWORD PTR [rbp+0x20]
   14000183e:	8b 55 18             	mov    edx,DWORD PTR [rbp+0x18]
   140001841:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140001845:	49 89 c8             	mov    r8,rcx
   140001848:	48 89 c1             	mov    rcx,rax
   14000184b:	e8 61 0f 00 00       	call   1400027b1 <__mingw_TLScallback>
   140001850:	b8 01 00 00 00       	mov    eax,0x1
   140001855:	eb 46                	jmp    14000189d <__dyn_tls_init+0x9d>
   140001857:	48 8d 05 f2 97 00 00 	lea    rax,[rip+0x97f2]        # 14000b050 <___crt_xp_end__>
   14000185e:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140001862:	48 83 45 f8 08       	add    QWORD PTR [rbp-0x8],0x8
   140001867:	eb 22                	jmp    14000188b <__dyn_tls_init+0x8b>
   140001869:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   14000186d:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140001871:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140001875:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140001878:	48 85 c0             	test   rax,rax
   14000187b:	74 09                	je     140001886 <__dyn_tls_init+0x86>
   14000187d:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140001881:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140001884:	ff d0                	call   rax
   140001886:	48 83 45 f8 08       	add    QWORD PTR [rbp-0x8],0x8
   14000188b:	48 8d 05 c6 97 00 00 	lea    rax,[rip+0x97c6]        # 14000b058 <__xd_z>
   140001892:	48 39 45 f8          	cmp    QWORD PTR [rbp-0x8],rax
   140001896:	75 d1                	jne    140001869 <__dyn_tls_init+0x69>
   140001898:	b8 01 00 00 00       	mov    eax,0x1
   14000189d:	48 83 c4 30          	add    rsp,0x30
   1400018a1:	5d                   	pop    rbp
   1400018a2:	c3                   	ret

00000001400018a3 <__tlregdtor>:
   1400018a3:	55                   	push   rbp
   1400018a4:	48 89 e5             	mov    rbp,rsp
   1400018a7:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   1400018ab:	48 83 7d 10 00       	cmp    QWORD PTR [rbp+0x10],0x0
   1400018b0:	75 07                	jne    1400018b9 <__tlregdtor+0x16>
   1400018b2:	b8 00 00 00 00       	mov    eax,0x0
   1400018b7:	eb 05                	jmp    1400018be <__tlregdtor+0x1b>
   1400018b9:	b8 00 00 00 00       	mov    eax,0x0
   1400018be:	5d                   	pop    rbp
   1400018bf:	c3                   	ret

00000001400018c0 <__dyn_tls_dtor>:
   1400018c0:	55                   	push   rbp
   1400018c1:	48 89 e5             	mov    rbp,rsp
   1400018c4:	48 83 ec 20          	sub    rsp,0x20
   1400018c8:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   1400018cc:	89 55 18             	mov    DWORD PTR [rbp+0x18],edx
   1400018cf:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   1400018d3:	83 7d 18 03          	cmp    DWORD PTR [rbp+0x18],0x3
   1400018d7:	74 0d                	je     1400018e6 <__dyn_tls_dtor+0x26>
   1400018d9:	83 7d 18 00          	cmp    DWORD PTR [rbp+0x18],0x0
   1400018dd:	74 07                	je     1400018e6 <__dyn_tls_dtor+0x26>
   1400018df:	b8 01 00 00 00       	mov    eax,0x1
   1400018e4:	eb 1b                	jmp    140001901 <__dyn_tls_dtor+0x41>
   1400018e6:	48 8b 4d 20          	mov    rcx,QWORD PTR [rbp+0x20]
   1400018ea:	8b 55 18             	mov    edx,DWORD PTR [rbp+0x18]
   1400018ed:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   1400018f1:	49 89 c8             	mov    r8,rcx
   1400018f4:	48 89 c1             	mov    rcx,rax
   1400018f7:	e8 b5 0e 00 00       	call   1400027b1 <__mingw_TLScallback>
   1400018fc:	b8 01 00 00 00       	mov    eax,0x1
   140001901:	48 83 c4 20          	add    rsp,0x20
   140001905:	5d                   	pop    rbp
   140001906:	c3                   	ret
   140001907:	90                   	nop
   140001908:	90                   	nop
   140001909:	90                   	nop
   14000190a:	90                   	nop
   14000190b:	90                   	nop
   14000190c:	90                   	nop
   14000190d:	90                   	nop
   14000190e:	90                   	nop
   14000190f:	90                   	nop

0000000140001910 <_matherr>:
   140001910:	55                   	push   rbp
   140001911:	53                   	push   rbx
   140001912:	48 81 ec 88 00 00 00 	sub    rsp,0x88
   140001919:	48 8d 6c 24 50       	lea    rbp,[rsp+0x50]
   14000191e:	0f 29 75 00          	movaps XMMWORD PTR [rbp+0x0],xmm6
   140001922:	0f 29 7d 10          	movaps XMMWORD PTR [rbp+0x10],xmm7
   140001926:	44 0f 29 45 20       	movaps XMMWORD PTR [rbp+0x20],xmm8
   14000192b:	48 89 4d 50          	mov    QWORD PTR [rbp+0x50],rcx
   14000192f:	48 8b 45 50          	mov    rax,QWORD PTR [rbp+0x50]
   140001933:	8b 00                	mov    eax,DWORD PTR [rax]
   140001935:	83 f8 06             	cmp    eax,0x6
   140001938:	77 70                	ja     1400019aa <_matherr+0x9a>
   14000193a:	89 c0                	mov    eax,eax
   14000193c:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
   140001943:	00 
   140001944:	48 8d 05 79 38 00 00 	lea    rax,[rip+0x3879]        # 1400051c4 <.rdata+0x124>
   14000194b:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
   14000194e:	48 98                	cdqe
   140001950:	48 8d 15 6d 38 00 00 	lea    rdx,[rip+0x386d]        # 1400051c4 <.rdata+0x124>
   140001957:	48 01 d0             	add    rax,rdx
   14000195a:	ff e0                	jmp    rax
   14000195c:	48 8d 05 3d 37 00 00 	lea    rax,[rip+0x373d]        # 1400050a0 <.rdata>
   140001963:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140001967:	eb 4d                	jmp    1400019b6 <_matherr+0xa6>
   140001969:	48 8d 05 4f 37 00 00 	lea    rax,[rip+0x374f]        # 1400050bf <.rdata+0x1f>
   140001970:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140001974:	eb 40                	jmp    1400019b6 <_matherr+0xa6>
   140001976:	48 8d 05 63 37 00 00 	lea    rax,[rip+0x3763]        # 1400050e0 <.rdata+0x40>
   14000197d:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140001981:	eb 33                	jmp    1400019b6 <_matherr+0xa6>
   140001983:	48 8d 05 76 37 00 00 	lea    rax,[rip+0x3776]        # 140005100 <.rdata+0x60>
   14000198a:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   14000198e:	eb 26                	jmp    1400019b6 <_matherr+0xa6>
   140001990:	48 8d 05 91 37 00 00 	lea    rax,[rip+0x3791]        # 140005128 <.rdata+0x88>
   140001997:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   14000199b:	eb 19                	jmp    1400019b6 <_matherr+0xa6>
   14000199d:	48 8d 05 ac 37 00 00 	lea    rax,[rip+0x37ac]        # 140005150 <.rdata+0xb0>
   1400019a4:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   1400019a8:	eb 0c                	jmp    1400019b6 <_matherr+0xa6>
   1400019aa:	48 8d 05 d5 37 00 00 	lea    rax,[rip+0x37d5]        # 140005186 <.rdata+0xe6>
   1400019b1:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   1400019b5:	90                   	nop
   1400019b6:	48 8b 45 50          	mov    rax,QWORD PTR [rbp+0x50]
   1400019ba:	f2 44 0f 10 40 20    	movsd  xmm8,QWORD PTR [rax+0x20]
   1400019c0:	48 8b 45 50          	mov    rax,QWORD PTR [rbp+0x50]
   1400019c4:	f2 0f 10 78 18       	movsd  xmm7,QWORD PTR [rax+0x18]
   1400019c9:	48 8b 45 50          	mov    rax,QWORD PTR [rbp+0x50]
   1400019cd:	f2 0f 10 70 10       	movsd  xmm6,QWORD PTR [rax+0x10]
   1400019d2:	48 8b 45 50          	mov    rax,QWORD PTR [rbp+0x50]
   1400019d6:	48 8b 58 08          	mov    rbx,QWORD PTR [rax+0x8]
   1400019da:	b9 02 00 00 00       	mov    ecx,0x2
   1400019df:	e8 4c 17 00 00       	call   140003130 <__acrt_iob_func>
   1400019e4:	48 89 c1             	mov    rcx,rax
   1400019e7:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400019eb:	f2 44 0f 11 44 24 30 	movsd  QWORD PTR [rsp+0x30],xmm8
   1400019f2:	f2 0f 11 7c 24 28    	movsd  QWORD PTR [rsp+0x28],xmm7
   1400019f8:	f2 0f 11 74 24 20    	movsd  QWORD PTR [rsp+0x20],xmm6
   1400019fe:	49 89 d9             	mov    r9,rbx
   140001a01:	49 89 c0             	mov    r8,rax
   140001a04:	48 8d 05 8d 37 00 00 	lea    rax,[rip+0x378d]        # 140005198 <.rdata+0xf8>
   140001a0b:	48 89 c2             	mov    rdx,rax
   140001a0e:	e8 3d 14 00 00       	call   140002e50 <fprintf>
   140001a13:	b8 00 00 00 00       	mov    eax,0x0
   140001a18:	0f 28 75 00          	movaps xmm6,XMMWORD PTR [rbp+0x0]
   140001a1c:	0f 28 7d 10          	movaps xmm7,XMMWORD PTR [rbp+0x10]
   140001a20:	44 0f 28 45 20       	movaps xmm8,XMMWORD PTR [rbp+0x20]
   140001a25:	48 81 c4 88 00 00 00 	add    rsp,0x88
   140001a2c:	5b                   	pop    rbx
   140001a2d:	5d                   	pop    rbp
   140001a2e:	c3                   	ret
   140001a2f:	90                   	nop

0000000140001a30 <_fpreset>:
   140001a30:	55                   	push   rbp
   140001a31:	48 89 e5             	mov    rbp,rsp
   140001a34:	db e3                	fninit
   140001a36:	90                   	nop
   140001a37:	5d                   	pop    rbp
   140001a38:	c3                   	ret
   140001a39:	90                   	nop
   140001a3a:	90                   	nop
   140001a3b:	90                   	nop
   140001a3c:	90                   	nop
   140001a3d:	90                   	nop
   140001a3e:	90                   	nop
   140001a3f:	90                   	nop

0000000140001a40 <__report_error>:
   140001a40:	55                   	push   rbp
   140001a41:	53                   	push   rbx
   140001a42:	48 83 ec 38          	sub    rsp,0x38
   140001a46:	48 8d 6c 24 30       	lea    rbp,[rsp+0x30]
   140001a4b:	48 89 4d 20          	mov    QWORD PTR [rbp+0x20],rcx
   140001a4f:	48 89 55 28          	mov    QWORD PTR [rbp+0x28],rdx
   140001a53:	4c 89 45 30          	mov    QWORD PTR [rbp+0x30],r8
   140001a57:	4c 89 4d 38          	mov    QWORD PTR [rbp+0x38],r9
   140001a5b:	48 8d 45 28          	lea    rax,[rbp+0x28]
   140001a5f:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140001a63:	b9 02 00 00 00       	mov    ecx,0x2
   140001a68:	e8 c3 16 00 00       	call   140003130 <__acrt_iob_func>
   140001a6d:	49 89 c1             	mov    r9,rax
   140001a70:	41 b8 1b 00 00 00    	mov    r8d,0x1b
   140001a76:	ba 01 00 00 00       	mov    edx,0x1
   140001a7b:	48 8d 05 5e 37 00 00 	lea    rax,[rip+0x375e]        # 1400051e0 <.rdata>
   140001a82:	48 89 c1             	mov    rcx,rax
   140001a85:	e8 ce 16 00 00       	call   140003158 <fwrite>
   140001a8a:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
   140001a8e:	b9 02 00 00 00       	mov    ecx,0x2
   140001a93:	e8 98 16 00 00       	call   140003130 <__acrt_iob_func>
   140001a98:	48 89 c1             	mov    rcx,rax
   140001a9b:	48 8b 45 20          	mov    rax,QWORD PTR [rbp+0x20]
   140001a9f:	49 89 d8             	mov    r8,rbx
   140001aa2:	48 89 c2             	mov    rdx,rax
   140001aa5:	e8 f6 12 00 00       	call   140002da0 <vfprintf>
   140001aaa:	e8 21 17 00 00       	call   1400031d0 <abort>
   140001aaf:	90                   	nop

0000000140001ab0 <mark_section_writable>:
   140001ab0:	55                   	push   rbp
   140001ab1:	48 89 e5             	mov    rbp,rsp
   140001ab4:	48 83 ec 60          	sub    rsp,0x60
   140001ab8:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140001abc:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
   140001ac3:	e9 82 00 00 00       	jmp    140001b4a <mark_section_writable+0x9a>
   140001ac8:	48 8b 0d 21 76 00 00 	mov    rcx,QWORD PTR [rip+0x7621]        # 1400090f0 <the_secs>
   140001acf:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001ad2:	48 63 d0             	movsxd rdx,eax
   140001ad5:	48 89 d0             	mov    rax,rdx
   140001ad8:	48 c1 e0 02          	shl    rax,0x2
   140001adc:	48 01 d0             	add    rax,rdx
   140001adf:	48 c1 e0 03          	shl    rax,0x3
   140001ae3:	48 01 c8             	add    rax,rcx
   140001ae6:	48 8b 40 18          	mov    rax,QWORD PTR [rax+0x18]
   140001aea:	48 39 45 10          	cmp    QWORD PTR [rbp+0x10],rax
   140001aee:	72 56                	jb     140001b46 <mark_section_writable+0x96>
   140001af0:	48 8b 0d f9 75 00 00 	mov    rcx,QWORD PTR [rip+0x75f9]        # 1400090f0 <the_secs>
   140001af7:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001afa:	48 63 d0             	movsxd rdx,eax
   140001afd:	48 89 d0             	mov    rax,rdx
   140001b00:	48 c1 e0 02          	shl    rax,0x2
   140001b04:	48 01 d0             	add    rax,rdx
   140001b07:	48 c1 e0 03          	shl    rax,0x3
   140001b0b:	48 01 c8             	add    rax,rcx
   140001b0e:	48 8b 48 18          	mov    rcx,QWORD PTR [rax+0x18]
   140001b12:	4c 8b 05 d7 75 00 00 	mov    r8,QWORD PTR [rip+0x75d7]        # 1400090f0 <the_secs>
   140001b19:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001b1c:	48 63 d0             	movsxd rdx,eax
   140001b1f:	48 89 d0             	mov    rax,rdx
   140001b22:	48 c1 e0 02          	shl    rax,0x2
   140001b26:	48 01 d0             	add    rax,rdx
   140001b29:	48 c1 e0 03          	shl    rax,0x3
   140001b2d:	4c 01 c0             	add    rax,r8
   140001b30:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
   140001b34:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   140001b37:	89 c0                	mov    eax,eax
   140001b39:	48 01 c8             	add    rax,rcx
   140001b3c:	48 39 45 10          	cmp    QWORD PTR [rbp+0x10],rax
   140001b40:	0f 82 42 02 00 00    	jb     140001d88 <mark_section_writable+0x2d8>
   140001b46:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
   140001b4a:	8b 05 a8 75 00 00    	mov    eax,DWORD PTR [rip+0x75a8]        # 1400090f8 <maxSections>
   140001b50:	39 45 fc             	cmp    DWORD PTR [rbp-0x4],eax
   140001b53:	0f 8c 6f ff ff ff    	jl     140001ac8 <mark_section_writable+0x18>
   140001b59:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140001b5d:	48 89 c1             	mov    rcx,rax
   140001b60:	e8 26 0f 00 00       	call   140002a8b <__mingw_GetSectionForAddress>
   140001b65:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140001b69:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
   140001b6e:	75 16                	jne    140001b86 <mark_section_writable+0xd6>
   140001b70:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140001b74:	48 89 c2             	mov    rdx,rax
   140001b77:	48 8d 05 82 36 00 00 	lea    rax,[rip+0x3682]        # 140005200 <.rdata+0x20>
   140001b7e:	48 89 c1             	mov    rcx,rax
   140001b81:	e8 ba fe ff ff       	call   140001a40 <__report_error>
   140001b86:	48 8b 0d 63 75 00 00 	mov    rcx,QWORD PTR [rip+0x7563]        # 1400090f0 <the_secs>
   140001b8d:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001b90:	48 63 d0             	movsxd rdx,eax
   140001b93:	48 89 d0             	mov    rax,rdx
   140001b96:	48 c1 e0 02          	shl    rax,0x2
   140001b9a:	48 01 d0             	add    rax,rdx
   140001b9d:	48 c1 e0 03          	shl    rax,0x3
   140001ba1:	48 8d 14 01          	lea    rdx,[rcx+rax*1]
   140001ba5:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140001ba9:	48 89 42 20          	mov    QWORD PTR [rdx+0x20],rax
   140001bad:	48 8b 0d 3c 75 00 00 	mov    rcx,QWORD PTR [rip+0x753c]        # 1400090f0 <the_secs>
   140001bb4:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001bb7:	48 63 d0             	movsxd rdx,eax
   140001bba:	48 89 d0             	mov    rax,rdx
   140001bbd:	48 c1 e0 02          	shl    rax,0x2
   140001bc1:	48 01 d0             	add    rax,rdx
   140001bc4:	48 c1 e0 03          	shl    rax,0x3
   140001bc8:	48 01 c8             	add    rax,rcx
   140001bcb:	c7 00 00 00 00 00    	mov    DWORD PTR [rax],0x0
   140001bd1:	e8 01 10 00 00       	call   140002bd7 <_GetPEImageBase>
   140001bd6:	48 89 c1             	mov    rcx,rax
   140001bd9:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140001bdd:	8b 40 0c             	mov    eax,DWORD PTR [rax+0xc]
   140001be0:	41 89 c1             	mov    r9d,eax
   140001be3:	4c 8b 05 06 75 00 00 	mov    r8,QWORD PTR [rip+0x7506]        # 1400090f0 <the_secs>
   140001bea:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001bed:	48 63 d0             	movsxd rdx,eax
   140001bf0:	48 89 d0             	mov    rax,rdx
   140001bf3:	48 c1 e0 02          	shl    rax,0x2
   140001bf7:	48 01 d0             	add    rax,rdx
   140001bfa:	48 c1 e0 03          	shl    rax,0x3
   140001bfe:	4c 01 c0             	add    rax,r8
   140001c01:	4a 8d 14 09          	lea    rdx,[rcx+r9*1]
   140001c05:	48 89 50 18          	mov    QWORD PTR [rax+0x18],rdx
   140001c09:	48 8b 0d e0 74 00 00 	mov    rcx,QWORD PTR [rip+0x74e0]        # 1400090f0 <the_secs>
   140001c10:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001c13:	48 63 d0             	movsxd rdx,eax
   140001c16:	48 89 d0             	mov    rax,rdx
   140001c19:	48 c1 e0 02          	shl    rax,0x2
   140001c1d:	48 01 d0             	add    rax,rdx
   140001c20:	48 c1 e0 03          	shl    rax,0x3
   140001c24:	48 01 c8             	add    rax,rcx
   140001c27:	48 8b 40 18          	mov    rax,QWORD PTR [rax+0x18]
   140001c2b:	48 8d 55 c0          	lea    rdx,[rbp-0x40]
   140001c2f:	41 b8 30 00 00 00    	mov    r8d,0x30
   140001c35:	48 89 c1             	mov    rcx,rax
   140001c38:	48 8b 05 d9 86 00 00 	mov    rax,QWORD PTR [rip+0x86d9]        # 14000a318 <__imp_VirtualQuery>
   140001c3f:	ff d0                	call   rax
   140001c41:	48 85 c0             	test   rax,rax
   140001c44:	75 3d                	jne    140001c83 <mark_section_writable+0x1d3>
   140001c46:	48 8b 0d a3 74 00 00 	mov    rcx,QWORD PTR [rip+0x74a3]        # 1400090f0 <the_secs>
   140001c4d:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001c50:	48 63 d0             	movsxd rdx,eax
   140001c53:	48 89 d0             	mov    rax,rdx
   140001c56:	48 c1 e0 02          	shl    rax,0x2
   140001c5a:	48 01 d0             	add    rax,rdx
   140001c5d:	48 c1 e0 03          	shl    rax,0x3
   140001c61:	48 01 c8             	add    rax,rcx
   140001c64:	48 8b 50 18          	mov    rdx,QWORD PTR [rax+0x18]
   140001c68:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140001c6c:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   140001c6f:	49 89 d0             	mov    r8,rdx
   140001c72:	89 c2                	mov    edx,eax
   140001c74:	48 8d 05 a5 35 00 00 	lea    rax,[rip+0x35a5]        # 140005220 <.rdata+0x40>
   140001c7b:	48 89 c1             	mov    rcx,rax
   140001c7e:	e8 bd fd ff ff       	call   140001a40 <__report_error>
   140001c83:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
   140001c86:	83 f8 40             	cmp    eax,0x40
   140001c89:	0f 84 e8 00 00 00    	je     140001d77 <mark_section_writable+0x2c7>
   140001c8f:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
   140001c92:	83 f8 04             	cmp    eax,0x4
   140001c95:	0f 84 dc 00 00 00    	je     140001d77 <mark_section_writable+0x2c7>
   140001c9b:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
   140001c9e:	3d 80 00 00 00       	cmp    eax,0x80
   140001ca3:	0f 84 ce 00 00 00    	je     140001d77 <mark_section_writable+0x2c7>
   140001ca9:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
   140001cac:	83 f8 08             	cmp    eax,0x8
   140001caf:	0f 84 c2 00 00 00    	je     140001d77 <mark_section_writable+0x2c7>
   140001cb5:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
   140001cb8:	83 f8 02             	cmp    eax,0x2
   140001cbb:	75 09                	jne    140001cc6 <mark_section_writable+0x216>
   140001cbd:	c7 45 f8 04 00 00 00 	mov    DWORD PTR [rbp-0x8],0x4
   140001cc4:	eb 07                	jmp    140001ccd <mark_section_writable+0x21d>
   140001cc6:	c7 45 f8 40 00 00 00 	mov    DWORD PTR [rbp-0x8],0x40
   140001ccd:	48 8b 0d 1c 74 00 00 	mov    rcx,QWORD PTR [rip+0x741c]        # 1400090f0 <the_secs>
   140001cd4:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001cd7:	48 63 d0             	movsxd rdx,eax
   140001cda:	48 89 d0             	mov    rax,rdx
   140001cdd:	48 c1 e0 02          	shl    rax,0x2
   140001ce1:	48 01 d0             	add    rax,rdx
   140001ce4:	48 c1 e0 03          	shl    rax,0x3
   140001ce8:	48 8d 14 01          	lea    rdx,[rcx+rax*1]
   140001cec:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
   140001cf0:	48 89 42 08          	mov    QWORD PTR [rdx+0x8],rax
   140001cf4:	48 8b 0d f5 73 00 00 	mov    rcx,QWORD PTR [rip+0x73f5]        # 1400090f0 <the_secs>
   140001cfb:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001cfe:	48 63 d0             	movsxd rdx,eax
   140001d01:	48 89 d0             	mov    rax,rdx
   140001d04:	48 c1 e0 02          	shl    rax,0x2
   140001d08:	48 01 d0             	add    rax,rdx
   140001d0b:	48 c1 e0 03          	shl    rax,0x3
   140001d0f:	48 8d 14 01          	lea    rdx,[rcx+rax*1]
   140001d13:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
   140001d17:	48 89 42 10          	mov    QWORD PTR [rdx+0x10],rax
   140001d1b:	48 8b 0d ce 73 00 00 	mov    rcx,QWORD PTR [rip+0x73ce]        # 1400090f0 <the_secs>
   140001d22:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001d25:	48 63 d0             	movsxd rdx,eax
   140001d28:	48 89 d0             	mov    rax,rdx
   140001d2b:	48 c1 e0 02          	shl    rax,0x2
   140001d2f:	48 01 d0             	add    rax,rdx
   140001d32:	48 c1 e0 03          	shl    rax,0x3
   140001d36:	48 01 c8             	add    rax,rcx
   140001d39:	49 89 c0             	mov    r8,rax
   140001d3c:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
   140001d40:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
   140001d44:	8b 4d f8             	mov    ecx,DWORD PTR [rbp-0x8]
   140001d47:	4d 89 c1             	mov    r9,r8
   140001d4a:	41 89 c8             	mov    r8d,ecx
   140001d4d:	48 89 c1             	mov    rcx,rax
   140001d50:	48 8b 05 b9 85 00 00 	mov    rax,QWORD PTR [rip+0x85b9]        # 14000a310 <__imp_VirtualProtect>
   140001d57:	ff d0                	call   rax
   140001d59:	85 c0                	test   eax,eax
   140001d5b:	75 1a                	jne    140001d77 <mark_section_writable+0x2c7>
   140001d5d:	48 8b 05 64 85 00 00 	mov    rax,QWORD PTR [rip+0x8564]        # 14000a2c8 <__imp_GetLastError>
   140001d64:	ff d0                	call   rax
   140001d66:	89 c2                	mov    edx,eax
   140001d68:	48 8d 05 e9 34 00 00 	lea    rax,[rip+0x34e9]        # 140005258 <.rdata+0x78>
   140001d6f:	48 89 c1             	mov    rcx,rax
   140001d72:	e8 c9 fc ff ff       	call   140001a40 <__report_error>
   140001d77:	8b 05 7b 73 00 00    	mov    eax,DWORD PTR [rip+0x737b]        # 1400090f8 <maxSections>
   140001d7d:	83 c0 01             	add    eax,0x1
   140001d80:	89 05 72 73 00 00    	mov    DWORD PTR [rip+0x7372],eax        # 1400090f8 <maxSections>
   140001d86:	eb 01                	jmp    140001d89 <mark_section_writable+0x2d9>
   140001d88:	90                   	nop
   140001d89:	48 83 c4 60          	add    rsp,0x60
   140001d8d:	5d                   	pop    rbp
   140001d8e:	c3                   	ret

0000000140001d8f <restore_modified_sections>:
   140001d8f:	55                   	push   rbp
   140001d90:	48 89 e5             	mov    rbp,rsp
   140001d93:	48 83 ec 30          	sub    rsp,0x30
   140001d97:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
   140001d9e:	e9 ad 00 00 00       	jmp    140001e50 <restore_modified_sections+0xc1>
   140001da3:	48 8b 0d 46 73 00 00 	mov    rcx,QWORD PTR [rip+0x7346]        # 1400090f0 <the_secs>
   140001daa:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001dad:	48 63 d0             	movsxd rdx,eax
   140001db0:	48 89 d0             	mov    rax,rdx
   140001db3:	48 c1 e0 02          	shl    rax,0x2
   140001db7:	48 01 d0             	add    rax,rdx
   140001dba:	48 c1 e0 03          	shl    rax,0x3
   140001dbe:	48 01 c8             	add    rax,rcx
   140001dc1:	8b 00                	mov    eax,DWORD PTR [rax]
   140001dc3:	85 c0                	test   eax,eax
   140001dc5:	0f 84 80 00 00 00    	je     140001e4b <restore_modified_sections+0xbc>
   140001dcb:	48 8b 0d 1e 73 00 00 	mov    rcx,QWORD PTR [rip+0x731e]        # 1400090f0 <the_secs>
   140001dd2:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001dd5:	48 63 d0             	movsxd rdx,eax
   140001dd8:	48 89 d0             	mov    rax,rdx
   140001ddb:	48 c1 e0 02          	shl    rax,0x2
   140001ddf:	48 01 d0             	add    rax,rdx
   140001de2:	48 c1 e0 03          	shl    rax,0x3
   140001de6:	48 01 c8             	add    rax,rcx
   140001de9:	44 8b 10             	mov    r10d,DWORD PTR [rax]
   140001dec:	48 8b 0d fd 72 00 00 	mov    rcx,QWORD PTR [rip+0x72fd]        # 1400090f0 <the_secs>
   140001df3:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001df6:	48 63 d0             	movsxd rdx,eax
   140001df9:	48 89 d0             	mov    rax,rdx
   140001dfc:	48 c1 e0 02          	shl    rax,0x2
   140001e00:	48 01 d0             	add    rax,rdx
   140001e03:	48 c1 e0 03          	shl    rax,0x3
   140001e07:	48 01 c8             	add    rax,rcx
   140001e0a:	48 8b 48 10          	mov    rcx,QWORD PTR [rax+0x10]
   140001e0e:	4c 8b 05 db 72 00 00 	mov    r8,QWORD PTR [rip+0x72db]        # 1400090f0 <the_secs>
   140001e15:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001e18:	48 63 d0             	movsxd rdx,eax
   140001e1b:	48 89 d0             	mov    rax,rdx
   140001e1e:	48 c1 e0 02          	shl    rax,0x2
   140001e22:	48 01 d0             	add    rax,rdx
   140001e25:	48 c1 e0 03          	shl    rax,0x3
   140001e29:	4c 01 c0             	add    rax,r8
   140001e2c:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
   140001e30:	48 8d 55 f8          	lea    rdx,[rbp-0x8]
   140001e34:	49 89 d1             	mov    r9,rdx
   140001e37:	45 89 d0             	mov    r8d,r10d
   140001e3a:	48 89 ca             	mov    rdx,rcx
   140001e3d:	48 89 c1             	mov    rcx,rax
   140001e40:	48 8b 05 c9 84 00 00 	mov    rax,QWORD PTR [rip+0x84c9]        # 14000a310 <__imp_VirtualProtect>
   140001e47:	ff d0                	call   rax
   140001e49:	eb 01                	jmp    140001e4c <restore_modified_sections+0xbd>
   140001e4b:	90                   	nop
   140001e4c:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
   140001e50:	8b 05 a2 72 00 00    	mov    eax,DWORD PTR [rip+0x72a2]        # 1400090f8 <maxSections>
   140001e56:	39 45 fc             	cmp    DWORD PTR [rbp-0x4],eax
   140001e59:	0f 8c 44 ff ff ff    	jl     140001da3 <restore_modified_sections+0x14>
   140001e5f:	90                   	nop
   140001e60:	90                   	nop
   140001e61:	48 83 c4 30          	add    rsp,0x30
   140001e65:	5d                   	pop    rbp
   140001e66:	c3                   	ret

0000000140001e67 <__write_memory>:
   140001e67:	55                   	push   rbp
   140001e68:	48 89 e5             	mov    rbp,rsp
   140001e6b:	48 83 ec 20          	sub    rsp,0x20
   140001e6f:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140001e73:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   140001e77:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   140001e7b:	48 83 7d 20 00       	cmp    QWORD PTR [rbp+0x20],0x0
   140001e80:	74 25                	je     140001ea7 <__write_memory+0x40>
   140001e82:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140001e86:	48 89 c1             	mov    rcx,rax
   140001e89:	e8 22 fc ff ff       	call   140001ab0 <mark_section_writable>
   140001e8e:	48 8b 4d 20          	mov    rcx,QWORD PTR [rbp+0x20]
   140001e92:	48 8b 55 18          	mov    rdx,QWORD PTR [rbp+0x18]
   140001e96:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140001e9a:	49 89 c8             	mov    r8,rcx
   140001e9d:	48 89 c1             	mov    rcx,rax
   140001ea0:	e8 53 13 00 00       	call   1400031f8 <memcpy>
   140001ea5:	eb 01                	jmp    140001ea8 <__write_memory+0x41>
   140001ea7:	90                   	nop
   140001ea8:	48 83 c4 20          	add    rsp,0x20
   140001eac:	5d                   	pop    rbp
   140001ead:	c3                   	ret

0000000140001eae <do_pseudo_reloc>:
   140001eae:	55                   	push   rbp
   140001eaf:	48 89 e5             	mov    rbp,rsp
   140001eb2:	48 83 c4 80          	add    rsp,0xffffffffffffff80
   140001eb6:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140001eba:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   140001ebe:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   140001ec2:	48 8b 45 18          	mov    rax,QWORD PTR [rbp+0x18]
   140001ec6:	48 2b 45 10          	sub    rax,QWORD PTR [rbp+0x10]
   140001eca:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
   140001ece:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140001ed2:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140001ed6:	48 83 7d e0 07       	cmp    QWORD PTR [rbp-0x20],0x7
   140001edb:	0f 8e 50 03 00 00    	jle    140002231 <do_pseudo_reloc+0x383>
   140001ee1:	48 83 7d e0 0b       	cmp    QWORD PTR [rbp-0x20],0xb
   140001ee6:	7e 25                	jle    140001f0d <do_pseudo_reloc+0x5f>
   140001ee8:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140001eec:	8b 00                	mov    eax,DWORD PTR [rax]
   140001eee:	85 c0                	test   eax,eax
   140001ef0:	75 1b                	jne    140001f0d <do_pseudo_reloc+0x5f>
   140001ef2:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140001ef6:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
   140001ef9:	85 c0                	test   eax,eax
   140001efb:	75 10                	jne    140001f0d <do_pseudo_reloc+0x5f>
   140001efd:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140001f01:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   140001f04:	85 c0                	test   eax,eax
   140001f06:	75 05                	jne    140001f0d <do_pseudo_reloc+0x5f>
   140001f08:	48 83 45 f8 0c       	add    QWORD PTR [rbp-0x8],0xc
   140001f0d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140001f11:	8b 00                	mov    eax,DWORD PTR [rax]
   140001f13:	85 c0                	test   eax,eax
   140001f15:	75 0b                	jne    140001f22 <do_pseudo_reloc+0x74>
   140001f17:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140001f1b:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
   140001f1e:	85 c0                	test   eax,eax
   140001f20:	74 59                	je     140001f7b <do_pseudo_reloc+0xcd>
   140001f22:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140001f26:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
   140001f2a:	eb 40                	jmp    140001f6c <do_pseudo_reloc+0xbe>
   140001f2c:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140001f30:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
   140001f33:	89 c2                	mov    edx,eax
   140001f35:	48 8b 45 20          	mov    rax,QWORD PTR [rbp+0x20]
   140001f39:	48 01 d0             	add    rax,rdx
   140001f3c:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
   140001f40:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140001f44:	8b 10                	mov    edx,DWORD PTR [rax]
   140001f46:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140001f4a:	8b 00                	mov    eax,DWORD PTR [rax]
   140001f4c:	01 d0                	add    eax,edx
   140001f4e:	89 45 b4             	mov    DWORD PTR [rbp-0x4c],eax
   140001f51:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140001f55:	48 8d 55 b4          	lea    rdx,[rbp-0x4c]
   140001f59:	41 b8 04 00 00 00    	mov    r8d,0x4
   140001f5f:	48 89 c1             	mov    rcx,rax
   140001f62:	e8 00 ff ff ff       	call   140001e67 <__write_memory>
   140001f67:	48 83 45 e8 08       	add    QWORD PTR [rbp-0x18],0x8
   140001f6c:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140001f70:	48 3b 45 18          	cmp    rax,QWORD PTR [rbp+0x18]
   140001f74:	72 b6                	jb     140001f2c <do_pseudo_reloc+0x7e>
   140001f76:	e9 b7 02 00 00       	jmp    140002232 <do_pseudo_reloc+0x384>
   140001f7b:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140001f7f:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   140001f82:	83 f8 01             	cmp    eax,0x1
   140001f85:	74 18                	je     140001f9f <do_pseudo_reloc+0xf1>
   140001f87:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140001f8b:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   140001f8e:	89 c2                	mov    edx,eax
   140001f90:	48 8d 05 e9 32 00 00 	lea    rax,[rip+0x32e9]        # 140005280 <.rdata+0xa0>
   140001f97:	48 89 c1             	mov    rcx,rax
   140001f9a:	e8 a1 fa ff ff       	call   140001a40 <__report_error>
   140001f9f:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140001fa3:	48 83 c0 0c          	add    rax,0xc
   140001fa7:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140001fab:	e9 71 02 00 00       	jmp    140002221 <do_pseudo_reloc+0x373>
   140001fb0:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140001fb4:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
   140001fb7:	89 c2                	mov    edx,eax
   140001fb9:	48 8b 45 20          	mov    rax,QWORD PTR [rbp+0x20]
   140001fbd:	48 01 d0             	add    rax,rdx
   140001fc0:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
   140001fc4:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140001fc8:	8b 00                	mov    eax,DWORD PTR [rax]
   140001fca:	89 c2                	mov    edx,eax
   140001fcc:	48 8b 45 20          	mov    rax,QWORD PTR [rbp+0x20]
   140001fd0:	48 01 d0             	add    rax,rdx
   140001fd3:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
   140001fd7:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
   140001fdb:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140001fde:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
   140001fe2:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140001fe6:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   140001fe9:	0f b6 c0             	movzx  eax,al
   140001fec:	83 f8 40             	cmp    eax,0x40
   140001fef:	0f 84 b6 00 00 00    	je     1400020ab <do_pseudo_reloc+0x1fd>
   140001ff5:	83 f8 40             	cmp    eax,0x40
   140001ff8:	0f 87 ba 00 00 00    	ja     1400020b8 <do_pseudo_reloc+0x20a>
   140001ffe:	83 f8 20             	cmp    eax,0x20
   140002001:	74 77                	je     14000207a <do_pseudo_reloc+0x1cc>
   140002003:	83 f8 20             	cmp    eax,0x20
   140002006:	0f 87 ac 00 00 00    	ja     1400020b8 <do_pseudo_reloc+0x20a>
   14000200c:	83 f8 08             	cmp    eax,0x8
   14000200f:	74 0a                	je     14000201b <do_pseudo_reloc+0x16d>
   140002011:	83 f8 10             	cmp    eax,0x10
   140002014:	74 38                	je     14000204e <do_pseudo_reloc+0x1a0>
   140002016:	e9 9d 00 00 00       	jmp    1400020b8 <do_pseudo_reloc+0x20a>
   14000201b:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   14000201f:	0f b6 00             	movzx  eax,BYTE PTR [rax]
   140002022:	0f b6 c0             	movzx  eax,al
   140002025:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   140002029:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   14000202d:	25 80 00 00 00       	and    eax,0x80
   140002032:	48 85 c0             	test   rax,rax
   140002035:	0f 84 a0 00 00 00    	je     1400020db <do_pseudo_reloc+0x22d>
   14000203b:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   14000203f:	48 0d 00 ff ff ff    	or     rax,0xffffffffffffff00
   140002045:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   140002049:	e9 8d 00 00 00       	jmp    1400020db <do_pseudo_reloc+0x22d>
   14000204e:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002052:	0f b7 00             	movzx  eax,WORD PTR [rax]
   140002055:	0f b7 c0             	movzx  eax,ax
   140002058:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   14000205c:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   140002060:	25 00 80 00 00       	and    eax,0x8000
   140002065:	48 85 c0             	test   rax,rax
   140002068:	74 74                	je     1400020de <do_pseudo_reloc+0x230>
   14000206a:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   14000206e:	48 0d 00 00 ff ff    	or     rax,0xffffffffffff0000
   140002074:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   140002078:	eb 64                	jmp    1400020de <do_pseudo_reloc+0x230>
   14000207a:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   14000207e:	8b 00                	mov    eax,DWORD PTR [rax]
   140002080:	89 c0                	mov    eax,eax
   140002082:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   140002086:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   14000208a:	25 00 00 00 80       	and    eax,0x80000000
   14000208f:	48 85 c0             	test   rax,rax
   140002092:	74 4d                	je     1400020e1 <do_pseudo_reloc+0x233>
   140002094:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   140002098:	48 ba 00 00 00 00 ff 	movabs rdx,0xffffffff00000000
   14000209f:	ff ff ff 
   1400020a2:	48 09 d0             	or     rax,rdx
   1400020a5:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   1400020a9:	eb 36                	jmp    1400020e1 <do_pseudo_reloc+0x233>
   1400020ab:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   1400020af:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400020b2:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   1400020b6:	eb 2a                	jmp    1400020e2 <do_pseudo_reloc+0x234>
   1400020b8:	48 c7 45 b8 00 00 00 	mov    QWORD PTR [rbp-0x48],0x0
   1400020bf:	00 
   1400020c0:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400020c4:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   1400020c7:	0f b6 c0             	movzx  eax,al
   1400020ca:	89 c2                	mov    edx,eax
   1400020cc:	48 8d 05 e5 31 00 00 	lea    rax,[rip+0x31e5]        # 1400052b8 <.rdata+0xd8>
   1400020d3:	48 89 c1             	mov    rcx,rax
   1400020d6:	e8 65 f9 ff ff       	call   140001a40 <__report_error>
   1400020db:	90                   	nop
   1400020dc:	eb 04                	jmp    1400020e2 <do_pseudo_reloc+0x234>
   1400020de:	90                   	nop
   1400020df:	eb 01                	jmp    1400020e2 <do_pseudo_reloc+0x234>
   1400020e1:	90                   	nop
   1400020e2:	48 8b 4d b8          	mov    rcx,QWORD PTR [rbp-0x48]
   1400020e6:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400020ea:	8b 00                	mov    eax,DWORD PTR [rax]
   1400020ec:	89 c2                	mov    edx,eax
   1400020ee:	48 8b 45 20          	mov    rax,QWORD PTR [rbp+0x20]
   1400020f2:	48 01 c2             	add    rdx,rax
   1400020f5:	48 89 c8             	mov    rax,rcx
   1400020f8:	48 29 d0             	sub    rax,rdx
   1400020fb:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   1400020ff:	48 8b 55 b8          	mov    rdx,QWORD PTR [rbp-0x48]
   140002103:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
   140002107:	48 01 d0             	add    rax,rdx
   14000210a:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   14000210e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002112:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   140002115:	25 ff 00 00 00       	and    eax,0xff
   14000211a:	89 45 d4             	mov    DWORD PTR [rbp-0x2c],eax
   14000211d:	83 7d d4 3f          	cmp    DWORD PTR [rbp-0x2c],0x3f
   140002121:	77 70                	ja     140002193 <do_pseudo_reloc+0x2e5>
   140002123:	8b 45 d4             	mov    eax,DWORD PTR [rbp-0x2c]
   140002126:	ba 01 00 00 00       	mov    edx,0x1
   14000212b:	89 c1                	mov    ecx,eax
   14000212d:	48 d3 e2             	shl    rdx,cl
   140002130:	48 89 d0             	mov    rax,rdx
   140002133:	48 83 e8 01          	sub    rax,0x1
   140002137:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
   14000213b:	8b 45 d4             	mov    eax,DWORD PTR [rbp-0x2c]
   14000213e:	83 e8 01             	sub    eax,0x1
   140002141:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
   140002148:	89 c1                	mov    ecx,eax
   14000214a:	48 d3 e2             	shl    rdx,cl
   14000214d:	48 89 d0             	mov    rax,rdx
   140002150:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax
   140002154:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   140002158:	48 39 45 c8          	cmp    QWORD PTR [rbp-0x38],rax
   14000215c:	7c 0a                	jl     140002168 <do_pseudo_reloc+0x2ba>
   14000215e:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   140002162:	48 39 45 c0          	cmp    QWORD PTR [rbp-0x40],rax
   140002166:	7e 2b                	jle    140002193 <do_pseudo_reloc+0x2e5>
   140002168:	48 8b 55 b8          	mov    rdx,QWORD PTR [rbp-0x48]
   14000216c:	4c 8b 45 d8          	mov    r8,QWORD PTR [rbp-0x28]
   140002170:	48 8b 4d e0          	mov    rcx,QWORD PTR [rbp-0x20]
   140002174:	8b 45 d4             	mov    eax,DWORD PTR [rbp-0x2c]
   140002177:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
   14000217c:	4d 89 c1             	mov    r9,r8
   14000217f:	49 89 c8             	mov    r8,rcx
   140002182:	89 c2                	mov    edx,eax
   140002184:	48 8d 05 5d 31 00 00 	lea    rax,[rip+0x315d]        # 1400052e8 <.rdata+0x108>
   14000218b:	48 89 c1             	mov    rcx,rax
   14000218e:	e8 ad f8 ff ff       	call   140001a40 <__report_error>
   140002193:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002197:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   14000219a:	0f b6 c0             	movzx  eax,al
   14000219d:	83 f8 40             	cmp    eax,0x40
   1400021a0:	74 63                	je     140002205 <do_pseudo_reloc+0x357>
   1400021a2:	83 f8 40             	cmp    eax,0x40
   1400021a5:	77 75                	ja     14000221c <do_pseudo_reloc+0x36e>
   1400021a7:	83 f8 20             	cmp    eax,0x20
   1400021aa:	74 41                	je     1400021ed <do_pseudo_reloc+0x33f>
   1400021ac:	83 f8 20             	cmp    eax,0x20
   1400021af:	77 6b                	ja     14000221c <do_pseudo_reloc+0x36e>
   1400021b1:	83 f8 08             	cmp    eax,0x8
   1400021b4:	74 07                	je     1400021bd <do_pseudo_reloc+0x30f>
   1400021b6:	83 f8 10             	cmp    eax,0x10
   1400021b9:	74 1a                	je     1400021d5 <do_pseudo_reloc+0x327>
   1400021bb:	eb 5f                	jmp    14000221c <do_pseudo_reloc+0x36e>
   1400021bd:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   1400021c1:	48 8d 55 b8          	lea    rdx,[rbp-0x48]
   1400021c5:	41 b8 01 00 00 00    	mov    r8d,0x1
   1400021cb:	48 89 c1             	mov    rcx,rax
   1400021ce:	e8 94 fc ff ff       	call   140001e67 <__write_memory>
   1400021d3:	eb 47                	jmp    14000221c <do_pseudo_reloc+0x36e>
   1400021d5:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   1400021d9:	48 8d 55 b8          	lea    rdx,[rbp-0x48]
   1400021dd:	41 b8 02 00 00 00    	mov    r8d,0x2
   1400021e3:	48 89 c1             	mov    rcx,rax
   1400021e6:	e8 7c fc ff ff       	call   140001e67 <__write_memory>
   1400021eb:	eb 2f                	jmp    14000221c <do_pseudo_reloc+0x36e>
   1400021ed:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   1400021f1:	48 8d 55 b8          	lea    rdx,[rbp-0x48]
   1400021f5:	41 b8 04 00 00 00    	mov    r8d,0x4
   1400021fb:	48 89 c1             	mov    rcx,rax
   1400021fe:	e8 64 fc ff ff       	call   140001e67 <__write_memory>
   140002203:	eb 17                	jmp    14000221c <do_pseudo_reloc+0x36e>
   140002205:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002209:	48 8d 55 b8          	lea    rdx,[rbp-0x48]
   14000220d:	41 b8 08 00 00 00    	mov    r8d,0x8
   140002213:	48 89 c1             	mov    rcx,rax
   140002216:	e8 4c fc ff ff       	call   140001e67 <__write_memory>
   14000221b:	90                   	nop
   14000221c:	48 83 45 f0 0c       	add    QWORD PTR [rbp-0x10],0xc
   140002221:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002225:	48 3b 45 18          	cmp    rax,QWORD PTR [rbp+0x18]
   140002229:	0f 82 81 fd ff ff    	jb     140001fb0 <do_pseudo_reloc+0x102>
   14000222f:	eb 01                	jmp    140002232 <do_pseudo_reloc+0x384>
   140002231:	90                   	nop
   140002232:	48 83 ec 80          	sub    rsp,0xffffffffffffff80
   140002236:	5d                   	pop    rbp
   140002237:	c3                   	ret

0000000140002238 <_pei386_runtime_relocator>:
   140002238:	55                   	push   rbp
   140002239:	48 89 e5             	mov    rbp,rsp
   14000223c:	48 83 ec 30          	sub    rsp,0x30
   140002240:	8b 05 b6 6e 00 00    	mov    eax,DWORD PTR [rip+0x6eb6]        # 1400090fc <was_init.0>
   140002246:	85 c0                	test   eax,eax
   140002248:	0f 85 88 00 00 00    	jne    1400022d6 <_pei386_runtime_relocator+0x9e>
   14000224e:	8b 05 a8 6e 00 00    	mov    eax,DWORD PTR [rip+0x6ea8]        # 1400090fc <was_init.0>
   140002254:	83 c0 01             	add    eax,0x1
   140002257:	89 05 9f 6e 00 00    	mov    DWORD PTR [rip+0x6e9f],eax        # 1400090fc <was_init.0>
   14000225d:	e8 79 08 00 00       	call   140002adb <__mingw_GetSectionCount>
   140002262:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   140002265:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140002268:	48 63 d0             	movsxd rdx,eax
   14000226b:	48 89 d0             	mov    rax,rdx
   14000226e:	48 c1 e0 02          	shl    rax,0x2
   140002272:	48 01 d0             	add    rax,rdx
   140002275:	48 c1 e0 03          	shl    rax,0x3
   140002279:	48 83 c0 0f          	add    rax,0xf
   14000227d:	48 c1 e8 04          	shr    rax,0x4
   140002281:	48 c1 e0 04          	shl    rax,0x4
   140002285:	e8 d6 0a 00 00       	call   140002d60 <___chkstk_ms>
   14000228a:	48 29 c4             	sub    rsp,rax
   14000228d:	48 8d 44 24 20       	lea    rax,[rsp+0x20]
   140002292:	48 83 c0 0f          	add    rax,0xf
   140002296:	48 c1 e8 04          	shr    rax,0x4
   14000229a:	48 c1 e0 04          	shl    rax,0x4
   14000229e:	48 89 05 4b 6e 00 00 	mov    QWORD PTR [rip+0x6e4b],rax        # 1400090f0 <the_secs>
   1400022a5:	c7 05 49 6e 00 00 00 	mov    DWORD PTR [rip+0x6e49],0x0        # 1400090f8 <maxSections>
   1400022ac:	00 00 00 
   1400022af:	4c 8b 05 4a 31 00 00 	mov    r8,QWORD PTR [rip+0x314a]        # 140005400 <.refptr.__image_base__>
   1400022b6:	48 8b 05 03 31 00 00 	mov    rax,QWORD PTR [rip+0x3103]        # 1400053c0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   1400022bd:	48 89 c2             	mov    rdx,rax
   1400022c0:	48 8b 05 09 31 00 00 	mov    rax,QWORD PTR [rip+0x3109]        # 1400053d0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   1400022c7:	48 89 c1             	mov    rcx,rax
   1400022ca:	e8 df fb ff ff       	call   140001eae <do_pseudo_reloc>
   1400022cf:	e8 bb fa ff ff       	call   140001d8f <restore_modified_sections>
   1400022d4:	eb 01                	jmp    1400022d7 <_pei386_runtime_relocator+0x9f>
   1400022d6:	90                   	nop
   1400022d7:	48 89 ec             	mov    rsp,rbp
   1400022da:	5d                   	pop    rbp
   1400022db:	c3                   	ret
   1400022dc:	90                   	nop
   1400022dd:	90                   	nop
   1400022de:	90                   	nop
   1400022df:	90                   	nop

00000001400022e0 <__mingw_raise_matherr>:
   1400022e0:	55                   	push   rbp
   1400022e1:	48 89 e5             	mov    rbp,rsp
   1400022e4:	48 83 ec 50          	sub    rsp,0x50
   1400022e8:	89 4d 10             	mov    DWORD PTR [rbp+0x10],ecx
   1400022eb:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   1400022ef:	f2 0f 11 55 20       	movsd  QWORD PTR [rbp+0x20],xmm2
   1400022f4:	f2 0f 11 5d 28       	movsd  QWORD PTR [rbp+0x28],xmm3
   1400022f9:	48 8b 05 00 6e 00 00 	mov    rax,QWORD PTR [rip+0x6e00]        # 140009100 <stUserMathErr>
   140002300:	48 85 c0             	test   rax,rax
   140002303:	74 3e                	je     140002343 <__mingw_raise_matherr+0x63>
   140002305:	8b 45 10             	mov    eax,DWORD PTR [rbp+0x10]
   140002308:	89 45 d0             	mov    DWORD PTR [rbp-0x30],eax
   14000230b:	48 8b 45 18          	mov    rax,QWORD PTR [rbp+0x18]
   14000230f:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
   140002313:	f2 0f 10 45 20       	movsd  xmm0,QWORD PTR [rbp+0x20]
   140002318:	f2 0f 11 45 e0       	movsd  QWORD PTR [rbp-0x20],xmm0
   14000231d:	f2 0f 10 45 28       	movsd  xmm0,QWORD PTR [rbp+0x28]
   140002322:	f2 0f 11 45 e8       	movsd  QWORD PTR [rbp-0x18],xmm0
   140002327:	f2 0f 10 45 30       	movsd  xmm0,QWORD PTR [rbp+0x30]
   14000232c:	f2 0f 11 45 f0       	movsd  QWORD PTR [rbp-0x10],xmm0
   140002331:	48 8b 15 c8 6d 00 00 	mov    rdx,QWORD PTR [rip+0x6dc8]        # 140009100 <stUserMathErr>
   140002338:	48 8d 45 d0          	lea    rax,[rbp-0x30]
   14000233c:	48 89 c1             	mov    rcx,rax
   14000233f:	ff d2                	call   rdx
   140002341:	eb 01                	jmp    140002344 <__mingw_raise_matherr+0x64>
   140002343:	90                   	nop
   140002344:	48 83 c4 50          	add    rsp,0x50
   140002348:	5d                   	pop    rbp
   140002349:	c3                   	ret

000000014000234a <__mingw_setusermatherr>:
   14000234a:	55                   	push   rbp
   14000234b:	48 89 e5             	mov    rbp,rsp
   14000234e:	48 83 ec 20          	sub    rsp,0x20
   140002352:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002356:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   14000235a:	48 89 05 9f 6d 00 00 	mov    QWORD PTR [rip+0x6d9f],rax        # 140009100 <stUserMathErr>
   140002361:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002365:	48 89 c1             	mov    rcx,rax
   140002368:	e8 93 0e 00 00       	call   140003200 <__setusermatherr>
   14000236d:	90                   	nop
   14000236e:	48 83 c4 20          	add    rsp,0x20
   140002372:	5d                   	pop    rbp
   140002373:	c3                   	ret
   140002374:	90                   	nop
   140002375:	90                   	nop
   140002376:	90                   	nop
   140002377:	90                   	nop
   140002378:	90                   	nop
   140002379:	90                   	nop
   14000237a:	90                   	nop
   14000237b:	90                   	nop
   14000237c:	90                   	nop
   14000237d:	90                   	nop
   14000237e:	90                   	nop
   14000237f:	90                   	nop

0000000140002380 <_gnu_exception_handler>:
   140002380:	55                   	push   rbp
   140002381:	48 89 e5             	mov    rbp,rsp
   140002384:	48 83 ec 30          	sub    rsp,0x30
   140002388:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   14000238c:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
   140002393:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
   14000239a:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   14000239e:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400023a1:	8b 00                	mov    eax,DWORD PTR [rax]
   1400023a3:	25 ff ff ff 20       	and    eax,0x20ffffff
   1400023a8:	3d 43 43 47 20       	cmp    eax,0x20474343
   1400023ad:	75 1b                	jne    1400023ca <_gnu_exception_handler+0x4a>
   1400023af:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   1400023b3:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400023b6:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
   1400023b9:	83 e0 01             	and    eax,0x1
   1400023bc:	85 c0                	test   eax,eax
   1400023be:	75 0a                	jne    1400023ca <_gnu_exception_handler+0x4a>
   1400023c0:	b8 ff ff ff ff       	mov    eax,0xffffffff
   1400023c5:	e9 d3 01 00 00       	jmp    14000259d <_gnu_exception_handler+0x21d>
   1400023ca:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   1400023ce:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400023d1:	8b 00                	mov    eax,DWORD PTR [rax]
   1400023d3:	3d 96 00 00 c0       	cmp    eax,0xc0000096
   1400023d8:	0f 87 8d 01 00 00    	ja     14000256b <_gnu_exception_handler+0x1eb>
   1400023de:	3d 8c 00 00 c0       	cmp    eax,0xc000008c
   1400023e3:	73 43                	jae    140002428 <_gnu_exception_handler+0xa8>
   1400023e5:	3d 1d 00 00 c0       	cmp    eax,0xc000001d
   1400023ea:	0f 84 bf 00 00 00    	je     1400024af <_gnu_exception_handler+0x12f>
   1400023f0:	3d 1d 00 00 c0       	cmp    eax,0xc000001d
   1400023f5:	0f 87 70 01 00 00    	ja     14000256b <_gnu_exception_handler+0x1eb>
   1400023fb:	3d 08 00 00 c0       	cmp    eax,0xc0000008
   140002400:	0f 84 5c 01 00 00    	je     140002562 <_gnu_exception_handler+0x1e2>
   140002406:	3d 08 00 00 c0       	cmp    eax,0xc0000008
   14000240b:	0f 87 5a 01 00 00    	ja     14000256b <_gnu_exception_handler+0x1eb>
   140002411:	3d 02 00 00 80       	cmp    eax,0x80000002
   140002416:	0f 84 46 01 00 00    	je     140002562 <_gnu_exception_handler+0x1e2>
   14000241c:	3d 05 00 00 c0       	cmp    eax,0xc0000005
   140002421:	74 35                	je     140002458 <_gnu_exception_handler+0xd8>
   140002423:	e9 43 01 00 00       	jmp    14000256b <_gnu_exception_handler+0x1eb>
   140002428:	05 74 ff ff 3f       	add    eax,0x3fffff74
   14000242d:	83 f8 0a             	cmp    eax,0xa
   140002430:	0f 87 35 01 00 00    	ja     14000256b <_gnu_exception_handler+0x1eb>
   140002436:	89 c0                	mov    eax,eax
   140002438:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
   14000243f:	00 
   140002440:	48 8d 05 f9 2e 00 00 	lea    rax,[rip+0x2ef9]        # 140005340 <.rdata>
   140002447:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
   14000244a:	48 98                	cdqe
   14000244c:	48 8d 15 ed 2e 00 00 	lea    rdx,[rip+0x2eed]        # 140005340 <.rdata>
   140002453:	48 01 d0             	add    rax,rdx
   140002456:	ff e0                	jmp    rax
   140002458:	ba 00 00 00 00       	mov    edx,0x0
   14000245d:	b9 0b 00 00 00       	mov    ecx,0xb
   140002462:	e8 79 0d 00 00       	call   1400031e0 <signal>
   140002467:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   14000246b:	48 83 7d f0 01       	cmp    QWORD PTR [rbp-0x10],0x1
   140002470:	75 1b                	jne    14000248d <_gnu_exception_handler+0x10d>
   140002472:	ba 01 00 00 00       	mov    edx,0x1
   140002477:	b9 0b 00 00 00       	mov    ecx,0xb
   14000247c:	e8 5f 0d 00 00       	call   1400031e0 <signal>
   140002481:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [rbp-0x4],0xffffffff
   140002488:	e9 e1 00 00 00       	jmp    14000256e <_gnu_exception_handler+0x1ee>
   14000248d:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
   140002492:	0f 84 d6 00 00 00    	je     14000256e <_gnu_exception_handler+0x1ee>
   140002498:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   14000249c:	b9 0b 00 00 00       	mov    ecx,0xb
   1400024a1:	ff d0                	call   rax
   1400024a3:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [rbp-0x4],0xffffffff
   1400024aa:	e9 bf 00 00 00       	jmp    14000256e <_gnu_exception_handler+0x1ee>
   1400024af:	ba 00 00 00 00       	mov    edx,0x0
   1400024b4:	b9 04 00 00 00       	mov    ecx,0x4
   1400024b9:	e8 22 0d 00 00       	call   1400031e0 <signal>
   1400024be:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   1400024c2:	48 83 7d f0 01       	cmp    QWORD PTR [rbp-0x10],0x1
   1400024c7:	75 1b                	jne    1400024e4 <_gnu_exception_handler+0x164>
   1400024c9:	ba 01 00 00 00       	mov    edx,0x1
   1400024ce:	b9 04 00 00 00       	mov    ecx,0x4
   1400024d3:	e8 08 0d 00 00       	call   1400031e0 <signal>
   1400024d8:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [rbp-0x4],0xffffffff
   1400024df:	e9 8d 00 00 00       	jmp    140002571 <_gnu_exception_handler+0x1f1>
   1400024e4:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
   1400024e9:	0f 84 82 00 00 00    	je     140002571 <_gnu_exception_handler+0x1f1>
   1400024ef:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400024f3:	b9 04 00 00 00       	mov    ecx,0x4
   1400024f8:	ff d0                	call   rax
   1400024fa:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [rbp-0x4],0xffffffff
   140002501:	eb 6e                	jmp    140002571 <_gnu_exception_handler+0x1f1>
   140002503:	c7 45 f8 01 00 00 00 	mov    DWORD PTR [rbp-0x8],0x1
   14000250a:	ba 00 00 00 00       	mov    edx,0x0
   14000250f:	b9 08 00 00 00       	mov    ecx,0x8
   140002514:	e8 c7 0c 00 00       	call   1400031e0 <signal>
   140002519:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   14000251d:	48 83 7d f0 01       	cmp    QWORD PTR [rbp-0x10],0x1
   140002522:	75 23                	jne    140002547 <_gnu_exception_handler+0x1c7>
   140002524:	ba 01 00 00 00       	mov    edx,0x1
   140002529:	b9 08 00 00 00       	mov    ecx,0x8
   14000252e:	e8 ad 0c 00 00       	call   1400031e0 <signal>
   140002533:	83 7d f8 00          	cmp    DWORD PTR [rbp-0x8],0x0
   140002537:	74 05                	je     14000253e <_gnu_exception_handler+0x1be>
   140002539:	e8 f2 f4 ff ff       	call   140001a30 <_fpreset>
   14000253e:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [rbp-0x4],0xffffffff
   140002545:	eb 2d                	jmp    140002574 <_gnu_exception_handler+0x1f4>
   140002547:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
   14000254c:	74 26                	je     140002574 <_gnu_exception_handler+0x1f4>
   14000254e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002552:	b9 08 00 00 00       	mov    ecx,0x8
   140002557:	ff d0                	call   rax
   140002559:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [rbp-0x4],0xffffffff
   140002560:	eb 12                	jmp    140002574 <_gnu_exception_handler+0x1f4>
   140002562:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [rbp-0x4],0xffffffff
   140002569:	eb 0a                	jmp    140002575 <_gnu_exception_handler+0x1f5>
   14000256b:	90                   	nop
   14000256c:	eb 07                	jmp    140002575 <_gnu_exception_handler+0x1f5>
   14000256e:	90                   	nop
   14000256f:	eb 04                	jmp    140002575 <_gnu_exception_handler+0x1f5>
   140002571:	90                   	nop
   140002572:	eb 01                	jmp    140002575 <_gnu_exception_handler+0x1f5>
   140002574:	90                   	nop
   140002575:	83 7d fc 00          	cmp    DWORD PTR [rbp-0x4],0x0
   140002579:	75 1f                	jne    14000259a <_gnu_exception_handler+0x21a>
   14000257b:	48 8b 05 9e 6b 00 00 	mov    rax,QWORD PTR [rip+0x6b9e]        # 140009120 <__mingw_oldexcpt_handler>
   140002582:	48 85 c0             	test   rax,rax
   140002585:	74 13                	je     14000259a <_gnu_exception_handler+0x21a>
   140002587:	48 8b 15 92 6b 00 00 	mov    rdx,QWORD PTR [rip+0x6b92]        # 140009120 <__mingw_oldexcpt_handler>
   14000258e:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002592:	48 89 c1             	mov    rcx,rax
   140002595:	ff d2                	call   rdx
   140002597:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   14000259a:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   14000259d:	48 83 c4 30          	add    rsp,0x30
   1400025a1:	5d                   	pop    rbp
   1400025a2:	c3                   	ret
   1400025a3:	90                   	nop
   1400025a4:	90                   	nop
   1400025a5:	90                   	nop
   1400025a6:	90                   	nop
   1400025a7:	90                   	nop
   1400025a8:	90                   	nop
   1400025a9:	90                   	nop
   1400025aa:	90                   	nop
   1400025ab:	90                   	nop
   1400025ac:	90                   	nop
   1400025ad:	90                   	nop
   1400025ae:	90                   	nop
   1400025af:	90                   	nop

00000001400025b0 <___w64_mingwthr_add_key_dtor>:
   1400025b0:	55                   	push   rbp
   1400025b1:	48 89 e5             	mov    rbp,rsp
   1400025b4:	48 83 ec 30          	sub    rsp,0x30
   1400025b8:	89 4d 10             	mov    DWORD PTR [rbp+0x10],ecx
   1400025bb:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   1400025bf:	8b 05 a3 6b 00 00    	mov    eax,DWORD PTR [rip+0x6ba3]        # 140009168 <__mingwthr_cs_init>
   1400025c5:	85 c0                	test   eax,eax
   1400025c7:	75 07                	jne    1400025d0 <___w64_mingwthr_add_key_dtor+0x20>
   1400025c9:	b8 00 00 00 00       	mov    eax,0x0
   1400025ce:	eb 7b                	jmp    14000264b <___w64_mingwthr_add_key_dtor+0x9b>
   1400025d0:	ba 18 00 00 00       	mov    edx,0x18
   1400025d5:	b9 01 00 00 00       	mov    ecx,0x1
   1400025da:	e8 39 0c 00 00       	call   140003218 <calloc>
   1400025df:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   1400025e3:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
   1400025e8:	75 07                	jne    1400025f1 <___w64_mingwthr_add_key_dtor+0x41>
   1400025ea:	b8 ff ff ff ff       	mov    eax,0xffffffff
   1400025ef:	eb 5a                	jmp    14000264b <___w64_mingwthr_add_key_dtor+0x9b>
   1400025f1:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400025f5:	8b 55 10             	mov    edx,DWORD PTR [rbp+0x10]
   1400025f8:	89 10                	mov    DWORD PTR [rax],edx
   1400025fa:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400025fe:	48 8b 55 18          	mov    rdx,QWORD PTR [rbp+0x18]
   140002602:	48 89 50 08          	mov    QWORD PTR [rax+0x8],rdx
   140002606:	48 8d 05 33 6b 00 00 	lea    rax,[rip+0x6b33]        # 140009140 <__mingwthr_cs>
   14000260d:	48 89 c1             	mov    rcx,rax
   140002610:	48 8b 05 a1 7c 00 00 	mov    rax,QWORD PTR [rip+0x7ca1]        # 14000a2b8 <__imp_EnterCriticalSection>
   140002617:	ff d0                	call   rax
   140002619:	48 8b 15 50 6b 00 00 	mov    rdx,QWORD PTR [rip+0x6b50]        # 140009170 <key_dtor_list>
   140002620:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002624:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
   140002628:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   14000262c:	48 89 05 3d 6b 00 00 	mov    QWORD PTR [rip+0x6b3d],rax        # 140009170 <key_dtor_list>
   140002633:	48 8d 05 06 6b 00 00 	lea    rax,[rip+0x6b06]        # 140009140 <__mingwthr_cs>
   14000263a:	48 89 c1             	mov    rcx,rax
   14000263d:	48 8b 05 a4 7c 00 00 	mov    rax,QWORD PTR [rip+0x7ca4]        # 14000a2e8 <__imp_LeaveCriticalSection>
   140002644:	ff d0                	call   rax
   140002646:	b8 00 00 00 00       	mov    eax,0x0
   14000264b:	48 83 c4 30          	add    rsp,0x30
   14000264f:	5d                   	pop    rbp
   140002650:	c3                   	ret

0000000140002651 <___w64_mingwthr_remove_key_dtor>:
   140002651:	55                   	push   rbp
   140002652:	48 89 e5             	mov    rbp,rsp
   140002655:	48 83 ec 30          	sub    rsp,0x30
   140002659:	89 4d 10             	mov    DWORD PTR [rbp+0x10],ecx
   14000265c:	8b 05 06 6b 00 00    	mov    eax,DWORD PTR [rip+0x6b06]        # 140009168 <__mingwthr_cs_init>
   140002662:	85 c0                	test   eax,eax
   140002664:	75 0a                	jne    140002670 <___w64_mingwthr_remove_key_dtor+0x1f>
   140002666:	b8 00 00 00 00       	mov    eax,0x0
   14000266b:	e9 9c 00 00 00       	jmp    14000270c <___w64_mingwthr_remove_key_dtor+0xbb>
   140002670:	48 8d 05 c9 6a 00 00 	lea    rax,[rip+0x6ac9]        # 140009140 <__mingwthr_cs>
   140002677:	48 89 c1             	mov    rcx,rax
   14000267a:	48 8b 05 37 7c 00 00 	mov    rax,QWORD PTR [rip+0x7c37]        # 14000a2b8 <__imp_EnterCriticalSection>
   140002681:	ff d0                	call   rax
   140002683:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
   14000268a:	00 
   14000268b:	48 8b 05 de 6a 00 00 	mov    rax,QWORD PTR [rip+0x6ade]        # 140009170 <key_dtor_list>
   140002692:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140002696:	eb 55                	jmp    1400026ed <___w64_mingwthr_remove_key_dtor+0x9c>
   140002698:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   14000269c:	8b 00                	mov    eax,DWORD PTR [rax]
   14000269e:	39 45 10             	cmp    DWORD PTR [rbp+0x10],eax
   1400026a1:	75 36                	jne    1400026d9 <___w64_mingwthr_remove_key_dtor+0x88>
   1400026a3:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
   1400026a8:	75 11                	jne    1400026bb <___w64_mingwthr_remove_key_dtor+0x6a>
   1400026aa:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400026ae:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
   1400026b2:	48 89 05 b7 6a 00 00 	mov    QWORD PTR [rip+0x6ab7],rax        # 140009170 <key_dtor_list>
   1400026b9:	eb 10                	jmp    1400026cb <___w64_mingwthr_remove_key_dtor+0x7a>
   1400026bb:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400026bf:	48 8b 50 10          	mov    rdx,QWORD PTR [rax+0x10]
   1400026c3:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400026c7:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
   1400026cb:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400026cf:	48 89 c1             	mov    rcx,rax
   1400026d2:	e8 49 0b 00 00       	call   140003220 <free>
   1400026d7:	eb 1b                	jmp    1400026f4 <___w64_mingwthr_remove_key_dtor+0xa3>
   1400026d9:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400026dd:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   1400026e1:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400026e5:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
   1400026e9:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   1400026ed:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
   1400026f2:	75 a4                	jne    140002698 <___w64_mingwthr_remove_key_dtor+0x47>
   1400026f4:	48 8d 05 45 6a 00 00 	lea    rax,[rip+0x6a45]        # 140009140 <__mingwthr_cs>
   1400026fb:	48 89 c1             	mov    rcx,rax
   1400026fe:	48 8b 05 e3 7b 00 00 	mov    rax,QWORD PTR [rip+0x7be3]        # 14000a2e8 <__imp_LeaveCriticalSection>
   140002705:	ff d0                	call   rax
   140002707:	b8 00 00 00 00       	mov    eax,0x0
   14000270c:	48 83 c4 30          	add    rsp,0x30
   140002710:	5d                   	pop    rbp
   140002711:	c3                   	ret

0000000140002712 <__mingwthr_run_key_dtors>:
   140002712:	55                   	push   rbp
   140002713:	48 89 e5             	mov    rbp,rsp
   140002716:	48 83 ec 30          	sub    rsp,0x30
   14000271a:	8b 05 48 6a 00 00    	mov    eax,DWORD PTR [rip+0x6a48]        # 140009168 <__mingwthr_cs_init>
   140002720:	85 c0                	test   eax,eax
   140002722:	0f 84 82 00 00 00    	je     1400027aa <__mingwthr_run_key_dtors+0x98>
   140002728:	48 8d 05 11 6a 00 00 	lea    rax,[rip+0x6a11]        # 140009140 <__mingwthr_cs>
   14000272f:	48 89 c1             	mov    rcx,rax
   140002732:	48 8b 05 7f 7b 00 00 	mov    rax,QWORD PTR [rip+0x7b7f]        # 14000a2b8 <__imp_EnterCriticalSection>
   140002739:	ff d0                	call   rax
   14000273b:	48 8b 05 2e 6a 00 00 	mov    rax,QWORD PTR [rip+0x6a2e]        # 140009170 <key_dtor_list>
   140002742:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002746:	eb 46                	jmp    14000278e <__mingwthr_run_key_dtors+0x7c>
   140002748:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   14000274c:	8b 00                	mov    eax,DWORD PTR [rax]
   14000274e:	89 c1                	mov    ecx,eax
   140002750:	48 8b 05 b1 7b 00 00 	mov    rax,QWORD PTR [rip+0x7bb1]        # 14000a308 <__imp_TlsGetValue>
   140002757:	ff d0                	call   rax
   140002759:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   14000275d:	48 8b 05 64 7b 00 00 	mov    rax,QWORD PTR [rip+0x7b64]        # 14000a2c8 <__imp_GetLastError>
   140002764:	ff d0                	call   rax
   140002766:	85 c0                	test   eax,eax
   140002768:	75 18                	jne    140002782 <__mingwthr_run_key_dtors+0x70>
   14000276a:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
   14000276f:	74 11                	je     140002782 <__mingwthr_run_key_dtors+0x70>
   140002771:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002775:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
   140002779:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   14000277d:	48 89 c1             	mov    rcx,rax
   140002780:	ff d2                	call   rdx
   140002782:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002786:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
   14000278a:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   14000278e:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
   140002793:	75 b3                	jne    140002748 <__mingwthr_run_key_dtors+0x36>
   140002795:	48 8d 05 a4 69 00 00 	lea    rax,[rip+0x69a4]        # 140009140 <__mingwthr_cs>
   14000279c:	48 89 c1             	mov    rcx,rax
   14000279f:	48 8b 05 42 7b 00 00 	mov    rax,QWORD PTR [rip+0x7b42]        # 14000a2e8 <__imp_LeaveCriticalSection>
   1400027a6:	ff d0                	call   rax
   1400027a8:	eb 01                	jmp    1400027ab <__mingwthr_run_key_dtors+0x99>
   1400027aa:	90                   	nop
   1400027ab:	48 83 c4 30          	add    rsp,0x30
   1400027af:	5d                   	pop    rbp
   1400027b0:	c3                   	ret

00000001400027b1 <__mingw_TLScallback>:
   1400027b1:	55                   	push   rbp
   1400027b2:	48 89 e5             	mov    rbp,rsp
   1400027b5:	48 83 ec 30          	sub    rsp,0x30
   1400027b9:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   1400027bd:	89 55 18             	mov    DWORD PTR [rbp+0x18],edx
   1400027c0:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   1400027c4:	83 7d 18 03          	cmp    DWORD PTR [rbp+0x18],0x3
   1400027c8:	0f 84 cc 00 00 00    	je     14000289a <__mingw_TLScallback+0xe9>
   1400027ce:	83 7d 18 03          	cmp    DWORD PTR [rbp+0x18],0x3
   1400027d2:	0f 87 ca 00 00 00    	ja     1400028a2 <__mingw_TLScallback+0xf1>
   1400027d8:	83 7d 18 02          	cmp    DWORD PTR [rbp+0x18],0x2
   1400027dc:	0f 84 b1 00 00 00    	je     140002893 <__mingw_TLScallback+0xe2>
   1400027e2:	83 7d 18 02          	cmp    DWORD PTR [rbp+0x18],0x2
   1400027e6:	0f 87 b6 00 00 00    	ja     1400028a2 <__mingw_TLScallback+0xf1>
   1400027ec:	83 7d 18 00          	cmp    DWORD PTR [rbp+0x18],0x0
   1400027f0:	74 33                	je     140002825 <__mingw_TLScallback+0x74>
   1400027f2:	83 7d 18 01          	cmp    DWORD PTR [rbp+0x18],0x1
   1400027f6:	0f 85 a6 00 00 00    	jne    1400028a2 <__mingw_TLScallback+0xf1>
   1400027fc:	8b 05 66 69 00 00    	mov    eax,DWORD PTR [rip+0x6966]        # 140009168 <__mingwthr_cs_init>
   140002802:	85 c0                	test   eax,eax
   140002804:	75 13                	jne    140002819 <__mingw_TLScallback+0x68>
   140002806:	48 8d 05 33 69 00 00 	lea    rax,[rip+0x6933]        # 140009140 <__mingwthr_cs>
   14000280d:	48 89 c1             	mov    rcx,rax
   140002810:	48 8b 05 c9 7a 00 00 	mov    rax,QWORD PTR [rip+0x7ac9]        # 14000a2e0 <__imp_InitializeCriticalSection>
   140002817:	ff d0                	call   rax
   140002819:	c7 05 45 69 00 00 01 	mov    DWORD PTR [rip+0x6945],0x1        # 140009168 <__mingwthr_cs_init>
   140002820:	00 00 00 
   140002823:	eb 7d                	jmp    1400028a2 <__mingw_TLScallback+0xf1>
   140002825:	e8 e8 fe ff ff       	call   140002712 <__mingwthr_run_key_dtors>
   14000282a:	8b 05 38 69 00 00    	mov    eax,DWORD PTR [rip+0x6938]        # 140009168 <__mingwthr_cs_init>
   140002830:	83 f8 01             	cmp    eax,0x1
   140002833:	75 6c                	jne    1400028a1 <__mingw_TLScallback+0xf0>
   140002835:	48 8b 05 34 69 00 00 	mov    rax,QWORD PTR [rip+0x6934]        # 140009170 <key_dtor_list>
   14000283c:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002840:	eb 20                	jmp    140002862 <__mingw_TLScallback+0xb1>
   140002842:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002846:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
   14000284a:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   14000284e:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002852:	48 89 c1             	mov    rcx,rax
   140002855:	e8 c6 09 00 00       	call   140003220 <free>
   14000285a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   14000285e:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002862:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
   140002867:	75 d9                	jne    140002842 <__mingw_TLScallback+0x91>
   140002869:	48 c7 05 fc 68 00 00 	mov    QWORD PTR [rip+0x68fc],0x0        # 140009170 <key_dtor_list>
   140002870:	00 00 00 00 
   140002874:	c7 05 ea 68 00 00 00 	mov    DWORD PTR [rip+0x68ea],0x0        # 140009168 <__mingwthr_cs_init>
   14000287b:	00 00 00 
   14000287e:	48 8d 05 bb 68 00 00 	lea    rax,[rip+0x68bb]        # 140009140 <__mingwthr_cs>
   140002885:	48 89 c1             	mov    rcx,rax
   140002888:	48 8b 05 21 7a 00 00 	mov    rax,QWORD PTR [rip+0x7a21]        # 14000a2b0 <__IAT_start__>
   14000288f:	ff d0                	call   rax
   140002891:	eb 0e                	jmp    1400028a1 <__mingw_TLScallback+0xf0>
   140002893:	e8 98 f1 ff ff       	call   140001a30 <_fpreset>
   140002898:	eb 08                	jmp    1400028a2 <__mingw_TLScallback+0xf1>
   14000289a:	e8 73 fe ff ff       	call   140002712 <__mingwthr_run_key_dtors>
   14000289f:	eb 01                	jmp    1400028a2 <__mingw_TLScallback+0xf1>
   1400028a1:	90                   	nop
   1400028a2:	b8 01 00 00 00       	mov    eax,0x1
   1400028a7:	48 83 c4 30          	add    rsp,0x30
   1400028ab:	5d                   	pop    rbp
   1400028ac:	c3                   	ret
   1400028ad:	90                   	nop
   1400028ae:	90                   	nop
   1400028af:	90                   	nop

00000001400028b0 <_ValidateImageBase>:
   1400028b0:	55                   	push   rbp
   1400028b1:	48 89 e5             	mov    rbp,rsp
   1400028b4:	48 83 ec 20          	sub    rsp,0x20
   1400028b8:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   1400028bc:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   1400028c0:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   1400028c4:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400028c8:	0f b7 00             	movzx  eax,WORD PTR [rax]
   1400028cb:	66 3d 4d 5a          	cmp    ax,0x5a4d
   1400028cf:	74 07                	je     1400028d8 <_ValidateImageBase+0x28>
   1400028d1:	b8 00 00 00 00       	mov    eax,0x0
   1400028d6:	eb 4e                	jmp    140002926 <_ValidateImageBase+0x76>
   1400028d8:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400028dc:	8b 40 3c             	mov    eax,DWORD PTR [rax+0x3c]
   1400028df:	48 63 d0             	movsxd rdx,eax
   1400028e2:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400028e6:	48 01 d0             	add    rax,rdx
   1400028e9:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   1400028ed:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400028f1:	8b 00                	mov    eax,DWORD PTR [rax]
   1400028f3:	3d 50 45 00 00       	cmp    eax,0x4550
   1400028f8:	74 07                	je     140002901 <_ValidateImageBase+0x51>
   1400028fa:	b8 00 00 00 00       	mov    eax,0x0
   1400028ff:	eb 25                	jmp    140002926 <_ValidateImageBase+0x76>
   140002901:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002905:	48 83 c0 18          	add    rax,0x18
   140002909:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
   14000290d:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002911:	0f b7 00             	movzx  eax,WORD PTR [rax]
   140002914:	66 3d 0b 02          	cmp    ax,0x20b
   140002918:	74 07                	je     140002921 <_ValidateImageBase+0x71>
   14000291a:	b8 00 00 00 00       	mov    eax,0x0
   14000291f:	eb 05                	jmp    140002926 <_ValidateImageBase+0x76>
   140002921:	b8 01 00 00 00       	mov    eax,0x1
   140002926:	48 83 c4 20          	add    rsp,0x20
   14000292a:	5d                   	pop    rbp
   14000292b:	c3                   	ret

000000014000292c <_FindPESection>:
   14000292c:	55                   	push   rbp
   14000292d:	48 89 e5             	mov    rbp,rsp
   140002930:	48 83 ec 20          	sub    rsp,0x20
   140002934:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002938:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   14000293c:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002940:	8b 40 3c             	mov    eax,DWORD PTR [rax+0x3c]
   140002943:	48 63 d0             	movsxd rdx,eax
   140002946:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   14000294a:	48 01 d0             	add    rax,rdx
   14000294d:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
   140002951:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
   140002958:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   14000295c:	0f b7 40 14          	movzx  eax,WORD PTR [rax+0x14]
   140002960:	0f b7 d0             	movzx  edx,ax
   140002963:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002967:	48 01 d0             	add    rax,rdx
   14000296a:	48 83 c0 18          	add    rax,0x18
   14000296e:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002972:	eb 36                	jmp    1400029aa <_FindPESection+0x7e>
   140002974:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002978:	8b 40 0c             	mov    eax,DWORD PTR [rax+0xc]
   14000297b:	89 c0                	mov    eax,eax
   14000297d:	48 39 45 18          	cmp    QWORD PTR [rbp+0x18],rax
   140002981:	72 1e                	jb     1400029a1 <_FindPESection+0x75>
   140002983:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002987:	8b 50 0c             	mov    edx,DWORD PTR [rax+0xc]
   14000298a:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   14000298e:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   140002991:	01 d0                	add    eax,edx
   140002993:	89 c0                	mov    eax,eax
   140002995:	48 39 45 18          	cmp    QWORD PTR [rbp+0x18],rax
   140002999:	73 06                	jae    1400029a1 <_FindPESection+0x75>
   14000299b:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   14000299f:	eb 1e                	jmp    1400029bf <_FindPESection+0x93>
   1400029a1:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
   1400029a5:	48 83 45 f8 28       	add    QWORD PTR [rbp-0x8],0x28
   1400029aa:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   1400029ae:	0f b7 40 06          	movzx  eax,WORD PTR [rax+0x6]
   1400029b2:	0f b7 c0             	movzx  eax,ax
   1400029b5:	39 45 f4             	cmp    DWORD PTR [rbp-0xc],eax
   1400029b8:	72 ba                	jb     140002974 <_FindPESection+0x48>
   1400029ba:	b8 00 00 00 00       	mov    eax,0x0
   1400029bf:	48 83 c4 20          	add    rsp,0x20
   1400029c3:	5d                   	pop    rbp
   1400029c4:	c3                   	ret

00000001400029c5 <_FindPESectionByName>:
   1400029c5:	55                   	push   rbp
   1400029c6:	48 89 e5             	mov    rbp,rsp
   1400029c9:	48 83 ec 40          	sub    rsp,0x40
   1400029cd:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   1400029d1:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   1400029d5:	48 89 c1             	mov    rcx,rax
   1400029d8:	e8 43 07 00 00       	call   140003120 <strlen>
   1400029dd:	48 83 f8 08          	cmp    rax,0x8
   1400029e1:	76 0a                	jbe    1400029ed <_FindPESectionByName+0x28>
   1400029e3:	b8 00 00 00 00       	mov    eax,0x0
   1400029e8:	e9 98 00 00 00       	jmp    140002a85 <_FindPESectionByName+0xc0>
   1400029ed:	48 8b 05 0c 2a 00 00 	mov    rax,QWORD PTR [rip+0x2a0c]        # 140005400 <.refptr.__image_base__>
   1400029f4:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
   1400029f8:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   1400029fc:	48 89 c1             	mov    rcx,rax
   1400029ff:	e8 ac fe ff ff       	call   1400028b0 <_ValidateImageBase>
   140002a04:	85 c0                	test   eax,eax
   140002a06:	75 07                	jne    140002a0f <_FindPESectionByName+0x4a>
   140002a08:	b8 00 00 00 00       	mov    eax,0x0
   140002a0d:	eb 76                	jmp    140002a85 <_FindPESectionByName+0xc0>
   140002a0f:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002a13:	8b 40 3c             	mov    eax,DWORD PTR [rax+0x3c]
   140002a16:	48 63 d0             	movsxd rdx,eax
   140002a19:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002a1d:	48 01 d0             	add    rax,rdx
   140002a20:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
   140002a24:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
   140002a2b:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002a2f:	0f b7 40 14          	movzx  eax,WORD PTR [rax+0x14]
   140002a33:	0f b7 d0             	movzx  edx,ax
   140002a36:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002a3a:	48 01 d0             	add    rax,rdx
   140002a3d:	48 83 c0 18          	add    rax,0x18
   140002a41:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002a45:	eb 29                	jmp    140002a70 <_FindPESectionByName+0xab>
   140002a47:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002a4b:	48 8b 55 10          	mov    rdx,QWORD PTR [rbp+0x10]
   140002a4f:	41 b8 08 00 00 00    	mov    r8d,0x8
   140002a55:	48 89 c1             	mov    rcx,rax
   140002a58:	e8 cb 06 00 00       	call   140003128 <strncmp>
   140002a5d:	85 c0                	test   eax,eax
   140002a5f:	75 06                	jne    140002a67 <_FindPESectionByName+0xa2>
   140002a61:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002a65:	eb 1e                	jmp    140002a85 <_FindPESectionByName+0xc0>
   140002a67:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
   140002a6b:	48 83 45 f8 28       	add    QWORD PTR [rbp-0x8],0x28
   140002a70:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002a74:	0f b7 40 06          	movzx  eax,WORD PTR [rax+0x6]
   140002a78:	0f b7 c0             	movzx  eax,ax
   140002a7b:	39 45 f4             	cmp    DWORD PTR [rbp-0xc],eax
   140002a7e:	72 c7                	jb     140002a47 <_FindPESectionByName+0x82>
   140002a80:	b8 00 00 00 00       	mov    eax,0x0
   140002a85:	48 83 c4 40          	add    rsp,0x40
   140002a89:	5d                   	pop    rbp
   140002a8a:	c3                   	ret

0000000140002a8b <__mingw_GetSectionForAddress>:
   140002a8b:	55                   	push   rbp
   140002a8c:	48 89 e5             	mov    rbp,rsp
   140002a8f:	48 83 ec 30          	sub    rsp,0x30
   140002a93:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002a97:	48 8b 05 62 29 00 00 	mov    rax,QWORD PTR [rip+0x2962]        # 140005400 <.refptr.__image_base__>
   140002a9e:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002aa2:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002aa6:	48 89 c1             	mov    rcx,rax
   140002aa9:	e8 02 fe ff ff       	call   1400028b0 <_ValidateImageBase>
   140002aae:	85 c0                	test   eax,eax
   140002ab0:	75 07                	jne    140002ab9 <__mingw_GetSectionForAddress+0x2e>
   140002ab2:	b8 00 00 00 00       	mov    eax,0x0
   140002ab7:	eb 1c                	jmp    140002ad5 <__mingw_GetSectionForAddress+0x4a>
   140002ab9:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002abd:	48 2b 45 f8          	sub    rax,QWORD PTR [rbp-0x8]
   140002ac1:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140002ac5:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
   140002ac9:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002acd:	48 89 c1             	mov    rcx,rax
   140002ad0:	e8 57 fe ff ff       	call   14000292c <_FindPESection>
   140002ad5:	48 83 c4 30          	add    rsp,0x30
   140002ad9:	5d                   	pop    rbp
   140002ada:	c3                   	ret

0000000140002adb <__mingw_GetSectionCount>:
   140002adb:	55                   	push   rbp
   140002adc:	48 89 e5             	mov    rbp,rsp
   140002adf:	48 83 ec 30          	sub    rsp,0x30
   140002ae3:	48 8b 05 16 29 00 00 	mov    rax,QWORD PTR [rip+0x2916]        # 140005400 <.refptr.__image_base__>
   140002aea:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002aee:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002af2:	48 89 c1             	mov    rcx,rax
   140002af5:	e8 b6 fd ff ff       	call   1400028b0 <_ValidateImageBase>
   140002afa:	85 c0                	test   eax,eax
   140002afc:	75 07                	jne    140002b05 <__mingw_GetSectionCount+0x2a>
   140002afe:	b8 00 00 00 00       	mov    eax,0x0
   140002b03:	eb 20                	jmp    140002b25 <__mingw_GetSectionCount+0x4a>
   140002b05:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002b09:	8b 40 3c             	mov    eax,DWORD PTR [rax+0x3c]
   140002b0c:	48 63 d0             	movsxd rdx,eax
   140002b0f:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002b13:	48 01 d0             	add    rax,rdx
   140002b16:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140002b1a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002b1e:	0f b7 40 06          	movzx  eax,WORD PTR [rax+0x6]
   140002b22:	0f b7 c0             	movzx  eax,ax
   140002b25:	48 83 c4 30          	add    rsp,0x30
   140002b29:	5d                   	pop    rbp
   140002b2a:	c3                   	ret

0000000140002b2b <_FindPESectionExec>:
   140002b2b:	55                   	push   rbp
   140002b2c:	48 89 e5             	mov    rbp,rsp
   140002b2f:	48 83 ec 40          	sub    rsp,0x40
   140002b33:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002b37:	48 8b 05 c2 28 00 00 	mov    rax,QWORD PTR [rip+0x28c2]        # 140005400 <.refptr.__image_base__>
   140002b3e:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
   140002b42:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002b46:	48 89 c1             	mov    rcx,rax
   140002b49:	e8 62 fd ff ff       	call   1400028b0 <_ValidateImageBase>
   140002b4e:	85 c0                	test   eax,eax
   140002b50:	75 07                	jne    140002b59 <_FindPESectionExec+0x2e>
   140002b52:	b8 00 00 00 00       	mov    eax,0x0
   140002b57:	eb 78                	jmp    140002bd1 <_FindPESectionExec+0xa6>
   140002b59:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002b5d:	8b 40 3c             	mov    eax,DWORD PTR [rax+0x3c]
   140002b60:	48 63 d0             	movsxd rdx,eax
   140002b63:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002b67:	48 01 d0             	add    rax,rdx
   140002b6a:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
   140002b6e:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
   140002b75:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002b79:	0f b7 40 14          	movzx  eax,WORD PTR [rax+0x14]
   140002b7d:	0f b7 d0             	movzx  edx,ax
   140002b80:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002b84:	48 01 d0             	add    rax,rdx
   140002b87:	48 83 c0 18          	add    rax,0x18
   140002b8b:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002b8f:	eb 2b                	jmp    140002bbc <_FindPESectionExec+0x91>
   140002b91:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002b95:	8b 40 24             	mov    eax,DWORD PTR [rax+0x24]
   140002b98:	25 00 00 00 20       	and    eax,0x20000000
   140002b9d:	85 c0                	test   eax,eax
   140002b9f:	74 12                	je     140002bb3 <_FindPESectionExec+0x88>
   140002ba1:	48 83 7d 10 00       	cmp    QWORD PTR [rbp+0x10],0x0
   140002ba6:	75 06                	jne    140002bae <_FindPESectionExec+0x83>
   140002ba8:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002bac:	eb 23                	jmp    140002bd1 <_FindPESectionExec+0xa6>
   140002bae:	48 83 6d 10 01       	sub    QWORD PTR [rbp+0x10],0x1
   140002bb3:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
   140002bb7:	48 83 45 f8 28       	add    QWORD PTR [rbp-0x8],0x28
   140002bbc:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002bc0:	0f b7 40 06          	movzx  eax,WORD PTR [rax+0x6]
   140002bc4:	0f b7 c0             	movzx  eax,ax
   140002bc7:	39 45 f4             	cmp    DWORD PTR [rbp-0xc],eax
   140002bca:	72 c5                	jb     140002b91 <_FindPESectionExec+0x66>
   140002bcc:	b8 00 00 00 00       	mov    eax,0x0
   140002bd1:	48 83 c4 40          	add    rsp,0x40
   140002bd5:	5d                   	pop    rbp
   140002bd6:	c3                   	ret

0000000140002bd7 <_GetPEImageBase>:
   140002bd7:	55                   	push   rbp
   140002bd8:	48 89 e5             	mov    rbp,rsp
   140002bdb:	48 83 ec 30          	sub    rsp,0x30
   140002bdf:	48 8b 05 1a 28 00 00 	mov    rax,QWORD PTR [rip+0x281a]        # 140005400 <.refptr.__image_base__>
   140002be6:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002bea:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002bee:	48 89 c1             	mov    rcx,rax
   140002bf1:	e8 ba fc ff ff       	call   1400028b0 <_ValidateImageBase>
   140002bf6:	85 c0                	test   eax,eax
   140002bf8:	75 07                	jne    140002c01 <_GetPEImageBase+0x2a>
   140002bfa:	b8 00 00 00 00       	mov    eax,0x0
   140002bff:	eb 04                	jmp    140002c05 <_GetPEImageBase+0x2e>
   140002c01:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002c05:	48 83 c4 30          	add    rsp,0x30
   140002c09:	5d                   	pop    rbp
   140002c0a:	c3                   	ret

0000000140002c0b <_IsNonwritableInCurrentImage>:
   140002c0b:	55                   	push   rbp
   140002c0c:	48 89 e5             	mov    rbp,rsp
   140002c0f:	48 83 ec 40          	sub    rsp,0x40
   140002c13:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002c17:	48 8b 05 e2 27 00 00 	mov    rax,QWORD PTR [rip+0x27e2]        # 140005400 <.refptr.__image_base__>
   140002c1e:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002c22:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002c26:	48 89 c1             	mov    rcx,rax
   140002c29:	e8 82 fc ff ff       	call   1400028b0 <_ValidateImageBase>
   140002c2e:	85 c0                	test   eax,eax
   140002c30:	75 07                	jne    140002c39 <_IsNonwritableInCurrentImage+0x2e>
   140002c32:	b8 00 00 00 00       	mov    eax,0x0
   140002c37:	eb 3d                	jmp    140002c76 <_IsNonwritableInCurrentImage+0x6b>
   140002c39:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002c3d:	48 2b 45 f8          	sub    rax,QWORD PTR [rbp-0x8]
   140002c41:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140002c45:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
   140002c49:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002c4d:	48 89 c1             	mov    rcx,rax
   140002c50:	e8 d7 fc ff ff       	call   14000292c <_FindPESection>
   140002c55:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
   140002c59:	48 83 7d e8 00       	cmp    QWORD PTR [rbp-0x18],0x0
   140002c5e:	75 07                	jne    140002c67 <_IsNonwritableInCurrentImage+0x5c>
   140002c60:	b8 00 00 00 00       	mov    eax,0x0
   140002c65:	eb 0f                	jmp    140002c76 <_IsNonwritableInCurrentImage+0x6b>
   140002c67:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002c6b:	8b 40 24             	mov    eax,DWORD PTR [rax+0x24]
   140002c6e:	f7 d0                	not    eax
   140002c70:	c1 e8 1f             	shr    eax,0x1f
   140002c73:	0f b6 c0             	movzx  eax,al
   140002c76:	48 83 c4 40          	add    rsp,0x40
   140002c7a:	5d                   	pop    rbp
   140002c7b:	c3                   	ret

0000000140002c7c <__mingw_enum_import_library_names>:
   140002c7c:	55                   	push   rbp
   140002c7d:	48 89 e5             	mov    rbp,rsp
   140002c80:	48 83 ec 50          	sub    rsp,0x50
   140002c84:	89 4d 10             	mov    DWORD PTR [rbp+0x10],ecx
   140002c87:	48 8b 05 72 27 00 00 	mov    rax,QWORD PTR [rip+0x2772]        # 140005400 <.refptr.__image_base__>
   140002c8e:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140002c92:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002c96:	48 89 c1             	mov    rcx,rax
   140002c99:	e8 12 fc ff ff       	call   1400028b0 <_ValidateImageBase>
   140002c9e:	85 c0                	test   eax,eax
   140002ca0:	75 0a                	jne    140002cac <__mingw_enum_import_library_names+0x30>
   140002ca2:	b8 00 00 00 00       	mov    eax,0x0
   140002ca7:	e9 ab 00 00 00       	jmp    140002d57 <__mingw_enum_import_library_names+0xdb>
   140002cac:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002cb0:	8b 40 3c             	mov    eax,DWORD PTR [rax+0x3c]
   140002cb3:	48 63 d0             	movsxd rdx,eax
   140002cb6:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002cba:	48 01 d0             	add    rax,rdx
   140002cbd:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
   140002cc1:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002cc5:	8b 80 90 00 00 00    	mov    eax,DWORD PTR [rax+0x90]
   140002ccb:	89 45 e4             	mov    DWORD PTR [rbp-0x1c],eax
   140002cce:	83 7d e4 00          	cmp    DWORD PTR [rbp-0x1c],0x0
   140002cd2:	75 07                	jne    140002cdb <__mingw_enum_import_library_names+0x5f>
   140002cd4:	b8 00 00 00 00       	mov    eax,0x0
   140002cd9:	eb 7c                	jmp    140002d57 <__mingw_enum_import_library_names+0xdb>
   140002cdb:	8b 55 e4             	mov    edx,DWORD PTR [rbp-0x1c]
   140002cde:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002ce2:	48 89 c1             	mov    rcx,rax
   140002ce5:	e8 42 fc ff ff       	call   14000292c <_FindPESection>
   140002cea:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
   140002cee:	48 83 7d d8 00       	cmp    QWORD PTR [rbp-0x28],0x0
   140002cf3:	75 07                	jne    140002cfc <__mingw_enum_import_library_names+0x80>
   140002cf5:	b8 00 00 00 00       	mov    eax,0x0
   140002cfa:	eb 5b                	jmp    140002d57 <__mingw_enum_import_library_names+0xdb>
   140002cfc:	8b 55 e4             	mov    edx,DWORD PTR [rbp-0x1c]
   140002cff:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002d03:	48 01 d0             	add    rax,rdx
   140002d06:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002d0a:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
   140002d0f:	75 07                	jne    140002d18 <__mingw_enum_import_library_names+0x9c>
   140002d11:	b8 00 00 00 00       	mov    eax,0x0
   140002d16:	eb 3f                	jmp    140002d57 <__mingw_enum_import_library_names+0xdb>
   140002d18:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002d1c:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
   140002d1f:	85 c0                	test   eax,eax
   140002d21:	75 0b                	jne    140002d2e <__mingw_enum_import_library_names+0xb2>
   140002d23:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002d27:	8b 40 0c             	mov    eax,DWORD PTR [rax+0xc]
   140002d2a:	85 c0                	test   eax,eax
   140002d2c:	74 23                	je     140002d51 <__mingw_enum_import_library_names+0xd5>
   140002d2e:	83 7d 10 00          	cmp    DWORD PTR [rbp+0x10],0x0
   140002d32:	7f 12                	jg     140002d46 <__mingw_enum_import_library_names+0xca>
   140002d34:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002d38:	8b 40 0c             	mov    eax,DWORD PTR [rax+0xc]
   140002d3b:	89 c2                	mov    edx,eax
   140002d3d:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002d41:	48 01 d0             	add    rax,rdx
   140002d44:	eb 11                	jmp    140002d57 <__mingw_enum_import_library_names+0xdb>
   140002d46:	83 6d 10 01          	sub    DWORD PTR [rbp+0x10],0x1
   140002d4a:	48 83 45 f8 14       	add    QWORD PTR [rbp-0x8],0x14
   140002d4f:	eb c7                	jmp    140002d18 <__mingw_enum_import_library_names+0x9c>
   140002d51:	90                   	nop
   140002d52:	b8 00 00 00 00       	mov    eax,0x0
   140002d57:	48 83 c4 50          	add    rsp,0x50
   140002d5b:	5d                   	pop    rbp
   140002d5c:	c3                   	ret
   140002d5d:	90                   	nop
   140002d5e:	90                   	nop
   140002d5f:	90                   	nop

0000000140002d60 <___chkstk_ms>:
   140002d60:	51                   	push   rcx
   140002d61:	50                   	push   rax
   140002d62:	48 3d 00 10 00 00    	cmp    rax,0x1000
   140002d68:	48 8d 4c 24 18       	lea    rcx,[rsp+0x18]
   140002d6d:	72 19                	jb     140002d88 <___chkstk_ms+0x28>
   140002d6f:	48 81 e9 00 10 00 00 	sub    rcx,0x1000
   140002d76:	48 83 09 00          	or     QWORD PTR [rcx],0x0
   140002d7a:	48 2d 00 10 00 00    	sub    rax,0x1000
   140002d80:	48 3d 00 10 00 00    	cmp    rax,0x1000
   140002d86:	77 e7                	ja     140002d6f <___chkstk_ms+0xf>
   140002d88:	48 29 c1             	sub    rcx,rax
   140002d8b:	48 83 09 00          	or     QWORD PTR [rcx],0x0
   140002d8f:	58                   	pop    rax
   140002d90:	59                   	pop    rcx
   140002d91:	c3                   	ret
   140002d92:	90                   	nop
   140002d93:	90                   	nop
   140002d94:	90                   	nop
   140002d95:	90                   	nop
   140002d96:	90                   	nop
   140002d97:	90                   	nop
   140002d98:	90                   	nop
   140002d99:	90                   	nop
   140002d9a:	90                   	nop
   140002d9b:	90                   	nop
   140002d9c:	90                   	nop
   140002d9d:	90                   	nop
   140002d9e:	90                   	nop
   140002d9f:	90                   	nop

0000000140002da0 <vfprintf>:
   140002da0:	55                   	push   rbp
   140002da1:	48 89 e5             	mov    rbp,rsp
   140002da4:	48 83 ec 30          	sub    rsp,0x30
   140002da8:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002dac:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   140002db0:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   140002db4:	48 8b 4d 18          	mov    rcx,QWORD PTR [rbp+0x18]
   140002db8:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002dbc:	48 8b 55 20          	mov    rdx,QWORD PTR [rbp+0x20]
   140002dc0:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
   140002dc5:	41 b9 00 00 00 00    	mov    r9d,0x0
   140002dcb:	49 89 c8             	mov    r8,rcx
   140002dce:	48 89 c2             	mov    rdx,rax
   140002dd1:	b9 00 00 00 00       	mov    ecx,0x0
   140002dd6:	e8 6d 03 00 00       	call   140003148 <__stdio_common_vfprintf>
   140002ddb:	48 83 c4 30          	add    rsp,0x30
   140002ddf:	5d                   	pop    rbp
   140002de0:	c3                   	ret
   140002de1:	90                   	nop
   140002de2:	90                   	nop
   140002de3:	90                   	nop
   140002de4:	90                   	nop
   140002de5:	90                   	nop
   140002de6:	90                   	nop
   140002de7:	90                   	nop
   140002de8:	90                   	nop
   140002de9:	90                   	nop
   140002dea:	90                   	nop
   140002deb:	90                   	nop
   140002dec:	90                   	nop
   140002ded:	90                   	nop
   140002dee:	90                   	nop
   140002def:	90                   	nop

0000000140002df0 <printf>:
   140002df0:	55                   	push   rbp
   140002df1:	53                   	push   rbx
   140002df2:	48 83 ec 48          	sub    rsp,0x48
   140002df6:	48 8d 6c 24 40       	lea    rbp,[rsp+0x40]
   140002dfb:	48 89 4d 20          	mov    QWORD PTR [rbp+0x20],rcx
   140002dff:	48 89 55 28          	mov    QWORD PTR [rbp+0x28],rdx
   140002e03:	4c 89 45 30          	mov    QWORD PTR [rbp+0x30],r8
   140002e07:	4c 89 4d 38          	mov    QWORD PTR [rbp+0x38],r9
   140002e0b:	48 8d 45 28          	lea    rax,[rbp+0x28]
   140002e0f:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140002e13:	48 8b 5d f0          	mov    rbx,QWORD PTR [rbp-0x10]
   140002e17:	b9 01 00 00 00       	mov    ecx,0x1
   140002e1c:	e8 0f 03 00 00       	call   140003130 <__acrt_iob_func>
   140002e21:	48 8b 55 20          	mov    rdx,QWORD PTR [rbp+0x20]
   140002e25:	48 89 5c 24 20       	mov    QWORD PTR [rsp+0x20],rbx
   140002e2a:	41 b9 00 00 00 00    	mov    r9d,0x0
   140002e30:	49 89 d0             	mov    r8,rdx
   140002e33:	48 89 c2             	mov    rdx,rax
   140002e36:	b9 00 00 00 00       	mov    ecx,0x0
   140002e3b:	e8 08 03 00 00       	call   140003148 <__stdio_common_vfprintf>
   140002e40:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   140002e43:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140002e46:	48 83 c4 48          	add    rsp,0x48
   140002e4a:	5b                   	pop    rbx
   140002e4b:	5d                   	pop    rbp
   140002e4c:	c3                   	ret
   140002e4d:	90                   	nop
   140002e4e:	90                   	nop
   140002e4f:	90                   	nop

0000000140002e50 <fprintf>:
   140002e50:	55                   	push   rbp
   140002e51:	48 89 e5             	mov    rbp,rsp
   140002e54:	48 83 ec 40          	sub    rsp,0x40
   140002e58:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002e5c:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   140002e60:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   140002e64:	4c 89 4d 28          	mov    QWORD PTR [rbp+0x28],r9
   140002e68:	48 8d 45 20          	lea    rax,[rbp+0x20]
   140002e6c:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140002e70:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
   140002e74:	48 8b 4d 18          	mov    rcx,QWORD PTR [rbp+0x18]
   140002e78:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002e7c:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
   140002e81:	41 b9 00 00 00 00    	mov    r9d,0x0
   140002e87:	49 89 c8             	mov    r8,rcx
   140002e8a:	48 89 c2             	mov    rdx,rax
   140002e8d:	b9 00 00 00 00       	mov    ecx,0x0
   140002e92:	e8 b1 02 00 00       	call   140003148 <__stdio_common_vfprintf>
   140002e97:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   140002e9a:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140002e9d:	48 83 c4 40          	add    rsp,0x40
   140002ea1:	5d                   	pop    rbp
   140002ea2:	c3                   	ret
   140002ea3:	90                   	nop
   140002ea4:	90                   	nop
   140002ea5:	90                   	nop
   140002ea6:	90                   	nop
   140002ea7:	90                   	nop
   140002ea8:	90                   	nop
   140002ea9:	90                   	nop
   140002eaa:	90                   	nop
   140002eab:	90                   	nop
   140002eac:	90                   	nop
   140002ead:	90                   	nop
   140002eae:	90                   	nop
   140002eaf:	90                   	nop

0000000140002eb0 <__getmainargs>:
   140002eb0:	55                   	push   rbp
   140002eb1:	48 89 e5             	mov    rbp,rsp
   140002eb4:	48 83 ec 20          	sub    rsp,0x20
   140002eb8:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002ebc:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   140002ec0:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   140002ec4:	44 89 4d 28          	mov    DWORD PTR [rbp+0x28],r9d
   140002ec8:	e8 db 02 00 00       	call   1400031a8 <_initialize_narrow_environment>
   140002ecd:	83 7d 28 00          	cmp    DWORD PTR [rbp+0x28],0x0
   140002ed1:	74 07                	je     140002eda <__getmainargs+0x2a>
   140002ed3:	b8 02 00 00 00       	mov    eax,0x2
   140002ed8:	eb 05                	jmp    140002edf <__getmainargs+0x2f>
   140002eda:	b8 01 00 00 00       	mov    eax,0x1
   140002edf:	89 c1                	mov    ecx,eax
   140002ee1:	e8 9a 02 00 00       	call   140003180 <_configure_narrow_argv>
   140002ee6:	e8 75 02 00 00       	call   140003160 <__p___argc>
   140002eeb:	8b 10                	mov    edx,DWORD PTR [rax]
   140002eed:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002ef1:	89 10                	mov    DWORD PTR [rax],edx
   140002ef3:	e8 70 02 00 00       	call   140003168 <__p___argv>
   140002ef8:	48 8b 10             	mov    rdx,QWORD PTR [rax]
   140002efb:	48 8b 45 18          	mov    rax,QWORD PTR [rbp+0x18]
   140002eff:	48 89 10             	mov    QWORD PTR [rax],rdx
   140002f02:	e8 29 03 00 00       	call   140003230 <__p__environ>
   140002f07:	48 8b 10             	mov    rdx,QWORD PTR [rax]
   140002f0a:	48 8b 45 20          	mov    rax,QWORD PTR [rbp+0x20]
   140002f0e:	48 89 10             	mov    QWORD PTR [rax],rdx
   140002f11:	48 83 7d 30 00       	cmp    QWORD PTR [rbp+0x30],0x0
   140002f16:	74 0d                	je     140002f25 <__getmainargs+0x75>
   140002f18:	48 8b 45 30          	mov    rax,QWORD PTR [rbp+0x30]
   140002f1c:	8b 00                	mov    eax,DWORD PTR [rax]
   140002f1e:	89 c1                	mov    ecx,eax
   140002f20:	e8 eb 02 00 00       	call   140003210 <_set_new_mode>
   140002f25:	b8 00 00 00 00       	mov    eax,0x0
   140002f2a:	48 83 c4 20          	add    rsp,0x20
   140002f2e:	5d                   	pop    rbp
   140002f2f:	c3                   	ret

0000000140002f30 <__wgetmainargs>:
   140002f30:	55                   	push   rbp
   140002f31:	48 89 e5             	mov    rbp,rsp
   140002f34:	48 83 ec 20          	sub    rsp,0x20
   140002f38:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002f3c:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   140002f40:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   140002f44:	44 89 4d 28          	mov    DWORD PTR [rbp+0x28],r9d
   140002f48:	e8 63 02 00 00       	call   1400031b0 <_initialize_wide_environment>
   140002f4d:	83 7d 28 00          	cmp    DWORD PTR [rbp+0x28],0x0
   140002f51:	74 07                	je     140002f5a <__wgetmainargs+0x2a>
   140002f53:	b8 02 00 00 00       	mov    eax,0x2
   140002f58:	eb 05                	jmp    140002f5f <__wgetmainargs+0x2f>
   140002f5a:	b8 01 00 00 00       	mov    eax,0x1
   140002f5f:	89 c1                	mov    ecx,eax
   140002f61:	e8 22 02 00 00       	call   140003188 <_configure_wide_argv>
   140002f66:	e8 f5 01 00 00       	call   140003160 <__p___argc>
   140002f6b:	8b 10                	mov    edx,DWORD PTR [rax]
   140002f6d:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002f71:	89 10                	mov    DWORD PTR [rax],edx
   140002f73:	e8 f8 01 00 00       	call   140003170 <__p___wargv>
   140002f78:	48 8b 10             	mov    rdx,QWORD PTR [rax]
   140002f7b:	48 8b 45 18          	mov    rax,QWORD PTR [rbp+0x18]
   140002f7f:	48 89 10             	mov    QWORD PTR [rax],rdx
   140002f82:	e8 b1 02 00 00       	call   140003238 <__p__wenviron>
   140002f87:	48 8b 10             	mov    rdx,QWORD PTR [rax]
   140002f8a:	48 8b 45 20          	mov    rax,QWORD PTR [rbp+0x20]
   140002f8e:	48 89 10             	mov    QWORD PTR [rax],rdx
   140002f91:	48 83 7d 30 00       	cmp    QWORD PTR [rbp+0x30],0x0
   140002f96:	74 0d                	je     140002fa5 <__wgetmainargs+0x75>
   140002f98:	48 8b 45 30          	mov    rax,QWORD PTR [rbp+0x30]
   140002f9c:	8b 00                	mov    eax,DWORD PTR [rax]
   140002f9e:	89 c1                	mov    ecx,eax
   140002fa0:	e8 6b 02 00 00       	call   140003210 <_set_new_mode>
   140002fa5:	b8 00 00 00 00       	mov    eax,0x0
   140002faa:	48 83 c4 20          	add    rsp,0x20
   140002fae:	5d                   	pop    rbp
   140002faf:	c3                   	ret

0000000140002fb0 <_onexit>:
   140002fb0:	55                   	push   rbp
   140002fb1:	48 89 e5             	mov    rbp,rsp
   140002fb4:	48 83 ec 20          	sub    rsp,0x20
   140002fb8:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002fbc:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002fc0:	48 89 c1             	mov    rcx,rax
   140002fc3:	e8 d0 01 00 00       	call   140003198 <_crt_atexit>
   140002fc8:	85 c0                	test   eax,eax
   140002fca:	75 06                	jne    140002fd2 <_onexit+0x22>
   140002fcc:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002fd0:	eb 05                	jmp    140002fd7 <_onexit+0x27>
   140002fd2:	b8 00 00 00 00       	mov    eax,0x0
   140002fd7:	48 83 c4 20          	add    rsp,0x20
   140002fdb:	5d                   	pop    rbp
   140002fdc:	c3                   	ret

0000000140002fdd <at_quick_exit>:
   140002fdd:	55                   	push   rbp
   140002fde:	48 89 e5             	mov    rbp,rsp
   140002fe1:	48 83 ec 20          	sub    rsp,0x20
   140002fe5:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002fe9:	48 8b 05 80 24 00 00 	mov    rax,QWORD PTR [rip+0x2480]        # 140005470 <.refptr.__mingw_module_is_dll>
   140002ff0:	0f b6 00             	movzx  eax,BYTE PTR [rax]
   140002ff3:	84 c0                	test   al,al
   140002ff5:	74 07                	je     140002ffe <at_quick_exit+0x21>
   140002ff7:	b8 00 00 00 00       	mov    eax,0x0
   140002ffc:	eb 0c                	jmp    14000300a <at_quick_exit+0x2d>
   140002ffe:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140003002:	48 89 c1             	mov    rcx,rax
   140003005:	e8 86 01 00 00       	call   140003190 <_crt_at_quick_exit>
   14000300a:	48 83 c4 20          	add    rsp,0x20
   14000300e:	5d                   	pop    rbp
   14000300f:	c3                   	ret

0000000140003010 <_amsg_exit>:
   140003010:	55                   	push   rbp
   140003011:	48 89 e5             	mov    rbp,rsp
   140003014:	48 83 ec 20          	sub    rsp,0x20
   140003018:	89 4d 10             	mov    DWORD PTR [rbp+0x10],ecx
   14000301b:	b9 02 00 00 00       	mov    ecx,0x2
   140003020:	e8 0b 01 00 00       	call   140003130 <__acrt_iob_func>
   140003025:	48 89 c1             	mov    rcx,rax
   140003028:	8b 45 10             	mov    eax,DWORD PTR [rbp+0x10]
   14000302b:	41 89 c0             	mov    r8d,eax
   14000302e:	48 8d 05 3b 23 00 00 	lea    rax,[rip+0x233b]        # 140005370 <.rdata>
   140003035:	48 89 c2             	mov    rdx,rax
   140003038:	e8 13 fe ff ff       	call   140002e50 <fprintf>
   14000303d:	b9 ff 00 00 00       	mov    ecx,0xff
   140003042:	e8 59 01 00 00       	call   1400031a0 <_exit>
   140003047:	90                   	nop

0000000140003048 <_get_output_format>:
   140003048:	55                   	push   rbp
   140003049:	48 89 e5             	mov    rbp,rsp
   14000304c:	b8 00 00 00 00       	mov    eax,0x0
   140003051:	5d                   	pop    rbp
   140003052:	c3                   	ret

0000000140003053 <_tzset>:
   140003053:	55                   	push   rbp
   140003054:	48 89 e5             	mov    rbp,rsp
   140003057:	48 83 ec 20          	sub    rsp,0x20
   14000305b:	48 8b 05 be 23 00 00 	mov    rax,QWORD PTR [rip+0x23be]        # 140005420 <.refptr.__imp__tzset>
   140003062:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140003065:	ff d0                	call   rax
   140003067:	e8 a4 00 00 00       	call   140003110 <__tzname>
   14000306c:	48 89 05 75 10 00 00 	mov    QWORD PTR [rip+0x1075],rax        # 1400040e8 <__imp_tzname>
   140003073:	e8 90 00 00 00       	call   140003108 <__timezone>
   140003078:	48 89 05 71 10 00 00 	mov    QWORD PTR [rip+0x1071],rax        # 1400040f0 <__imp_timezone>
   14000307f:	e8 7c 00 00 00       	call   140003100 <__daylight>
   140003084:	48 89 05 6d 10 00 00 	mov    QWORD PTR [rip+0x106d],rax        # 1400040f8 <__imp_daylight>
   14000308b:	90                   	nop
   14000308c:	48 83 c4 20          	add    rsp,0x20
   140003090:	5d                   	pop    rbp
   140003091:	c3                   	ret

0000000140003092 <tzset>:
   140003092:	55                   	push   rbp
   140003093:	48 89 e5             	mov    rbp,rsp
   140003096:	48 83 ec 20          	sub    rsp,0x20
   14000309a:	e8 b4 ff ff ff       	call   140003053 <_tzset>
   14000309f:	90                   	nop
   1400030a0:	48 83 c4 20          	add    rsp,0x20
   1400030a4:	5d                   	pop    rbp
   1400030a5:	c3                   	ret

00000001400030a6 <__ms_fwprintf>:
   1400030a6:	55                   	push   rbp
   1400030a7:	48 89 e5             	mov    rbp,rsp
   1400030aa:	48 83 ec 40          	sub    rsp,0x40
   1400030ae:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   1400030b2:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   1400030b6:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   1400030ba:	4c 89 4d 28          	mov    QWORD PTR [rbp+0x28],r9
   1400030be:	48 8d 45 20          	lea    rax,[rbp+0x20]
   1400030c2:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   1400030c6:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
   1400030ca:	48 8b 4d 18          	mov    rcx,QWORD PTR [rbp+0x18]
   1400030ce:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   1400030d2:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
   1400030d7:	41 b9 00 00 00 00    	mov    r9d,0x0
   1400030dd:	49 89 c8             	mov    r8,rcx
   1400030e0:	48 89 c2             	mov    rdx,rax
   1400030e3:	b9 04 00 00 00       	mov    ecx,0x4
   1400030e8:	e8 63 00 00 00       	call   140003150 <__stdio_common_vfwprintf>
   1400030ed:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   1400030f0:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   1400030f3:	48 83 c4 40          	add    rsp,0x40
   1400030f7:	5d                   	pop    rbp
   1400030f8:	c3                   	ret
   1400030f9:	90                   	nop
   1400030fa:	90                   	nop
   1400030fb:	90                   	nop
   1400030fc:	90                   	nop
   1400030fd:	90                   	nop
   1400030fe:	90                   	nop
   1400030ff:	90                   	nop

0000000140003100 <__daylight>:
   140003100:	ff 25 6a 73 00 00    	jmp    QWORD PTR [rip+0x736a]        # 14000a470 <__imp___daylight>
   140003106:	90                   	nop
   140003107:	90                   	nop

0000000140003108 <__timezone>:
   140003108:	ff 25 6a 73 00 00    	jmp    QWORD PTR [rip+0x736a]        # 14000a478 <__imp___timezone>
   14000310e:	90                   	nop
   14000310f:	90                   	nop

0000000140003110 <__tzname>:
   140003110:	ff 25 6a 73 00 00    	jmp    QWORD PTR [rip+0x736a]        # 14000a480 <__imp___tzname>
   140003116:	90                   	nop
   140003117:	90                   	nop

0000000140003118 <.text>:
   140003118:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000311f:	00 

0000000140003120 <strlen>:
   140003120:	ff 25 32 73 00 00    	jmp    QWORD PTR [rip+0x7332]        # 14000a458 <__imp_strlen>
   140003126:	90                   	nop
   140003127:	90                   	nop

0000000140003128 <strncmp>:
   140003128:	ff 25 32 73 00 00    	jmp    QWORD PTR [rip+0x7332]        # 14000a460 <__imp_strncmp>
   14000312e:	90                   	nop
   14000312f:	90                   	nop

0000000140003130 <__acrt_iob_func>:
   140003130:	ff 25 ea 72 00 00    	jmp    QWORD PTR [rip+0x72ea]        # 14000a420 <__imp___acrt_iob_func>
   140003136:	90                   	nop
   140003137:	90                   	nop

0000000140003138 <__p__commode>:
   140003138:	ff 25 ea 72 00 00    	jmp    QWORD PTR [rip+0x72ea]        # 14000a428 <__imp___p__commode>
   14000313e:	90                   	nop
   14000313f:	90                   	nop

0000000140003140 <__p__fmode>:
   140003140:	ff 25 ea 72 00 00    	jmp    QWORD PTR [rip+0x72ea]        # 14000a430 <__imp___p__fmode>
   140003146:	90                   	nop
   140003147:	90                   	nop

0000000140003148 <__stdio_common_vfprintf>:
   140003148:	ff 25 ea 72 00 00    	jmp    QWORD PTR [rip+0x72ea]        # 14000a438 <__imp___stdio_common_vfprintf>
   14000314e:	90                   	nop
   14000314f:	90                   	nop

0000000140003150 <__stdio_common_vfwprintf>:
   140003150:	ff 25 ea 72 00 00    	jmp    QWORD PTR [rip+0x72ea]        # 14000a440 <__imp___stdio_common_vfwprintf>
   140003156:	90                   	nop
   140003157:	90                   	nop

0000000140003158 <fwrite>:
   140003158:	ff 25 ea 72 00 00    	jmp    QWORD PTR [rip+0x72ea]        # 14000a448 <__imp_fwrite>
   14000315e:	90                   	nop
   14000315f:	90                   	nop

0000000140003160 <__p___argc>:
   140003160:	ff 25 2a 72 00 00    	jmp    QWORD PTR [rip+0x722a]        # 14000a390 <__imp___p___argc>
   140003166:	90                   	nop
   140003167:	90                   	nop

0000000140003168 <__p___argv>:
   140003168:	ff 25 2a 72 00 00    	jmp    QWORD PTR [rip+0x722a]        # 14000a398 <__imp___p___argv>
   14000316e:	90                   	nop
   14000316f:	90                   	nop

0000000140003170 <__p___wargv>:
   140003170:	ff 25 2a 72 00 00    	jmp    QWORD PTR [rip+0x722a]        # 14000a3a0 <__imp___p___wargv>
   140003176:	90                   	nop
   140003177:	90                   	nop

0000000140003178 <_cexit>:
   140003178:	ff 25 2a 72 00 00    	jmp    QWORD PTR [rip+0x722a]        # 14000a3a8 <__imp__cexit>
   14000317e:	90                   	nop
   14000317f:	90                   	nop

0000000140003180 <_configure_narrow_argv>:
   140003180:	ff 25 2a 72 00 00    	jmp    QWORD PTR [rip+0x722a]        # 14000a3b0 <__imp__configure_narrow_argv>
   140003186:	90                   	nop
   140003187:	90                   	nop

0000000140003188 <_configure_wide_argv>:
   140003188:	ff 25 2a 72 00 00    	jmp    QWORD PTR [rip+0x722a]        # 14000a3b8 <__imp__configure_wide_argv>
   14000318e:	90                   	nop
   14000318f:	90                   	nop

0000000140003190 <_crt_at_quick_exit>:
   140003190:	ff 25 2a 72 00 00    	jmp    QWORD PTR [rip+0x722a]        # 14000a3c0 <__imp__crt_at_quick_exit>
   140003196:	90                   	nop
   140003197:	90                   	nop

0000000140003198 <_crt_atexit>:
   140003198:	ff 25 2a 72 00 00    	jmp    QWORD PTR [rip+0x722a]        # 14000a3c8 <__imp__crt_atexit>
   14000319e:	90                   	nop
   14000319f:	90                   	nop

00000001400031a0 <_exit>:
   1400031a0:	ff 25 2a 72 00 00    	jmp    QWORD PTR [rip+0x722a]        # 14000a3d0 <__imp__exit>
   1400031a6:	90                   	nop
   1400031a7:	90                   	nop

00000001400031a8 <_initialize_narrow_environment>:
   1400031a8:	ff 25 2a 72 00 00    	jmp    QWORD PTR [rip+0x722a]        # 14000a3d8 <__imp__initialize_narrow_environment>
   1400031ae:	90                   	nop
   1400031af:	90                   	nop

00000001400031b0 <_initialize_wide_environment>:
   1400031b0:	ff 25 2a 72 00 00    	jmp    QWORD PTR [rip+0x722a]        # 14000a3e0 <__imp__initialize_wide_environment>
   1400031b6:	90                   	nop
   1400031b7:	90                   	nop

00000001400031b8 <_initterm>:
   1400031b8:	ff 25 2a 72 00 00    	jmp    QWORD PTR [rip+0x722a]        # 14000a3e8 <__imp__initterm>
   1400031be:	90                   	nop
   1400031bf:	90                   	nop

00000001400031c0 <__set_app_type>:
   1400031c0:	ff 25 2a 72 00 00    	jmp    QWORD PTR [rip+0x722a]        # 14000a3f0 <__imp___set_app_type>
   1400031c6:	90                   	nop
   1400031c7:	90                   	nop

00000001400031c8 <_set_invalid_parameter_handler>:
   1400031c8:	ff 25 2a 72 00 00    	jmp    QWORD PTR [rip+0x722a]        # 14000a3f8 <__imp__set_invalid_parameter_handler>
   1400031ce:	90                   	nop
   1400031cf:	90                   	nop

00000001400031d0 <abort>:
   1400031d0:	ff 25 2a 72 00 00    	jmp    QWORD PTR [rip+0x722a]        # 14000a400 <__imp_abort>
   1400031d6:	90                   	nop
   1400031d7:	90                   	nop

00000001400031d8 <exit>:
   1400031d8:	ff 25 2a 72 00 00    	jmp    QWORD PTR [rip+0x722a]        # 14000a408 <__imp_exit>
   1400031de:	90                   	nop
   1400031df:	90                   	nop

00000001400031e0 <signal>:
   1400031e0:	ff 25 2a 72 00 00    	jmp    QWORD PTR [rip+0x722a]        # 14000a410 <__imp_signal>
   1400031e6:	90                   	nop
   1400031e7:	90                   	nop
   1400031e8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1400031ef:	00 

00000001400031f0 <__C_specific_handler>:
   1400031f0:	ff 25 82 71 00 00    	jmp    QWORD PTR [rip+0x7182]        # 14000a378 <__imp___C_specific_handler>
   1400031f6:	90                   	nop
   1400031f7:	90                   	nop

00000001400031f8 <memcpy>:
   1400031f8:	ff 25 82 71 00 00    	jmp    QWORD PTR [rip+0x7182]        # 14000a380 <__imp_memcpy>
   1400031fe:	90                   	nop
   1400031ff:	90                   	nop

0000000140003200 <__setusermatherr>:
   140003200:	ff 25 62 71 00 00    	jmp    QWORD PTR [rip+0x7162]        # 14000a368 <__imp___setusermatherr>
   140003206:	90                   	nop
   140003207:	90                   	nop
   140003208:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000320f:	00 

0000000140003210 <_set_new_mode>:
   140003210:	ff 25 2a 71 00 00    	jmp    QWORD PTR [rip+0x712a]        # 14000a340 <__imp__set_new_mode>
   140003216:	90                   	nop
   140003217:	90                   	nop

0000000140003218 <calloc>:
   140003218:	ff 25 2a 71 00 00    	jmp    QWORD PTR [rip+0x712a]        # 14000a348 <__imp_calloc>
   14000321e:	90                   	nop
   14000321f:	90                   	nop

0000000140003220 <free>:
   140003220:	ff 25 2a 71 00 00    	jmp    QWORD PTR [rip+0x712a]        # 14000a350 <__imp_free>
   140003226:	90                   	nop
   140003227:	90                   	nop

0000000140003228 <malloc>:
   140003228:	ff 25 2a 71 00 00    	jmp    QWORD PTR [rip+0x712a]        # 14000a358 <__imp_malloc>
   14000322e:	90                   	nop
   14000322f:	90                   	nop

0000000140003230 <__p__environ>:
   140003230:	ff 25 f2 70 00 00    	jmp    QWORD PTR [rip+0x70f2]        # 14000a328 <__imp___p__environ>
   140003236:	90                   	nop
   140003237:	90                   	nop

0000000140003238 <__p__wenviron>:
   140003238:	ff 25 f2 70 00 00    	jmp    QWORD PTR [rip+0x70f2]        # 14000a330 <__imp___p__wenviron>
   14000323e:	90                   	nop
   14000323f:	90                   	nop

0000000140003240 <VirtualQuery>:
   140003240:	ff 25 d2 70 00 00    	jmp    QWORD PTR [rip+0x70d2]        # 14000a318 <__imp_VirtualQuery>
   140003246:	90                   	nop
   140003247:	90                   	nop

0000000140003248 <VirtualProtect>:
   140003248:	ff 25 c2 70 00 00    	jmp    QWORD PTR [rip+0x70c2]        # 14000a310 <__imp_VirtualProtect>
   14000324e:	90                   	nop
   14000324f:	90                   	nop

0000000140003250 <TlsGetValue>:
   140003250:	ff 25 b2 70 00 00    	jmp    QWORD PTR [rip+0x70b2]        # 14000a308 <__imp_TlsGetValue>
   140003256:	90                   	nop
   140003257:	90                   	nop

0000000140003258 <Sleep>:
   140003258:	ff 25 a2 70 00 00    	jmp    QWORD PTR [rip+0x70a2]        # 14000a300 <__imp_Sleep>
   14000325e:	90                   	nop
   14000325f:	90                   	nop

0000000140003260 <SetUnhandledExceptionFilter>:
   140003260:	ff 25 92 70 00 00    	jmp    QWORD PTR [rip+0x7092]        # 14000a2f8 <__imp_SetUnhandledExceptionFilter>
   140003266:	90                   	nop
   140003267:	90                   	nop

0000000140003268 <LoadLibraryA>:
   140003268:	ff 25 82 70 00 00    	jmp    QWORD PTR [rip+0x7082]        # 14000a2f0 <__imp_LoadLibraryA>
   14000326e:	90                   	nop
   14000326f:	90                   	nop

0000000140003270 <LeaveCriticalSection>:
   140003270:	ff 25 72 70 00 00    	jmp    QWORD PTR [rip+0x7072]        # 14000a2e8 <__imp_LeaveCriticalSection>
   140003276:	90                   	nop
   140003277:	90                   	nop

0000000140003278 <InitializeCriticalSection>:
   140003278:	ff 25 62 70 00 00    	jmp    QWORD PTR [rip+0x7062]        # 14000a2e0 <__imp_InitializeCriticalSection>
   14000327e:	90                   	nop
   14000327f:	90                   	nop

0000000140003280 <GetProcAddress>:
   140003280:	ff 25 52 70 00 00    	jmp    QWORD PTR [rip+0x7052]        # 14000a2d8 <__imp_GetProcAddress>
   140003286:	90                   	nop
   140003287:	90                   	nop

0000000140003288 <GetModuleHandleA>:
   140003288:	ff 25 42 70 00 00    	jmp    QWORD PTR [rip+0x7042]        # 14000a2d0 <__imp_GetModuleHandleA>
   14000328e:	90                   	nop
   14000328f:	90                   	nop

0000000140003290 <GetLastError>:
   140003290:	ff 25 32 70 00 00    	jmp    QWORD PTR [rip+0x7032]        # 14000a2c8 <__imp_GetLastError>
   140003296:	90                   	nop
   140003297:	90                   	nop

0000000140003298 <FreeLibrary>:
   140003298:	ff 25 22 70 00 00    	jmp    QWORD PTR [rip+0x7022]        # 14000a2c0 <__imp_FreeLibrary>
   14000329e:	90                   	nop
   14000329f:	90                   	nop

00000001400032a0 <EnterCriticalSection>:
   1400032a0:	ff 25 12 70 00 00    	jmp    QWORD PTR [rip+0x7012]        # 14000a2b8 <__imp_EnterCriticalSection>
   1400032a6:	90                   	nop
   1400032a7:	90                   	nop

00000001400032a8 <DeleteCriticalSection>:
   1400032a8:	ff 25 02 70 00 00    	jmp    QWORD PTR [rip+0x7002]        # 14000a2b0 <__IAT_start__>
   1400032ae:	90                   	nop
   1400032af:	90                   	nop

00000001400032b0 <register_frame_ctor>:
   1400032b0:	e9 2b e3 ff ff       	jmp    1400015e0 <__gcc_register_frame>
   1400032b5:	90                   	nop
   1400032b6:	90                   	nop
   1400032b7:	90                   	nop
   1400032b8:	90                   	nop
   1400032b9:	90                   	nop
   1400032ba:	90                   	nop
   1400032bb:	90                   	nop
   1400032bc:	90                   	nop
   1400032bd:	90                   	nop
   1400032be:	90                   	nop
   1400032bf:	90                   	nop

00000001400032c0 <__CTOR_LIST__>:
   1400032c0:	ff                   	(bad)
   1400032c1:	ff                   	(bad)
   1400032c2:	ff                   	(bad)
   1400032c3:	ff                   	(bad)
   1400032c4:	ff                   	(bad)
   1400032c5:	ff                   	(bad)
   1400032c6:	ff                   	(bad)
   1400032c7:	ff                   	.byte 0xff

00000001400032c8 <.ctors.65535>:
   1400032c8:	b0 32                	mov    al,0x32
   1400032ca:	00 40 01             	add    BYTE PTR [rax+0x1],al
	...

00000001400032d8 <__DTOR_LIST__>:
   1400032d8:	ff                   	(bad)
   1400032d9:	ff                   	(bad)
   1400032da:	ff                   	(bad)
   1400032db:	ff                   	(bad)
   1400032dc:	ff                   	(bad)
   1400032dd:	ff                   	(bad)
   1400032de:	ff                   	(bad)
   1400032df:	ff 00                	inc    DWORD PTR [rax]
   1400032e1:	00 00                	add    BYTE PTR [rax],al
   1400032e3:	00 00                	add    BYTE PTR [rax],al
   1400032e5:	00 00                	add    BYTE PTR [rax],al
	...
