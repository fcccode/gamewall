include Md5Data.inc

.code

procMD5hash		proc	uses eax ebx ecx edx edi esi,ptBuffer:dword,dtBufferLength:dword,ptMD5Result:dword
			local	dta:dword,dtb:dword,dtc:dword,dtd:dword

			; phase I � padding
			mov	edi,ptBuffer
			mov	eax,dtBufferLength

			inc	eax
			add	edi,eax
			mov	byte ptr [edi-1],080h

			xor	edx,edx

			mov	ebx,64
			div	ebx

			neg	edx
			add	edx,64

			cmp	edx,8
			jae	@f

			add	edx,64

@@:			mov	ecx,edx
			xor	al,al
			rep	stosb

			mov	eax,dtBufferLength

			inc	edx
			add	dtBufferLength,edx

			xor	edx,edx

			mov	ebx,8
			mul	ebx

			mov	dword ptr [edi-8],eax
			mov	dword ptr [edi-4],edx

			mov	edx,dtBufferLength

			mov	edi,ptBuffer

			; phase II � chaining variables initialization
			mov	esi,ptMD5Result
			assume	esi:ptr MD5RESULT

			mov	[esi].dtA,067452301h
			mov	[esi].dtB,0efcdab89h
			mov	[esi].dtC,098badcfeh
			mov	[esi].dtD,010325476h

			; phase III � hashing
hashloop:		mov	eax,[esi].dtA
			mov	dta,eax
			mov	eax,[esi].dtB
			mov	dtb,eax
			mov	eax,[esi].dtC
			mov	dtc,eax
			mov	eax,[esi].dtD
			mov	dtd,eax

			; round 1
			invoke	FF,dta,dtb,dtc,dtd,dword ptr [edi+00*4],07,0d76aa478h
			mov	dta,eax
			invoke	FF,dtd,dta,dtb,dtc,dword ptr [edi+01*4],12,0e8c7b756h
			mov	dtd,eax
			invoke	FF,dtc,dtd,dta,dtb,dword ptr [edi+02*4],17,0242070dbh
			mov	dtc,eax
			invoke	FF,dtb,dtc,dtd,dta,dword ptr [edi+03*4],22,0c1bdceeeh
			mov	dtb,eax
			invoke	FF,dta,dtb,dtc,dtd,dword ptr [edi+04*4],07,0f57c0fafh
			mov	dta,eax
			invoke	FF,dtd,dta,dtb,dtc,dword ptr [edi+05*4],12,04787c62ah
			mov	dtd,eax
			invoke	FF,dtc,dtd,dta,dtb,dword ptr [edi+06*4],17,0a8304613h
			mov	dtc,eax
			invoke	FF,dtb,dtc,dtd,dta,dword ptr [edi+07*4],22,0fd469501h
			mov	dtb,eax
			invoke	FF,dta,dtb,dtc,dtd,dword ptr [edi+08*4],07,0698098d8h
			mov	dta,eax
			invoke	FF,dtd,dta,dtb,dtc,dword ptr [edi+09*4],12,08b44f7afh
			mov	dtd,eax
			invoke	FF,dtc,dtd,dta,dtb,dword ptr [edi+10*4],17,0ffff5bb1h
			mov	dtc,eax
			invoke	FF,dtb,dtc,dtd,dta,dword ptr [edi+11*4],22,0895cd7beh
			mov	dtb,eax
			invoke	FF,dta,dtb,dtc,dtd,dword ptr [edi+12*4],07,06b901122h
			mov	dta,eax
			invoke	FF,dtd,dta,dtb,dtc,dword ptr [edi+13*4],12,0fd987193h
			mov	dtd,eax
			invoke	FF,dtc,dtd,dta,dtb,dword ptr [edi+14*4],17,0a679438eh
			mov	dtc,eax
			invoke	FF,dtb,dtc,dtd,dta,dword ptr [edi+15*4],22,049b40821h
			mov	dtb,eax

			; round 2
			invoke	GG,dta,dtb,dtc,dtd,dword ptr [edi+01*4],05,0f61e2562h
			mov	dta,eax
			invoke	GG,dtd,dta,dtb,dtc,dword ptr [edi+06*4],09,0c040b340h
			mov	dtd,eax
			invoke	GG,dtc,dtd,dta,dtb,dword ptr [edi+11*4],14,0265e5a51h
			mov	dtc,eax
			invoke	GG,dtb,dtc,dtd,dta,dword ptr [edi+00*4],20,0e9b6c7aah
			mov	dtb,eax
			invoke	GG,dta,dtb,dtc,dtd,dword ptr [edi+05*4],05,0d62f105dh
			mov	dta,eax
			invoke	GG,dtd,dta,dtb,dtc,dword ptr [edi+10*4],09,002441453h
			mov	dtd,eax
			invoke	GG,dtc,dtd,dta,dtb,dword ptr [edi+15*4],14,0d8a1e681h
			mov	dtc,eax
			invoke	GG,dtb,dtc,dtd,dta,dword ptr [edi+04*4],20,0e7d3fbc8h
			mov	dtb,eax
			invoke	GG,dta,dtb,dtc,dtd,dword ptr [edi+09*4],05,021e1cde6h
			mov	dta,eax
			invoke	GG,dtd,dta,dtb,dtc,dword ptr [edi+14*4],09,0c33707d6h
			mov	dtd,eax
			invoke	GG,dtc,dtd,dta,dtb,dword ptr [edi+03*4],14,0f4d50d87h
			mov	dtc,eax
			invoke	GG,dtb,dtc,dtd,dta,dword ptr [edi+08*4],20,0455a14edh
			mov	dtb,eax
			invoke	GG,dta,dtb,dtc,dtd,dword ptr [edi+13*4],05,0a9e3e905h
			mov	dta,eax
			invoke	GG,dtd,dta,dtb,dtc,dword ptr [edi+02*4],09,0fcefa3f8h
			mov	dtd,eax
			invoke	GG,dtc,dtd,dta,dtb,dword ptr [edi+07*4],14,0676f02d9h
			mov	dtc,eax
			invoke	GG,dtb,dtc,dtd,dta,dword ptr [edi+12*4],20,08d2a4c8ah
			mov	dtb,eax

			; round 3
			invoke	HH,dta,dtb,dtc,dtd,dword ptr [edi+05*4],04,0fffa3942h
			mov	dta,eax
			invoke	HH,dtd,dta,dtb,dtc,dword ptr [edi+08*4],11,08771f681h
			mov	dtd,eax
			invoke	HH,dtc,dtd,dta,dtb,dword ptr [edi+11*4],16,06d9d6122h
			mov	dtc,eax
			invoke	HH,dtb,dtc,dtd,dta,dword ptr [edi+14*4],23,0fde5380ch
			mov	dtb,eax
			invoke	HH,dta,dtb,dtc,dtd,dword ptr [edi+01*4],04,0a4beea44h
			mov	dta,eax
			invoke	HH,dtd,dta,dtb,dtc,dword ptr [edi+04*4],11,04bdecfa9h
			mov	dtd,eax
			invoke	HH,dtc,dtd,dta,dtb,dword ptr [edi+07*4],16,0f6bb4b60h
			mov	dtc,eax
			invoke	HH,dtb,dtc,dtd,dta,dword ptr [edi+10*4],23,0bebfbc70h
			mov	dtb,eax
			invoke	HH,dta,dtb,dtc,dtd,dword ptr [edi+13*4],04,0289b7ec6h
			mov	dta,eax
			invoke	HH,dtd,dta,dtb,dtc,dword ptr [edi+00*4],11,0eaa127fah
			mov	dtd,eax
			invoke	HH,dtc,dtd,dta,dtb,dword ptr [edi+03*4],16,0d4ef3085h
			mov	dtc,eax
			invoke	HH,dtb,dtc,dtd,dta,dword ptr [edi+06*4],23,004881d05h
			mov	dtb,eax
			invoke	HH,dta,dtb,dtc,dtd,dword ptr [edi+09*4],04,0d9d4d039h
			mov	dta,eax
			invoke	HH,dtd,dta,dtb,dtc,dword ptr [edi+12*4],11,0e6db99e5h
			mov	dtd,eax
			invoke	HH,dtc,dtd,dta,dtb,dword ptr [edi+15*4],16,01fa27cf8h
			mov	dtc,eax
			invoke	HH,dtb,dtc,dtd,dta,dword ptr [edi+02*4],23,0c4ac5665h
			mov	dtb,eax

			; round 4
			invoke	II,dta,dtb,dtc,dtd,dword ptr [edi+00*4],06,0f4292244h
			mov	dta,eax
			invoke	II,dtd,dta,dtb,dtc,dword ptr [edi+07*4],10,0432aff97h
			mov	dtd,eax
			invoke	II,dtc,dtd,dta,dtb,dword ptr [edi+14*4],15,0ab9423a7h
			mov	dtc,eax
			invoke	II,dtb,dtc,dtd,dta,dword ptr [edi+05*4],21,0fc93a039h
			mov	dtb,eax
			invoke	II,dta,dtb,dtc,dtd,dword ptr [edi+12*4],06,0655b59c3h
			mov	dta,eax
			invoke	II,dtd,dta,dtb,dtc,dword ptr [edi+03*4],10,08f0ccc92h
			mov	dtd,eax
			invoke	II,dtc,dtd,dta,dtb,dword ptr [edi+10*4],15,0ffeff47dh
			mov	dtc,eax
			invoke	II,dtb,dtc,dtd,dta,dword ptr [edi+01*4],21,085845dd1h
			mov	dtb,eax
			invoke	II,dta,dtb,dtc,dtd,dword ptr [edi+08*4],06,06fa87e4fh
			mov	dta,eax
			invoke	II,dtd,dta,dtb,dtc,dword ptr [edi+15*4],10,0fe2ce6e0h
			mov	dtd,eax
			invoke	II,dtc,dtd,dta,dtb,dword ptr [edi+06*4],15,0a3014314h
			mov	dtc,eax
			invoke	II,dtb,dtc,dtd,dta,dword ptr [edi+13*4],21,04e0811a1h
			mov	dtb,eax
			invoke	II,dta,dtb,dtc,dtd,dword ptr [edi+04*4],06,0f7537e82h
			mov	dta,eax
			invoke	II,dtd,dta,dtb,dtc,dword ptr [edi+11*4],10,0bd3af235h
			mov	dtd,eax
			invoke	II,dtc,dtd,dta,dtb,dword ptr [edi+02*4],15,02ad7d2bbh
			mov	dtc,eax
			invoke	II,dtb,dtc,dtd,dta,dword ptr [edi+09*4],21,0eb86d391h
			mov	dtb,eax

			mov	eax,dta
			add	[esi].dtA,eax
			mov	eax,dtb
			add	[esi].dtB,eax
			mov	eax,dtc
			add	[esi].dtC,eax
			mov	eax,dtd
			add	[esi].dtD,eax

			add	edi,64

			sub	edx,64
			jnz	hashloop

			; phase IV � results

			mov	ecx,4

@@:			mov	eax,dword ptr [esi]
			xchg	al,ah
			rol	eax,16
			xchg	al,ah
			mov	dword ptr [esi],eax

			add	esi,4

			loop	@b

			mov	esi,ptMD5Result

			invoke	wsprintfA,ptBuffer,addr szMD5Format,[esi].dtA,[esi].dtB,[esi].dtC,[esi].dtD

			ret

procMD5hash		endp

FF			proc	uses ebx ecx,dta,dtb,dtc,dtd,x,s:byte,t		; a = b + ((a + F(b,c,d) + x + t) << s )

			mov	eax,dtb
			mov	ebx,dtc
			mov	ecx,dtd

			; F(x,y,z) = (x and y) or ((not x) and z)
			and	ebx,eax
			not	eax
			and	eax,ecx
			or	eax,ebx

			add	eax,dta
			add	eax,x
			add	eax,t

			mov	cl,s
			rol	eax,cl

			add	eax,dtb

			ret

FF			endp

GG			proc	uses ebx ecx,dta,dtb,dtc,dtd,x,s:byte,t		; a = b + ((a + G(b,c,d) + x + t) << s)

			mov	eax,dtb
			mov	ebx,dtc
			mov	ecx,dtd

			; G(x,y,z) = (x and z) or (y and (not z))
			and	eax,ecx
			not	ecx
			and	ecx,ebx
			or	eax,ecx

			add	eax,dta
			add	eax,x
			add	eax,t

			mov	cl,s
			rol	eax,cl

			add	eax,dtb

			ret

GG			endp

HH			proc	uses ebx ecx,dta,dtb,dtc,dtd,x,s:byte,t		; a = b + ((a + H(b,c,d) + x + t) << s)

			mov	eax,dtb
			mov	ebx,dtc
			mov	ecx,dtd

			; H(x,y,z) = x xor y xor z
			xor	eax,ebx
			xor	eax,ecx

			add	eax,dta
			add	eax,x
			add	eax,t

			mov	cl,s
			rol	eax,cl

			add	eax,dtb

			ret

HH			endp

II			proc	uses ebx ecx,dta,dtb,dtc,dtd,x,s:byte,t		; a = b + ((a + I(b,c,d) + x + t) << s)

			mov	eax,dtb
			mov	ebx,dtc
			mov	ecx,dtd

			; I(x,y,z) = y xor (x or (not z))
			not	ecx
			or	eax,ecx
			xor	eax,ebx

			add	eax,dta
			add	eax,x
			add	eax,t

			mov	cl,s
			rol	eax,cl

			add	eax,dtb

			ret

II			endp

