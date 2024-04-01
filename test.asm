
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
   14000102a:	48 8b 05 1f 44 00 00 	mov    rax,QWORD PTR [rip+0x441f]        # 140005450 <.refptr.__mingw_app_type>
   140001031:	8b 00                	mov    eax,DWORD PTR [rax]
   140001033:	85 c0                	test   eax,eax
   140001035:	74 0c                	je     140001043 <pre_c_init+0x2c>
   140001037:	b9 02 00 00 00       	mov    ecx,0x2
   14000103c:	e8 df 21 00 00       	call   140003220 <__set_app_type>
   140001041:	eb 0a                	jmp    14000104d <pre_c_init+0x36>
   140001043:	b9 01 00 00 00       	mov    ecx,0x1
   140001048:	e8 d3 21 00 00       	call   140003220 <__set_app_type>
   14000104d:	e8 3e 21 00 00       	call   140003190 <__p__fmode>
   140001052:	48 8b 15 d7 44 00 00 	mov    rdx,QWORD PTR [rip+0x44d7]        # 140005530 <.refptr._fmode>
   140001059:	8b 12                	mov    edx,DWORD PTR [rdx]
   14000105b:	89 10                	mov    DWORD PTR [rax],edx
   14000105d:	e8 26 21 00 00       	call   140003188 <__p__commode>
   140001062:	48 8b 15 a7 44 00 00 	mov    rdx,QWORD PTR [rip+0x44a7]        # 140005510 <.refptr._commode>
   140001069:	8b 12                	mov    edx,DWORD PTR [rdx]
   14000106b:	89 10                	mov    DWORD PTR [rax],edx
   14000106d:	e8 ce 07 00 00       	call   140001840 <_setargv>
   140001072:	48 8b 05 47 43 00 00 	mov    rax,QWORD PTR [rip+0x4347]        # 1400053c0 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   140001079:	8b 00                	mov    eax,DWORD PTR [rax]
   14000107b:	83 f8 01             	cmp    eax,0x1
   14000107e:	75 0f                	jne    14000108f <pre_c_init+0x78>
   140001080:	48 8b 05 c9 44 00 00 	mov    rax,QWORD PTR [rip+0x44c9]        # 140005550 <.refptr._matherr>
   140001087:	48 89 c1             	mov    rcx,rax
   14000108a:	e8 0b 13 00 00       	call   14000239a <__mingw_setusermatherr>
   14000108f:	b8 00 00 00 00       	mov    eax,0x0
   140001094:	48 83 c4 20          	add    rsp,0x20
   140001098:	5d                   	pop    rbp
   140001099:	c3                   	ret

000000014000109a <pre_cpp_init>:
   14000109a:	55                   	push   rbp
   14000109b:	48 89 e5             	mov    rbp,rsp
   14000109e:	48 83 ec 30          	sub    rsp,0x30
   1400010a2:	48 8b 05 b7 44 00 00 	mov    rax,QWORD PTR [rip+0x44b7]        # 140005560 <.refptr._newmode>
   1400010a9:	8b 00                	mov    eax,DWORD PTR [rax]
   1400010ab:	89 05 77 7f 00 00    	mov    DWORD PTR [rip+0x7f77],eax        # 140009028 <startinfo>
   1400010b1:	48 8b 05 68 44 00 00 	mov    rax,QWORD PTR [rip+0x4468]        # 140005520 <.refptr._dowildcard>
   1400010b8:	8b 10                	mov    edx,DWORD PTR [rax]
   1400010ba:	48 8d 05 67 7f 00 00 	lea    rax,[rip+0x7f67]        # 140009028 <startinfo>
   1400010c1:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
   1400010c6:	41 89 d1             	mov    r9d,edx
   1400010c9:	4c 8d 05 40 7f 00 00 	lea    r8,[rip+0x7f40]        # 140009010 <envp>
   1400010d0:	48 8d 05 31 7f 00 00 	lea    rax,[rip+0x7f31]        # 140009008 <argv>
   1400010d7:	48 89 c2             	mov    rdx,rax
   1400010da:	48 8d 05 23 7f 00 00 	lea    rax,[rip+0x7f23]        # 140009004 <argc>
   1400010e1:	48 89 c1             	mov    rcx,rax
   1400010e4:	e8 17 1e 00 00       	call   140002f00 <__getmainargs>
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
   140001105:	48 8b 05 44 43 00 00 	mov    rax,QWORD PTR [rip+0x4344]        # 140005450 <.refptr.__mingw_app_type>
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
   140001134:	48 8b 05 15 43 00 00 	mov    rax,QWORD PTR [rip+0x4315]        # 140005450 <.refptr.__mingw_app_type>
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
   1400011ac:	48 8b 05 fd 42 00 00 	mov    rax,QWORD PTR [rip+0x42fd]        # 1400054b0 <.refptr.__native_startup_lock>
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
   1400011e3:	48 8b 05 d6 42 00 00 	mov    rax,QWORD PTR [rip+0x42d6]        # 1400054c0 <.refptr.__native_startup_state>
   1400011ea:	8b 00                	mov    eax,DWORD PTR [rax]
   1400011ec:	83 f8 01             	cmp    eax,0x1
   1400011ef:	75 0c                	jne    1400011fd <__tmainCRTStartup+0xa9>
   1400011f1:	b9 1f 00 00 00       	mov    ecx,0x1f
   1400011f6:	e8 65 1e 00 00       	call   140003060 <_amsg_exit>
   1400011fb:	eb 3f                	jmp    14000123c <__tmainCRTStartup+0xe8>
   1400011fd:	48 8b 05 bc 42 00 00 	mov    rax,QWORD PTR [rip+0x42bc]        # 1400054c0 <.refptr.__native_startup_state>
   140001204:	8b 00                	mov    eax,DWORD PTR [rax]
   140001206:	85 c0                	test   eax,eax
   140001208:	75 28                	jne    140001232 <__tmainCRTStartup+0xde>
   14000120a:	48 8b 05 af 42 00 00 	mov    rax,QWORD PTR [rip+0x42af]        # 1400054c0 <.refptr.__native_startup_state>
   140001211:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   140001217:	48 8b 05 e2 42 00 00 	mov    rax,QWORD PTR [rip+0x42e2]        # 140005500 <.refptr.__xi_z>
   14000121e:	48 89 c2             	mov    rdx,rax
   140001221:	48 8b 05 c8 42 00 00 	mov    rax,QWORD PTR [rip+0x42c8]        # 1400054f0 <.refptr.__xi_a>
   140001228:	48 89 c1             	mov    rcx,rax
   14000122b:	e8 e8 1f 00 00       	call   140003218 <_initterm>
   140001230:	eb 0a                	jmp    14000123c <__tmainCRTStartup+0xe8>
   140001232:	c7 05 e8 7d 00 00 01 	mov    DWORD PTR [rip+0x7de8],0x1        # 140009024 <has_cctor>
   140001239:	00 00 00 
   14000123c:	48 8b 05 7d 42 00 00 	mov    rax,QWORD PTR [rip+0x427d]        # 1400054c0 <.refptr.__native_startup_state>
   140001243:	8b 00                	mov    eax,DWORD PTR [rax]
   140001245:	83 f8 01             	cmp    eax,0x1
   140001248:	75 26                	jne    140001270 <__tmainCRTStartup+0x11c>
   14000124a:	48 8b 05 8f 42 00 00 	mov    rax,QWORD PTR [rip+0x428f]        # 1400054e0 <.refptr.__xc_z>
   140001251:	48 89 c2             	mov    rdx,rax
   140001254:	48 8b 05 75 42 00 00 	mov    rax,QWORD PTR [rip+0x4275]        # 1400054d0 <.refptr.__xc_a>
   14000125b:	48 89 c1             	mov    rcx,rax
   14000125e:	e8 b5 1f 00 00       	call   140003218 <_initterm>
   140001263:	48 8b 05 56 42 00 00 	mov    rax,QWORD PTR [rip+0x4256]        # 1400054c0 <.refptr.__native_startup_state>
   14000126a:	c7 00 02 00 00 00    	mov    DWORD PTR [rax],0x2
   140001270:	83 7d fc 00          	cmp    DWORD PTR [rbp-0x4],0x0
   140001274:	75 1e                	jne    140001294 <__tmainCRTStartup+0x140>
   140001276:	48 8b 05 33 42 00 00 	mov    rax,QWORD PTR [rip+0x4233]        # 1400054b0 <.refptr.__native_startup_lock>
   14000127d:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   140001281:	48 c7 45 b0 00 00 00 	mov    QWORD PTR [rbp-0x50],0x0
   140001288:	00 
   140001289:	48 8b 55 b0          	mov    rdx,QWORD PTR [rbp-0x50]
   14000128d:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   140001291:	48 87 10             	xchg   QWORD PTR [rax],rdx
   140001294:	48 8b 05 65 41 00 00 	mov    rax,QWORD PTR [rip+0x4165]        # 140005400 <.refptr.__dyn_tls_init_callback>
   14000129b:	48 8b 00             	mov    rax,QWORD PTR [rax]
   14000129e:	48 85 c0             	test   rax,rax
   1400012a1:	74 1c                	je     1400012bf <__tmainCRTStartup+0x16b>
   1400012a3:	48 8b 05 56 41 00 00 	mov    rax,QWORD PTR [rip+0x4156]        # 140005400 <.refptr.__dyn_tls_init_callback>
   1400012aa:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400012ad:	41 b8 00 00 00 00    	mov    r8d,0x0
   1400012b3:	ba 02 00 00 00       	mov    edx,0x2
   1400012b8:	b9 00 00 00 00       	mov    ecx,0x0
   1400012bd:	ff d0                	call   rax
   1400012bf:	e8 c4 0f 00 00       	call   140002288 <_pei386_runtime_relocator>
   1400012c4:	48 8b 05 75 42 00 00 	mov    rax,QWORD PTR [rip+0x4275]        # 140005540 <.refptr._gnu_exception_handler>
   1400012cb:	48 89 c1             	mov    rcx,rax
   1400012ce:	48 8b 05 2b 90 00 00 	mov    rax,QWORD PTR [rip+0x902b]        # 14000a300 <__imp_SetUnhandledExceptionFilter>
   1400012d5:	ff d0                	call   rax
   1400012d7:	48 8b 15 c2 41 00 00 	mov    rdx,QWORD PTR [rip+0x41c2]        # 1400054a0 <.refptr.__mingw_oldexcpt_handler>
   1400012de:	48 89 02             	mov    QWORD PTR [rdx],rax
   1400012e1:	48 8d 05 18 fd ff ff 	lea    rax,[rip+0xfffffffffffffd18]        # 140001000 <__mingw_invalidParameterHandler>
   1400012e8:	48 89 c1             	mov    rcx,rax
   1400012eb:	e8 38 1f 00 00       	call   140003228 <_set_invalid_parameter_handler>
   1400012f0:	e8 8b 07 00 00       	call   140001a80 <_fpreset>
   1400012f5:	8b 05 09 7d 00 00    	mov    eax,DWORD PTR [rip+0x7d09]        # 140009004 <argc>
   1400012fb:	48 8d 15 06 7d 00 00 	lea    rdx,[rip+0x7d06]        # 140009008 <argv>
   140001302:	89 c1                	mov    ecx,eax
   140001304:	e8 73 01 00 00       	call   14000147c <duplicate_ppstrings>
   140001309:	e8 09 05 00 00       	call   140001817 <__main>
   14000130e:	48 8b 05 1b 41 00 00 	mov    rax,QWORD PTR [rip+0x411b]        # 140005430 <.refptr.__imp___initenv>
   140001315:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140001318:	48 8b 15 f1 7c 00 00 	mov    rdx,QWORD PTR [rip+0x7cf1]        # 140009010 <envp>
   14000131f:	48 89 10             	mov    QWORD PTR [rax],rdx
   140001322:	48 8b 0d e7 7c 00 00 	mov    rcx,QWORD PTR [rip+0x7ce7]        # 140009010 <envp>
   140001329:	48 8b 15 d8 7c 00 00 	mov    rdx,QWORD PTR [rip+0x7cd8]        # 140009008 <argv>
   140001330:	8b 05 ce 7c 00 00    	mov    eax,DWORD PTR [rip+0x7cce]        # 140009004 <argc>
   140001336:	49 89 c8             	mov    r8,rcx
   140001339:	89 c1                	mov    ecx,eax
   14000133b:	e8 cd 03 00 00       	call   14000170d <main>
   140001340:	89 05 d6 7c 00 00    	mov    DWORD PTR [rip+0x7cd6],eax        # 14000901c <mainret>
   140001346:	8b 05 d4 7c 00 00    	mov    eax,DWORD PTR [rip+0x7cd4]        # 140009020 <managedapp>
   14000134c:	85 c0                	test   eax,eax
   14000134e:	75 0d                	jne    14000135d <__tmainCRTStartup+0x209>
   140001350:	8b 05 c6 7c 00 00    	mov    eax,DWORD PTR [rip+0x7cc6]        # 14000901c <mainret>
   140001356:	89 c1                	mov    ecx,eax
   140001358:	e8 db 1e 00 00       	call   140003238 <exit>
   14000135d:	8b 05 c1 7c 00 00    	mov    eax,DWORD PTR [rip+0x7cc1]        # 140009024 <has_cctor>
   140001363:	85 c0                	test   eax,eax
   140001365:	75 05                	jne    14000136c <__tmainCRTStartup+0x218>
   140001367:	e8 6c 1e 00 00       	call   1400031d8 <_cexit>
   14000136c:	8b 05 aa 7c 00 00    	mov    eax,DWORD PTR [rip+0x7caa]        # 14000901c <mainret>
   140001372:	48 83 c4 70          	add    rsp,0x70
   140001376:	5d                   	pop    rbp
   140001377:	c3                   	ret

0000000140001378 <check_managed_app>:
   140001378:	55                   	push   rbp
   140001379:	48 89 e5             	mov    rbp,rsp
   14000137c:	48 83 ec 20          	sub    rsp,0x20
   140001380:	48 8b 05 d9 40 00 00 	mov    rax,QWORD PTR [rip+0x40d9]        # 140005460 <.refptr.__mingw_initltsdrot_force>
   140001387:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   14000138d:	48 8b 05 dc 40 00 00 	mov    rax,QWORD PTR [rip+0x40dc]        # 140005470 <.refptr.__mingw_initltsdyn_force>
   140001394:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   14000139a:	48 8b 05 df 40 00 00 	mov    rax,QWORD PTR [rip+0x40df]        # 140005480 <.refptr.__mingw_initltssuo_force>
   1400013a1:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   1400013a7:	48 8b 05 72 40 00 00 	mov    rax,QWORD PTR [rip+0x4072]        # 140005420 <.refptr.__image_base__>
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
   14000149d:	e8 e6 1d 00 00       	call   140003288 <malloc>
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
   1400014d7:	e8 94 1c 00 00       	call   140003170 <strlen>
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
   140001500:	e8 83 1d 00 00       	call   140003288 <malloc>
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
   140001540:	e8 13 1d 00 00       	call   140003258 <memcpy>
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
   140001596:	e8 65 1a 00 00       	call   140003000 <_onexit>
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
   1400016e2:	e8 c9 1a 00 00       	call   1400031b0 <puts>
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

000000014000170d <main>:
   14000170d:	55                   	push   rbp
   14000170e:	48 89 e5             	mov    rbp,rsp
   140001711:	48 83 ec 30          	sub    rsp,0x30
   140001715:	e8 fd 00 00 00       	call   140001817 <__main>
   14000171a:	48 8d 05 3d 39 00 00 	lea    rax,[rip+0x393d]        # 14000505e <.rdata+0xe>
   140001721:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140001725:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140001729:	48 89 c2             	mov    rdx,rax
   14000172c:	48 8d 05 34 39 00 00 	lea    rax,[rip+0x3934]        # 140005067 <.rdata+0x17>
   140001733:	48 89 c1             	mov    rcx,rax
   140001736:	e8 05 17 00 00       	call   140002e40 <printf>
   14000173b:	e8 90 ff ff ff       	call   1400016d0 <test>
   140001740:	ba 02 00 00 00       	mov    edx,0x2
   140001745:	b9 01 00 00 00       	mov    ecx,0x1
   14000174a:	e8 9f ff ff ff       	call   1400016ee <test2>
   14000174f:	e8 ae ff ff ff       	call   140001702 <test3>
   140001754:	b8 00 00 00 00       	mov    eax,0x0
   140001759:	48 83 c4 30          	add    rsp,0x30
   14000175d:	5d                   	pop    rbp
   14000175e:	c3                   	ret
   14000175f:	90                   	nop

0000000140001760 <__do_global_dtors>:
   140001760:	55                   	push   rbp
   140001761:	48 89 e5             	mov    rbp,rsp
   140001764:	48 83 ec 20          	sub    rsp,0x20
   140001768:	eb 1e                	jmp    140001788 <__do_global_dtors+0x28>
   14000176a:	48 8b 05 9f 28 00 00 	mov    rax,QWORD PTR [rip+0x289f]        # 140004010 <p.0>
   140001771:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140001774:	ff d0                	call   rax
   140001776:	48 8b 05 93 28 00 00 	mov    rax,QWORD PTR [rip+0x2893]        # 140004010 <p.0>
   14000177d:	48 83 c0 08          	add    rax,0x8
   140001781:	48 89 05 88 28 00 00 	mov    QWORD PTR [rip+0x2888],rax        # 140004010 <p.0>
   140001788:	48 8b 05 81 28 00 00 	mov    rax,QWORD PTR [rip+0x2881]        # 140004010 <p.0>
   14000178f:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140001792:	48 85 c0             	test   rax,rax
   140001795:	75 d3                	jne    14000176a <__do_global_dtors+0xa>
   140001797:	90                   	nop
   140001798:	90                   	nop
   140001799:	48 83 c4 20          	add    rsp,0x20
   14000179d:	5d                   	pop    rbp
   14000179e:	c3                   	ret

000000014000179f <__do_global_ctors>:
   14000179f:	55                   	push   rbp
   1400017a0:	48 89 e5             	mov    rbp,rsp
   1400017a3:	48 83 ec 30          	sub    rsp,0x30
   1400017a7:	48 8b 05 22 3c 00 00 	mov    rax,QWORD PTR [rip+0x3c22]        # 1400053d0 <.refptr.__CTOR_LIST__>
   1400017ae:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400017b1:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   1400017b4:	83 7d fc ff          	cmp    DWORD PTR [rbp-0x4],0xffffffff
   1400017b8:	75 25                	jne    1400017df <__do_global_ctors+0x40>
   1400017ba:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
   1400017c1:	eb 04                	jmp    1400017c7 <__do_global_ctors+0x28>
   1400017c3:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
   1400017c7:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   1400017ca:	8d 50 01             	lea    edx,[rax+0x1]
   1400017cd:	48 8b 05 fc 3b 00 00 	mov    rax,QWORD PTR [rip+0x3bfc]        # 1400053d0 <.refptr.__CTOR_LIST__>
   1400017d4:	89 d2                	mov    edx,edx
   1400017d6:	48 8b 04 d0          	mov    rax,QWORD PTR [rax+rdx*8]
   1400017da:	48 85 c0             	test   rax,rax
   1400017dd:	75 e4                	jne    1400017c3 <__do_global_ctors+0x24>
   1400017df:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   1400017e2:	89 45 f8             	mov    DWORD PTR [rbp-0x8],eax
   1400017e5:	eb 14                	jmp    1400017fb <__do_global_ctors+0x5c>
   1400017e7:	48 8b 05 e2 3b 00 00 	mov    rax,QWORD PTR [rip+0x3be2]        # 1400053d0 <.refptr.__CTOR_LIST__>
   1400017ee:	8b 55 f8             	mov    edx,DWORD PTR [rbp-0x8]
   1400017f1:	48 8b 04 d0          	mov    rax,QWORD PTR [rax+rdx*8]
   1400017f5:	ff d0                	call   rax
   1400017f7:	83 6d f8 01          	sub    DWORD PTR [rbp-0x8],0x1
   1400017fb:	83 7d f8 00          	cmp    DWORD PTR [rbp-0x8],0x0
   1400017ff:	75 e6                	jne    1400017e7 <__do_global_ctors+0x48>
   140001801:	48 8d 05 58 ff ff ff 	lea    rax,[rip+0xffffffffffffff58]        # 140001760 <__do_global_dtors>
   140001808:	48 89 c1             	mov    rcx,rax
   14000180b:	e8 73 fd ff ff       	call   140001583 <atexit>
   140001810:	90                   	nop
   140001811:	48 83 c4 30          	add    rsp,0x30
   140001815:	5d                   	pop    rbp
   140001816:	c3                   	ret

0000000140001817 <__main>:
   140001817:	55                   	push   rbp
   140001818:	48 89 e5             	mov    rbp,rsp
   14000181b:	48 83 ec 20          	sub    rsp,0x20
   14000181f:	8b 05 7b 78 00 00    	mov    eax,DWORD PTR [rip+0x787b]        # 1400090a0 <initialized>
   140001825:	85 c0                	test   eax,eax
   140001827:	75 0f                	jne    140001838 <__main+0x21>
   140001829:	c7 05 6d 78 00 00 01 	mov    DWORD PTR [rip+0x786d],0x1        # 1400090a0 <initialized>
   140001830:	00 00 00 
   140001833:	e8 67 ff ff ff       	call   14000179f <__do_global_ctors>
   140001838:	90                   	nop
   140001839:	48 83 c4 20          	add    rsp,0x20
   14000183d:	5d                   	pop    rbp
   14000183e:	c3                   	ret
   14000183f:	90                   	nop

0000000140001840 <_setargv>:
   140001840:	55                   	push   rbp
   140001841:	48 89 e5             	mov    rbp,rsp
   140001844:	b8 00 00 00 00       	mov    eax,0x0
   140001849:	5d                   	pop    rbp
   14000184a:	c3                   	ret
   14000184b:	90                   	nop
   14000184c:	90                   	nop
   14000184d:	90                   	nop
   14000184e:	90                   	nop
   14000184f:	90                   	nop

0000000140001850 <__dyn_tls_init>:
   140001850:	55                   	push   rbp
   140001851:	48 89 e5             	mov    rbp,rsp
   140001854:	48 83 ec 30          	sub    rsp,0x30
   140001858:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   14000185c:	89 55 18             	mov    DWORD PTR [rbp+0x18],edx
   14000185f:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   140001863:	48 8b 05 46 3b 00 00 	mov    rax,QWORD PTR [rip+0x3b46]        # 1400053b0 <.refptr._CRT_MT>
   14000186a:	8b 00                	mov    eax,DWORD PTR [rax]
   14000186c:	83 f8 02             	cmp    eax,0x2
   14000186f:	74 0d                	je     14000187e <__dyn_tls_init+0x2e>
   140001871:	48 8b 05 38 3b 00 00 	mov    rax,QWORD PTR [rip+0x3b38]        # 1400053b0 <.refptr._CRT_MT>
   140001878:	c7 00 02 00 00 00    	mov    DWORD PTR [rax],0x2
   14000187e:	83 7d 18 02          	cmp    DWORD PTR [rbp+0x18],0x2
   140001882:	74 23                	je     1400018a7 <__dyn_tls_init+0x57>
   140001884:	83 7d 18 01          	cmp    DWORD PTR [rbp+0x18],0x1
   140001888:	75 16                	jne    1400018a0 <__dyn_tls_init+0x50>
   14000188a:	48 8b 4d 20          	mov    rcx,QWORD PTR [rbp+0x20]
   14000188e:	8b 55 18             	mov    edx,DWORD PTR [rbp+0x18]
   140001891:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140001895:	49 89 c8             	mov    r8,rcx
   140001898:	48 89 c1             	mov    rcx,rax
   14000189b:	e8 61 0f 00 00       	call   140002801 <__mingw_TLScallback>
   1400018a0:	b8 01 00 00 00       	mov    eax,0x1
   1400018a5:	eb 46                	jmp    1400018ed <__dyn_tls_init+0x9d>
   1400018a7:	48 8d 05 a2 97 00 00 	lea    rax,[rip+0x97a2]        # 14000b050 <___crt_xp_end__>
   1400018ae:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   1400018b2:	48 83 45 f8 08       	add    QWORD PTR [rbp-0x8],0x8
   1400018b7:	eb 22                	jmp    1400018db <__dyn_tls_init+0x8b>
   1400018b9:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400018bd:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   1400018c1:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400018c5:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400018c8:	48 85 c0             	test   rax,rax
   1400018cb:	74 09                	je     1400018d6 <__dyn_tls_init+0x86>
   1400018cd:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400018d1:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400018d4:	ff d0                	call   rax
   1400018d6:	48 83 45 f8 08       	add    QWORD PTR [rbp-0x8],0x8
   1400018db:	48 8d 05 76 97 00 00 	lea    rax,[rip+0x9776]        # 14000b058 <__xd_z>
   1400018e2:	48 39 45 f8          	cmp    QWORD PTR [rbp-0x8],rax
   1400018e6:	75 d1                	jne    1400018b9 <__dyn_tls_init+0x69>
   1400018e8:	b8 01 00 00 00       	mov    eax,0x1
   1400018ed:	48 83 c4 30          	add    rsp,0x30
   1400018f1:	5d                   	pop    rbp
   1400018f2:	c3                   	ret

00000001400018f3 <__tlregdtor>:
   1400018f3:	55                   	push   rbp
   1400018f4:	48 89 e5             	mov    rbp,rsp
   1400018f7:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   1400018fb:	48 83 7d 10 00       	cmp    QWORD PTR [rbp+0x10],0x0
   140001900:	75 07                	jne    140001909 <__tlregdtor+0x16>
   140001902:	b8 00 00 00 00       	mov    eax,0x0
   140001907:	eb 05                	jmp    14000190e <__tlregdtor+0x1b>
   140001909:	b8 00 00 00 00       	mov    eax,0x0
   14000190e:	5d                   	pop    rbp
   14000190f:	c3                   	ret

0000000140001910 <__dyn_tls_dtor>:
   140001910:	55                   	push   rbp
   140001911:	48 89 e5             	mov    rbp,rsp
   140001914:	48 83 ec 20          	sub    rsp,0x20
   140001918:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   14000191c:	89 55 18             	mov    DWORD PTR [rbp+0x18],edx
   14000191f:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   140001923:	83 7d 18 03          	cmp    DWORD PTR [rbp+0x18],0x3
   140001927:	74 0d                	je     140001936 <__dyn_tls_dtor+0x26>
   140001929:	83 7d 18 00          	cmp    DWORD PTR [rbp+0x18],0x0
   14000192d:	74 07                	je     140001936 <__dyn_tls_dtor+0x26>
   14000192f:	b8 01 00 00 00       	mov    eax,0x1
   140001934:	eb 1b                	jmp    140001951 <__dyn_tls_dtor+0x41>
   140001936:	48 8b 4d 20          	mov    rcx,QWORD PTR [rbp+0x20]
   14000193a:	8b 55 18             	mov    edx,DWORD PTR [rbp+0x18]
   14000193d:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140001941:	49 89 c8             	mov    r8,rcx
   140001944:	48 89 c1             	mov    rcx,rax
   140001947:	e8 b5 0e 00 00       	call   140002801 <__mingw_TLScallback>
   14000194c:	b8 01 00 00 00       	mov    eax,0x1
   140001951:	48 83 c4 20          	add    rsp,0x20
   140001955:	5d                   	pop    rbp
   140001956:	c3                   	ret
   140001957:	90                   	nop
   140001958:	90                   	nop
   140001959:	90                   	nop
   14000195a:	90                   	nop
   14000195b:	90                   	nop
   14000195c:	90                   	nop
   14000195d:	90                   	nop
   14000195e:	90                   	nop
   14000195f:	90                   	nop

0000000140001960 <_matherr>:
   140001960:	55                   	push   rbp
   140001961:	53                   	push   rbx
   140001962:	48 81 ec 88 00 00 00 	sub    rsp,0x88
   140001969:	48 8d 6c 24 50       	lea    rbp,[rsp+0x50]
   14000196e:	0f 29 75 00          	movaps XMMWORD PTR [rbp+0x0],xmm6
   140001972:	0f 29 7d 10          	movaps XMMWORD PTR [rbp+0x10],xmm7
   140001976:	44 0f 29 45 20       	movaps XMMWORD PTR [rbp+0x20],xmm8
   14000197b:	48 89 4d 50          	mov    QWORD PTR [rbp+0x50],rcx
   14000197f:	48 8b 45 50          	mov    rax,QWORD PTR [rbp+0x50]
   140001983:	8b 00                	mov    eax,DWORD PTR [rax]
   140001985:	83 f8 06             	cmp    eax,0x6
   140001988:	77 70                	ja     1400019fa <_matherr+0x9a>
   14000198a:	89 c0                	mov    eax,eax
   14000198c:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
   140001993:	00 
   140001994:	48 8d 05 49 38 00 00 	lea    rax,[rip+0x3849]        # 1400051e4 <.rdata+0x124>
   14000199b:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
   14000199e:	48 98                	cdqe
   1400019a0:	48 8d 15 3d 38 00 00 	lea    rdx,[rip+0x383d]        # 1400051e4 <.rdata+0x124>
   1400019a7:	48 01 d0             	add    rax,rdx
   1400019aa:	ff e0                	jmp    rax
   1400019ac:	48 8d 05 0d 37 00 00 	lea    rax,[rip+0x370d]        # 1400050c0 <.rdata>
   1400019b3:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   1400019b7:	eb 4d                	jmp    140001a06 <_matherr+0xa6>
   1400019b9:	48 8d 05 1f 37 00 00 	lea    rax,[rip+0x371f]        # 1400050df <.rdata+0x1f>
   1400019c0:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   1400019c4:	eb 40                	jmp    140001a06 <_matherr+0xa6>
   1400019c6:	48 8d 05 33 37 00 00 	lea    rax,[rip+0x3733]        # 140005100 <.rdata+0x40>
   1400019cd:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   1400019d1:	eb 33                	jmp    140001a06 <_matherr+0xa6>
   1400019d3:	48 8d 05 46 37 00 00 	lea    rax,[rip+0x3746]        # 140005120 <.rdata+0x60>
   1400019da:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   1400019de:	eb 26                	jmp    140001a06 <_matherr+0xa6>
   1400019e0:	48 8d 05 61 37 00 00 	lea    rax,[rip+0x3761]        # 140005148 <.rdata+0x88>
   1400019e7:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   1400019eb:	eb 19                	jmp    140001a06 <_matherr+0xa6>
   1400019ed:	48 8d 05 7c 37 00 00 	lea    rax,[rip+0x377c]        # 140005170 <.rdata+0xb0>
   1400019f4:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   1400019f8:	eb 0c                	jmp    140001a06 <_matherr+0xa6>
   1400019fa:	48 8d 05 a5 37 00 00 	lea    rax,[rip+0x37a5]        # 1400051a6 <.rdata+0xe6>
   140001a01:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140001a05:	90                   	nop
   140001a06:	48 8b 45 50          	mov    rax,QWORD PTR [rbp+0x50]
   140001a0a:	f2 44 0f 10 40 20    	movsd  xmm8,QWORD PTR [rax+0x20]
   140001a10:	48 8b 45 50          	mov    rax,QWORD PTR [rbp+0x50]
   140001a14:	f2 0f 10 78 18       	movsd  xmm7,QWORD PTR [rax+0x18]
   140001a19:	48 8b 45 50          	mov    rax,QWORD PTR [rbp+0x50]
   140001a1d:	f2 0f 10 70 10       	movsd  xmm6,QWORD PTR [rax+0x10]
   140001a22:	48 8b 45 50          	mov    rax,QWORD PTR [rbp+0x50]
   140001a26:	48 8b 58 08          	mov    rbx,QWORD PTR [rax+0x8]
   140001a2a:	b9 02 00 00 00       	mov    ecx,0x2
   140001a2f:	e8 4c 17 00 00       	call   140003180 <__acrt_iob_func>
   140001a34:	48 89 c1             	mov    rcx,rax
   140001a37:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140001a3b:	f2 44 0f 11 44 24 30 	movsd  QWORD PTR [rsp+0x30],xmm8
   140001a42:	f2 0f 11 7c 24 28    	movsd  QWORD PTR [rsp+0x28],xmm7
   140001a48:	f2 0f 11 74 24 20    	movsd  QWORD PTR [rsp+0x20],xmm6
   140001a4e:	49 89 d9             	mov    r9,rbx
   140001a51:	49 89 c0             	mov    r8,rax
   140001a54:	48 8d 05 5d 37 00 00 	lea    rax,[rip+0x375d]        # 1400051b8 <.rdata+0xf8>
   140001a5b:	48 89 c2             	mov    rdx,rax
   140001a5e:	e8 3d 14 00 00       	call   140002ea0 <fprintf>
   140001a63:	b8 00 00 00 00       	mov    eax,0x0
   140001a68:	0f 28 75 00          	movaps xmm6,XMMWORD PTR [rbp+0x0]
   140001a6c:	0f 28 7d 10          	movaps xmm7,XMMWORD PTR [rbp+0x10]
   140001a70:	44 0f 28 45 20       	movaps xmm8,XMMWORD PTR [rbp+0x20]
   140001a75:	48 81 c4 88 00 00 00 	add    rsp,0x88
   140001a7c:	5b                   	pop    rbx
   140001a7d:	5d                   	pop    rbp
   140001a7e:	c3                   	ret
   140001a7f:	90                   	nop

0000000140001a80 <_fpreset>:
   140001a80:	55                   	push   rbp
   140001a81:	48 89 e5             	mov    rbp,rsp
   140001a84:	db e3                	fninit
   140001a86:	90                   	nop
   140001a87:	5d                   	pop    rbp
   140001a88:	c3                   	ret
   140001a89:	90                   	nop
   140001a8a:	90                   	nop
   140001a8b:	90                   	nop
   140001a8c:	90                   	nop
   140001a8d:	90                   	nop
   140001a8e:	90                   	nop
   140001a8f:	90                   	nop

0000000140001a90 <__report_error>:
   140001a90:	55                   	push   rbp
   140001a91:	53                   	push   rbx
   140001a92:	48 83 ec 38          	sub    rsp,0x38
   140001a96:	48 8d 6c 24 30       	lea    rbp,[rsp+0x30]
   140001a9b:	48 89 4d 20          	mov    QWORD PTR [rbp+0x20],rcx
   140001a9f:	48 89 55 28          	mov    QWORD PTR [rbp+0x28],rdx
   140001aa3:	4c 89 45 30          	mov    QWORD PTR [rbp+0x30],r8
   140001aa7:	4c 89 4d 38          	mov    QWORD PTR [rbp+0x38],r9
   140001aab:	48 8d 45 28          	lea    rax,[rbp+0x28]
   140001aaf:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140001ab3:	b9 02 00 00 00       	mov    ecx,0x2
   140001ab8:	e8 c3 16 00 00       	call   140003180 <__acrt_iob_func>
   140001abd:	49 89 c1             	mov    r9,rax
   140001ac0:	41 b8 1b 00 00 00    	mov    r8d,0x1b
   140001ac6:	ba 01 00 00 00       	mov    edx,0x1
   140001acb:	48 8d 05 2e 37 00 00 	lea    rax,[rip+0x372e]        # 140005200 <.rdata>
   140001ad2:	48 89 c1             	mov    rcx,rax
   140001ad5:	e8 ce 16 00 00       	call   1400031a8 <fwrite>
   140001ada:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
   140001ade:	b9 02 00 00 00       	mov    ecx,0x2
   140001ae3:	e8 98 16 00 00       	call   140003180 <__acrt_iob_func>
   140001ae8:	48 89 c1             	mov    rcx,rax
   140001aeb:	48 8b 45 20          	mov    rax,QWORD PTR [rbp+0x20]
   140001aef:	49 89 d8             	mov    r8,rbx
   140001af2:	48 89 c2             	mov    rdx,rax
   140001af5:	e8 f6 12 00 00       	call   140002df0 <vfprintf>
   140001afa:	e8 31 17 00 00       	call   140003230 <abort>
   140001aff:	90                   	nop

0000000140001b00 <mark_section_writable>:
   140001b00:	55                   	push   rbp
   140001b01:	48 89 e5             	mov    rbp,rsp
   140001b04:	48 83 ec 60          	sub    rsp,0x60
   140001b08:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140001b0c:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
   140001b13:	e9 82 00 00 00       	jmp    140001b9a <mark_section_writable+0x9a>
   140001b18:	48 8b 0d d1 75 00 00 	mov    rcx,QWORD PTR [rip+0x75d1]        # 1400090f0 <the_secs>
   140001b1f:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001b22:	48 63 d0             	movsxd rdx,eax
   140001b25:	48 89 d0             	mov    rax,rdx
   140001b28:	48 c1 e0 02          	shl    rax,0x2
   140001b2c:	48 01 d0             	add    rax,rdx
   140001b2f:	48 c1 e0 03          	shl    rax,0x3
   140001b33:	48 01 c8             	add    rax,rcx
   140001b36:	48 8b 40 18          	mov    rax,QWORD PTR [rax+0x18]
   140001b3a:	48 39 45 10          	cmp    QWORD PTR [rbp+0x10],rax
   140001b3e:	72 56                	jb     140001b96 <mark_section_writable+0x96>
   140001b40:	48 8b 0d a9 75 00 00 	mov    rcx,QWORD PTR [rip+0x75a9]        # 1400090f0 <the_secs>
   140001b47:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001b4a:	48 63 d0             	movsxd rdx,eax
   140001b4d:	48 89 d0             	mov    rax,rdx
   140001b50:	48 c1 e0 02          	shl    rax,0x2
   140001b54:	48 01 d0             	add    rax,rdx
   140001b57:	48 c1 e0 03          	shl    rax,0x3
   140001b5b:	48 01 c8             	add    rax,rcx
   140001b5e:	48 8b 48 18          	mov    rcx,QWORD PTR [rax+0x18]
   140001b62:	4c 8b 05 87 75 00 00 	mov    r8,QWORD PTR [rip+0x7587]        # 1400090f0 <the_secs>
   140001b69:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001b6c:	48 63 d0             	movsxd rdx,eax
   140001b6f:	48 89 d0             	mov    rax,rdx
   140001b72:	48 c1 e0 02          	shl    rax,0x2
   140001b76:	48 01 d0             	add    rax,rdx
   140001b79:	48 c1 e0 03          	shl    rax,0x3
   140001b7d:	4c 01 c0             	add    rax,r8
   140001b80:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
   140001b84:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   140001b87:	89 c0                	mov    eax,eax
   140001b89:	48 01 c8             	add    rax,rcx
   140001b8c:	48 39 45 10          	cmp    QWORD PTR [rbp+0x10],rax
   140001b90:	0f 82 42 02 00 00    	jb     140001dd8 <mark_section_writable+0x2d8>
   140001b96:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
   140001b9a:	8b 05 58 75 00 00    	mov    eax,DWORD PTR [rip+0x7558]        # 1400090f8 <maxSections>
   140001ba0:	39 45 fc             	cmp    DWORD PTR [rbp-0x4],eax
   140001ba3:	0f 8c 6f ff ff ff    	jl     140001b18 <mark_section_writable+0x18>
   140001ba9:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140001bad:	48 89 c1             	mov    rcx,rax
   140001bb0:	e8 26 0f 00 00       	call   140002adb <__mingw_GetSectionForAddress>
   140001bb5:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140001bb9:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
   140001bbe:	75 16                	jne    140001bd6 <mark_section_writable+0xd6>
   140001bc0:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140001bc4:	48 89 c2             	mov    rdx,rax
   140001bc7:	48 8d 05 52 36 00 00 	lea    rax,[rip+0x3652]        # 140005220 <.rdata+0x20>
   140001bce:	48 89 c1             	mov    rcx,rax
   140001bd1:	e8 ba fe ff ff       	call   140001a90 <__report_error>
   140001bd6:	48 8b 0d 13 75 00 00 	mov    rcx,QWORD PTR [rip+0x7513]        # 1400090f0 <the_secs>
   140001bdd:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001be0:	48 63 d0             	movsxd rdx,eax
   140001be3:	48 89 d0             	mov    rax,rdx
   140001be6:	48 c1 e0 02          	shl    rax,0x2
   140001bea:	48 01 d0             	add    rax,rdx
   140001bed:	48 c1 e0 03          	shl    rax,0x3
   140001bf1:	48 8d 14 01          	lea    rdx,[rcx+rax*1]
   140001bf5:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140001bf9:	48 89 42 20          	mov    QWORD PTR [rdx+0x20],rax
   140001bfd:	48 8b 0d ec 74 00 00 	mov    rcx,QWORD PTR [rip+0x74ec]        # 1400090f0 <the_secs>
   140001c04:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001c07:	48 63 d0             	movsxd rdx,eax
   140001c0a:	48 89 d0             	mov    rax,rdx
   140001c0d:	48 c1 e0 02          	shl    rax,0x2
   140001c11:	48 01 d0             	add    rax,rdx
   140001c14:	48 c1 e0 03          	shl    rax,0x3
   140001c18:	48 01 c8             	add    rax,rcx
   140001c1b:	c7 00 00 00 00 00    	mov    DWORD PTR [rax],0x0
   140001c21:	e8 01 10 00 00       	call   140002c27 <_GetPEImageBase>
   140001c26:	48 89 c1             	mov    rcx,rax
   140001c29:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140001c2d:	8b 40 0c             	mov    eax,DWORD PTR [rax+0xc]
   140001c30:	41 89 c1             	mov    r9d,eax
   140001c33:	4c 8b 05 b6 74 00 00 	mov    r8,QWORD PTR [rip+0x74b6]        # 1400090f0 <the_secs>
   140001c3a:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001c3d:	48 63 d0             	movsxd rdx,eax
   140001c40:	48 89 d0             	mov    rax,rdx
   140001c43:	48 c1 e0 02          	shl    rax,0x2
   140001c47:	48 01 d0             	add    rax,rdx
   140001c4a:	48 c1 e0 03          	shl    rax,0x3
   140001c4e:	4c 01 c0             	add    rax,r8
   140001c51:	4a 8d 14 09          	lea    rdx,[rcx+r9*1]
   140001c55:	48 89 50 18          	mov    QWORD PTR [rax+0x18],rdx
   140001c59:	48 8b 0d 90 74 00 00 	mov    rcx,QWORD PTR [rip+0x7490]        # 1400090f0 <the_secs>
   140001c60:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001c63:	48 63 d0             	movsxd rdx,eax
   140001c66:	48 89 d0             	mov    rax,rdx
   140001c69:	48 c1 e0 02          	shl    rax,0x2
   140001c6d:	48 01 d0             	add    rax,rdx
   140001c70:	48 c1 e0 03          	shl    rax,0x3
   140001c74:	48 01 c8             	add    rax,rcx
   140001c77:	48 8b 40 18          	mov    rax,QWORD PTR [rax+0x18]
   140001c7b:	48 8d 55 c0          	lea    rdx,[rbp-0x40]
   140001c7f:	41 b8 30 00 00 00    	mov    r8d,0x30
   140001c85:	48 89 c1             	mov    rcx,rax
   140001c88:	48 8b 05 91 86 00 00 	mov    rax,QWORD PTR [rip+0x8691]        # 14000a320 <__imp_VirtualQuery>
   140001c8f:	ff d0                	call   rax
   140001c91:	48 85 c0             	test   rax,rax
   140001c94:	75 3d                	jne    140001cd3 <mark_section_writable+0x1d3>
   140001c96:	48 8b 0d 53 74 00 00 	mov    rcx,QWORD PTR [rip+0x7453]        # 1400090f0 <the_secs>
   140001c9d:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001ca0:	48 63 d0             	movsxd rdx,eax
   140001ca3:	48 89 d0             	mov    rax,rdx
   140001ca6:	48 c1 e0 02          	shl    rax,0x2
   140001caa:	48 01 d0             	add    rax,rdx
   140001cad:	48 c1 e0 03          	shl    rax,0x3
   140001cb1:	48 01 c8             	add    rax,rcx
   140001cb4:	48 8b 50 18          	mov    rdx,QWORD PTR [rax+0x18]
   140001cb8:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140001cbc:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   140001cbf:	49 89 d0             	mov    r8,rdx
   140001cc2:	89 c2                	mov    edx,eax
   140001cc4:	48 8d 05 75 35 00 00 	lea    rax,[rip+0x3575]        # 140005240 <.rdata+0x40>
   140001ccb:	48 89 c1             	mov    rcx,rax
   140001cce:	e8 bd fd ff ff       	call   140001a90 <__report_error>
   140001cd3:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
   140001cd6:	83 f8 40             	cmp    eax,0x40
   140001cd9:	0f 84 e8 00 00 00    	je     140001dc7 <mark_section_writable+0x2c7>
   140001cdf:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
   140001ce2:	83 f8 04             	cmp    eax,0x4
   140001ce5:	0f 84 dc 00 00 00    	je     140001dc7 <mark_section_writable+0x2c7>
   140001ceb:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
   140001cee:	3d 80 00 00 00       	cmp    eax,0x80
   140001cf3:	0f 84 ce 00 00 00    	je     140001dc7 <mark_section_writable+0x2c7>
   140001cf9:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
   140001cfc:	83 f8 08             	cmp    eax,0x8
   140001cff:	0f 84 c2 00 00 00    	je     140001dc7 <mark_section_writable+0x2c7>
   140001d05:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
   140001d08:	83 f8 02             	cmp    eax,0x2
   140001d0b:	75 09                	jne    140001d16 <mark_section_writable+0x216>
   140001d0d:	c7 45 f8 04 00 00 00 	mov    DWORD PTR [rbp-0x8],0x4
   140001d14:	eb 07                	jmp    140001d1d <mark_section_writable+0x21d>
   140001d16:	c7 45 f8 40 00 00 00 	mov    DWORD PTR [rbp-0x8],0x40
   140001d1d:	48 8b 0d cc 73 00 00 	mov    rcx,QWORD PTR [rip+0x73cc]        # 1400090f0 <the_secs>
   140001d24:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001d27:	48 63 d0             	movsxd rdx,eax
   140001d2a:	48 89 d0             	mov    rax,rdx
   140001d2d:	48 c1 e0 02          	shl    rax,0x2
   140001d31:	48 01 d0             	add    rax,rdx
   140001d34:	48 c1 e0 03          	shl    rax,0x3
   140001d38:	48 8d 14 01          	lea    rdx,[rcx+rax*1]
   140001d3c:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
   140001d40:	48 89 42 08          	mov    QWORD PTR [rdx+0x8],rax
   140001d44:	48 8b 0d a5 73 00 00 	mov    rcx,QWORD PTR [rip+0x73a5]        # 1400090f0 <the_secs>
   140001d4b:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001d4e:	48 63 d0             	movsxd rdx,eax
   140001d51:	48 89 d0             	mov    rax,rdx
   140001d54:	48 c1 e0 02          	shl    rax,0x2
   140001d58:	48 01 d0             	add    rax,rdx
   140001d5b:	48 c1 e0 03          	shl    rax,0x3
   140001d5f:	48 8d 14 01          	lea    rdx,[rcx+rax*1]
   140001d63:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
   140001d67:	48 89 42 10          	mov    QWORD PTR [rdx+0x10],rax
   140001d6b:	48 8b 0d 7e 73 00 00 	mov    rcx,QWORD PTR [rip+0x737e]        # 1400090f0 <the_secs>
   140001d72:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001d75:	48 63 d0             	movsxd rdx,eax
   140001d78:	48 89 d0             	mov    rax,rdx
   140001d7b:	48 c1 e0 02          	shl    rax,0x2
   140001d7f:	48 01 d0             	add    rax,rdx
   140001d82:	48 c1 e0 03          	shl    rax,0x3
   140001d86:	48 01 c8             	add    rax,rcx
   140001d89:	49 89 c0             	mov    r8,rax
   140001d8c:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
   140001d90:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
   140001d94:	8b 4d f8             	mov    ecx,DWORD PTR [rbp-0x8]
   140001d97:	4d 89 c1             	mov    r9,r8
   140001d9a:	41 89 c8             	mov    r8d,ecx
   140001d9d:	48 89 c1             	mov    rcx,rax
   140001da0:	48 8b 05 71 85 00 00 	mov    rax,QWORD PTR [rip+0x8571]        # 14000a318 <__imp_VirtualProtect>
   140001da7:	ff d0                	call   rax
   140001da9:	85 c0                	test   eax,eax
   140001dab:	75 1a                	jne    140001dc7 <mark_section_writable+0x2c7>
   140001dad:	48 8b 05 1c 85 00 00 	mov    rax,QWORD PTR [rip+0x851c]        # 14000a2d0 <__imp_GetLastError>
   140001db4:	ff d0                	call   rax
   140001db6:	89 c2                	mov    edx,eax
   140001db8:	48 8d 05 b9 34 00 00 	lea    rax,[rip+0x34b9]        # 140005278 <.rdata+0x78>
   140001dbf:	48 89 c1             	mov    rcx,rax
   140001dc2:	e8 c9 fc ff ff       	call   140001a90 <__report_error>
   140001dc7:	8b 05 2b 73 00 00    	mov    eax,DWORD PTR [rip+0x732b]        # 1400090f8 <maxSections>
   140001dcd:	83 c0 01             	add    eax,0x1
   140001dd0:	89 05 22 73 00 00    	mov    DWORD PTR [rip+0x7322],eax        # 1400090f8 <maxSections>
   140001dd6:	eb 01                	jmp    140001dd9 <mark_section_writable+0x2d9>
   140001dd8:	90                   	nop
   140001dd9:	48 83 c4 60          	add    rsp,0x60
   140001ddd:	5d                   	pop    rbp
   140001dde:	c3                   	ret

0000000140001ddf <restore_modified_sections>:
   140001ddf:	55                   	push   rbp
   140001de0:	48 89 e5             	mov    rbp,rsp
   140001de3:	48 83 ec 30          	sub    rsp,0x30
   140001de7:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
   140001dee:	e9 ad 00 00 00       	jmp    140001ea0 <restore_modified_sections+0xc1>
   140001df3:	48 8b 0d f6 72 00 00 	mov    rcx,QWORD PTR [rip+0x72f6]        # 1400090f0 <the_secs>
   140001dfa:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001dfd:	48 63 d0             	movsxd rdx,eax
   140001e00:	48 89 d0             	mov    rax,rdx
   140001e03:	48 c1 e0 02          	shl    rax,0x2
   140001e07:	48 01 d0             	add    rax,rdx
   140001e0a:	48 c1 e0 03          	shl    rax,0x3
   140001e0e:	48 01 c8             	add    rax,rcx
   140001e11:	8b 00                	mov    eax,DWORD PTR [rax]
   140001e13:	85 c0                	test   eax,eax
   140001e15:	0f 84 80 00 00 00    	je     140001e9b <restore_modified_sections+0xbc>
   140001e1b:	48 8b 0d ce 72 00 00 	mov    rcx,QWORD PTR [rip+0x72ce]        # 1400090f0 <the_secs>
   140001e22:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001e25:	48 63 d0             	movsxd rdx,eax
   140001e28:	48 89 d0             	mov    rax,rdx
   140001e2b:	48 c1 e0 02          	shl    rax,0x2
   140001e2f:	48 01 d0             	add    rax,rdx
   140001e32:	48 c1 e0 03          	shl    rax,0x3
   140001e36:	48 01 c8             	add    rax,rcx
   140001e39:	44 8b 10             	mov    r10d,DWORD PTR [rax]
   140001e3c:	48 8b 0d ad 72 00 00 	mov    rcx,QWORD PTR [rip+0x72ad]        # 1400090f0 <the_secs>
   140001e43:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001e46:	48 63 d0             	movsxd rdx,eax
   140001e49:	48 89 d0             	mov    rax,rdx
   140001e4c:	48 c1 e0 02          	shl    rax,0x2
   140001e50:	48 01 d0             	add    rax,rdx
   140001e53:	48 c1 e0 03          	shl    rax,0x3
   140001e57:	48 01 c8             	add    rax,rcx
   140001e5a:	48 8b 48 10          	mov    rcx,QWORD PTR [rax+0x10]
   140001e5e:	4c 8b 05 8b 72 00 00 	mov    r8,QWORD PTR [rip+0x728b]        # 1400090f0 <the_secs>
   140001e65:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140001e68:	48 63 d0             	movsxd rdx,eax
   140001e6b:	48 89 d0             	mov    rax,rdx
   140001e6e:	48 c1 e0 02          	shl    rax,0x2
   140001e72:	48 01 d0             	add    rax,rdx
   140001e75:	48 c1 e0 03          	shl    rax,0x3
   140001e79:	4c 01 c0             	add    rax,r8
   140001e7c:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
   140001e80:	48 8d 55 f8          	lea    rdx,[rbp-0x8]
   140001e84:	49 89 d1             	mov    r9,rdx
   140001e87:	45 89 d0             	mov    r8d,r10d
   140001e8a:	48 89 ca             	mov    rdx,rcx
   140001e8d:	48 89 c1             	mov    rcx,rax
   140001e90:	48 8b 05 81 84 00 00 	mov    rax,QWORD PTR [rip+0x8481]        # 14000a318 <__imp_VirtualProtect>
   140001e97:	ff d0                	call   rax
   140001e99:	eb 01                	jmp    140001e9c <restore_modified_sections+0xbd>
   140001e9b:	90                   	nop
   140001e9c:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
   140001ea0:	8b 05 52 72 00 00    	mov    eax,DWORD PTR [rip+0x7252]        # 1400090f8 <maxSections>
   140001ea6:	39 45 fc             	cmp    DWORD PTR [rbp-0x4],eax
   140001ea9:	0f 8c 44 ff ff ff    	jl     140001df3 <restore_modified_sections+0x14>
   140001eaf:	90                   	nop
   140001eb0:	90                   	nop
   140001eb1:	48 83 c4 30          	add    rsp,0x30
   140001eb5:	5d                   	pop    rbp
   140001eb6:	c3                   	ret

0000000140001eb7 <__write_memory>:
   140001eb7:	55                   	push   rbp
   140001eb8:	48 89 e5             	mov    rbp,rsp
   140001ebb:	48 83 ec 20          	sub    rsp,0x20
   140001ebf:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140001ec3:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   140001ec7:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   140001ecb:	48 83 7d 20 00       	cmp    QWORD PTR [rbp+0x20],0x0
   140001ed0:	74 25                	je     140001ef7 <__write_memory+0x40>
   140001ed2:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140001ed6:	48 89 c1             	mov    rcx,rax
   140001ed9:	e8 22 fc ff ff       	call   140001b00 <mark_section_writable>
   140001ede:	48 8b 4d 20          	mov    rcx,QWORD PTR [rbp+0x20]
   140001ee2:	48 8b 55 18          	mov    rdx,QWORD PTR [rbp+0x18]
   140001ee6:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140001eea:	49 89 c8             	mov    r8,rcx
   140001eed:	48 89 c1             	mov    rcx,rax
   140001ef0:	e8 63 13 00 00       	call   140003258 <memcpy>
   140001ef5:	eb 01                	jmp    140001ef8 <__write_memory+0x41>
   140001ef7:	90                   	nop
   140001ef8:	48 83 c4 20          	add    rsp,0x20
   140001efc:	5d                   	pop    rbp
   140001efd:	c3                   	ret

0000000140001efe <do_pseudo_reloc>:
   140001efe:	55                   	push   rbp
   140001eff:	48 89 e5             	mov    rbp,rsp
   140001f02:	48 83 c4 80          	add    rsp,0xffffffffffffff80
   140001f06:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140001f0a:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   140001f0e:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   140001f12:	48 8b 45 18          	mov    rax,QWORD PTR [rbp+0x18]
   140001f16:	48 2b 45 10          	sub    rax,QWORD PTR [rbp+0x10]
   140001f1a:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
   140001f1e:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140001f22:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140001f26:	48 83 7d e0 07       	cmp    QWORD PTR [rbp-0x20],0x7
   140001f2b:	0f 8e 50 03 00 00    	jle    140002281 <do_pseudo_reloc+0x383>
   140001f31:	48 83 7d e0 0b       	cmp    QWORD PTR [rbp-0x20],0xb
   140001f36:	7e 25                	jle    140001f5d <do_pseudo_reloc+0x5f>
   140001f38:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140001f3c:	8b 00                	mov    eax,DWORD PTR [rax]
   140001f3e:	85 c0                	test   eax,eax
   140001f40:	75 1b                	jne    140001f5d <do_pseudo_reloc+0x5f>
   140001f42:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140001f46:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
   140001f49:	85 c0                	test   eax,eax
   140001f4b:	75 10                	jne    140001f5d <do_pseudo_reloc+0x5f>
   140001f4d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140001f51:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   140001f54:	85 c0                	test   eax,eax
   140001f56:	75 05                	jne    140001f5d <do_pseudo_reloc+0x5f>
   140001f58:	48 83 45 f8 0c       	add    QWORD PTR [rbp-0x8],0xc
   140001f5d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140001f61:	8b 00                	mov    eax,DWORD PTR [rax]
   140001f63:	85 c0                	test   eax,eax
   140001f65:	75 0b                	jne    140001f72 <do_pseudo_reloc+0x74>
   140001f67:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140001f6b:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
   140001f6e:	85 c0                	test   eax,eax
   140001f70:	74 59                	je     140001fcb <do_pseudo_reloc+0xcd>
   140001f72:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140001f76:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
   140001f7a:	eb 40                	jmp    140001fbc <do_pseudo_reloc+0xbe>
   140001f7c:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140001f80:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
   140001f83:	89 c2                	mov    edx,eax
   140001f85:	48 8b 45 20          	mov    rax,QWORD PTR [rbp+0x20]
   140001f89:	48 01 d0             	add    rax,rdx
   140001f8c:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
   140001f90:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140001f94:	8b 10                	mov    edx,DWORD PTR [rax]
   140001f96:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140001f9a:	8b 00                	mov    eax,DWORD PTR [rax]
   140001f9c:	01 d0                	add    eax,edx
   140001f9e:	89 45 b4             	mov    DWORD PTR [rbp-0x4c],eax
   140001fa1:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140001fa5:	48 8d 55 b4          	lea    rdx,[rbp-0x4c]
   140001fa9:	41 b8 04 00 00 00    	mov    r8d,0x4
   140001faf:	48 89 c1             	mov    rcx,rax
   140001fb2:	e8 00 ff ff ff       	call   140001eb7 <__write_memory>
   140001fb7:	48 83 45 e8 08       	add    QWORD PTR [rbp-0x18],0x8
   140001fbc:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140001fc0:	48 3b 45 18          	cmp    rax,QWORD PTR [rbp+0x18]
   140001fc4:	72 b6                	jb     140001f7c <do_pseudo_reloc+0x7e>
   140001fc6:	e9 b7 02 00 00       	jmp    140002282 <do_pseudo_reloc+0x384>
   140001fcb:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140001fcf:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   140001fd2:	83 f8 01             	cmp    eax,0x1
   140001fd5:	74 18                	je     140001fef <do_pseudo_reloc+0xf1>
   140001fd7:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140001fdb:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   140001fde:	89 c2                	mov    edx,eax
   140001fe0:	48 8d 05 b9 32 00 00 	lea    rax,[rip+0x32b9]        # 1400052a0 <.rdata+0xa0>
   140001fe7:	48 89 c1             	mov    rcx,rax
   140001fea:	e8 a1 fa ff ff       	call   140001a90 <__report_error>
   140001fef:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140001ff3:	48 83 c0 0c          	add    rax,0xc
   140001ff7:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140001ffb:	e9 71 02 00 00       	jmp    140002271 <do_pseudo_reloc+0x373>
   140002000:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002004:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
   140002007:	89 c2                	mov    edx,eax
   140002009:	48 8b 45 20          	mov    rax,QWORD PTR [rbp+0x20]
   14000200d:	48 01 d0             	add    rax,rdx
   140002010:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
   140002014:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002018:	8b 00                	mov    eax,DWORD PTR [rax]
   14000201a:	89 c2                	mov    edx,eax
   14000201c:	48 8b 45 20          	mov    rax,QWORD PTR [rbp+0x20]
   140002020:	48 01 d0             	add    rax,rdx
   140002023:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
   140002027:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
   14000202b:	48 8b 00             	mov    rax,QWORD PTR [rax]
   14000202e:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
   140002032:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002036:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   140002039:	0f b6 c0             	movzx  eax,al
   14000203c:	83 f8 40             	cmp    eax,0x40
   14000203f:	0f 84 b6 00 00 00    	je     1400020fb <do_pseudo_reloc+0x1fd>
   140002045:	83 f8 40             	cmp    eax,0x40
   140002048:	0f 87 ba 00 00 00    	ja     140002108 <do_pseudo_reloc+0x20a>
   14000204e:	83 f8 20             	cmp    eax,0x20
   140002051:	74 77                	je     1400020ca <do_pseudo_reloc+0x1cc>
   140002053:	83 f8 20             	cmp    eax,0x20
   140002056:	0f 87 ac 00 00 00    	ja     140002108 <do_pseudo_reloc+0x20a>
   14000205c:	83 f8 08             	cmp    eax,0x8
   14000205f:	74 0a                	je     14000206b <do_pseudo_reloc+0x16d>
   140002061:	83 f8 10             	cmp    eax,0x10
   140002064:	74 38                	je     14000209e <do_pseudo_reloc+0x1a0>
   140002066:	e9 9d 00 00 00       	jmp    140002108 <do_pseudo_reloc+0x20a>
   14000206b:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   14000206f:	0f b6 00             	movzx  eax,BYTE PTR [rax]
   140002072:	0f b6 c0             	movzx  eax,al
   140002075:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   140002079:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   14000207d:	25 80 00 00 00       	and    eax,0x80
   140002082:	48 85 c0             	test   rax,rax
   140002085:	0f 84 a0 00 00 00    	je     14000212b <do_pseudo_reloc+0x22d>
   14000208b:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   14000208f:	48 0d 00 ff ff ff    	or     rax,0xffffffffffffff00
   140002095:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   140002099:	e9 8d 00 00 00       	jmp    14000212b <do_pseudo_reloc+0x22d>
   14000209e:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   1400020a2:	0f b7 00             	movzx  eax,WORD PTR [rax]
   1400020a5:	0f b7 c0             	movzx  eax,ax
   1400020a8:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   1400020ac:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   1400020b0:	25 00 80 00 00       	and    eax,0x8000
   1400020b5:	48 85 c0             	test   rax,rax
   1400020b8:	74 74                	je     14000212e <do_pseudo_reloc+0x230>
   1400020ba:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   1400020be:	48 0d 00 00 ff ff    	or     rax,0xffffffffffff0000
   1400020c4:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   1400020c8:	eb 64                	jmp    14000212e <do_pseudo_reloc+0x230>
   1400020ca:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   1400020ce:	8b 00                	mov    eax,DWORD PTR [rax]
   1400020d0:	89 c0                	mov    eax,eax
   1400020d2:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   1400020d6:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   1400020da:	25 00 00 00 80       	and    eax,0x80000000
   1400020df:	48 85 c0             	test   rax,rax
   1400020e2:	74 4d                	je     140002131 <do_pseudo_reloc+0x233>
   1400020e4:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   1400020e8:	48 ba 00 00 00 00 ff 	movabs rdx,0xffffffff00000000
   1400020ef:	ff ff ff 
   1400020f2:	48 09 d0             	or     rax,rdx
   1400020f5:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   1400020f9:	eb 36                	jmp    140002131 <do_pseudo_reloc+0x233>
   1400020fb:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   1400020ff:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140002102:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   140002106:	eb 2a                	jmp    140002132 <do_pseudo_reloc+0x234>
   140002108:	48 c7 45 b8 00 00 00 	mov    QWORD PTR [rbp-0x48],0x0
   14000210f:	00 
   140002110:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002114:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   140002117:	0f b6 c0             	movzx  eax,al
   14000211a:	89 c2                	mov    edx,eax
   14000211c:	48 8d 05 b5 31 00 00 	lea    rax,[rip+0x31b5]        # 1400052d8 <.rdata+0xd8>
   140002123:	48 89 c1             	mov    rcx,rax
   140002126:	e8 65 f9 ff ff       	call   140001a90 <__report_error>
   14000212b:	90                   	nop
   14000212c:	eb 04                	jmp    140002132 <do_pseudo_reloc+0x234>
   14000212e:	90                   	nop
   14000212f:	eb 01                	jmp    140002132 <do_pseudo_reloc+0x234>
   140002131:	90                   	nop
   140002132:	48 8b 4d b8          	mov    rcx,QWORD PTR [rbp-0x48]
   140002136:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   14000213a:	8b 00                	mov    eax,DWORD PTR [rax]
   14000213c:	89 c2                	mov    edx,eax
   14000213e:	48 8b 45 20          	mov    rax,QWORD PTR [rbp+0x20]
   140002142:	48 01 c2             	add    rdx,rax
   140002145:	48 89 c8             	mov    rax,rcx
   140002148:	48 29 d0             	sub    rax,rdx
   14000214b:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   14000214f:	48 8b 55 b8          	mov    rdx,QWORD PTR [rbp-0x48]
   140002153:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
   140002157:	48 01 d0             	add    rax,rdx
   14000215a:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
   14000215e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002162:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   140002165:	25 ff 00 00 00       	and    eax,0xff
   14000216a:	89 45 d4             	mov    DWORD PTR [rbp-0x2c],eax
   14000216d:	83 7d d4 3f          	cmp    DWORD PTR [rbp-0x2c],0x3f
   140002171:	77 70                	ja     1400021e3 <do_pseudo_reloc+0x2e5>
   140002173:	8b 45 d4             	mov    eax,DWORD PTR [rbp-0x2c]
   140002176:	ba 01 00 00 00       	mov    edx,0x1
   14000217b:	89 c1                	mov    ecx,eax
   14000217d:	48 d3 e2             	shl    rdx,cl
   140002180:	48 89 d0             	mov    rax,rdx
   140002183:	48 83 e8 01          	sub    rax,0x1
   140002187:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
   14000218b:	8b 45 d4             	mov    eax,DWORD PTR [rbp-0x2c]
   14000218e:	83 e8 01             	sub    eax,0x1
   140002191:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
   140002198:	89 c1                	mov    ecx,eax
   14000219a:	48 d3 e2             	shl    rdx,cl
   14000219d:	48 89 d0             	mov    rax,rdx
   1400021a0:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax
   1400021a4:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   1400021a8:	48 39 45 c8          	cmp    QWORD PTR [rbp-0x38],rax
   1400021ac:	7c 0a                	jl     1400021b8 <do_pseudo_reloc+0x2ba>
   1400021ae:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
   1400021b2:	48 39 45 c0          	cmp    QWORD PTR [rbp-0x40],rax
   1400021b6:	7e 2b                	jle    1400021e3 <do_pseudo_reloc+0x2e5>
   1400021b8:	48 8b 55 b8          	mov    rdx,QWORD PTR [rbp-0x48]
   1400021bc:	4c 8b 45 d8          	mov    r8,QWORD PTR [rbp-0x28]
   1400021c0:	48 8b 4d e0          	mov    rcx,QWORD PTR [rbp-0x20]
   1400021c4:	8b 45 d4             	mov    eax,DWORD PTR [rbp-0x2c]
   1400021c7:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
   1400021cc:	4d 89 c1             	mov    r9,r8
   1400021cf:	49 89 c8             	mov    r8,rcx
   1400021d2:	89 c2                	mov    edx,eax
   1400021d4:	48 8d 05 2d 31 00 00 	lea    rax,[rip+0x312d]        # 140005308 <.rdata+0x108>
   1400021db:	48 89 c1             	mov    rcx,rax
   1400021de:	e8 ad f8 ff ff       	call   140001a90 <__report_error>
   1400021e3:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400021e7:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   1400021ea:	0f b6 c0             	movzx  eax,al
   1400021ed:	83 f8 40             	cmp    eax,0x40
   1400021f0:	74 63                	je     140002255 <do_pseudo_reloc+0x357>
   1400021f2:	83 f8 40             	cmp    eax,0x40
   1400021f5:	77 75                	ja     14000226c <do_pseudo_reloc+0x36e>
   1400021f7:	83 f8 20             	cmp    eax,0x20
   1400021fa:	74 41                	je     14000223d <do_pseudo_reloc+0x33f>
   1400021fc:	83 f8 20             	cmp    eax,0x20
   1400021ff:	77 6b                	ja     14000226c <do_pseudo_reloc+0x36e>
   140002201:	83 f8 08             	cmp    eax,0x8
   140002204:	74 07                	je     14000220d <do_pseudo_reloc+0x30f>
   140002206:	83 f8 10             	cmp    eax,0x10
   140002209:	74 1a                	je     140002225 <do_pseudo_reloc+0x327>
   14000220b:	eb 5f                	jmp    14000226c <do_pseudo_reloc+0x36e>
   14000220d:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002211:	48 8d 55 b8          	lea    rdx,[rbp-0x48]
   140002215:	41 b8 01 00 00 00    	mov    r8d,0x1
   14000221b:	48 89 c1             	mov    rcx,rax
   14000221e:	e8 94 fc ff ff       	call   140001eb7 <__write_memory>
   140002223:	eb 47                	jmp    14000226c <do_pseudo_reloc+0x36e>
   140002225:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002229:	48 8d 55 b8          	lea    rdx,[rbp-0x48]
   14000222d:	41 b8 02 00 00 00    	mov    r8d,0x2
   140002233:	48 89 c1             	mov    rcx,rax
   140002236:	e8 7c fc ff ff       	call   140001eb7 <__write_memory>
   14000223b:	eb 2f                	jmp    14000226c <do_pseudo_reloc+0x36e>
   14000223d:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002241:	48 8d 55 b8          	lea    rdx,[rbp-0x48]
   140002245:	41 b8 04 00 00 00    	mov    r8d,0x4
   14000224b:	48 89 c1             	mov    rcx,rax
   14000224e:	e8 64 fc ff ff       	call   140001eb7 <__write_memory>
   140002253:	eb 17                	jmp    14000226c <do_pseudo_reloc+0x36e>
   140002255:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002259:	48 8d 55 b8          	lea    rdx,[rbp-0x48]
   14000225d:	41 b8 08 00 00 00    	mov    r8d,0x8
   140002263:	48 89 c1             	mov    rcx,rax
   140002266:	e8 4c fc ff ff       	call   140001eb7 <__write_memory>
   14000226b:	90                   	nop
   14000226c:	48 83 45 f0 0c       	add    QWORD PTR [rbp-0x10],0xc
   140002271:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002275:	48 3b 45 18          	cmp    rax,QWORD PTR [rbp+0x18]
   140002279:	0f 82 81 fd ff ff    	jb     140002000 <do_pseudo_reloc+0x102>
   14000227f:	eb 01                	jmp    140002282 <do_pseudo_reloc+0x384>
   140002281:	90                   	nop
   140002282:	48 83 ec 80          	sub    rsp,0xffffffffffffff80
   140002286:	5d                   	pop    rbp
   140002287:	c3                   	ret

0000000140002288 <_pei386_runtime_relocator>:
   140002288:	55                   	push   rbp
   140002289:	48 89 e5             	mov    rbp,rsp
   14000228c:	48 83 ec 30          	sub    rsp,0x30
   140002290:	8b 05 66 6e 00 00    	mov    eax,DWORD PTR [rip+0x6e66]        # 1400090fc <was_init.0>
   140002296:	85 c0                	test   eax,eax
   140002298:	0f 85 88 00 00 00    	jne    140002326 <_pei386_runtime_relocator+0x9e>
   14000229e:	8b 05 58 6e 00 00    	mov    eax,DWORD PTR [rip+0x6e58]        # 1400090fc <was_init.0>
   1400022a4:	83 c0 01             	add    eax,0x1
   1400022a7:	89 05 4f 6e 00 00    	mov    DWORD PTR [rip+0x6e4f],eax        # 1400090fc <was_init.0>
   1400022ad:	e8 79 08 00 00       	call   140002b2b <__mingw_GetSectionCount>
   1400022b2:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   1400022b5:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   1400022b8:	48 63 d0             	movsxd rdx,eax
   1400022bb:	48 89 d0             	mov    rax,rdx
   1400022be:	48 c1 e0 02          	shl    rax,0x2
   1400022c2:	48 01 d0             	add    rax,rdx
   1400022c5:	48 c1 e0 03          	shl    rax,0x3
   1400022c9:	48 83 c0 0f          	add    rax,0xf
   1400022cd:	48 c1 e8 04          	shr    rax,0x4
   1400022d1:	48 c1 e0 04          	shl    rax,0x4
   1400022d5:	e8 d6 0a 00 00       	call   140002db0 <___chkstk_ms>
   1400022da:	48 29 c4             	sub    rsp,rax
   1400022dd:	48 8d 44 24 20       	lea    rax,[rsp+0x20]
   1400022e2:	48 83 c0 0f          	add    rax,0xf
   1400022e6:	48 c1 e8 04          	shr    rax,0x4
   1400022ea:	48 c1 e0 04          	shl    rax,0x4
   1400022ee:	48 89 05 fb 6d 00 00 	mov    QWORD PTR [rip+0x6dfb],rax        # 1400090f0 <the_secs>
   1400022f5:	c7 05 f9 6d 00 00 00 	mov    DWORD PTR [rip+0x6df9],0x0        # 1400090f8 <maxSections>
   1400022fc:	00 00 00 
   1400022ff:	4c 8b 05 1a 31 00 00 	mov    r8,QWORD PTR [rip+0x311a]        # 140005420 <.refptr.__image_base__>
   140002306:	48 8b 05 d3 30 00 00 	mov    rax,QWORD PTR [rip+0x30d3]        # 1400053e0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   14000230d:	48 89 c2             	mov    rdx,rax
   140002310:	48 8b 05 d9 30 00 00 	mov    rax,QWORD PTR [rip+0x30d9]        # 1400053f0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   140002317:	48 89 c1             	mov    rcx,rax
   14000231a:	e8 df fb ff ff       	call   140001efe <do_pseudo_reloc>
   14000231f:	e8 bb fa ff ff       	call   140001ddf <restore_modified_sections>
   140002324:	eb 01                	jmp    140002327 <_pei386_runtime_relocator+0x9f>
   140002326:	90                   	nop
   140002327:	48 89 ec             	mov    rsp,rbp
   14000232a:	5d                   	pop    rbp
   14000232b:	c3                   	ret
   14000232c:	90                   	nop
   14000232d:	90                   	nop
   14000232e:	90                   	nop
   14000232f:	90                   	nop

0000000140002330 <__mingw_raise_matherr>:
   140002330:	55                   	push   rbp
   140002331:	48 89 e5             	mov    rbp,rsp
   140002334:	48 83 ec 50          	sub    rsp,0x50
   140002338:	89 4d 10             	mov    DWORD PTR [rbp+0x10],ecx
   14000233b:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   14000233f:	f2 0f 11 55 20       	movsd  QWORD PTR [rbp+0x20],xmm2
   140002344:	f2 0f 11 5d 28       	movsd  QWORD PTR [rbp+0x28],xmm3
   140002349:	48 8b 05 b0 6d 00 00 	mov    rax,QWORD PTR [rip+0x6db0]        # 140009100 <stUserMathErr>
   140002350:	48 85 c0             	test   rax,rax
   140002353:	74 3e                	je     140002393 <__mingw_raise_matherr+0x63>
   140002355:	8b 45 10             	mov    eax,DWORD PTR [rbp+0x10]
   140002358:	89 45 d0             	mov    DWORD PTR [rbp-0x30],eax
   14000235b:	48 8b 45 18          	mov    rax,QWORD PTR [rbp+0x18]
   14000235f:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
   140002363:	f2 0f 10 45 20       	movsd  xmm0,QWORD PTR [rbp+0x20]
   140002368:	f2 0f 11 45 e0       	movsd  QWORD PTR [rbp-0x20],xmm0
   14000236d:	f2 0f 10 45 28       	movsd  xmm0,QWORD PTR [rbp+0x28]
   140002372:	f2 0f 11 45 e8       	movsd  QWORD PTR [rbp-0x18],xmm0
   140002377:	f2 0f 10 45 30       	movsd  xmm0,QWORD PTR [rbp+0x30]
   14000237c:	f2 0f 11 45 f0       	movsd  QWORD PTR [rbp-0x10],xmm0
   140002381:	48 8b 15 78 6d 00 00 	mov    rdx,QWORD PTR [rip+0x6d78]        # 140009100 <stUserMathErr>
   140002388:	48 8d 45 d0          	lea    rax,[rbp-0x30]
   14000238c:	48 89 c1             	mov    rcx,rax
   14000238f:	ff d2                	call   rdx
   140002391:	eb 01                	jmp    140002394 <__mingw_raise_matherr+0x64>
   140002393:	90                   	nop
   140002394:	48 83 c4 50          	add    rsp,0x50
   140002398:	5d                   	pop    rbp
   140002399:	c3                   	ret

000000014000239a <__mingw_setusermatherr>:
   14000239a:	55                   	push   rbp
   14000239b:	48 89 e5             	mov    rbp,rsp
   14000239e:	48 83 ec 20          	sub    rsp,0x20
   1400023a2:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   1400023a6:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   1400023aa:	48 89 05 4f 6d 00 00 	mov    QWORD PTR [rip+0x6d4f],rax        # 140009100 <stUserMathErr>
   1400023b1:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   1400023b5:	48 89 c1             	mov    rcx,rax
   1400023b8:	e8 a3 0e 00 00       	call   140003260 <__setusermatherr>
   1400023bd:	90                   	nop
   1400023be:	48 83 c4 20          	add    rsp,0x20
   1400023c2:	5d                   	pop    rbp
   1400023c3:	c3                   	ret
   1400023c4:	90                   	nop
   1400023c5:	90                   	nop
   1400023c6:	90                   	nop
   1400023c7:	90                   	nop
   1400023c8:	90                   	nop
   1400023c9:	90                   	nop
   1400023ca:	90                   	nop
   1400023cb:	90                   	nop
   1400023cc:	90                   	nop
   1400023cd:	90                   	nop
   1400023ce:	90                   	nop
   1400023cf:	90                   	nop

00000001400023d0 <_gnu_exception_handler>:
   1400023d0:	55                   	push   rbp
   1400023d1:	48 89 e5             	mov    rbp,rsp
   1400023d4:	48 83 ec 30          	sub    rsp,0x30
   1400023d8:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   1400023dc:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
   1400023e3:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
   1400023ea:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   1400023ee:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400023f1:	8b 00                	mov    eax,DWORD PTR [rax]
   1400023f3:	25 ff ff ff 20       	and    eax,0x20ffffff
   1400023f8:	3d 43 43 47 20       	cmp    eax,0x20474343
   1400023fd:	75 1b                	jne    14000241a <_gnu_exception_handler+0x4a>
   1400023ff:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002403:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140002406:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
   140002409:	83 e0 01             	and    eax,0x1
   14000240c:	85 c0                	test   eax,eax
   14000240e:	75 0a                	jne    14000241a <_gnu_exception_handler+0x4a>
   140002410:	b8 ff ff ff ff       	mov    eax,0xffffffff
   140002415:	e9 d3 01 00 00       	jmp    1400025ed <_gnu_exception_handler+0x21d>
   14000241a:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   14000241e:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140002421:	8b 00                	mov    eax,DWORD PTR [rax]
   140002423:	3d 96 00 00 c0       	cmp    eax,0xc0000096
   140002428:	0f 87 8d 01 00 00    	ja     1400025bb <_gnu_exception_handler+0x1eb>
   14000242e:	3d 8c 00 00 c0       	cmp    eax,0xc000008c
   140002433:	73 43                	jae    140002478 <_gnu_exception_handler+0xa8>
   140002435:	3d 1d 00 00 c0       	cmp    eax,0xc000001d
   14000243a:	0f 84 bf 00 00 00    	je     1400024ff <_gnu_exception_handler+0x12f>
   140002440:	3d 1d 00 00 c0       	cmp    eax,0xc000001d
   140002445:	0f 87 70 01 00 00    	ja     1400025bb <_gnu_exception_handler+0x1eb>
   14000244b:	3d 08 00 00 c0       	cmp    eax,0xc0000008
   140002450:	0f 84 5c 01 00 00    	je     1400025b2 <_gnu_exception_handler+0x1e2>
   140002456:	3d 08 00 00 c0       	cmp    eax,0xc0000008
   14000245b:	0f 87 5a 01 00 00    	ja     1400025bb <_gnu_exception_handler+0x1eb>
   140002461:	3d 02 00 00 80       	cmp    eax,0x80000002
   140002466:	0f 84 46 01 00 00    	je     1400025b2 <_gnu_exception_handler+0x1e2>
   14000246c:	3d 05 00 00 c0       	cmp    eax,0xc0000005
   140002471:	74 35                	je     1400024a8 <_gnu_exception_handler+0xd8>
   140002473:	e9 43 01 00 00       	jmp    1400025bb <_gnu_exception_handler+0x1eb>
   140002478:	05 74 ff ff 3f       	add    eax,0x3fffff74
   14000247d:	83 f8 0a             	cmp    eax,0xa
   140002480:	0f 87 35 01 00 00    	ja     1400025bb <_gnu_exception_handler+0x1eb>
   140002486:	89 c0                	mov    eax,eax
   140002488:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
   14000248f:	00 
   140002490:	48 8d 05 c9 2e 00 00 	lea    rax,[rip+0x2ec9]        # 140005360 <.rdata>
   140002497:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
   14000249a:	48 98                	cdqe
   14000249c:	48 8d 15 bd 2e 00 00 	lea    rdx,[rip+0x2ebd]        # 140005360 <.rdata>
   1400024a3:	48 01 d0             	add    rax,rdx
   1400024a6:	ff e0                	jmp    rax
   1400024a8:	ba 00 00 00 00       	mov    edx,0x0
   1400024ad:	b9 0b 00 00 00       	mov    ecx,0xb
   1400024b2:	e8 89 0d 00 00       	call   140003240 <signal>
   1400024b7:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   1400024bb:	48 83 7d f0 01       	cmp    QWORD PTR [rbp-0x10],0x1
   1400024c0:	75 1b                	jne    1400024dd <_gnu_exception_handler+0x10d>
   1400024c2:	ba 01 00 00 00       	mov    edx,0x1
   1400024c7:	b9 0b 00 00 00       	mov    ecx,0xb
   1400024cc:	e8 6f 0d 00 00       	call   140003240 <signal>
   1400024d1:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [rbp-0x4],0xffffffff
   1400024d8:	e9 e1 00 00 00       	jmp    1400025be <_gnu_exception_handler+0x1ee>
   1400024dd:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
   1400024e2:	0f 84 d6 00 00 00    	je     1400025be <_gnu_exception_handler+0x1ee>
   1400024e8:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400024ec:	b9 0b 00 00 00       	mov    ecx,0xb
   1400024f1:	ff d0                	call   rax
   1400024f3:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [rbp-0x4],0xffffffff
   1400024fa:	e9 bf 00 00 00       	jmp    1400025be <_gnu_exception_handler+0x1ee>
   1400024ff:	ba 00 00 00 00       	mov    edx,0x0
   140002504:	b9 04 00 00 00       	mov    ecx,0x4
   140002509:	e8 32 0d 00 00       	call   140003240 <signal>
   14000250e:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140002512:	48 83 7d f0 01       	cmp    QWORD PTR [rbp-0x10],0x1
   140002517:	75 1b                	jne    140002534 <_gnu_exception_handler+0x164>
   140002519:	ba 01 00 00 00       	mov    edx,0x1
   14000251e:	b9 04 00 00 00       	mov    ecx,0x4
   140002523:	e8 18 0d 00 00       	call   140003240 <signal>
   140002528:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [rbp-0x4],0xffffffff
   14000252f:	e9 8d 00 00 00       	jmp    1400025c1 <_gnu_exception_handler+0x1f1>
   140002534:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
   140002539:	0f 84 82 00 00 00    	je     1400025c1 <_gnu_exception_handler+0x1f1>
   14000253f:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002543:	b9 04 00 00 00       	mov    ecx,0x4
   140002548:	ff d0                	call   rax
   14000254a:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [rbp-0x4],0xffffffff
   140002551:	eb 6e                	jmp    1400025c1 <_gnu_exception_handler+0x1f1>
   140002553:	c7 45 f8 01 00 00 00 	mov    DWORD PTR [rbp-0x8],0x1
   14000255a:	ba 00 00 00 00       	mov    edx,0x0
   14000255f:	b9 08 00 00 00       	mov    ecx,0x8
   140002564:	e8 d7 0c 00 00       	call   140003240 <signal>
   140002569:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   14000256d:	48 83 7d f0 01       	cmp    QWORD PTR [rbp-0x10],0x1
   140002572:	75 23                	jne    140002597 <_gnu_exception_handler+0x1c7>
   140002574:	ba 01 00 00 00       	mov    edx,0x1
   140002579:	b9 08 00 00 00       	mov    ecx,0x8
   14000257e:	e8 bd 0c 00 00       	call   140003240 <signal>
   140002583:	83 7d f8 00          	cmp    DWORD PTR [rbp-0x8],0x0
   140002587:	74 05                	je     14000258e <_gnu_exception_handler+0x1be>
   140002589:	e8 f2 f4 ff ff       	call   140001a80 <_fpreset>
   14000258e:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [rbp-0x4],0xffffffff
   140002595:	eb 2d                	jmp    1400025c4 <_gnu_exception_handler+0x1f4>
   140002597:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
   14000259c:	74 26                	je     1400025c4 <_gnu_exception_handler+0x1f4>
   14000259e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400025a2:	b9 08 00 00 00       	mov    ecx,0x8
   1400025a7:	ff d0                	call   rax
   1400025a9:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [rbp-0x4],0xffffffff
   1400025b0:	eb 12                	jmp    1400025c4 <_gnu_exception_handler+0x1f4>
   1400025b2:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [rbp-0x4],0xffffffff
   1400025b9:	eb 0a                	jmp    1400025c5 <_gnu_exception_handler+0x1f5>
   1400025bb:	90                   	nop
   1400025bc:	eb 07                	jmp    1400025c5 <_gnu_exception_handler+0x1f5>
   1400025be:	90                   	nop
   1400025bf:	eb 04                	jmp    1400025c5 <_gnu_exception_handler+0x1f5>
   1400025c1:	90                   	nop
   1400025c2:	eb 01                	jmp    1400025c5 <_gnu_exception_handler+0x1f5>
   1400025c4:	90                   	nop
   1400025c5:	83 7d fc 00          	cmp    DWORD PTR [rbp-0x4],0x0
   1400025c9:	75 1f                	jne    1400025ea <_gnu_exception_handler+0x21a>
   1400025cb:	48 8b 05 4e 6b 00 00 	mov    rax,QWORD PTR [rip+0x6b4e]        # 140009120 <__mingw_oldexcpt_handler>
   1400025d2:	48 85 c0             	test   rax,rax
   1400025d5:	74 13                	je     1400025ea <_gnu_exception_handler+0x21a>
   1400025d7:	48 8b 15 42 6b 00 00 	mov    rdx,QWORD PTR [rip+0x6b42]        # 140009120 <__mingw_oldexcpt_handler>
   1400025de:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   1400025e2:	48 89 c1             	mov    rcx,rax
   1400025e5:	ff d2                	call   rdx
   1400025e7:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   1400025ea:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   1400025ed:	48 83 c4 30          	add    rsp,0x30
   1400025f1:	5d                   	pop    rbp
   1400025f2:	c3                   	ret
   1400025f3:	90                   	nop
   1400025f4:	90                   	nop
   1400025f5:	90                   	nop
   1400025f6:	90                   	nop
   1400025f7:	90                   	nop
   1400025f8:	90                   	nop
   1400025f9:	90                   	nop
   1400025fa:	90                   	nop
   1400025fb:	90                   	nop
   1400025fc:	90                   	nop
   1400025fd:	90                   	nop
   1400025fe:	90                   	nop
   1400025ff:	90                   	nop

0000000140002600 <___w64_mingwthr_add_key_dtor>:
   140002600:	55                   	push   rbp
   140002601:	48 89 e5             	mov    rbp,rsp
   140002604:	48 83 ec 30          	sub    rsp,0x30
   140002608:	89 4d 10             	mov    DWORD PTR [rbp+0x10],ecx
   14000260b:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   14000260f:	8b 05 53 6b 00 00    	mov    eax,DWORD PTR [rip+0x6b53]        # 140009168 <__mingwthr_cs_init>
   140002615:	85 c0                	test   eax,eax
   140002617:	75 07                	jne    140002620 <___w64_mingwthr_add_key_dtor+0x20>
   140002619:	b8 00 00 00 00       	mov    eax,0x0
   14000261e:	eb 7b                	jmp    14000269b <___w64_mingwthr_add_key_dtor+0x9b>
   140002620:	ba 18 00 00 00       	mov    edx,0x18
   140002625:	b9 01 00 00 00       	mov    ecx,0x1
   14000262a:	e8 49 0c 00 00       	call   140003278 <calloc>
   14000262f:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002633:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
   140002638:	75 07                	jne    140002641 <___w64_mingwthr_add_key_dtor+0x41>
   14000263a:	b8 ff ff ff ff       	mov    eax,0xffffffff
   14000263f:	eb 5a                	jmp    14000269b <___w64_mingwthr_add_key_dtor+0x9b>
   140002641:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002645:	8b 55 10             	mov    edx,DWORD PTR [rbp+0x10]
   140002648:	89 10                	mov    DWORD PTR [rax],edx
   14000264a:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   14000264e:	48 8b 55 18          	mov    rdx,QWORD PTR [rbp+0x18]
   140002652:	48 89 50 08          	mov    QWORD PTR [rax+0x8],rdx
   140002656:	48 8d 05 e3 6a 00 00 	lea    rax,[rip+0x6ae3]        # 140009140 <__mingwthr_cs>
   14000265d:	48 89 c1             	mov    rcx,rax
   140002660:	48 8b 05 59 7c 00 00 	mov    rax,QWORD PTR [rip+0x7c59]        # 14000a2c0 <__imp_EnterCriticalSection>
   140002667:	ff d0                	call   rax
   140002669:	48 8b 15 00 6b 00 00 	mov    rdx,QWORD PTR [rip+0x6b00]        # 140009170 <key_dtor_list>
   140002670:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002674:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
   140002678:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   14000267c:	48 89 05 ed 6a 00 00 	mov    QWORD PTR [rip+0x6aed],rax        # 140009170 <key_dtor_list>
   140002683:	48 8d 05 b6 6a 00 00 	lea    rax,[rip+0x6ab6]        # 140009140 <__mingwthr_cs>
   14000268a:	48 89 c1             	mov    rcx,rax
   14000268d:	48 8b 05 5c 7c 00 00 	mov    rax,QWORD PTR [rip+0x7c5c]        # 14000a2f0 <__imp_LeaveCriticalSection>
   140002694:	ff d0                	call   rax
   140002696:	b8 00 00 00 00       	mov    eax,0x0
   14000269b:	48 83 c4 30          	add    rsp,0x30
   14000269f:	5d                   	pop    rbp
   1400026a0:	c3                   	ret

00000001400026a1 <___w64_mingwthr_remove_key_dtor>:
   1400026a1:	55                   	push   rbp
   1400026a2:	48 89 e5             	mov    rbp,rsp
   1400026a5:	48 83 ec 30          	sub    rsp,0x30
   1400026a9:	89 4d 10             	mov    DWORD PTR [rbp+0x10],ecx
   1400026ac:	8b 05 b6 6a 00 00    	mov    eax,DWORD PTR [rip+0x6ab6]        # 140009168 <__mingwthr_cs_init>
   1400026b2:	85 c0                	test   eax,eax
   1400026b4:	75 0a                	jne    1400026c0 <___w64_mingwthr_remove_key_dtor+0x1f>
   1400026b6:	b8 00 00 00 00       	mov    eax,0x0
   1400026bb:	e9 9c 00 00 00       	jmp    14000275c <___w64_mingwthr_remove_key_dtor+0xbb>
   1400026c0:	48 8d 05 79 6a 00 00 	lea    rax,[rip+0x6a79]        # 140009140 <__mingwthr_cs>
   1400026c7:	48 89 c1             	mov    rcx,rax
   1400026ca:	48 8b 05 ef 7b 00 00 	mov    rax,QWORD PTR [rip+0x7bef]        # 14000a2c0 <__imp_EnterCriticalSection>
   1400026d1:	ff d0                	call   rax
   1400026d3:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
   1400026da:	00 
   1400026db:	48 8b 05 8e 6a 00 00 	mov    rax,QWORD PTR [rip+0x6a8e]        # 140009170 <key_dtor_list>
   1400026e2:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   1400026e6:	eb 55                	jmp    14000273d <___w64_mingwthr_remove_key_dtor+0x9c>
   1400026e8:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400026ec:	8b 00                	mov    eax,DWORD PTR [rax]
   1400026ee:	39 45 10             	cmp    DWORD PTR [rbp+0x10],eax
   1400026f1:	75 36                	jne    140002729 <___w64_mingwthr_remove_key_dtor+0x88>
   1400026f3:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
   1400026f8:	75 11                	jne    14000270b <___w64_mingwthr_remove_key_dtor+0x6a>
   1400026fa:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400026fe:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
   140002702:	48 89 05 67 6a 00 00 	mov    QWORD PTR [rip+0x6a67],rax        # 140009170 <key_dtor_list>
   140002709:	eb 10                	jmp    14000271b <___w64_mingwthr_remove_key_dtor+0x7a>
   14000270b:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   14000270f:	48 8b 50 10          	mov    rdx,QWORD PTR [rax+0x10]
   140002713:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002717:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
   14000271b:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   14000271f:	48 89 c1             	mov    rcx,rax
   140002722:	e8 59 0b 00 00       	call   140003280 <free>
   140002727:	eb 1b                	jmp    140002744 <___w64_mingwthr_remove_key_dtor+0xa3>
   140002729:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   14000272d:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002731:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002735:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
   140002739:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   14000273d:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
   140002742:	75 a4                	jne    1400026e8 <___w64_mingwthr_remove_key_dtor+0x47>
   140002744:	48 8d 05 f5 69 00 00 	lea    rax,[rip+0x69f5]        # 140009140 <__mingwthr_cs>
   14000274b:	48 89 c1             	mov    rcx,rax
   14000274e:	48 8b 05 9b 7b 00 00 	mov    rax,QWORD PTR [rip+0x7b9b]        # 14000a2f0 <__imp_LeaveCriticalSection>
   140002755:	ff d0                	call   rax
   140002757:	b8 00 00 00 00       	mov    eax,0x0
   14000275c:	48 83 c4 30          	add    rsp,0x30
   140002760:	5d                   	pop    rbp
   140002761:	c3                   	ret

0000000140002762 <__mingwthr_run_key_dtors>:
   140002762:	55                   	push   rbp
   140002763:	48 89 e5             	mov    rbp,rsp
   140002766:	48 83 ec 30          	sub    rsp,0x30
   14000276a:	8b 05 f8 69 00 00    	mov    eax,DWORD PTR [rip+0x69f8]        # 140009168 <__mingwthr_cs_init>
   140002770:	85 c0                	test   eax,eax
   140002772:	0f 84 82 00 00 00    	je     1400027fa <__mingwthr_run_key_dtors+0x98>
   140002778:	48 8d 05 c1 69 00 00 	lea    rax,[rip+0x69c1]        # 140009140 <__mingwthr_cs>
   14000277f:	48 89 c1             	mov    rcx,rax
   140002782:	48 8b 05 37 7b 00 00 	mov    rax,QWORD PTR [rip+0x7b37]        # 14000a2c0 <__imp_EnterCriticalSection>
   140002789:	ff d0                	call   rax
   14000278b:	48 8b 05 de 69 00 00 	mov    rax,QWORD PTR [rip+0x69de]        # 140009170 <key_dtor_list>
   140002792:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002796:	eb 46                	jmp    1400027de <__mingwthr_run_key_dtors+0x7c>
   140002798:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   14000279c:	8b 00                	mov    eax,DWORD PTR [rax]
   14000279e:	89 c1                	mov    ecx,eax
   1400027a0:	48 8b 05 69 7b 00 00 	mov    rax,QWORD PTR [rip+0x7b69]        # 14000a310 <__imp_TlsGetValue>
   1400027a7:	ff d0                	call   rax
   1400027a9:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   1400027ad:	48 8b 05 1c 7b 00 00 	mov    rax,QWORD PTR [rip+0x7b1c]        # 14000a2d0 <__imp_GetLastError>
   1400027b4:	ff d0                	call   rax
   1400027b6:	85 c0                	test   eax,eax
   1400027b8:	75 18                	jne    1400027d2 <__mingwthr_run_key_dtors+0x70>
   1400027ba:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
   1400027bf:	74 11                	je     1400027d2 <__mingwthr_run_key_dtors+0x70>
   1400027c1:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400027c5:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
   1400027c9:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400027cd:	48 89 c1             	mov    rcx,rax
   1400027d0:	ff d2                	call   rdx
   1400027d2:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400027d6:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
   1400027da:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   1400027de:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
   1400027e3:	75 b3                	jne    140002798 <__mingwthr_run_key_dtors+0x36>
   1400027e5:	48 8d 05 54 69 00 00 	lea    rax,[rip+0x6954]        # 140009140 <__mingwthr_cs>
   1400027ec:	48 89 c1             	mov    rcx,rax
   1400027ef:	48 8b 05 fa 7a 00 00 	mov    rax,QWORD PTR [rip+0x7afa]        # 14000a2f0 <__imp_LeaveCriticalSection>
   1400027f6:	ff d0                	call   rax
   1400027f8:	eb 01                	jmp    1400027fb <__mingwthr_run_key_dtors+0x99>
   1400027fa:	90                   	nop
   1400027fb:	48 83 c4 30          	add    rsp,0x30
   1400027ff:	5d                   	pop    rbp
   140002800:	c3                   	ret

0000000140002801 <__mingw_TLScallback>:
   140002801:	55                   	push   rbp
   140002802:	48 89 e5             	mov    rbp,rsp
   140002805:	48 83 ec 30          	sub    rsp,0x30
   140002809:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   14000280d:	89 55 18             	mov    DWORD PTR [rbp+0x18],edx
   140002810:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   140002814:	83 7d 18 03          	cmp    DWORD PTR [rbp+0x18],0x3
   140002818:	0f 84 cc 00 00 00    	je     1400028ea <__mingw_TLScallback+0xe9>
   14000281e:	83 7d 18 03          	cmp    DWORD PTR [rbp+0x18],0x3
   140002822:	0f 87 ca 00 00 00    	ja     1400028f2 <__mingw_TLScallback+0xf1>
   140002828:	83 7d 18 02          	cmp    DWORD PTR [rbp+0x18],0x2
   14000282c:	0f 84 b1 00 00 00    	je     1400028e3 <__mingw_TLScallback+0xe2>
   140002832:	83 7d 18 02          	cmp    DWORD PTR [rbp+0x18],0x2
   140002836:	0f 87 b6 00 00 00    	ja     1400028f2 <__mingw_TLScallback+0xf1>
   14000283c:	83 7d 18 00          	cmp    DWORD PTR [rbp+0x18],0x0
   140002840:	74 33                	je     140002875 <__mingw_TLScallback+0x74>
   140002842:	83 7d 18 01          	cmp    DWORD PTR [rbp+0x18],0x1
   140002846:	0f 85 a6 00 00 00    	jne    1400028f2 <__mingw_TLScallback+0xf1>
   14000284c:	8b 05 16 69 00 00    	mov    eax,DWORD PTR [rip+0x6916]        # 140009168 <__mingwthr_cs_init>
   140002852:	85 c0                	test   eax,eax
   140002854:	75 13                	jne    140002869 <__mingw_TLScallback+0x68>
   140002856:	48 8d 05 e3 68 00 00 	lea    rax,[rip+0x68e3]        # 140009140 <__mingwthr_cs>
   14000285d:	48 89 c1             	mov    rcx,rax
   140002860:	48 8b 05 81 7a 00 00 	mov    rax,QWORD PTR [rip+0x7a81]        # 14000a2e8 <__imp_InitializeCriticalSection>
   140002867:	ff d0                	call   rax
   140002869:	c7 05 f5 68 00 00 01 	mov    DWORD PTR [rip+0x68f5],0x1        # 140009168 <__mingwthr_cs_init>
   140002870:	00 00 00 
   140002873:	eb 7d                	jmp    1400028f2 <__mingw_TLScallback+0xf1>
   140002875:	e8 e8 fe ff ff       	call   140002762 <__mingwthr_run_key_dtors>
   14000287a:	8b 05 e8 68 00 00    	mov    eax,DWORD PTR [rip+0x68e8]        # 140009168 <__mingwthr_cs_init>
   140002880:	83 f8 01             	cmp    eax,0x1
   140002883:	75 6c                	jne    1400028f1 <__mingw_TLScallback+0xf0>
   140002885:	48 8b 05 e4 68 00 00 	mov    rax,QWORD PTR [rip+0x68e4]        # 140009170 <key_dtor_list>
   14000288c:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002890:	eb 20                	jmp    1400028b2 <__mingw_TLScallback+0xb1>
   140002892:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002896:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
   14000289a:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   14000289e:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400028a2:	48 89 c1             	mov    rcx,rax
   1400028a5:	e8 d6 09 00 00       	call   140003280 <free>
   1400028aa:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   1400028ae:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   1400028b2:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
   1400028b7:	75 d9                	jne    140002892 <__mingw_TLScallback+0x91>
   1400028b9:	48 c7 05 ac 68 00 00 	mov    QWORD PTR [rip+0x68ac],0x0        # 140009170 <key_dtor_list>
   1400028c0:	00 00 00 00 
   1400028c4:	c7 05 9a 68 00 00 00 	mov    DWORD PTR [rip+0x689a],0x0        # 140009168 <__mingwthr_cs_init>
   1400028cb:	00 00 00 
   1400028ce:	48 8d 05 6b 68 00 00 	lea    rax,[rip+0x686b]        # 140009140 <__mingwthr_cs>
   1400028d5:	48 89 c1             	mov    rcx,rax
   1400028d8:	48 8b 05 d9 79 00 00 	mov    rax,QWORD PTR [rip+0x79d9]        # 14000a2b8 <__IAT_start__>
   1400028df:	ff d0                	call   rax
   1400028e1:	eb 0e                	jmp    1400028f1 <__mingw_TLScallback+0xf0>
   1400028e3:	e8 98 f1 ff ff       	call   140001a80 <_fpreset>
   1400028e8:	eb 08                	jmp    1400028f2 <__mingw_TLScallback+0xf1>
   1400028ea:	e8 73 fe ff ff       	call   140002762 <__mingwthr_run_key_dtors>
   1400028ef:	eb 01                	jmp    1400028f2 <__mingw_TLScallback+0xf1>
   1400028f1:	90                   	nop
   1400028f2:	b8 01 00 00 00       	mov    eax,0x1
   1400028f7:	48 83 c4 30          	add    rsp,0x30
   1400028fb:	5d                   	pop    rbp
   1400028fc:	c3                   	ret
   1400028fd:	90                   	nop
   1400028fe:	90                   	nop
   1400028ff:	90                   	nop

0000000140002900 <_ValidateImageBase>:
   140002900:	55                   	push   rbp
   140002901:	48 89 e5             	mov    rbp,rsp
   140002904:	48 83 ec 20          	sub    rsp,0x20
   140002908:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   14000290c:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002910:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002914:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002918:	0f b7 00             	movzx  eax,WORD PTR [rax]
   14000291b:	66 3d 4d 5a          	cmp    ax,0x5a4d
   14000291f:	74 07                	je     140002928 <_ValidateImageBase+0x28>
   140002921:	b8 00 00 00 00       	mov    eax,0x0
   140002926:	eb 4e                	jmp    140002976 <_ValidateImageBase+0x76>
   140002928:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   14000292c:	8b 40 3c             	mov    eax,DWORD PTR [rax+0x3c]
   14000292f:	48 63 d0             	movsxd rdx,eax
   140002932:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002936:	48 01 d0             	add    rax,rdx
   140002939:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   14000293d:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002941:	8b 00                	mov    eax,DWORD PTR [rax]
   140002943:	3d 50 45 00 00       	cmp    eax,0x4550
   140002948:	74 07                	je     140002951 <_ValidateImageBase+0x51>
   14000294a:	b8 00 00 00 00       	mov    eax,0x0
   14000294f:	eb 25                	jmp    140002976 <_ValidateImageBase+0x76>
   140002951:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002955:	48 83 c0 18          	add    rax,0x18
   140002959:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
   14000295d:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002961:	0f b7 00             	movzx  eax,WORD PTR [rax]
   140002964:	66 3d 0b 02          	cmp    ax,0x20b
   140002968:	74 07                	je     140002971 <_ValidateImageBase+0x71>
   14000296a:	b8 00 00 00 00       	mov    eax,0x0
   14000296f:	eb 05                	jmp    140002976 <_ValidateImageBase+0x76>
   140002971:	b8 01 00 00 00       	mov    eax,0x1
   140002976:	48 83 c4 20          	add    rsp,0x20
   14000297a:	5d                   	pop    rbp
   14000297b:	c3                   	ret

000000014000297c <_FindPESection>:
   14000297c:	55                   	push   rbp
   14000297d:	48 89 e5             	mov    rbp,rsp
   140002980:	48 83 ec 20          	sub    rsp,0x20
   140002984:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002988:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   14000298c:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002990:	8b 40 3c             	mov    eax,DWORD PTR [rax+0x3c]
   140002993:	48 63 d0             	movsxd rdx,eax
   140002996:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   14000299a:	48 01 d0             	add    rax,rdx
   14000299d:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
   1400029a1:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
   1400029a8:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   1400029ac:	0f b7 40 14          	movzx  eax,WORD PTR [rax+0x14]
   1400029b0:	0f b7 d0             	movzx  edx,ax
   1400029b3:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   1400029b7:	48 01 d0             	add    rax,rdx
   1400029ba:	48 83 c0 18          	add    rax,0x18
   1400029be:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   1400029c2:	eb 36                	jmp    1400029fa <_FindPESection+0x7e>
   1400029c4:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400029c8:	8b 40 0c             	mov    eax,DWORD PTR [rax+0xc]
   1400029cb:	89 c0                	mov    eax,eax
   1400029cd:	48 39 45 18          	cmp    QWORD PTR [rbp+0x18],rax
   1400029d1:	72 1e                	jb     1400029f1 <_FindPESection+0x75>
   1400029d3:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400029d7:	8b 50 0c             	mov    edx,DWORD PTR [rax+0xc]
   1400029da:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400029de:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
   1400029e1:	01 d0                	add    eax,edx
   1400029e3:	89 c0                	mov    eax,eax
   1400029e5:	48 39 45 18          	cmp    QWORD PTR [rbp+0x18],rax
   1400029e9:	73 06                	jae    1400029f1 <_FindPESection+0x75>
   1400029eb:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   1400029ef:	eb 1e                	jmp    140002a0f <_FindPESection+0x93>
   1400029f1:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
   1400029f5:	48 83 45 f8 28       	add    QWORD PTR [rbp-0x8],0x28
   1400029fa:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   1400029fe:	0f b7 40 06          	movzx  eax,WORD PTR [rax+0x6]
   140002a02:	0f b7 c0             	movzx  eax,ax
   140002a05:	39 45 f4             	cmp    DWORD PTR [rbp-0xc],eax
   140002a08:	72 ba                	jb     1400029c4 <_FindPESection+0x48>
   140002a0a:	b8 00 00 00 00       	mov    eax,0x0
   140002a0f:	48 83 c4 20          	add    rsp,0x20
   140002a13:	5d                   	pop    rbp
   140002a14:	c3                   	ret

0000000140002a15 <_FindPESectionByName>:
   140002a15:	55                   	push   rbp
   140002a16:	48 89 e5             	mov    rbp,rsp
   140002a19:	48 83 ec 40          	sub    rsp,0x40
   140002a1d:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002a21:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002a25:	48 89 c1             	mov    rcx,rax
   140002a28:	e8 43 07 00 00       	call   140003170 <strlen>
   140002a2d:	48 83 f8 08          	cmp    rax,0x8
   140002a31:	76 0a                	jbe    140002a3d <_FindPESectionByName+0x28>
   140002a33:	b8 00 00 00 00       	mov    eax,0x0
   140002a38:	e9 98 00 00 00       	jmp    140002ad5 <_FindPESectionByName+0xc0>
   140002a3d:	48 8b 05 dc 29 00 00 	mov    rax,QWORD PTR [rip+0x29dc]        # 140005420 <.refptr.__image_base__>
   140002a44:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
   140002a48:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002a4c:	48 89 c1             	mov    rcx,rax
   140002a4f:	e8 ac fe ff ff       	call   140002900 <_ValidateImageBase>
   140002a54:	85 c0                	test   eax,eax
   140002a56:	75 07                	jne    140002a5f <_FindPESectionByName+0x4a>
   140002a58:	b8 00 00 00 00       	mov    eax,0x0
   140002a5d:	eb 76                	jmp    140002ad5 <_FindPESectionByName+0xc0>
   140002a5f:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002a63:	8b 40 3c             	mov    eax,DWORD PTR [rax+0x3c]
   140002a66:	48 63 d0             	movsxd rdx,eax
   140002a69:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002a6d:	48 01 d0             	add    rax,rdx
   140002a70:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
   140002a74:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
   140002a7b:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002a7f:	0f b7 40 14          	movzx  eax,WORD PTR [rax+0x14]
   140002a83:	0f b7 d0             	movzx  edx,ax
   140002a86:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002a8a:	48 01 d0             	add    rax,rdx
   140002a8d:	48 83 c0 18          	add    rax,0x18
   140002a91:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002a95:	eb 29                	jmp    140002ac0 <_FindPESectionByName+0xab>
   140002a97:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002a9b:	48 8b 55 10          	mov    rdx,QWORD PTR [rbp+0x10]
   140002a9f:	41 b8 08 00 00 00    	mov    r8d,0x8
   140002aa5:	48 89 c1             	mov    rcx,rax
   140002aa8:	e8 cb 06 00 00       	call   140003178 <strncmp>
   140002aad:	85 c0                	test   eax,eax
   140002aaf:	75 06                	jne    140002ab7 <_FindPESectionByName+0xa2>
   140002ab1:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002ab5:	eb 1e                	jmp    140002ad5 <_FindPESectionByName+0xc0>
   140002ab7:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
   140002abb:	48 83 45 f8 28       	add    QWORD PTR [rbp-0x8],0x28
   140002ac0:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002ac4:	0f b7 40 06          	movzx  eax,WORD PTR [rax+0x6]
   140002ac8:	0f b7 c0             	movzx  eax,ax
   140002acb:	39 45 f4             	cmp    DWORD PTR [rbp-0xc],eax
   140002ace:	72 c7                	jb     140002a97 <_FindPESectionByName+0x82>
   140002ad0:	b8 00 00 00 00       	mov    eax,0x0
   140002ad5:	48 83 c4 40          	add    rsp,0x40
   140002ad9:	5d                   	pop    rbp
   140002ada:	c3                   	ret

0000000140002adb <__mingw_GetSectionForAddress>:
   140002adb:	55                   	push   rbp
   140002adc:	48 89 e5             	mov    rbp,rsp
   140002adf:	48 83 ec 30          	sub    rsp,0x30
   140002ae3:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002ae7:	48 8b 05 32 29 00 00 	mov    rax,QWORD PTR [rip+0x2932]        # 140005420 <.refptr.__image_base__>
   140002aee:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002af2:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002af6:	48 89 c1             	mov    rcx,rax
   140002af9:	e8 02 fe ff ff       	call   140002900 <_ValidateImageBase>
   140002afe:	85 c0                	test   eax,eax
   140002b00:	75 07                	jne    140002b09 <__mingw_GetSectionForAddress+0x2e>
   140002b02:	b8 00 00 00 00       	mov    eax,0x0
   140002b07:	eb 1c                	jmp    140002b25 <__mingw_GetSectionForAddress+0x4a>
   140002b09:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002b0d:	48 2b 45 f8          	sub    rax,QWORD PTR [rbp-0x8]
   140002b11:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140002b15:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
   140002b19:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002b1d:	48 89 c1             	mov    rcx,rax
   140002b20:	e8 57 fe ff ff       	call   14000297c <_FindPESection>
   140002b25:	48 83 c4 30          	add    rsp,0x30
   140002b29:	5d                   	pop    rbp
   140002b2a:	c3                   	ret

0000000140002b2b <__mingw_GetSectionCount>:
   140002b2b:	55                   	push   rbp
   140002b2c:	48 89 e5             	mov    rbp,rsp
   140002b2f:	48 83 ec 30          	sub    rsp,0x30
   140002b33:	48 8b 05 e6 28 00 00 	mov    rax,QWORD PTR [rip+0x28e6]        # 140005420 <.refptr.__image_base__>
   140002b3a:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002b3e:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002b42:	48 89 c1             	mov    rcx,rax
   140002b45:	e8 b6 fd ff ff       	call   140002900 <_ValidateImageBase>
   140002b4a:	85 c0                	test   eax,eax
   140002b4c:	75 07                	jne    140002b55 <__mingw_GetSectionCount+0x2a>
   140002b4e:	b8 00 00 00 00       	mov    eax,0x0
   140002b53:	eb 20                	jmp    140002b75 <__mingw_GetSectionCount+0x4a>
   140002b55:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002b59:	8b 40 3c             	mov    eax,DWORD PTR [rax+0x3c]
   140002b5c:	48 63 d0             	movsxd rdx,eax
   140002b5f:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002b63:	48 01 d0             	add    rax,rdx
   140002b66:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140002b6a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002b6e:	0f b7 40 06          	movzx  eax,WORD PTR [rax+0x6]
   140002b72:	0f b7 c0             	movzx  eax,ax
   140002b75:	48 83 c4 30          	add    rsp,0x30
   140002b79:	5d                   	pop    rbp
   140002b7a:	c3                   	ret

0000000140002b7b <_FindPESectionExec>:
   140002b7b:	55                   	push   rbp
   140002b7c:	48 89 e5             	mov    rbp,rsp
   140002b7f:	48 83 ec 40          	sub    rsp,0x40
   140002b83:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002b87:	48 8b 05 92 28 00 00 	mov    rax,QWORD PTR [rip+0x2892]        # 140005420 <.refptr.__image_base__>
   140002b8e:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
   140002b92:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002b96:	48 89 c1             	mov    rcx,rax
   140002b99:	e8 62 fd ff ff       	call   140002900 <_ValidateImageBase>
   140002b9e:	85 c0                	test   eax,eax
   140002ba0:	75 07                	jne    140002ba9 <_FindPESectionExec+0x2e>
   140002ba2:	b8 00 00 00 00       	mov    eax,0x0
   140002ba7:	eb 78                	jmp    140002c21 <_FindPESectionExec+0xa6>
   140002ba9:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002bad:	8b 40 3c             	mov    eax,DWORD PTR [rax+0x3c]
   140002bb0:	48 63 d0             	movsxd rdx,eax
   140002bb3:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002bb7:	48 01 d0             	add    rax,rdx
   140002bba:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
   140002bbe:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
   140002bc5:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002bc9:	0f b7 40 14          	movzx  eax,WORD PTR [rax+0x14]
   140002bcd:	0f b7 d0             	movzx  edx,ax
   140002bd0:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002bd4:	48 01 d0             	add    rax,rdx
   140002bd7:	48 83 c0 18          	add    rax,0x18
   140002bdb:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002bdf:	eb 2b                	jmp    140002c0c <_FindPESectionExec+0x91>
   140002be1:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002be5:	8b 40 24             	mov    eax,DWORD PTR [rax+0x24]
   140002be8:	25 00 00 00 20       	and    eax,0x20000000
   140002bed:	85 c0                	test   eax,eax
   140002bef:	74 12                	je     140002c03 <_FindPESectionExec+0x88>
   140002bf1:	48 83 7d 10 00       	cmp    QWORD PTR [rbp+0x10],0x0
   140002bf6:	75 06                	jne    140002bfe <_FindPESectionExec+0x83>
   140002bf8:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002bfc:	eb 23                	jmp    140002c21 <_FindPESectionExec+0xa6>
   140002bfe:	48 83 6d 10 01       	sub    QWORD PTR [rbp+0x10],0x1
   140002c03:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
   140002c07:	48 83 45 f8 28       	add    QWORD PTR [rbp-0x8],0x28
   140002c0c:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
   140002c10:	0f b7 40 06          	movzx  eax,WORD PTR [rax+0x6]
   140002c14:	0f b7 c0             	movzx  eax,ax
   140002c17:	39 45 f4             	cmp    DWORD PTR [rbp-0xc],eax
   140002c1a:	72 c5                	jb     140002be1 <_FindPESectionExec+0x66>
   140002c1c:	b8 00 00 00 00       	mov    eax,0x0
   140002c21:	48 83 c4 40          	add    rsp,0x40
   140002c25:	5d                   	pop    rbp
   140002c26:	c3                   	ret

0000000140002c27 <_GetPEImageBase>:
   140002c27:	55                   	push   rbp
   140002c28:	48 89 e5             	mov    rbp,rsp
   140002c2b:	48 83 ec 30          	sub    rsp,0x30
   140002c2f:	48 8b 05 ea 27 00 00 	mov    rax,QWORD PTR [rip+0x27ea]        # 140005420 <.refptr.__image_base__>
   140002c36:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002c3a:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002c3e:	48 89 c1             	mov    rcx,rax
   140002c41:	e8 ba fc ff ff       	call   140002900 <_ValidateImageBase>
   140002c46:	85 c0                	test   eax,eax
   140002c48:	75 07                	jne    140002c51 <_GetPEImageBase+0x2a>
   140002c4a:	b8 00 00 00 00       	mov    eax,0x0
   140002c4f:	eb 04                	jmp    140002c55 <_GetPEImageBase+0x2e>
   140002c51:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002c55:	48 83 c4 30          	add    rsp,0x30
   140002c59:	5d                   	pop    rbp
   140002c5a:	c3                   	ret

0000000140002c5b <_IsNonwritableInCurrentImage>:
   140002c5b:	55                   	push   rbp
   140002c5c:	48 89 e5             	mov    rbp,rsp
   140002c5f:	48 83 ec 40          	sub    rsp,0x40
   140002c63:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002c67:	48 8b 05 b2 27 00 00 	mov    rax,QWORD PTR [rip+0x27b2]        # 140005420 <.refptr.__image_base__>
   140002c6e:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002c72:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002c76:	48 89 c1             	mov    rcx,rax
   140002c79:	e8 82 fc ff ff       	call   140002900 <_ValidateImageBase>
   140002c7e:	85 c0                	test   eax,eax
   140002c80:	75 07                	jne    140002c89 <_IsNonwritableInCurrentImage+0x2e>
   140002c82:	b8 00 00 00 00       	mov    eax,0x0
   140002c87:	eb 3d                	jmp    140002cc6 <_IsNonwritableInCurrentImage+0x6b>
   140002c89:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002c8d:	48 2b 45 f8          	sub    rax,QWORD PTR [rbp-0x8]
   140002c91:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140002c95:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
   140002c99:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002c9d:	48 89 c1             	mov    rcx,rax
   140002ca0:	e8 d7 fc ff ff       	call   14000297c <_FindPESection>
   140002ca5:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
   140002ca9:	48 83 7d e8 00       	cmp    QWORD PTR [rbp-0x18],0x0
   140002cae:	75 07                	jne    140002cb7 <_IsNonwritableInCurrentImage+0x5c>
   140002cb0:	b8 00 00 00 00       	mov    eax,0x0
   140002cb5:	eb 0f                	jmp    140002cc6 <_IsNonwritableInCurrentImage+0x6b>
   140002cb7:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002cbb:	8b 40 24             	mov    eax,DWORD PTR [rax+0x24]
   140002cbe:	f7 d0                	not    eax
   140002cc0:	c1 e8 1f             	shr    eax,0x1f
   140002cc3:	0f b6 c0             	movzx  eax,al
   140002cc6:	48 83 c4 40          	add    rsp,0x40
   140002cca:	5d                   	pop    rbp
   140002ccb:	c3                   	ret

0000000140002ccc <__mingw_enum_import_library_names>:
   140002ccc:	55                   	push   rbp
   140002ccd:	48 89 e5             	mov    rbp,rsp
   140002cd0:	48 83 ec 50          	sub    rsp,0x50
   140002cd4:	89 4d 10             	mov    DWORD PTR [rbp+0x10],ecx
   140002cd7:	48 8b 05 42 27 00 00 	mov    rax,QWORD PTR [rip+0x2742]        # 140005420 <.refptr.__image_base__>
   140002cde:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140002ce2:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002ce6:	48 89 c1             	mov    rcx,rax
   140002ce9:	e8 12 fc ff ff       	call   140002900 <_ValidateImageBase>
   140002cee:	85 c0                	test   eax,eax
   140002cf0:	75 0a                	jne    140002cfc <__mingw_enum_import_library_names+0x30>
   140002cf2:	b8 00 00 00 00       	mov    eax,0x0
   140002cf7:	e9 ab 00 00 00       	jmp    140002da7 <__mingw_enum_import_library_names+0xdb>
   140002cfc:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002d00:	8b 40 3c             	mov    eax,DWORD PTR [rax+0x3c]
   140002d03:	48 63 d0             	movsxd rdx,eax
   140002d06:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002d0a:	48 01 d0             	add    rax,rdx
   140002d0d:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
   140002d11:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
   140002d15:	8b 80 90 00 00 00    	mov    eax,DWORD PTR [rax+0x90]
   140002d1b:	89 45 e4             	mov    DWORD PTR [rbp-0x1c],eax
   140002d1e:	83 7d e4 00          	cmp    DWORD PTR [rbp-0x1c],0x0
   140002d22:	75 07                	jne    140002d2b <__mingw_enum_import_library_names+0x5f>
   140002d24:	b8 00 00 00 00       	mov    eax,0x0
   140002d29:	eb 7c                	jmp    140002da7 <__mingw_enum_import_library_names+0xdb>
   140002d2b:	8b 55 e4             	mov    edx,DWORD PTR [rbp-0x1c]
   140002d2e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002d32:	48 89 c1             	mov    rcx,rax
   140002d35:	e8 42 fc ff ff       	call   14000297c <_FindPESection>
   140002d3a:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
   140002d3e:	48 83 7d d8 00       	cmp    QWORD PTR [rbp-0x28],0x0
   140002d43:	75 07                	jne    140002d4c <__mingw_enum_import_library_names+0x80>
   140002d45:	b8 00 00 00 00       	mov    eax,0x0
   140002d4a:	eb 5b                	jmp    140002da7 <__mingw_enum_import_library_names+0xdb>
   140002d4c:	8b 55 e4             	mov    edx,DWORD PTR [rbp-0x1c]
   140002d4f:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002d53:	48 01 d0             	add    rax,rdx
   140002d56:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   140002d5a:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
   140002d5f:	75 07                	jne    140002d68 <__mingw_enum_import_library_names+0x9c>
   140002d61:	b8 00 00 00 00       	mov    eax,0x0
   140002d66:	eb 3f                	jmp    140002da7 <__mingw_enum_import_library_names+0xdb>
   140002d68:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002d6c:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
   140002d6f:	85 c0                	test   eax,eax
   140002d71:	75 0b                	jne    140002d7e <__mingw_enum_import_library_names+0xb2>
   140002d73:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002d77:	8b 40 0c             	mov    eax,DWORD PTR [rax+0xc]
   140002d7a:	85 c0                	test   eax,eax
   140002d7c:	74 23                	je     140002da1 <__mingw_enum_import_library_names+0xd5>
   140002d7e:	83 7d 10 00          	cmp    DWORD PTR [rbp+0x10],0x0
   140002d82:	7f 12                	jg     140002d96 <__mingw_enum_import_library_names+0xca>
   140002d84:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
   140002d88:	8b 40 0c             	mov    eax,DWORD PTR [rax+0xc]
   140002d8b:	89 c2                	mov    edx,eax
   140002d8d:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
   140002d91:	48 01 d0             	add    rax,rdx
   140002d94:	eb 11                	jmp    140002da7 <__mingw_enum_import_library_names+0xdb>
   140002d96:	83 6d 10 01          	sub    DWORD PTR [rbp+0x10],0x1
   140002d9a:	48 83 45 f8 14       	add    QWORD PTR [rbp-0x8],0x14
   140002d9f:	eb c7                	jmp    140002d68 <__mingw_enum_import_library_names+0x9c>
   140002da1:	90                   	nop
   140002da2:	b8 00 00 00 00       	mov    eax,0x0
   140002da7:	48 83 c4 50          	add    rsp,0x50
   140002dab:	5d                   	pop    rbp
   140002dac:	c3                   	ret
   140002dad:	90                   	nop
   140002dae:	90                   	nop
   140002daf:	90                   	nop

0000000140002db0 <___chkstk_ms>:
   140002db0:	51                   	push   rcx
   140002db1:	50                   	push   rax
   140002db2:	48 3d 00 10 00 00    	cmp    rax,0x1000
   140002db8:	48 8d 4c 24 18       	lea    rcx,[rsp+0x18]
   140002dbd:	72 19                	jb     140002dd8 <___chkstk_ms+0x28>
   140002dbf:	48 81 e9 00 10 00 00 	sub    rcx,0x1000
   140002dc6:	48 83 09 00          	or     QWORD PTR [rcx],0x0
   140002dca:	48 2d 00 10 00 00    	sub    rax,0x1000
   140002dd0:	48 3d 00 10 00 00    	cmp    rax,0x1000
   140002dd6:	77 e7                	ja     140002dbf <___chkstk_ms+0xf>
   140002dd8:	48 29 c1             	sub    rcx,rax
   140002ddb:	48 83 09 00          	or     QWORD PTR [rcx],0x0
   140002ddf:	58                   	pop    rax
   140002de0:	59                   	pop    rcx
   140002de1:	c3                   	ret
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

0000000140002df0 <vfprintf>:
   140002df0:	55                   	push   rbp
   140002df1:	48 89 e5             	mov    rbp,rsp
   140002df4:	48 83 ec 30          	sub    rsp,0x30
   140002df8:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002dfc:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   140002e00:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   140002e04:	48 8b 4d 18          	mov    rcx,QWORD PTR [rbp+0x18]
   140002e08:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002e0c:	48 8b 55 20          	mov    rdx,QWORD PTR [rbp+0x20]
   140002e10:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
   140002e15:	41 b9 00 00 00 00    	mov    r9d,0x0
   140002e1b:	49 89 c8             	mov    r8,rcx
   140002e1e:	48 89 c2             	mov    rdx,rax
   140002e21:	b9 00 00 00 00       	mov    ecx,0x0
   140002e26:	e8 6d 03 00 00       	call   140003198 <__stdio_common_vfprintf>
   140002e2b:	48 83 c4 30          	add    rsp,0x30
   140002e2f:	5d                   	pop    rbp
   140002e30:	c3                   	ret
   140002e31:	90                   	nop
   140002e32:	90                   	nop
   140002e33:	90                   	nop
   140002e34:	90                   	nop
   140002e35:	90                   	nop
   140002e36:	90                   	nop
   140002e37:	90                   	nop
   140002e38:	90                   	nop
   140002e39:	90                   	nop
   140002e3a:	90                   	nop
   140002e3b:	90                   	nop
   140002e3c:	90                   	nop
   140002e3d:	90                   	nop
   140002e3e:	90                   	nop
   140002e3f:	90                   	nop

0000000140002e40 <printf>:
   140002e40:	55                   	push   rbp
   140002e41:	53                   	push   rbx
   140002e42:	48 83 ec 48          	sub    rsp,0x48
   140002e46:	48 8d 6c 24 40       	lea    rbp,[rsp+0x40]
   140002e4b:	48 89 4d 20          	mov    QWORD PTR [rbp+0x20],rcx
   140002e4f:	48 89 55 28          	mov    QWORD PTR [rbp+0x28],rdx
   140002e53:	4c 89 45 30          	mov    QWORD PTR [rbp+0x30],r8
   140002e57:	4c 89 4d 38          	mov    QWORD PTR [rbp+0x38],r9
   140002e5b:	48 8d 45 28          	lea    rax,[rbp+0x28]
   140002e5f:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140002e63:	48 8b 5d f0          	mov    rbx,QWORD PTR [rbp-0x10]
   140002e67:	b9 01 00 00 00       	mov    ecx,0x1
   140002e6c:	e8 0f 03 00 00       	call   140003180 <__acrt_iob_func>
   140002e71:	48 8b 55 20          	mov    rdx,QWORD PTR [rbp+0x20]
   140002e75:	48 89 5c 24 20       	mov    QWORD PTR [rsp+0x20],rbx
   140002e7a:	41 b9 00 00 00 00    	mov    r9d,0x0
   140002e80:	49 89 d0             	mov    r8,rdx
   140002e83:	48 89 c2             	mov    rdx,rax
   140002e86:	b9 00 00 00 00       	mov    ecx,0x0
   140002e8b:	e8 08 03 00 00       	call   140003198 <__stdio_common_vfprintf>
   140002e90:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   140002e93:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140002e96:	48 83 c4 48          	add    rsp,0x48
   140002e9a:	5b                   	pop    rbx
   140002e9b:	5d                   	pop    rbp
   140002e9c:	c3                   	ret
   140002e9d:	90                   	nop
   140002e9e:	90                   	nop
   140002e9f:	90                   	nop

0000000140002ea0 <fprintf>:
   140002ea0:	55                   	push   rbp
   140002ea1:	48 89 e5             	mov    rbp,rsp
   140002ea4:	48 83 ec 40          	sub    rsp,0x40
   140002ea8:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002eac:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   140002eb0:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   140002eb4:	4c 89 4d 28          	mov    QWORD PTR [rbp+0x28],r9
   140002eb8:	48 8d 45 20          	lea    rax,[rbp+0x20]
   140002ebc:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140002ec0:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
   140002ec4:	48 8b 4d 18          	mov    rcx,QWORD PTR [rbp+0x18]
   140002ec8:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002ecc:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
   140002ed1:	41 b9 00 00 00 00    	mov    r9d,0x0
   140002ed7:	49 89 c8             	mov    r8,rcx
   140002eda:	48 89 c2             	mov    rdx,rax
   140002edd:	b9 00 00 00 00       	mov    ecx,0x0
   140002ee2:	e8 b1 02 00 00       	call   140003198 <__stdio_common_vfprintf>
   140002ee7:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   140002eea:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140002eed:	48 83 c4 40          	add    rsp,0x40
   140002ef1:	5d                   	pop    rbp
   140002ef2:	c3                   	ret
   140002ef3:	90                   	nop
   140002ef4:	90                   	nop
   140002ef5:	90                   	nop
   140002ef6:	90                   	nop
   140002ef7:	90                   	nop
   140002ef8:	90                   	nop
   140002ef9:	90                   	nop
   140002efa:	90                   	nop
   140002efb:	90                   	nop
   140002efc:	90                   	nop
   140002efd:	90                   	nop
   140002efe:	90                   	nop
   140002eff:	90                   	nop

0000000140002f00 <__getmainargs>:
   140002f00:	55                   	push   rbp
   140002f01:	48 89 e5             	mov    rbp,rsp
   140002f04:	48 83 ec 20          	sub    rsp,0x20
   140002f08:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002f0c:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   140002f10:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   140002f14:	44 89 4d 28          	mov    DWORD PTR [rbp+0x28],r9d
   140002f18:	e8 eb 02 00 00       	call   140003208 <_initialize_narrow_environment>
   140002f1d:	83 7d 28 00          	cmp    DWORD PTR [rbp+0x28],0x0
   140002f21:	74 07                	je     140002f2a <__getmainargs+0x2a>
   140002f23:	b8 02 00 00 00       	mov    eax,0x2
   140002f28:	eb 05                	jmp    140002f2f <__getmainargs+0x2f>
   140002f2a:	b8 01 00 00 00       	mov    eax,0x1
   140002f2f:	89 c1                	mov    ecx,eax
   140002f31:	e8 aa 02 00 00       	call   1400031e0 <_configure_narrow_argv>
   140002f36:	e8 85 02 00 00       	call   1400031c0 <__p___argc>
   140002f3b:	8b 10                	mov    edx,DWORD PTR [rax]
   140002f3d:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002f41:	89 10                	mov    DWORD PTR [rax],edx
   140002f43:	e8 80 02 00 00       	call   1400031c8 <__p___argv>
   140002f48:	48 8b 10             	mov    rdx,QWORD PTR [rax]
   140002f4b:	48 8b 45 18          	mov    rax,QWORD PTR [rbp+0x18]
   140002f4f:	48 89 10             	mov    QWORD PTR [rax],rdx
   140002f52:	e8 39 03 00 00       	call   140003290 <__p__environ>
   140002f57:	48 8b 10             	mov    rdx,QWORD PTR [rax]
   140002f5a:	48 8b 45 20          	mov    rax,QWORD PTR [rbp+0x20]
   140002f5e:	48 89 10             	mov    QWORD PTR [rax],rdx
   140002f61:	48 83 7d 30 00       	cmp    QWORD PTR [rbp+0x30],0x0
   140002f66:	74 0d                	je     140002f75 <__getmainargs+0x75>
   140002f68:	48 8b 45 30          	mov    rax,QWORD PTR [rbp+0x30]
   140002f6c:	8b 00                	mov    eax,DWORD PTR [rax]
   140002f6e:	89 c1                	mov    ecx,eax
   140002f70:	e8 fb 02 00 00       	call   140003270 <_set_new_mode>
   140002f75:	b8 00 00 00 00       	mov    eax,0x0
   140002f7a:	48 83 c4 20          	add    rsp,0x20
   140002f7e:	5d                   	pop    rbp
   140002f7f:	c3                   	ret

0000000140002f80 <__wgetmainargs>:
   140002f80:	55                   	push   rbp
   140002f81:	48 89 e5             	mov    rbp,rsp
   140002f84:	48 83 ec 20          	sub    rsp,0x20
   140002f88:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140002f8c:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   140002f90:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   140002f94:	44 89 4d 28          	mov    DWORD PTR [rbp+0x28],r9d
   140002f98:	e8 73 02 00 00       	call   140003210 <_initialize_wide_environment>
   140002f9d:	83 7d 28 00          	cmp    DWORD PTR [rbp+0x28],0x0
   140002fa1:	74 07                	je     140002faa <__wgetmainargs+0x2a>
   140002fa3:	b8 02 00 00 00       	mov    eax,0x2
   140002fa8:	eb 05                	jmp    140002faf <__wgetmainargs+0x2f>
   140002faa:	b8 01 00 00 00       	mov    eax,0x1
   140002faf:	89 c1                	mov    ecx,eax
   140002fb1:	e8 32 02 00 00       	call   1400031e8 <_configure_wide_argv>
   140002fb6:	e8 05 02 00 00       	call   1400031c0 <__p___argc>
   140002fbb:	8b 10                	mov    edx,DWORD PTR [rax]
   140002fbd:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140002fc1:	89 10                	mov    DWORD PTR [rax],edx
   140002fc3:	e8 08 02 00 00       	call   1400031d0 <__p___wargv>
   140002fc8:	48 8b 10             	mov    rdx,QWORD PTR [rax]
   140002fcb:	48 8b 45 18          	mov    rax,QWORD PTR [rbp+0x18]
   140002fcf:	48 89 10             	mov    QWORD PTR [rax],rdx
   140002fd2:	e8 c1 02 00 00       	call   140003298 <__p__wenviron>
   140002fd7:	48 8b 10             	mov    rdx,QWORD PTR [rax]
   140002fda:	48 8b 45 20          	mov    rax,QWORD PTR [rbp+0x20]
   140002fde:	48 89 10             	mov    QWORD PTR [rax],rdx
   140002fe1:	48 83 7d 30 00       	cmp    QWORD PTR [rbp+0x30],0x0
   140002fe6:	74 0d                	je     140002ff5 <__wgetmainargs+0x75>
   140002fe8:	48 8b 45 30          	mov    rax,QWORD PTR [rbp+0x30]
   140002fec:	8b 00                	mov    eax,DWORD PTR [rax]
   140002fee:	89 c1                	mov    ecx,eax
   140002ff0:	e8 7b 02 00 00       	call   140003270 <_set_new_mode>
   140002ff5:	b8 00 00 00 00       	mov    eax,0x0
   140002ffa:	48 83 c4 20          	add    rsp,0x20
   140002ffe:	5d                   	pop    rbp
   140002fff:	c3                   	ret

0000000140003000 <_onexit>:
   140003000:	55                   	push   rbp
   140003001:	48 89 e5             	mov    rbp,rsp
   140003004:	48 83 ec 20          	sub    rsp,0x20
   140003008:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   14000300c:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140003010:	48 89 c1             	mov    rcx,rax
   140003013:	e8 e0 01 00 00       	call   1400031f8 <_crt_atexit>
   140003018:	85 c0                	test   eax,eax
   14000301a:	75 06                	jne    140003022 <_onexit+0x22>
   14000301c:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140003020:	eb 05                	jmp    140003027 <_onexit+0x27>
   140003022:	b8 00 00 00 00       	mov    eax,0x0
   140003027:	48 83 c4 20          	add    rsp,0x20
   14000302b:	5d                   	pop    rbp
   14000302c:	c3                   	ret

000000014000302d <at_quick_exit>:
   14000302d:	55                   	push   rbp
   14000302e:	48 89 e5             	mov    rbp,rsp
   140003031:	48 83 ec 20          	sub    rsp,0x20
   140003035:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140003039:	48 8b 05 50 24 00 00 	mov    rax,QWORD PTR [rip+0x2450]        # 140005490 <.refptr.__mingw_module_is_dll>
   140003040:	0f b6 00             	movzx  eax,BYTE PTR [rax]
   140003043:	84 c0                	test   al,al
   140003045:	74 07                	je     14000304e <at_quick_exit+0x21>
   140003047:	b8 00 00 00 00       	mov    eax,0x0
   14000304c:	eb 0c                	jmp    14000305a <at_quick_exit+0x2d>
   14000304e:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140003052:	48 89 c1             	mov    rcx,rax
   140003055:	e8 96 01 00 00       	call   1400031f0 <_crt_at_quick_exit>
   14000305a:	48 83 c4 20          	add    rsp,0x20
   14000305e:	5d                   	pop    rbp
   14000305f:	c3                   	ret

0000000140003060 <_amsg_exit>:
   140003060:	55                   	push   rbp
   140003061:	48 89 e5             	mov    rbp,rsp
   140003064:	48 83 ec 20          	sub    rsp,0x20
   140003068:	89 4d 10             	mov    DWORD PTR [rbp+0x10],ecx
   14000306b:	b9 02 00 00 00       	mov    ecx,0x2
   140003070:	e8 0b 01 00 00       	call   140003180 <__acrt_iob_func>
   140003075:	48 89 c1             	mov    rcx,rax
   140003078:	8b 45 10             	mov    eax,DWORD PTR [rbp+0x10]
   14000307b:	41 89 c0             	mov    r8d,eax
   14000307e:	48 8d 05 0b 23 00 00 	lea    rax,[rip+0x230b]        # 140005390 <.rdata>
   140003085:	48 89 c2             	mov    rdx,rax
   140003088:	e8 13 fe ff ff       	call   140002ea0 <fprintf>
   14000308d:	b9 ff 00 00 00       	mov    ecx,0xff
   140003092:	e8 69 01 00 00       	call   140003200 <_exit>
   140003097:	90                   	nop

0000000140003098 <_get_output_format>:
   140003098:	55                   	push   rbp
   140003099:	48 89 e5             	mov    rbp,rsp
   14000309c:	b8 00 00 00 00       	mov    eax,0x0
   1400030a1:	5d                   	pop    rbp
   1400030a2:	c3                   	ret

00000001400030a3 <_tzset>:
   1400030a3:	55                   	push   rbp
   1400030a4:	48 89 e5             	mov    rbp,rsp
   1400030a7:	48 83 ec 20          	sub    rsp,0x20
   1400030ab:	48 8b 05 8e 23 00 00 	mov    rax,QWORD PTR [rip+0x238e]        # 140005440 <.refptr.__imp__tzset>
   1400030b2:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400030b5:	ff d0                	call   rax
   1400030b7:	e8 a4 00 00 00       	call   140003160 <__tzname>
   1400030bc:	48 89 05 25 10 00 00 	mov    QWORD PTR [rip+0x1025],rax        # 1400040e8 <__imp_tzname>
   1400030c3:	e8 90 00 00 00       	call   140003158 <__timezone>
   1400030c8:	48 89 05 21 10 00 00 	mov    QWORD PTR [rip+0x1021],rax        # 1400040f0 <__imp_timezone>
   1400030cf:	e8 7c 00 00 00       	call   140003150 <__daylight>
   1400030d4:	48 89 05 1d 10 00 00 	mov    QWORD PTR [rip+0x101d],rax        # 1400040f8 <__imp_daylight>
   1400030db:	90                   	nop
   1400030dc:	48 83 c4 20          	add    rsp,0x20
   1400030e0:	5d                   	pop    rbp
   1400030e1:	c3                   	ret

00000001400030e2 <tzset>:
   1400030e2:	55                   	push   rbp
   1400030e3:	48 89 e5             	mov    rbp,rsp
   1400030e6:	48 83 ec 20          	sub    rsp,0x20
   1400030ea:	e8 b4 ff ff ff       	call   1400030a3 <_tzset>
   1400030ef:	90                   	nop
   1400030f0:	48 83 c4 20          	add    rsp,0x20
   1400030f4:	5d                   	pop    rbp
   1400030f5:	c3                   	ret

00000001400030f6 <__ms_fwprintf>:
   1400030f6:	55                   	push   rbp
   1400030f7:	48 89 e5             	mov    rbp,rsp
   1400030fa:	48 83 ec 40          	sub    rsp,0x40
   1400030fe:	48 89 4d 10          	mov    QWORD PTR [rbp+0x10],rcx
   140003102:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   140003106:	4c 89 45 20          	mov    QWORD PTR [rbp+0x20],r8
   14000310a:	4c 89 4d 28          	mov    QWORD PTR [rbp+0x28],r9
   14000310e:	48 8d 45 20          	lea    rax,[rbp+0x20]
   140003112:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140003116:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
   14000311a:	48 8b 4d 18          	mov    rcx,QWORD PTR [rbp+0x18]
   14000311e:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
   140003122:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
   140003127:	41 b9 00 00 00 00    	mov    r9d,0x0
   14000312d:	49 89 c8             	mov    r8,rcx
   140003130:	48 89 c2             	mov    rdx,rax
   140003133:	b9 04 00 00 00       	mov    ecx,0x4
   140003138:	e8 63 00 00 00       	call   1400031a0 <__stdio_common_vfwprintf>
   14000313d:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   140003140:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   140003143:	48 83 c4 40          	add    rsp,0x40
   140003147:	5d                   	pop    rbp
   140003148:	c3                   	ret
   140003149:	90                   	nop
   14000314a:	90                   	nop
   14000314b:	90                   	nop
   14000314c:	90                   	nop
   14000314d:	90                   	nop
   14000314e:	90                   	nop
   14000314f:	90                   	nop

0000000140003150 <__daylight>:
   140003150:	ff 25 2a 73 00 00    	jmp    QWORD PTR [rip+0x732a]        # 14000a480 <__imp___daylight>
   140003156:	90                   	nop
   140003157:	90                   	nop

0000000140003158 <__timezone>:
   140003158:	ff 25 2a 73 00 00    	jmp    QWORD PTR [rip+0x732a]        # 14000a488 <__imp___timezone>
   14000315e:	90                   	nop
   14000315f:	90                   	nop

0000000140003160 <__tzname>:
   140003160:	ff 25 2a 73 00 00    	jmp    QWORD PTR [rip+0x732a]        # 14000a490 <__imp___tzname>
   140003166:	90                   	nop
   140003167:	90                   	nop

0000000140003168 <.text>:
   140003168:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000316f:	00 

0000000140003170 <strlen>:
   140003170:	ff 25 f2 72 00 00    	jmp    QWORD PTR [rip+0x72f2]        # 14000a468 <__imp_strlen>
   140003176:	90                   	nop
   140003177:	90                   	nop

0000000140003178 <strncmp>:
   140003178:	ff 25 f2 72 00 00    	jmp    QWORD PTR [rip+0x72f2]        # 14000a470 <__imp_strncmp>
   14000317e:	90                   	nop
   14000317f:	90                   	nop

0000000140003180 <__acrt_iob_func>:
   140003180:	ff 25 a2 72 00 00    	jmp    QWORD PTR [rip+0x72a2]        # 14000a428 <__imp___acrt_iob_func>
   140003186:	90                   	nop
   140003187:	90                   	nop

0000000140003188 <__p__commode>:
   140003188:	ff 25 a2 72 00 00    	jmp    QWORD PTR [rip+0x72a2]        # 14000a430 <__imp___p__commode>
   14000318e:	90                   	nop
   14000318f:	90                   	nop

0000000140003190 <__p__fmode>:
   140003190:	ff 25 a2 72 00 00    	jmp    QWORD PTR [rip+0x72a2]        # 14000a438 <__imp___p__fmode>
   140003196:	90                   	nop
   140003197:	90                   	nop

0000000140003198 <__stdio_common_vfprintf>:
   140003198:	ff 25 a2 72 00 00    	jmp    QWORD PTR [rip+0x72a2]        # 14000a440 <__imp___stdio_common_vfprintf>
   14000319e:	90                   	nop
   14000319f:	90                   	nop

00000001400031a0 <__stdio_common_vfwprintf>:
   1400031a0:	ff 25 a2 72 00 00    	jmp    QWORD PTR [rip+0x72a2]        # 14000a448 <__imp___stdio_common_vfwprintf>
   1400031a6:	90                   	nop
   1400031a7:	90                   	nop

00000001400031a8 <fwrite>:
   1400031a8:	ff 25 a2 72 00 00    	jmp    QWORD PTR [rip+0x72a2]        # 14000a450 <__imp_fwrite>
   1400031ae:	90                   	nop
   1400031af:	90                   	nop

00000001400031b0 <puts>:
   1400031b0:	ff 25 a2 72 00 00    	jmp    QWORD PTR [rip+0x72a2]        # 14000a458 <__imp_puts>
   1400031b6:	90                   	nop
   1400031b7:	90                   	nop
   1400031b8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1400031bf:	00 

00000001400031c0 <__p___argc>:
   1400031c0:	ff 25 d2 71 00 00    	jmp    QWORD PTR [rip+0x71d2]        # 14000a398 <__imp___p___argc>
   1400031c6:	90                   	nop
   1400031c7:	90                   	nop

00000001400031c8 <__p___argv>:
   1400031c8:	ff 25 d2 71 00 00    	jmp    QWORD PTR [rip+0x71d2]        # 14000a3a0 <__imp___p___argv>
   1400031ce:	90                   	nop
   1400031cf:	90                   	nop

00000001400031d0 <__p___wargv>:
   1400031d0:	ff 25 d2 71 00 00    	jmp    QWORD PTR [rip+0x71d2]        # 14000a3a8 <__imp___p___wargv>
   1400031d6:	90                   	nop
   1400031d7:	90                   	nop

00000001400031d8 <_cexit>:
   1400031d8:	ff 25 d2 71 00 00    	jmp    QWORD PTR [rip+0x71d2]        # 14000a3b0 <__imp__cexit>
   1400031de:	90                   	nop
   1400031df:	90                   	nop

00000001400031e0 <_configure_narrow_argv>:
   1400031e0:	ff 25 d2 71 00 00    	jmp    QWORD PTR [rip+0x71d2]        # 14000a3b8 <__imp__configure_narrow_argv>
   1400031e6:	90                   	nop
   1400031e7:	90                   	nop

00000001400031e8 <_configure_wide_argv>:
   1400031e8:	ff 25 d2 71 00 00    	jmp    QWORD PTR [rip+0x71d2]        # 14000a3c0 <__imp__configure_wide_argv>
   1400031ee:	90                   	nop
   1400031ef:	90                   	nop

00000001400031f0 <_crt_at_quick_exit>:
   1400031f0:	ff 25 d2 71 00 00    	jmp    QWORD PTR [rip+0x71d2]        # 14000a3c8 <__imp__crt_at_quick_exit>
   1400031f6:	90                   	nop
   1400031f7:	90                   	nop

00000001400031f8 <_crt_atexit>:
   1400031f8:	ff 25 d2 71 00 00    	jmp    QWORD PTR [rip+0x71d2]        # 14000a3d0 <__imp__crt_atexit>
   1400031fe:	90                   	nop
   1400031ff:	90                   	nop

0000000140003200 <_exit>:
   140003200:	ff 25 d2 71 00 00    	jmp    QWORD PTR [rip+0x71d2]        # 14000a3d8 <__imp__exit>
   140003206:	90                   	nop
   140003207:	90                   	nop

0000000140003208 <_initialize_narrow_environment>:
   140003208:	ff 25 d2 71 00 00    	jmp    QWORD PTR [rip+0x71d2]        # 14000a3e0 <__imp__initialize_narrow_environment>
   14000320e:	90                   	nop
   14000320f:	90                   	nop

0000000140003210 <_initialize_wide_environment>:
   140003210:	ff 25 d2 71 00 00    	jmp    QWORD PTR [rip+0x71d2]        # 14000a3e8 <__imp__initialize_wide_environment>
   140003216:	90                   	nop
   140003217:	90                   	nop

0000000140003218 <_initterm>:
   140003218:	ff 25 d2 71 00 00    	jmp    QWORD PTR [rip+0x71d2]        # 14000a3f0 <__imp__initterm>
   14000321e:	90                   	nop
   14000321f:	90                   	nop

0000000140003220 <__set_app_type>:
   140003220:	ff 25 d2 71 00 00    	jmp    QWORD PTR [rip+0x71d2]        # 14000a3f8 <__imp___set_app_type>
   140003226:	90                   	nop
   140003227:	90                   	nop

0000000140003228 <_set_invalid_parameter_handler>:
   140003228:	ff 25 d2 71 00 00    	jmp    QWORD PTR [rip+0x71d2]        # 14000a400 <__imp__set_invalid_parameter_handler>
   14000322e:	90                   	nop
   14000322f:	90                   	nop

0000000140003230 <abort>:
   140003230:	ff 25 d2 71 00 00    	jmp    QWORD PTR [rip+0x71d2]        # 14000a408 <__imp_abort>
   140003236:	90                   	nop
   140003237:	90                   	nop

0000000140003238 <exit>:
   140003238:	ff 25 d2 71 00 00    	jmp    QWORD PTR [rip+0x71d2]        # 14000a410 <__imp_exit>
   14000323e:	90                   	nop
   14000323f:	90                   	nop

0000000140003240 <signal>:
   140003240:	ff 25 d2 71 00 00    	jmp    QWORD PTR [rip+0x71d2]        # 14000a418 <__imp_signal>
   140003246:	90                   	nop
   140003247:	90                   	nop
   140003248:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000324f:	00 

0000000140003250 <__C_specific_handler>:
   140003250:	ff 25 2a 71 00 00    	jmp    QWORD PTR [rip+0x712a]        # 14000a380 <__imp___C_specific_handler>
   140003256:	90                   	nop
   140003257:	90                   	nop

0000000140003258 <memcpy>:
   140003258:	ff 25 2a 71 00 00    	jmp    QWORD PTR [rip+0x712a]        # 14000a388 <__imp_memcpy>
   14000325e:	90                   	nop
   14000325f:	90                   	nop

0000000140003260 <__setusermatherr>:
   140003260:	ff 25 0a 71 00 00    	jmp    QWORD PTR [rip+0x710a]        # 14000a370 <__imp___setusermatherr>
   140003266:	90                   	nop
   140003267:	90                   	nop
   140003268:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000326f:	00 

0000000140003270 <_set_new_mode>:
   140003270:	ff 25 d2 70 00 00    	jmp    QWORD PTR [rip+0x70d2]        # 14000a348 <__imp__set_new_mode>
   140003276:	90                   	nop
   140003277:	90                   	nop

0000000140003278 <calloc>:
   140003278:	ff 25 d2 70 00 00    	jmp    QWORD PTR [rip+0x70d2]        # 14000a350 <__imp_calloc>
   14000327e:	90                   	nop
   14000327f:	90                   	nop

0000000140003280 <free>:
   140003280:	ff 25 d2 70 00 00    	jmp    QWORD PTR [rip+0x70d2]        # 14000a358 <__imp_free>
   140003286:	90                   	nop
   140003287:	90                   	nop

0000000140003288 <malloc>:
   140003288:	ff 25 d2 70 00 00    	jmp    QWORD PTR [rip+0x70d2]        # 14000a360 <__imp_malloc>
   14000328e:	90                   	nop
   14000328f:	90                   	nop

0000000140003290 <__p__environ>:
   140003290:	ff 25 9a 70 00 00    	jmp    QWORD PTR [rip+0x709a]        # 14000a330 <__imp___p__environ>
   140003296:	90                   	nop
   140003297:	90                   	nop

0000000140003298 <__p__wenviron>:
   140003298:	ff 25 9a 70 00 00    	jmp    QWORD PTR [rip+0x709a]        # 14000a338 <__imp___p__wenviron>
   14000329e:	90                   	nop
   14000329f:	90                   	nop

00000001400032a0 <VirtualQuery>:
   1400032a0:	ff 25 7a 70 00 00    	jmp    QWORD PTR [rip+0x707a]        # 14000a320 <__imp_VirtualQuery>
   1400032a6:	90                   	nop
   1400032a7:	90                   	nop

00000001400032a8 <VirtualProtect>:
   1400032a8:	ff 25 6a 70 00 00    	jmp    QWORD PTR [rip+0x706a]        # 14000a318 <__imp_VirtualProtect>
   1400032ae:	90                   	nop
   1400032af:	90                   	nop

00000001400032b0 <TlsGetValue>:
   1400032b0:	ff 25 5a 70 00 00    	jmp    QWORD PTR [rip+0x705a]        # 14000a310 <__imp_TlsGetValue>
   1400032b6:	90                   	nop
   1400032b7:	90                   	nop

00000001400032b8 <Sleep>:
   1400032b8:	ff 25 4a 70 00 00    	jmp    QWORD PTR [rip+0x704a]        # 14000a308 <__imp_Sleep>
   1400032be:	90                   	nop
   1400032bf:	90                   	nop

00000001400032c0 <SetUnhandledExceptionFilter>:
   1400032c0:	ff 25 3a 70 00 00    	jmp    QWORD PTR [rip+0x703a]        # 14000a300 <__imp_SetUnhandledExceptionFilter>
   1400032c6:	90                   	nop
   1400032c7:	90                   	nop

00000001400032c8 <LoadLibraryA>:
   1400032c8:	ff 25 2a 70 00 00    	jmp    QWORD PTR [rip+0x702a]        # 14000a2f8 <__imp_LoadLibraryA>
   1400032ce:	90                   	nop
   1400032cf:	90                   	nop

00000001400032d0 <LeaveCriticalSection>:
   1400032d0:	ff 25 1a 70 00 00    	jmp    QWORD PTR [rip+0x701a]        # 14000a2f0 <__imp_LeaveCriticalSection>
   1400032d6:	90                   	nop
   1400032d7:	90                   	nop

00000001400032d8 <InitializeCriticalSection>:
   1400032d8:	ff 25 0a 70 00 00    	jmp    QWORD PTR [rip+0x700a]        # 14000a2e8 <__imp_InitializeCriticalSection>
   1400032de:	90                   	nop
   1400032df:	90                   	nop

00000001400032e0 <GetProcAddress>:
   1400032e0:	ff 25 fa 6f 00 00    	jmp    QWORD PTR [rip+0x6ffa]        # 14000a2e0 <__imp_GetProcAddress>
   1400032e6:	90                   	nop
   1400032e7:	90                   	nop

00000001400032e8 <GetModuleHandleA>:
   1400032e8:	ff 25 ea 6f 00 00    	jmp    QWORD PTR [rip+0x6fea]        # 14000a2d8 <__imp_GetModuleHandleA>
   1400032ee:	90                   	nop
   1400032ef:	90                   	nop

00000001400032f0 <GetLastError>:
   1400032f0:	ff 25 da 6f 00 00    	jmp    QWORD PTR [rip+0x6fda]        # 14000a2d0 <__imp_GetLastError>
   1400032f6:	90                   	nop
   1400032f7:	90                   	nop

00000001400032f8 <FreeLibrary>:
   1400032f8:	ff 25 ca 6f 00 00    	jmp    QWORD PTR [rip+0x6fca]        # 14000a2c8 <__imp_FreeLibrary>
   1400032fe:	90                   	nop
   1400032ff:	90                   	nop

0000000140003300 <EnterCriticalSection>:
   140003300:	ff 25 ba 6f 00 00    	jmp    QWORD PTR [rip+0x6fba]        # 14000a2c0 <__imp_EnterCriticalSection>
   140003306:	90                   	nop
   140003307:	90                   	nop

0000000140003308 <DeleteCriticalSection>:
   140003308:	ff 25 aa 6f 00 00    	jmp    QWORD PTR [rip+0x6faa]        # 14000a2b8 <__IAT_start__>
   14000330e:	90                   	nop
   14000330f:	90                   	nop

0000000140003310 <register_frame_ctor>:
   140003310:	e9 cb e2 ff ff       	jmp    1400015e0 <__gcc_register_frame>
   140003315:	90                   	nop
   140003316:	90                   	nop
   140003317:	90                   	nop
   140003318:	90                   	nop
   140003319:	90                   	nop
   14000331a:	90                   	nop
   14000331b:	90                   	nop
   14000331c:	90                   	nop
   14000331d:	90                   	nop
   14000331e:	90                   	nop
   14000331f:	90                   	nop

0000000140003320 <__CTOR_LIST__>:
   140003320:	ff                   	(bad)
   140003321:	ff                   	(bad)
   140003322:	ff                   	(bad)
   140003323:	ff                   	(bad)
   140003324:	ff                   	(bad)
   140003325:	ff                   	(bad)
   140003326:	ff                   	(bad)
   140003327:	ff                   	.byte 0xff

0000000140003328 <.ctors.65535>:
   140003328:	10 33                	adc    BYTE PTR [rbx],dh
   14000332a:	00 40 01             	add    BYTE PTR [rax+0x1],al
	...

0000000140003338 <__DTOR_LIST__>:
   140003338:	ff                   	(bad)
   140003339:	ff                   	(bad)
   14000333a:	ff                   	(bad)
   14000333b:	ff                   	(bad)
   14000333c:	ff                   	(bad)
   14000333d:	ff                   	(bad)
   14000333e:	ff                   	(bad)
   14000333f:	ff 00                	inc    DWORD PTR [rax]
   140003341:	00 00                	add    BYTE PTR [rax],al
   140003343:	00 00                	add    BYTE PTR [rax],al
   140003345:	00 00                	add    BYTE PTR [rax],al
	...
