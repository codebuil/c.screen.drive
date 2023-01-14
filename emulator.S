00401460 <_scrollb8000>:
  401460:	55                   	push   %ebp
  401461:	89 e5                	mov    %esp,%ebp
  401463:	83 ec 10             	sub    $0x10,%esp
  401466:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  40146d:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  401474:	c7 45 f4 80 70 40 00 	movl   $0x407080,-0xc(%ebp)
  40147b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  401482:	eb 1f                	jmp    4014a3 <_scrollb8000+0x43>
  401484:	8b 55 fc             	mov    -0x4(%ebp),%edx
  401487:	8b 45 f4             	mov    -0xc(%ebp),%eax
  40148a:	01 c2                	add    %eax,%edx
  40148c:	8b 45 fc             	mov    -0x4(%ebp),%eax
  40148f:	8d 88 a0 00 00 00    	lea    0xa0(%eax),%ecx
  401495:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401498:	01 c8                	add    %ecx,%eax
  40149a:	0f b6 00             	movzbl (%eax),%eax
  40149d:	88 02                	mov    %al,(%edx)
  40149f:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  4014a3:	81 7d fc ff 0e 00 00 	cmpl   $0xeff,-0x4(%ebp)
  4014aa:	7e d8                	jle    401484 <_scrollb8000+0x24>
  4014ac:	90                   	nop
  4014ad:	c9                   	leave  
  4014ae:	c3                   	ret    

004014af <_copyb8000>:
  4014af:	55                   	push   %ebp
  4014b0:	89 e5                	mov    %esp,%ebp
  4014b2:	83 ec 10             	sub    $0x10,%esp
  4014b5:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  4014bc:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  4014c3:	c7 45 f4 80 70 40 00 	movl   $0x407080,-0xc(%ebp)
  4014ca:	eb 28                	jmp    4014f4 <_copyb8000+0x45>
  4014cc:	8b 55 08             	mov    0x8(%ebp),%edx
  4014cf:	8b 45 f8             	mov    -0x8(%ebp),%eax
  4014d2:	01 d0                	add    %edx,%eax
  4014d4:	89 c2                	mov    %eax,%edx
  4014d6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4014d9:	01 c2                	add    %eax,%edx
  4014db:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  4014de:	8b 45 0c             	mov    0xc(%ebp),%eax
  4014e1:	01 c8                	add    %ecx,%eax
  4014e3:	0f b6 00             	movzbl (%eax),%eax
  4014e6:	88 02                	mov    %al,(%edx)
  4014e8:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  4014ec:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  4014f0:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  4014f4:	8b 55 fc             	mov    -0x4(%ebp),%edx
  4014f7:	8b 45 0c             	mov    0xc(%ebp),%eax
  4014fa:	01 d0                	add    %edx,%eax
  4014fc:	0f b6 00             	movzbl (%eax),%eax
  4014ff:	84 c0                	test   %al,%al
  401501:	75 c9                	jne    4014cc <_copyb8000+0x1d>
  401503:	90                   	nop
  401504:	c9                   	leave  
  401505:	c3                   	ret    