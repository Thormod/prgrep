
test:     formato del fichero elf32-i386


Desensamblado de la sección .init:

08048294 <_init>:
 8048294:	53                   	push   ebx
 8048295:	83 ec 08             	sub    esp,0x8
 8048298:	e8 83 00 00 00       	call   8048320 <__x86.get_pc_thunk.bx>
 804829d:	81 c3 63 1d 00 00    	add    ebx,0x1d63
 80482a3:	8b 83 fc ff ff ff    	mov    eax,DWORD PTR [ebx-0x4]
 80482a9:	85 c0                	test   eax,eax
 80482ab:	74 05                	je     80482b2 <_init+0x1e>
 80482ad:	e8 1e 00 00 00       	call   80482d0 <__gmon_start__@plt>
 80482b2:	83 c4 08             	add    esp,0x8
 80482b5:	5b                   	pop    ebx
 80482b6:	c3                   	ret    

Desensamblado de la sección .plt:

080482c0 <__gmon_start__@plt-0x10>:
 80482c0:	ff 35 04 a0 04 08    	push   DWORD PTR ds:0x804a004
 80482c6:	ff 25 08 a0 04 08    	jmp    DWORD PTR ds:0x804a008
 80482cc:	00 00                	add    BYTE PTR [eax],al
	...

080482d0 <__gmon_start__@plt>:
 80482d0:	ff 25 0c a0 04 08    	jmp    DWORD PTR ds:0x804a00c
 80482d6:	68 00 00 00 00       	push   0x0
 80482db:	e9 e0 ff ff ff       	jmp    80482c0 <_init+0x2c>

080482e0 <__libc_start_main@plt>:
 80482e0:	ff 25 10 a0 04 08    	jmp    DWORD PTR ds:0x804a010
 80482e6:	68 08 00 00 00       	push   0x8
 80482eb:	e9 d0 ff ff ff       	jmp    80482c0 <_init+0x2c>

Desensamblado de la sección .text:

080482f0 <_start>:
 80482f0:	31 ed                	xor    ebp,ebp
 80482f2:	5e                   	pop    esi
 80482f3:	89 e1                	mov    ecx,esp
 80482f5:	83 e4 f0             	and    esp,0xfffffff0
 80482f8:	50                   	push   eax
 80482f9:	54                   	push   esp
 80482fa:	52                   	push   edx
 80482fb:	68 90 84 04 08       	push   0x8048490
 8048300:	68 30 84 04 08       	push   0x8048430
 8048305:	51                   	push   ecx
 8048306:	56                   	push   esi
 8048307:	68 03 84 04 08       	push   0x8048403
 804830c:	e8 cf ff ff ff       	call   80482e0 <__libc_start_main@plt>
 8048311:	f4                   	hlt    
 8048312:	66 90                	xchg   ax,ax
 8048314:	66 90                	xchg   ax,ax
 8048316:	66 90                	xchg   ax,ax
 8048318:	66 90                	xchg   ax,ax
 804831a:	66 90                	xchg   ax,ax
 804831c:	66 90                	xchg   ax,ax
 804831e:	66 90                	xchg   ax,ax

08048320 <__x86.get_pc_thunk.bx>:
 8048320:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 8048323:	c3                   	ret    
 8048324:	66 90                	xchg   ax,ax
 8048326:	66 90                	xchg   ax,ax
 8048328:	66 90                	xchg   ax,ax
 804832a:	66 90                	xchg   ax,ax
 804832c:	66 90                	xchg   ax,ax
 804832e:	66 90                	xchg   ax,ax

08048330 <deregister_tm_clones>:
 8048330:	b8 1b a0 04 08       	mov    eax,0x804a01b
 8048335:	2d 18 a0 04 08       	sub    eax,0x804a018
 804833a:	83 f8 06             	cmp    eax,0x6
 804833d:	76 1a                	jbe    8048359 <deregister_tm_clones+0x29>
 804833f:	b8 00 00 00 00       	mov    eax,0x0
 8048344:	85 c0                	test   eax,eax
 8048346:	74 11                	je     8048359 <deregister_tm_clones+0x29>
 8048348:	55                   	push   ebp
 8048349:	89 e5                	mov    ebp,esp
 804834b:	83 ec 14             	sub    esp,0x14
 804834e:	68 18 a0 04 08       	push   0x804a018
 8048353:	ff d0                	call   eax
 8048355:	83 c4 10             	add    esp,0x10
 8048358:	c9                   	leave  
 8048359:	f3 c3                	repz ret 
 804835b:	90                   	nop
 804835c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

08048360 <register_tm_clones>:
 8048360:	b8 18 a0 04 08       	mov    eax,0x804a018
 8048365:	2d 18 a0 04 08       	sub    eax,0x804a018
 804836a:	c1 f8 02             	sar    eax,0x2
 804836d:	89 c2                	mov    edx,eax
 804836f:	c1 ea 1f             	shr    edx,0x1f
 8048372:	01 d0                	add    eax,edx
 8048374:	d1 f8                	sar    eax,1
 8048376:	74 1b                	je     8048393 <register_tm_clones+0x33>
 8048378:	ba 00 00 00 00       	mov    edx,0x0
 804837d:	85 d2                	test   edx,edx
 804837f:	74 12                	je     8048393 <register_tm_clones+0x33>
 8048381:	55                   	push   ebp
 8048382:	89 e5                	mov    ebp,esp
 8048384:	83 ec 10             	sub    esp,0x10
 8048387:	50                   	push   eax
 8048388:	68 18 a0 04 08       	push   0x804a018
 804838d:	ff d2                	call   edx
 804838f:	83 c4 10             	add    esp,0x10
 8048392:	c9                   	leave  
 8048393:	f3 c3                	repz ret 
 8048395:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 8048399:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

080483a0 <__do_global_dtors_aux>:
 80483a0:	80 3d 18 a0 04 08 00 	cmp    BYTE PTR ds:0x804a018,0x0
 80483a7:	75 13                	jne    80483bc <__do_global_dtors_aux+0x1c>
 80483a9:	55                   	push   ebp
 80483aa:	89 e5                	mov    ebp,esp
 80483ac:	83 ec 08             	sub    esp,0x8
 80483af:	e8 7c ff ff ff       	call   8048330 <deregister_tm_clones>
 80483b4:	c6 05 18 a0 04 08 01 	mov    BYTE PTR ds:0x804a018,0x1
 80483bb:	c9                   	leave  
 80483bc:	f3 c3                	repz ret 
 80483be:	66 90                	xchg   ax,ax

080483c0 <frame_dummy>:
 80483c0:	b8 10 9f 04 08       	mov    eax,0x8049f10
 80483c5:	8b 10                	mov    edx,DWORD PTR [eax]
 80483c7:	85 d2                	test   edx,edx
 80483c9:	75 05                	jne    80483d0 <frame_dummy+0x10>
 80483cb:	eb 93                	jmp    8048360 <register_tm_clones>
 80483cd:	8d 76 00             	lea    esi,[esi+0x0]
 80483d0:	ba 00 00 00 00       	mov    edx,0x0
 80483d5:	85 d2                	test   edx,edx
 80483d7:	74 f2                	je     80483cb <frame_dummy+0xb>
 80483d9:	55                   	push   ebp
 80483da:	89 e5                	mov    ebp,esp
 80483dc:	83 ec 14             	sub    esp,0x14
 80483df:	50                   	push   eax
 80483e0:	ff d2                	call   edx
 80483e2:	83 c4 10             	add    esp,0x10
 80483e5:	c9                   	leave  
 80483e6:	e9 75 ff ff ff       	jmp    8048360 <register_tm_clones>

080483eb <test>:
 80483eb:	55                   	push   ebp
 80483ec:	89 e5                	mov    ebp,esp
 80483ee:	83 ec 10             	sub    esp,0x10
 80483f1:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
 80483f8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80483fb:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
 80483fe:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
 8048401:	c9                   	leave  
 8048402:	c3                   	ret    

08048403 <main>:
 8048403:	55                   	push   ebp
 8048404:	89 e5                	mov    ebp,esp
 8048406:	83 ec 10             	sub    esp,0x10
 8048409:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 804840c:	83 c0 08             	add    eax,0x8
 804840f:	8b 10                	mov    edx,DWORD PTR [eax]
 8048411:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048414:	83 c0 04             	add    eax,0x4
 8048417:	8b 00                	mov    eax,DWORD PTR [eax]
 8048419:	52                   	push   edx
 804841a:	50                   	push   eax
 804841b:	e8 cb ff ff ff       	call   80483eb <test>
 8048420:	83 c4 08             	add    esp,0x8
 8048423:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
 8048426:	b8 00 00 00 00       	mov    eax,0x0
 804842b:	c9                   	leave  
 804842c:	c3                   	ret    
 804842d:	66 90                	xchg   ax,ax
 804842f:	90                   	nop

08048430 <__libc_csu_init>:
 8048430:	55                   	push   ebp
 8048431:	57                   	push   edi
 8048432:	31 ff                	xor    edi,edi
 8048434:	56                   	push   esi
 8048435:	53                   	push   ebx
 8048436:	e8 e5 fe ff ff       	call   8048320 <__x86.get_pc_thunk.bx>
 804843b:	81 c3 c5 1b 00 00    	add    ebx,0x1bc5
 8048441:	83 ec 0c             	sub    esp,0xc
 8048444:	8b 6c 24 20          	mov    ebp,DWORD PTR [esp+0x20]
 8048448:	8d b3 0c ff ff ff    	lea    esi,[ebx-0xf4]
 804844e:	e8 41 fe ff ff       	call   8048294 <_init>
 8048453:	8d 83 08 ff ff ff    	lea    eax,[ebx-0xf8]
 8048459:	29 c6                	sub    esi,eax
 804845b:	c1 fe 02             	sar    esi,0x2
 804845e:	85 f6                	test   esi,esi
 8048460:	74 23                	je     8048485 <__libc_csu_init+0x55>
 8048462:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 8048468:	83 ec 04             	sub    esp,0x4
 804846b:	ff 74 24 2c          	push   DWORD PTR [esp+0x2c]
 804846f:	ff 74 24 2c          	push   DWORD PTR [esp+0x2c]
 8048473:	55                   	push   ebp
 8048474:	ff 94 bb 08 ff ff ff 	call   DWORD PTR [ebx+edi*4-0xf8]
 804847b:	83 c7 01             	add    edi,0x1
 804847e:	83 c4 10             	add    esp,0x10
 8048481:	39 f7                	cmp    edi,esi
 8048483:	75 e3                	jne    8048468 <__libc_csu_init+0x38>
 8048485:	83 c4 0c             	add    esp,0xc
 8048488:	5b                   	pop    ebx
 8048489:	5e                   	pop    esi
 804848a:	5f                   	pop    edi
 804848b:	5d                   	pop    ebp
 804848c:	c3                   	ret    
 804848d:	8d 76 00             	lea    esi,[esi+0x0]

08048490 <__libc_csu_fini>:
 8048490:	f3 c3                	repz ret 

Desensamblado de la sección .fini:

08048494 <_fini>:
 8048494:	53                   	push   ebx
 8048495:	83 ec 08             	sub    esp,0x8
 8048498:	e8 83 fe ff ff       	call   8048320 <__x86.get_pc_thunk.bx>
 804849d:	81 c3 63 1b 00 00    	add    ebx,0x1b63
 80484a3:	83 c4 08             	add    esp,0x8
 80484a6:	5b                   	pop    ebx
 80484a7:	c3                   	ret    
