	.INCLUDE "macro.inc"

	THUMB_FUNC_START sub_0800F808
sub_0800F808: @ 0x0800F808
	push {r4,lr}
	ldr r1, _0800F85C  @ =gUnknown_0842748C
	ldr r0, _0800F860  @ =gUnknown_03005050
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_0800F8B0
	mov r3, #192
	lsl r3, r3, #18
	ldr r4, _0800F864  @ =gUnknown_02016D60
	add r2, r4, #0
	add r2, r2, #39
	ldrb r0, [r3, #7]
	ldrb r1, [r2]
	cmp r0, r1
	beq _0800F842
	strb r1, [r3, #7]
	ldrb r0, [r2]
	bl sub_0800B85C
	ldr r0, [r4, #12]
	mov r1, #0
	mov r2, #32
	bl sub_0800B8D4
_0800F842:
	mov r0, #0
	strb r0, [r4, #27]
	strb r0, [r4, #29]
	ldrb r0, [r4, #21]
	cmp r0, #0
	bne _0800F856
	bl 0x08137AFC
	bl 0x08000BAC
_0800F856:
	pop {r4}
	pop {r0}
	bx r0
_0800F85C:
	.4byte gUnknown_0842748C
_0800F860:
	.4byte gUnknown_03005050
_0800F864:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_0800F808

	THUMB_FUNC_START sub_0800F868
sub_0800F868: @ 0x0800F868
	push {lr}
	ldr r0, _0800F884  @ =gUnknown_03000520
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800F87E
	mov r0, #0
	bl sub_0800F97C
	mov r0, #6
	bl set_main_state
_0800F87E:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800F884:
	.4byte gUnknown_03000520
	THUMB_FUNC_END sub_0800F868

	THUMB_FUNC_START sub_0800F888
sub_0800F888: @ 0x0800F888
	ldr r2, _0800F89C  @ =gUnknown_02016D60
	cmp r0, #2
	bhi _0800F8A4
	ldr r1, _0800F8A0  @ =gUnknown_0200B250
	lsl r0, r0, #6
	add r0, r0, r1
	add r0, r0, #37
	ldrb r1, [r0]
	b _0800F8A6
	.byte 0x00
	.byte 0x00
_0800F89C:
	.4byte gUnknown_02016D60
_0800F8A0:
	.4byte gUnknown_0200B250
_0800F8A4:
	mov r1, #1
_0800F8A6:
	add r0, r2, #0
	add r0, r0, #39
	strb r1, [r0]
	bx lr
	THUMB_FUNC_END sub_0800F888

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800F8B0
sub_0800F8B0: @ 0x0800F8B0
	push {r4-r6,lr}
	ldr r5, _0800F8C8  @ =gUnknown_02016D60
	ldrb r0, [r5, #23]
	add r1, r0, #0
	cmp r1, #255
	beq _0800F974
	cmp r1, #0
	beq _0800F8CC
	sub r0, r0, #1
	strb r0, [r5, #23]
	b _0800F974
	.byte 0x00
	.byte 0x00
_0800F8C8:
	.4byte gUnknown_02016D60
_0800F8CC:
	ldrb r0, [r5, #25]
	sub r0, r0, #1
	strb r0, [r5, #25]
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	bne _0800F974
	mov r0, #8
	strb r0, [r5, #25]
	ldr r3, _0800F910  @ =0x03000030
	ldr r2, _0800F914  @ =gUnknown_084274AC
	ldrb r0, [r5, #24]
	add r1, r0, #1
	strb r1, [r5, #24]
	lsl r0, r0, #24
	lsr r0, r0, #23
	add r0, r0, r2
	ldrh r1, [r0]
	ldr r0, [r3]
	add r4, r0, r1
	mov r0, #1
	and r0, r0, r4
	cmp r0, #0
	beq _0800F918
	strb r6, [r5, #24]
	bl 0x0800099C
	mov r1, #7
	and r1, r1, r0
	lsl r1, r1, #5
	add r1, r1, #16
	strb r1, [r5, #23]
	b _0800F974
	.byte 0x00
	.byte 0x00
_0800F910:
	.4byte 0x03000030
_0800F914:
	.4byte gUnknown_084274AC
_0800F918:
	mov r1, #196
	lsl r1, r1, #5
	add r0, r4, r1
	ldr r1, [r5, #12]
	mov r2, #240
	lsl r2, r2, #1
	add r1, r1, r2
	mov r2, #8
	bl CpuFastSet
	mov r1, #188
	lsl r1, r1, #5
	add r0, r4, r1
	ldr r1, [r5, #12]
	mov r2, #224
	lsl r2, r2, #1
	add r1, r1, r2
	mov r2, #8
	bl CpuFastSet
	mov r1, #180
	lsl r1, r1, #5
	add r0, r4, r1
	ldr r1, [r5, #12]
	mov r2, #208
	lsl r2, r2, #1
	add r1, r1, r2
	mov r2, #8
	bl CpuFastSet
	mov r1, #172
	lsl r1, r1, #5
	add r0, r4, r1
	ldr r1, [r5, #12]
	mov r4, #192
	lsl r4, r4, #1
	add r1, r1, r4
	mov r2, #8
	bl CpuFastSet
	ldr r0, [r5, #12]
	add r0, r0, r4
	mov r1, #12
	mov r2, #4
	bl sub_0800B8D4
_0800F974:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0800F8B0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800F97C
sub_0800F97C: @ 0x0800F97C
	push {r4,lr}
	add r4, r0, #0
	bl sub_0800BED8
	bl sub_0801239C
	bl sub_080123BC
	ldr r1, _0800F9A4  @ =gUnknown_030004A0
	mov r0, #64
	orr r4, r4, r0
	strh r4, [r1]
	ldr r0, _0800F9A8  @ =0x00001E0B
	strh r0, [r1, #44]
	mov r0, #96
	strh r0, [r1, #48]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800F9A4:
	.4byte gUnknown_030004A0
_0800F9A8:
	.4byte 0x00001E0B
	THUMB_FUNC_END sub_0800F97C

	THUMB_FUNC_START sub_0800F9AC
sub_0800F9AC: @ 0x0800F9AC
	push {r4,lr}
	mov r0, #0
	bl sub_0800F97C
	mov r0, #1
	neg r0, r0
	bl sub_0800F888
	mov r0, #1
	bl sub_0800B85C
	mov r0, #21
	bl sub_0800BA44
	mov r0, #16
	bl sub_0800B890
	mov r0, #17
	bl sub_0800B890
	ldr r0, _0800FA34  @ =0x00000193
	bl sub_0800D24C
	mov r0, #2
	mov r1, #8
	bl sub_0800C0B0
	ldr r4, _0800FA38  @ =gUnknown_02016D60
_0800F9E4:
	bl sub_0800BEC4
	mov r0, #128
	lsl r0, r0, #3
	bl sub_0800BD14
	str r0, [r4, #12]
	cmp r0, #0
	beq _0800F9E4
	ldr r0, _0800FA3C  @ =gUnknown_020163D0
	ldr r4, _0800FA38  @ =gUnknown_02016D60
	ldr r1, [r4, #12]
	mov r2, #128
	lsl r2, r2, #1
	bl CpuFastSet
	bl sub_08011324
	bl sub_08010DD8
	mov r0, #0
	bl sub_0800FA44
	mov r0, #128
	bl sub_0800FA44
	mov r1, #192
	lsl r1, r1, #18
	mov r0, #0
	strb r0, [r1, #4]
	strb r0, [r4, #24]
	mov r0, #60
	strb r0, [r4, #25]
	strb r0, [r4, #23]
	ldr r1, _0800FA40  @ =gUnknown_03005050
	mov r0, #2
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
_0800FA34:
	.4byte 0x00000193
_0800FA38:
	.4byte gUnknown_02016D60
_0800FA3C:
	.4byte gUnknown_020163D0
_0800FA40:
	.4byte gUnknown_03005050
	THUMB_FUNC_END sub_0800F9AC

	THUMB_FUNC_START sub_0800FA44
sub_0800FA44: @ 0x0800FA44
	push {r4-r6,lr}
	lsl r0, r0, #16
	lsr r4, r0, #16
	bl sub_0800EEA8
	add r5, r0, #0
	cmp r5, #0
	beq _0800FAA2
	ldr r0, _0800FAA8  @ =gUnknown_02002490
	str r0, [r5, #8]
	mov r0, #128
	strb r0, [r5, #2]
	mov r6, #128
	mov r1, #128
	lsl r1, r1, #1
	add r0, r4, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
_0800FA68:
	add r0, r4, #0
	bl sub_0800EE50
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0800EF14
	lsl r1, r4, #24
	lsr r1, r1, #18
	ldr r0, _0800FAAC  @ =0x06004000
	add r1, r1, r0
	ldr r0, _0800FAA8  @ =gUnknown_02002490
	mov r2, #16
	bl CpuFastSet
	add r0, r4, #1
	lsl r0, r0, #16
	lsr r4, r0, #16
	mov r0, #0
	strb r0, [r5, #3]
	lsl r0, r6, #16
	ldr r1, _0800FAB0  @ =0xFFFF0000
	add r0, r0, r1
	lsr r6, r0, #16
	cmp r0, #0
	bgt _0800FA68
	add r0, r5, #0
	bl sub_0800EEE0
_0800FAA2:
	pop {r4-r6}
	pop {r0}
	bx r0
_0800FAA8:
	.4byte gUnknown_02002490
_0800FAAC:
	.4byte 0x06004000
_0800FAB0:
	.4byte 0xFFFF0000
	THUMB_FUNC_END sub_0800FA44

	THUMB_FUNC_START sub_0800FAB4
sub_0800FAB4: @ 0x0800FAB4
	push {lr}
	ldr r1, _0800FACC  @ =gUnknown_084274CC
	ldr r0, _0800FAD0  @ =gSubState
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800FACC:
	.4byte gUnknown_084274CC
_0800FAD0:
	.4byte gSubState
	THUMB_FUNC_END sub_0800FAB4

	THUMB_FUNC_START sub_0800FAD4
sub_0800FAD4: @ 0x0800FAD4
	push {r4,r5,lr}
	sub sp, sp, #8
	mov r0, #0
	bl sub_0800F97C
	mov r5, #192
	lsl r5, r5, #18
	ldrb r4, [r5, #4]
	lsl r4, r4, #6
	ldr r0, _0800FB2C  @ =gUnknown_0200B250
	add r4, r4, r0
	add r0, r4, #0
	add r0, r0, #37
	ldrb r0, [r0]
	bl sub_0800B85C
	add r0, r4, #0
	bl sub_080681D0
	ldrb r0, [r5, #4]
	bl sub_08010E04
	ldr r3, _0800FB30  @ =gUnknown_02016D60
	add r1, r3, #0
	add r1, r1, #32
	mov r5, #0
	strb r0, [r1]
	ldr r1, [r4]
	mov r2, #240
	and r1, r1, r2
	strb r1, [r3, #31]
	eor r1, r1, r0
	and r1, r1, r0
	strb r1, [r3, #30]
	lsl r1, r1, #24
	cmp r1, #0
	bne _0800FB3C
	ldr r0, _0800FB34  @ =gUnknown_03005050
	mov r1, #7
	strb r1, [r0]
	ldr r0, _0800FB38  @ =gSubState
	strb r5, [r0]
	b _0800FB7E
	.byte 0x00
	.byte 0x00
_0800FB2C:
	.4byte gUnknown_0200B250
_0800FB30:
	.4byte gUnknown_02016D60
_0800FB34:
	.4byte gUnknown_03005050
_0800FB38:
	.4byte gSubState
_0800FB3C:
	add r1, r3, #0
	add r1, r1, #33
	mov r0, #3
	strb r0, [r1]
	ldr r1, _0800FB88  @ =gSubState
	mov r0, #1
	strb r0, [r1]
	str r5, [sp]
	mov r1, #192
	lsl r1, r1, #19
	ldr r2, _0800FB8C  @ =0x01000008
	mov r0, sp
	bl CpuFastSet
	str r5, [sp, #4]
	add r0, sp, #4
	ldr r1, _0800FB90  @ =0x0600E000
	ldr r2, _0800FB94  @ =0x01000200
	bl CpuFastSet
	mov r0, #5
	bl sub_0800BA44
	mov r0, #12
	bl sub_0800B890
	ldr r1, _0800FB98  @ =gUnknown_020163D0
	ldrh r0, [r1, #30]
	strh r0, [r1]
	mov r0, #2
	mov r1, #8
	bl sub_0800C0B0
_0800FB7E:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800FB88:
	.4byte gSubState
_0800FB8C:
	.4byte 0x01000008
_0800FB90:
	.4byte 0x0600E000
_0800FB94:
	.4byte 0x01000200
_0800FB98:
	.4byte gUnknown_020163D0
	THUMB_FUNC_END sub_0800FAD4

	THUMB_FUNC_START sub_0800FB9C
sub_0800FB9C: @ 0x0800FB9C
	push {r4,r5,lr}
	sub sp, sp, #4
	ldr r0, _0800FC24  @ =gUnknown_03000520
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800FC80
	ldr r3, _0800FC28  @ =gUnknown_02016D60
	add r2, r3, #0
	add r2, r2, #33
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r4, r3, #0
	cmp r0, #0
	blt _0800FBEE
	ldrb r0, [r4, #30]
	ldrb r1, [r2]
	asr r0, r0, r1
	mov r1, #16
	and r0, r0, r1
	cmp r0, #0
	bne _0800FBE2
	add r1, r2, #0
	mov r2, #16
_0800FBCA:
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	cmp r0, #0
	blt _0800FBEE
	ldrb r0, [r3, #30]
	ldrb r5, [r1]
	asr r0, r0, r5
	and r0, r0, r2
	cmp r0, #0
	beq _0800FBCA
_0800FBE2:
	add r5, r4, #0
	add r5, r5, #33
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bge _0800FC38
_0800FBEE:
	ldr r0, _0800FC2C  @ =gUnknown_0200B250
	mov r3, #192
	lsl r3, r3, #18
	ldrb r1, [r3, #4]
	lsl r1, r1, #6
	add r1, r1, r0
	add r0, r4, #0
	add r0, r0, #32
	ldrb r2, [r0]
	ldr r0, [r1]
	orr r0, r0, r2
	str r0, [r1]
	ldrb r0, [r3, #4]
	bl sub_08011434
	ldr r1, _0800FC30  @ =gUnknown_03005050
	mov r0, #7
	strb r0, [r1]
	ldr r1, _0800FC34  @ =gSubState
	mov r0, #0
	strb r0, [r1]
	mov r0, #3
	mov r1, #8
	bl sub_0800C0B0
	b _0800FC80
	.byte 0x00
	.byte 0x00
_0800FC24:
	.4byte gUnknown_03000520
_0800FC28:
	.4byte gUnknown_02016D60
_0800FC2C:
	.4byte gUnknown_0200B250
_0800FC30:
	.4byte gUnknown_03005050
_0800FC34:
	.4byte gSubState
_0800FC38:
	ldr r1, _0800FC88  @ =gUnknown_030004A0
	ldrh r2, [r1]
	mov r3, #128
	lsl r3, r3, #1
	add r0, r3, #0
	mov r3, #0
	orr r0, r0, r2
	strh r0, [r1]
	mov r0, #224
	lsl r0, r0, #5
	strh r0, [r1, #8]
	mov r0, #150
	lsl r0, r0, #1
	strh r0, [r4, #4]
	ldr r1, _0800FC8C  @ =gSubState
	mov r0, #2
	strb r0, [r1]
	str r3, [sp]
	ldr r1, _0800FC90  @ =gUnknown_0202D110
	ldr r2, _0800FC94  @ =0x01000200
	mov r0, sp
	bl CpuFastSet
	bl sub_0800FD28
	ldr r1, _0800FC98  @ =gUnknown_08137EB4
	ldrb r0, [r5]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _0800FC9C  @ =gUnknown_08137E9C
	bl sub_0800F4C4
	mov r0, #32
	bl sub_0800D24C
_0800FC80:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_0800FC88:
	.4byte gUnknown_030004A0
_0800FC8C:
	.4byte gSubState
_0800FC90:
	.4byte gUnknown_0202D110
_0800FC94:
	.4byte 0x01000200
_0800FC98:
	.4byte gUnknown_08137EB4
_0800FC9C:
	.4byte gUnknown_08137E9C
	THUMB_FUNC_END sub_0800FB9C

	THUMB_FUNC_START sub_0800FCA0
sub_0800FCA0: @ 0x0800FCA0
	push {r4,lr}
	ldr r2, _0800FCB8  @ =gUnknown_02016D60
	ldrh r0, [r2, #4]
	sub r0, r0, #1
	strh r0, [r2, #4]
	ldrh r0, [r2, #4]
	cmp r0, #0
	beq _0800FCBC
	cmp r0, #240
	beq _0800FCD4
	b _0800FCEE
	.byte 0x00
	.byte 0x00
_0800FCB8:
	.4byte gUnknown_02016D60
_0800FCBC:
	add r1, r2, #0
	add r1, r1, #33
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	ldr r1, _0800FCD0  @ =gSubState
	mov r0, #1
	strb r0, [r1]
	b _0800FD12
	.byte 0x00
	.byte 0x00
_0800FCD0:
	.4byte gSubState
_0800FCD4:
	add r1, r2, #0
	add r1, r1, #33
	mov r0, #16
	ldrb r1, [r1]
	lsl r0, r0, r1
	ldrb r1, [r2, #31]
	orr r0, r0, r1
	strb r0, [r2, #31]
	bl sub_0800FD28
	mov r0, #9
	bl sub_0800D24C
_0800FCEE:
	ldr r4, _0800FD18  @ =gUnknown_02016D60
	ldrh r0, [r4, #4]
	bl __floatsidf
	ldr r2, _0800FD1C  @ =0x4062C000
	ldr r3, _0800FD20  @ =0x00000000
	bl __ltdf2
	cmp r0, #0
	bge _0800FD12
	ldr r0, _0800FD24  @ =gNewKeys
	ldrh r1, [r0]
	mov r0, #11
	and r0, r0, r1
	cmp r0, #0
	beq _0800FD12
	mov r0, #1
	strh r0, [r4, #4]
_0800FD12:
	pop {r4}
	pop {r0}
	bx r0
_0800FD18:
	.4byte gUnknown_02016D60
_0800FD1C:
	.4byte 0x4062C000
_0800FD20:
	.4byte 0x00000000
_0800FD24:
	.4byte gNewKeys
	THUMB_FUNC_END sub_0800FCA0

	THUMB_FUNC_START sub_0800FD28
sub_0800FD28: @ 0x0800FD28
	push {r4-r6,lr}
	ldr r4, _0800FD9C  @ =gUnknown_0202D4D0
	mov r1, #136
	lsl r1, r1, #3
	add r0, r4, r1
	add r1, r4, #0
	mov r2, #64
	bl CpuFastSet
	add r4, r4, #10
	mov r6, #3
	add r5, r4, #0
	add r5, r5, #192
	add r3, r4, #0
	add r3, r3, #128
	add r2, r4, #0
	add r2, r2, #64
_0800FD4A:
	ldr r0, _0800FDA0  @ =gUnknown_02016D60
	ldrb r1, [r0, #31]
	mov r0, #16
	lsl r0, r0, r6
	and r1, r1, r0
	cmp r1, #0
	bne _0800FD78
	strh r1, [r5, #6]
	strh r1, [r5, #4]
	strh r1, [r5, #2]
	strh r1, [r5]
	strh r1, [r3, #6]
	strh r1, [r3, #4]
	strh r1, [r3, #2]
	strh r1, [r3]
	strh r1, [r2, #6]
	strh r1, [r2, #4]
	strh r1, [r2, #2]
	strh r1, [r2]
	strh r1, [r4, #6]
	strh r1, [r4, #4]
	strh r1, [r4, #2]
	strh r1, [r4]
_0800FD78:
	add r5, r5, #10
	add r3, r3, #10
	add r2, r2, #10
	add r4, r4, #10
	sub r6, r6, #1
	cmp r6, #0
	bge _0800FD4A
	ldr r0, _0800FDA4  @ =gUnknown_0202D4DA
	ldr r1, _0800FDA8  @ =gUnknown_030004A0
	ldr r2, _0800FDAC  @ =0xFFFFFC36
	add r0, r0, r2
	str r0, [r1, #16]
	mov r0, #1
	strh r0, [r1, #14]
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800FD9C:
	.4byte gUnknown_0202D4D0
_0800FDA0:
	.4byte gUnknown_02016D60
_0800FDA4:
	.4byte gUnknown_0202D4DA
_0800FDA8:
	.4byte gUnknown_030004A0
_0800FDAC:
	.4byte 0xFFFFFC36
	THUMB_FUNC_END sub_0800FD28

	THUMB_FUNC_START sub_0800FDB0
sub_0800FDB0: @ 0x0800FDB0
	bx lr
	THUMB_FUNC_END sub_0800FDB0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800FDB4
sub_0800FDB4: @ 0x0800FDB4
	push {lr}
	ldr r1, _0800FDCC  @ =gUnknown_084274D8
	ldr r0, _0800FDD0  @ =gSubState
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800FDCC:
	.4byte gUnknown_084274D8
_0800FDD0:
	.4byte gSubState
	THUMB_FUNC_END sub_0800FDB4

	THUMB_FUNC_START sub_0800FDD4
sub_0800FDD4: @ 0x0800FDD4
	push {r4,r5,lr}
	mov r0, #200
	lsl r0, r0, #5
	bl sub_0800F97C
	mov r0, #23
	bl sub_0800BA44
	ldr r4, _0800FE88  @ =gUnknown_02016D60
	ldrb r0, [r4, #31]
	bl sub_0800F888
	mov r0, #0
	bl sub_08010D1C
	mov r0, #1
	bl sub_08010D1C
	mov r0, #2
	bl sub_08010D1C
	ldr r1, _0800FE8C  @ =gUnknown_030004A0
	mov r5, #0
	mov r2, #0
	mov r0, #224
	lsl r0, r0, #5
	strh r0, [r1, #8]
	ldr r0, _0800FE90  @ =0x00001D01
	strh r0, [r1, #20]
	ldr r0, _0800FE94  @ =0x00001B02
	strh r0, [r1, #32]
	mov r0, #32
	strh r0, [r1, #12]
	ldr r0, _0800FE98  @ =0x0000FFEC
	strh r0, [r1, #34]
	strh r0, [r1, #22]
	sub r0, r0, #20
	strh r0, [r1, #36]
	strh r0, [r1, #24]
	add r3, r1, #0
	add r3, r3, #102
	ldr r0, _0800FE9C  @ =0x00000844
	strh r0, [r3]
	add r1, r1, #104
	sub r0, r0, #56
	strh r0, [r1]
	mov r0, #192
	lsl r0, r0, #18
	ldrb r0, [r0, #4]
	strb r0, [r4, #31]
	add r0, r4, #0
	add r0, r0, #32
	strb r5, [r0]
	str r2, [r4, #8]
	strb r5, [r4, #26]
	mov r0, #255
	strb r0, [r4, #30]
	ldr r0, _0800FEA0  @ =gUnknown_08137EBC
	bl sub_0804C808
	mov r0, #0
	bl sub_08063C5C
	ldrb r1, [r0, #28]
	mov r2, #192
	orr r1, r1, r2
	strb r1, [r0, #28]
	add r0, r0, #32
	mov r1, #128
	strb r1, [r0]
	ldr r1, _0800FEA4  @ =gUnknown_03006A30
	mov r0, #3
	strb r0, [r1, #12]
	add r2, r1, #0
	add r2, r2, #56
	sub r0, r0, #4
	strb r0, [r2]
	add r1, r1, #57
	strb r5, [r1]
	mov r0, #2
	mov r1, #8
	bl sub_0800C0B0
	ldr r1, _0800FEA8  @ =gSubState
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
_0800FE88:
	.4byte gUnknown_02016D60
_0800FE8C:
	.4byte gUnknown_030004A0
_0800FE90:
	.4byte 0x00001D01
_0800FE94:
	.4byte 0x00001B02
_0800FE98:
	.4byte 0x0000FFEC
_0800FE9C:
	.4byte 0x00000844
_0800FEA0:
	.4byte gUnknown_08137EBC
_0800FEA4:
	.4byte gUnknown_03006A30
_0800FEA8:
	.4byte gSubState
	THUMB_FUNC_END sub_0800FDD4

	THUMB_FUNC_START sub_0800FEAC
sub_0800FEAC: @ 0x0800FEAC
	push {lr}
	ldr r3, _0800FED8  @ =gUnknown_02016D60
	ldrb r0, [r3, #29]
	cmp r0, #0
	beq _0800FEBE
	add r1, r3, #0
	add r1, r1, #32
	mov r0, #0
	strb r0, [r1]
_0800FEBE:
	ldrb r2, [r3, #27]
	cmp r2, #0
	bne _0800FED2
	ldr r0, _0800FEDC  @ =gSubState
	mov r1, #2
	strb r1, [r0]
	strh r2, [r3, #4]
	ldrb r0, [r3, #31]
	bl sub_080100E4
_0800FED2:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800FED8:
	.4byte gUnknown_02016D60
_0800FEDC:
	.4byte gSubState
	THUMB_FUNC_END sub_0800FEAC

	THUMB_FUNC_START sub_0800FEE0
sub_0800FEE0: @ 0x0800FEE0
	push {r4,lr}
	bl sub_0801022C
	cmp r0, #0
	beq _0800FEEC
	b _0801008C
_0800FEEC:
	bl sub_08010DC0
	cmp r0, #0
	beq _0800FEF6
	b _0801008C
_0800FEF6:
	bl sub_080101C0
	add r2, r0, #0
	cmp r2, #0
	beq _0800FF02
	b _0801008C
_0800FF02:
	ldr r0, _0800FF1C  @ =gNewKeys
	ldrh r1, [r0]
	add r3, r0, #0
	cmp r1, #16
	beq _0800FF66
	cmp r1, #16
	bgt _0800FF20
	cmp r1, #1
	beq _0800FFB8
	cmp r1, #8
	beq _0800FFB8
	b _0801008C
	.byte 0x00
	.byte 0x00
_0800FF1C:
	.4byte gNewKeys
_0800FF20:
	cmp r1, #64
	beq _0800FF34
	cmp r1, #64
	bgt _0800FF2E
	cmp r1, #32
	beq _0800FF9E
	b _0801008C
_0800FF2E:
	cmp r1, #128
	beq _0800FF34
	b _0801008C
_0800FF34:
	ldr r2, _0800FF4C  @ =gUnknown_02016D60
	add r1, r2, #0
	add r1, r1, #32
	mov r0, #0
	strb r0, [r1]
	ldrb r1, [r2, #31]
	ldrh r0, [r3]
	add r4, r2, #0
	cmp r0, #64
	bne _0800FF50
	sub r1, r1, #1
	b _0800FF52
_0800FF4C:
	.4byte gUnknown_02016D60
_0800FF50:
	add r1, r1, #1
_0800FF52:
	mov r0, #3
	and r1, r1, r0
	strb r1, [r2, #31]
	ldrb r0, [r4, #31]
	bl sub_0800F888
	ldrb r0, [r4, #31]
	bl sub_080100E4
	b _0800FFAC
_0800FF66:
	ldr r4, _0800FF7C  @ =gUnknown_02016D60
	ldrb r0, [r4, #31]
	bl sub_080111F8
	lsl r0, r0, #24
	cmp r0, #0
	beq _0800FF84
	ldr r1, _0800FF80  @ =gSubState
	mov r0, #4
	strb r0, [r1]
	b _0800FFAC
_0800FF7C:
	.4byte gUnknown_02016D60
_0800FF80:
	.4byte gSubState
_0800FF84:
	ldrb r0, [r4, #31]
	cmp r0, #3
	beq _0800FF8C
	b _0801008C
_0800FF8C:
	add r1, r4, #0
	add r1, r1, #32
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800FF98
	b _0801008C
_0800FF98:
	mov r0, #1
	strb r0, [r1]
	b _0800FFAC
_0800FF9E:
	ldr r0, _0800FFB4  @ =gUnknown_02016D60
	add r1, r0, #0
	add r1, r1, #32
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801008C
	strb r2, [r1]
_0800FFAC:
	mov r0, #61
	bl sub_0800D24C
	b _0801008C
_0800FFB4:
	.4byte gUnknown_02016D60
_0800FFB8:
	ldr r0, _0800FFF8  @ =gUnknown_02016D60
	ldrb r1, [r0, #31]
	add r4, r0, #0
	cmp r1, #2
	bgt _08010020
	cmp r1, #0
	blt _08010020
	mov r0, #62
	bl sub_0800D24C
	mov r1, #192
	lsl r1, r1, #18
	ldrb r0, [r4, #31]
	strb r0, [r1, #4]
	ldrb r0, [r4, #31]
	bl sub_080111F8
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #0
	beq _08010004
	ldr r1, _0800FFFC  @ =gUnknown_030004A0
	mov r0, #132
	lsl r0, r0, #4
	strh r0, [r1]
	bl sub_080123BC
	ldr r1, _08010000  @ =gSubState
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _0801008C
_0800FFF8:
	.4byte gUnknown_02016D60
_0800FFFC:
	.4byte gUnknown_030004A0
_08010000:
	.4byte gSubState
_08010004:
	mov r0, #3
	bl sub_080100E4
	ldr r0, _08010018  @ =gUnknown_03005050
	mov r1, #5
	strb r1, [r0]
	ldr r0, _0801001C  @ =gSubState
	strb r4, [r0]
	b _0801008C
	.byte 0x00
	.byte 0x00
_08010018:
	.4byte gUnknown_03005050
_0801001C:
	.4byte gSubState
_08010020:
	add r0, r4, #0
	add r0, r0, #32
	ldrb r4, [r0]
	cmp r4, #0
	bne _0801005E
	bl sub_080111C8
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	beq _08010050
	cmp r0, #3
	beq _08010054
	ldr r0, _08010048  @ =gUnknown_03005050
	mov r1, #3
	strb r1, [r0]
	ldr r0, _0801004C  @ =gSubState
	strb r4, [r0]
	b _08010074
	.byte 0x00
	.byte 0x00
_08010048:
	.4byte gUnknown_03005050
_0801004C:
	.4byte gSubState
_08010050:
	mov r0, #0
	b _08010056
_08010054:
	mov r0, #1
_08010056:
	mov r1, #0
	bl sub_08010104
	b _0801008C
_0801005E:
	bl sub_080111C8
	lsl r0, r0, #24
	cmp r0, #0
	beq _08010084
	ldr r1, _0801007C  @ =gUnknown_03005050
	mov r0, #4
	strb r0, [r1]
	ldr r1, _08010080  @ =gSubState
	mov r0, #0
	strb r0, [r1]
_08010074:
	mov r0, #62
	bl sub_0800D24C
	b _0801008C
_0801007C:
	.4byte gUnknown_03005050
_08010080:
	.4byte gSubState
_08010084:
	mov r0, #2
	mov r1, #0
	bl sub_08010104
_0801008C:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0800FEE0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08010094
sub_08010094: @ 0x08010094
	push {lr}
	ldr r1, _080100BC  @ =gUnknown_02016D60
	mov r0, #255
	strb r0, [r1, #23]
	ldr r1, _080100C0  @ =gUnknown_030004A0
	ldrh r0, [r1, #48]
	sub r0, r0, #1
	strh r0, [r1, #48]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #56
	bne _080100C8
	mov r0, #3
	mov r1, #8
	bl sub_0800C0B0
	ldr r0, _080100C4  @ =0x80040000
	bl sub_0800D24C
	b _080100D8
_080100BC:
	.4byte gUnknown_02016D60
_080100C0:
	.4byte gUnknown_030004A0
_080100C4:
	.4byte 0x80040000
_080100C8:
	cmp r0, #0
	bne _080100D8
	ldr r1, _080100DC  @ =gUnknown_03005050
	mov r0, #6
	strb r0, [r1]
	ldr r1, _080100E0  @ =gSubState
	mov r0, #0
	strb r0, [r1]
_080100D8:
	pop {r0}
	bx r0
_080100DC:
	.4byte gUnknown_03005050
_080100E0:
	.4byte gSubState
	THUMB_FUNC_END sub_08010094

	THUMB_FUNC_START sub_080100E4
sub_080100E4: @ 0x080100E4
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r3, _08010100  @ =gUnknown_02016D60
	ldrb r1, [r3, #28]
	mov r0, #3
	and r0, r0, r1
	cmp r0, r2
	beq _080100FC
	mov r1, #128
	add r0, r2, #0
	orr r0, r0, r1
	strb r0, [r3, #28]
_080100FC:
	bx lr
	.byte 0x00
	.byte 0x00
_08010100:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_080100E4

	THUMB_FUNC_START sub_08010104
sub_08010104: @ 0x08010104
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	sub sp, sp, #32
	add r5, r0, #0
	mov r8, r1
	lsl r5, r5, #24
	lsr r5, r5, #24
	ldr r1, _0801016C  @ =gUnknown_02016D60
	add r2, r1, #0
	add r2, r2, #35
	mov r0, #1
	strb r0, [r2]
	mov r0, #180
	strh r0, [r1, #4]
	ldr r0, _08010170  @ =gUnknown_08137F04
	ldr r2, _08010174  @ =0x04000006
	mov r1, sp
	bl CpuSet
	mov r1, sp
	ldr r6, _08010178  @ =gUnknown_08137F1C
	lsl r4, r5, #1
	add r4, r4, r5
	lsl r4, r4, #1
	add r0, r4, r6
	ldrh r0, [r0]
	strb r0, [r1, #18]
	add r5, sp, #24
	mov r0, r8
	add r1, r5, #0
	bl sub_0800EC08
	str r5, [sp, #12]
	add r0, r6, #2
	add r0, r4, r0
	ldrh r0, [r0]
	mov r1, sp
	bl sub_0800F4C4
	add r6, r6, #4
	add r4, r4, r6
	ldrh r0, [r4]
	bl sub_0800D24C
	add sp, sp, #32
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801016C:
	.4byte gUnknown_02016D60
_08010170:
	.4byte gUnknown_08137F04
_08010174:
	.4byte 0x04000006
_08010178:
	.4byte gUnknown_08137F1C
	THUMB_FUNC_END sub_08010104

	THUMB_FUNC_START sub_0801017C
sub_0801017C: @ 0x0801017C
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, _080101B0  @ =gUnknown_02016D60
	ldrb r0, [r4, #22]
	cmp r0, #0
	beq _08010192
	mov r0, #0
	strb r0, [r4, #22]
	ldr r0, _080101B4  @ =0x80050000
	bl sub_0800D24C
_08010192:
	add r1, r4, #0
	add r1, r1, #35
	mov r0, #0
	strb r0, [r1]
	strb r0, [r4, #21]
	str r0, [sp]
	ldr r1, _080101B8  @ =0x0600E180
	ldr r2, _080101BC  @ =0x01000080
	mov r0, sp
	bl CpuFastSet
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_080101B0:
	.4byte gUnknown_02016D60
_080101B4:
	.4byte 0x80050000
_080101B8:
	.4byte 0x0600E180
_080101BC:
	.4byte 0x01000080
	THUMB_FUNC_END sub_0801017C

	THUMB_FUNC_START sub_080101C0
sub_080101C0: @ 0x080101C0
	push {r4,r5,lr}
	mov r2, #0
	mov r4, #0
	ldr r5, _080101D4  @ =gUnknown_0200B250
	mov r3, #2
	neg r3, r3
	mov r1, #1
	neg r1, r1
	b _080101DE
	.byte 0x00
	.byte 0x00
_080101D4:
	.4byte gUnknown_0200B250
_080101D8:
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
_080101DE:
	cmp r4, #2
	bhi _08010202
	lsl r0, r4, #6
	add r0, r0, r5
	add r0, r0, #63
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, r3
	beq _080101F8
	cmp r0, r1
	beq _080101FC
	b _080101FE
_080101F8:
	mov r2, #5
	b _08010206
_080101FC:
	mov r2, #4
_080101FE:
	cmp r2, #0
	beq _080101D8
_08010202:
	cmp r2, #0
	beq _08010224
_08010206:
	add r1, r4, #1
	add r0, r2, #0
	bl sub_08010104
	ldr r1, _08010220  @ =gUnknown_0200B250
	lsl r0, r4, #6
	add r0, r0, r1
	add r0, r0, #63
	mov r1, #0
	strb r1, [r0]
	mov r0, #1
	b _08010226
	.byte 0x00
	.byte 0x00
_08010220:
	.4byte gUnknown_0200B250
_08010224:
	mov r0, #0
_08010226:
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080101C0

	THUMB_FUNC_START sub_0801022C
sub_0801022C: @ 0x0801022C
	push {lr}
	ldr r2, _08010240  @ =gUnknown_02016D60
	add r0, r2, #0
	add r0, r0, #35
	ldrb r0, [r0]
	cmp r0, #0
	bne _08010244
	mov r0, #0
	b _08010268
	.byte 0x00
	.byte 0x00
_08010240:
	.4byte gUnknown_02016D60
_08010244:
	ldrh r0, [r2, #4]
	cmp r0, #149
	bhi _0801025A
	ldr r0, _0801026C  @ =gNewKeys
	ldrh r1, [r0]
	mov r0, #11
	and r0, r0, r1
	cmp r0, #0
	beq _0801025A
	mov r0, #0
	strh r0, [r2, #4]
_0801025A:
	bl sub_08010DC0
	cmp r0, #0
	bne _08010266
	bl sub_0801017C
_08010266:
	mov r0, #1
_08010268:
	pop {r1}
	bx r1
_0801026C:
	.4byte gNewKeys
	THUMB_FUNC_END sub_0801022C

	THUMB_FUNC_START sub_08010270
sub_08010270: @ 0x08010270
	push {r4-r7,lr}
	mov r7, #0
	ldr r1, _0801028C  @ =gUnknown_02016D60
	add r2, r1, #0
	add r2, r2, #36
	ldrb r0, [r2]
	add r3, r1, #0
	cmp r0, #1
	beq _080102E4
	cmp r0, #1
	bgt _08010290
	cmp r0, #0
	beq _0801029C
	b _08010396
_0801028C:
	.4byte gUnknown_02016D60
_08010290:
	cmp r0, #2
	beq _080102F0
	cmp r0, #4
	bne _0801029A
	b _0801039C
_0801029A:
	b _08010396
_0801029C:
	mov r0, #1
	strb r0, [r2]
	ldr r1, _080102D8  @ =gUnknown_0200B250
	ldrb r0, [r3, #31]
	lsl r0, r0, #6
	add r0, r0, r1
	add r0, r0, #36
	ldrb r0, [r0]
	add r2, r3, #0
	add r2, r2, #38
	strb r0, [r2]
	ldrb r0, [r3, #31]
	lsl r0, r0, #6
	add r0, r0, r1
	add r0, r0, #37
	ldrb r1, [r0]
	add r0, r3, #0
	add r0, r0, #39
	strb r1, [r0]
	ldr r0, _080102DC  @ =gUnknown_08137F52
	bl sub_0804C808
	ldr r0, _080102E0  @ =0x80040002
	bl sub_0800D24C
	mov r0, #68
	bl sub_0800D24C
	b _080103C0
	.byte 0x00
	.byte 0x00
_080102D8:
	.4byte gUnknown_0200B250
_080102DC:
	.4byte gUnknown_08137F52
_080102E0:
	.4byte 0x80040002
_080102E4:
	ldrb r0, [r3, #27]
	cmp r0, #0
	bne _080103C0
	mov r0, #2
	strb r0, [r2]
	b _080103C0
_080102F0:
	ldr r0, _08010308  @ =gNewKeys
	ldrh r0, [r0]
	cmp r0, #16
	beq _08010392
	cmp r0, #16
	bgt _0801030C
	cmp r0, #1
	beq _08010320
	cmp r0, #2
	beq _08010374
	b _080103C0
	.byte 0x00
	.byte 0x00
_08010308:
	.4byte gNewKeys
_0801030C:
	cmp r0, #64
	beq _0801037A
	cmp r0, #64
	bgt _0801031A
	cmp r0, #32
	beq _0801038E
	b _080103C0
_0801031A:
	cmp r0, #128
	beq _0801037A
	b _080103C0
_08010320:
	add r1, r3, #0
	add r1, r1, #38
	ldr r6, _0801036C  @ =gUnknown_0200B250
	ldrb r0, [r3, #31]
	lsl r0, r0, #6
	add r0, r0, r6
	add r4, r0, #0
	add r4, r4, #36
	ldrb r2, [r1]
	add r5, r3, #0
	add r5, r5, #39
	ldrb r1, [r4]
	cmp r2, r1
	bne _08010348
	add r1, r0, #0
	add r1, r1, #37
	ldrb r0, [r5]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0801035C
_08010348:
	strb r2, [r4]
	ldrb r0, [r3, #31]
	lsl r0, r0, #6
	add r0, r0, r6
	ldrb r1, [r5]
	add r0, r0, #37
	strb r1, [r0]
	ldrb r0, [r3, #31]
	bl sub_08011434
_0801035C:
	mov r0, #62
	bl sub_0800D24C
	ldr r0, _08010370  @ =gUnknown_02016D60
	add r0, r0, #36
	mov r1, #3
	strb r1, [r0]
	b _080103C0
_0801036C:
	.4byte gUnknown_0200B250
_08010370:
	.4byte gUnknown_02016D60
_08010374:
	mov r0, #4
	strb r0, [r2]
	b _080103C0
_0801037A:
	add r0, r3, #0
	add r0, r0, #37
	ldrb r1, [r0]
	mov r2, #1
	eor r1, r1, r2
	strb r1, [r0]
	mov r0, #61
	bl sub_0800D24C
	b _080103C0
_0801038E:
	mov r7, #255
	b _080103C0
_08010392:
	mov r7, #1
	b _080103C0
_08010396:
	ldrb r0, [r3, #27]
	cmp r0, #0
	bne _080103C0
_0801039C:
	add r1, r3, #0
	add r1, r1, #36
	mov r0, #0
	strb r0, [r1]
	ldr r1, _080103B8  @ =gSubState
	mov r0, #2
	strb r0, [r1]
	ldrb r0, [r3, #31]
	bl sub_0800F888
	ldr r0, _080103BC  @ =0x80050000
	bl sub_0800D24C
	b _080103EE
_080103B8:
	.4byte gSubState
_080103BC:
	.4byte 0x80050000
_080103C0:
	lsl r0, r7, #24
	asr r2, r0, #24
	cmp r2, #0
	beq _080103EE
	ldr r1, _080103F4  @ =gUnknown_02016D60
	add r0, r1, #0
	add r0, r0, #37
	ldrb r0, [r0]
	add r4, r1, #0
	add r4, r4, #38
	cmp r0, #0
	beq _080103DA
	add r4, r4, #1
_080103DA:
	ldrb r0, [r4]
	add r0, r0, r2
	add r0, r0, #3
	mov r1, #3
	bl __modsi3
	strb r0, [r4]
	mov r0, #61
	bl sub_0800D24C
_080103EE:
	pop {r4-r7}
	pop {r0}
	bx r0
_080103F4:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_08010270

	THUMB_FUNC_START sub_080103F8
sub_080103F8: @ 0x080103F8
	push {lr}
	ldr r1, _08010410  @ =gUnknown_084274EC
	ldr r0, _08010414  @ =gSubState
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08010410:
	.4byte gUnknown_084274EC
_08010414:
	.4byte gSubState
	THUMB_FUNC_END sub_080103F8

	THUMB_FUNC_START sub_08010418
sub_08010418: @ 0x08010418
	ldr r2, _0801042C  @ =gUnknown_02016D60
	ldrb r0, [r2, #27]
	cmp r0, #0
	bne _0801042A
	ldr r0, _08010430  @ =gSubState
	mov r1, #1
	strb r1, [r0]
	mov r0, #4
	strb r0, [r2, #26]
_0801042A:
	bx lr
_0801042C:
	.4byte gUnknown_02016D60
_08010430:
	.4byte gSubState
	THUMB_FUNC_END sub_08010418

	THUMB_FUNC_START sub_08010434
sub_08010434: @ 0x08010434
	push {r4,r5,lr}
	ldr r4, _08010464  @ =gUnknown_02016D60
	mov r0, #255
	strb r0, [r4, #30]
	ldrb r0, [r4, #29]
	cmp r0, #0
	beq _0801044A
	add r1, r4, #0
	add r1, r1, #32
	mov r0, #2
	strb r0, [r1]
_0801044A:
	bl sub_08010DC0
	cmp r0, #0
	bne _080104EE
	ldr r0, _08010468  @ =gNewKeys
	ldrh r0, [r0]
	cmp r0, #2
	beq _080104E8
	cmp r0, #2
	bgt _0801046C
	cmp r0, #1
	beq _080104C0
	b _080104EE
_08010464:
	.4byte gUnknown_02016D60
_08010468:
	.4byte gNewKeys
_0801046C:
	cmp r0, #64
	beq _08010474
	cmp r0, #128
	bne _080104EE
_08010474:
	add r5, r4, #0
	mov r4, #3
	b _08010486
_0801047A:
	ldrb r0, [r1, #31]
	bl sub_080111F8
	lsl r0, r0, #24
	cmp r0, #0
	bne _080104AA
_08010486:
	ldrb r2, [r5, #31]
	ldr r0, _08010498  @ =gNewKeys
	ldrh r1, [r0]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _0801049C
	sub r0, r2, #1
	b _0801049E
_08010498:
	.4byte gNewKeys
_0801049C:
	add r0, r2, #1
_0801049E:
	and r0, r0, r4
	strb r0, [r5, #31]
	ldr r1, _080104BC  @ =gUnknown_02016D60
	ldrb r0, [r1, #31]
	cmp r0, #3
	bne _0801047A
_080104AA:
	ldr r0, _080104BC  @ =gUnknown_02016D60
	ldrb r0, [r0, #31]
	bl sub_080100E4
	mov r0, #61
	bl sub_0800D24C
	b _080104EE
	.byte 0x00
	.byte 0x00
_080104BC:
	.4byte gUnknown_02016D60
_080104C0:
	ldrb r0, [r4, #31]
	bl sub_080111F8
	lsl r0, r0, #24
	cmp r0, #0
	beq _080104E8
	ldr r1, _080104E4  @ =gSubState
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #5
	strb r0, [r4, #26]
	ldrb r0, [r4, #31]
	strb r0, [r4, #30]
	mov r0, #62
	bl sub_0800D24C
	b _080104EE
_080104E4:
	.4byte gSubState
_080104E8:
	mov r0, #3
	bl sub_080107F8
_080104EE:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08010434

	THUMB_FUNC_START sub_080104F4
sub_080104F4: @ 0x080104F4
	push {r4-r6,lr}
	ldr r4, _0801052C  @ =gUnknown_02016D60
	ldrb r0, [r4, #29]
	cmp r0, #0
	beq _0801050A
	mov r0, #3
	strb r0, [r4, #31]
	add r1, r4, #0
	add r1, r1, #32
	mov r0, #2
	strb r0, [r1]
_0801050A:
	bl sub_08010DC0
	cmp r0, #0
	bne _080105D0
	ldrb r0, [r4, #27]
	cmp r0, #0
	bne _080105D0
	ldr r0, _08010530  @ =gNewKeys
	ldrh r0, [r0]
	cmp r0, #2
	beq _080105B4
	cmp r0, #2
	bgt _08010534
	cmp r0, #1
	beq _08010578
	b _080105D0
	.byte 0x00
	.byte 0x00
_0801052C:
	.4byte gUnknown_02016D60
_08010530:
	.4byte gNewKeys
_08010534:
	cmp r0, #64
	beq _0801053C
	cmp r0, #128
	bne _080105D0
_0801053C:
	add r6, r4, #0
	mov r5, #3
	b _0801054E
_08010542:
	ldrb r0, [r6, #31]
	bl sub_080111F8
	lsl r0, r0, #24
	cmp r0, #0
	beq _08010570
_0801054E:
	ldrb r2, [r4, #31]
	ldr r0, _08010560  @ =gNewKeys
	ldrh r1, [r0]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _08010564
	sub r0, r2, #1
	b _08010566
_08010560:
	.4byte gNewKeys
_08010564:
	add r0, r2, #1
_08010566:
	and r0, r0, r5
	strb r0, [r4, #31]
	ldrb r0, [r6, #31]
	cmp r0, #3
	bne _08010542
_08010570:
	mov r0, #61
	bl sub_0800D24C
	b _080105D0
_08010578:
	ldrb r0, [r4, #31]
	cmp r0, #3
	beq _080105B4
	ldr r1, _080105AC  @ =gSubState
	mov r0, #3
	strb r0, [r1]
	mov r0, #3
	mov r1, #0
	bl sub_08010104
	bl sub_080107D8
	ldr r1, _080105B0  @ =gUnknown_0202A6F0
	ldrb r0, [r4, #31]
	lsl r0, r0, #4
	add r0, r0, r1
	ldrb r0, [r0, #15]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bgt _080105D0
	ldrh r0, [r4, #4]
	add r0, r0, #120
	strh r0, [r4, #4]
	b _080105D0
	.byte 0x00
	.byte 0x00
_080105AC:
	.4byte gSubState
_080105B0:
	.4byte gUnknown_0202A6F0
_080105B4:
	ldr r1, _080105D8  @ =gSubState
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	ldr r1, _080105DC  @ =gUnknown_02016D60
	mov r0, #4
	strb r0, [r1, #26]
	mov r0, #3
	strb r0, [r1, #31]
	bl sub_080100E4
	mov r0, #148
	bl sub_0800D24C
_080105D0:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080105D8:
	.4byte gSubState
_080105DC:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_080104F4

	THUMB_FUNC_START sub_080105E0
sub_080105E0: @ 0x080105E0
	push {r4,lr}
	bl sub_08010DC0
	cmp r0, #0
	bne _0801061E
	ldr r1, _080105FC  @ =gUnknown_02016D60
	ldrb r0, [r1, #26]
	cmp r0, #2
	bne _08010600
	ldrb r0, [r1, #30]
	bl sub_080112B8
	b _08010608
	.byte 0x00
	.byte 0x00
_080105FC:
	.4byte gUnknown_02016D60
_08010600:
	ldrb r0, [r1, #30]
	ldrb r1, [r1, #31]
	bl sub_08011228
_08010608:
	ldr r4, _08010624  @ =gUnknown_02016D60
	mov r0, #0
	strh r0, [r4, #4]
	bl sub_0801017C
	mov r0, #3
	bl sub_080100E4
	ldrb r0, [r4, #31]
	bl sub_080107F8
_0801061E:
	pop {r4}
	pop {r0}
	bx r0
_08010624:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_080105E0

	THUMB_FUNC_START sub_08010628
sub_08010628: @ 0x08010628
	push {lr}
	ldr r1, _08010640  @ =gUnknown_084274FC
	ldr r0, _08010644  @ =gSubState
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08010640:
	.4byte gUnknown_084274FC
_08010644:
	.4byte gSubState
	THUMB_FUNC_END sub_08010628

	THUMB_FUNC_START sub_08010648
sub_08010648: @ 0x08010648
	ldr r2, _0801065C  @ =gUnknown_02016D60
	ldrb r0, [r2, #27]
	cmp r0, #0
	bne _0801065A
	ldr r0, _08010660  @ =gSubState
	mov r1, #1
	strb r1, [r0]
	mov r0, #1
	strb r0, [r2, #26]
_0801065A:
	bx lr
_0801065C:
	.4byte gUnknown_02016D60
_08010660:
	.4byte gSubState
	THUMB_FUNC_END sub_08010648

	THUMB_FUNC_START sub_08010664
sub_08010664: @ 0x08010664
	push {r4,r5,lr}
	ldr r4, _08010694  @ =gUnknown_02016D60
	mov r0, #255
	strb r0, [r4, #30]
	ldrb r0, [r4, #29]
	cmp r0, #0
	beq _0801067A
	add r1, r4, #0
	add r1, r1, #32
	mov r0, #2
	strb r0, [r1]
_0801067A:
	bl sub_08010DC0
	cmp r0, #0
	bne _0801071E
	ldr r0, _08010698  @ =gNewKeys
	ldrh r0, [r0]
	cmp r0, #2
	beq _08010718
	cmp r0, #2
	bgt _0801069C
	cmp r0, #1
	beq _080106F0
	b _0801071E
_08010694:
	.4byte gUnknown_02016D60
_08010698:
	.4byte gNewKeys
_0801069C:
	cmp r0, #64
	beq _080106A4
	cmp r0, #128
	bne _0801071E
_080106A4:
	add r5, r4, #0
	mov r4, #3
	b _080106B6
_080106AA:
	ldrb r0, [r1, #31]
	bl sub_080111F8
	lsl r0, r0, #24
	cmp r0, #0
	bne _080106DA
_080106B6:
	ldrb r2, [r5, #31]
	ldr r0, _080106C8  @ =gNewKeys
	ldrh r1, [r0]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _080106CC
	sub r0, r2, #1
	b _080106CE
_080106C8:
	.4byte gNewKeys
_080106CC:
	add r0, r2, #1
_080106CE:
	and r0, r0, r4
	strb r0, [r5, #31]
	ldr r1, _080106EC  @ =gUnknown_02016D60
	ldrb r0, [r1, #31]
	cmp r0, #3
	bne _080106AA
_080106DA:
	ldr r0, _080106EC  @ =gUnknown_02016D60
	ldrb r0, [r0, #31]
	bl sub_080100E4
	mov r0, #61
	bl sub_0800D24C
	b _0801071E
	.byte 0x00
	.byte 0x00
_080106EC:
	.4byte gUnknown_02016D60
_080106F0:
	ldrb r0, [r4, #31]
	bl sub_080111F8
	lsl r0, r0, #24
	cmp r0, #0
	beq _08010718
	ldrb r0, [r4, #31]
	strb r0, [r4, #30]
	mov r0, #2
	strb r0, [r4, #26]
	ldr r1, _08010714  @ =gSubState
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #62
	bl sub_0800D24C
	b _0801071E
_08010714:
	.4byte gSubState
_08010718:
	mov r0, #3
	bl sub_080107F8
_0801071E:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08010664

	THUMB_FUNC_START sub_08010724
sub_08010724: @ 0x08010724
	push {r4,lr}
	ldr r4, _0801075C  @ =gUnknown_02016D60
	ldrb r0, [r4, #29]
	cmp r0, #0
	beq _0801073A
	mov r0, #3
	strb r0, [r4, #31]
	add r1, r4, #0
	add r1, r1, #32
	mov r0, #1
	strb r0, [r1]
_0801073A:
	bl sub_08010DC0
	cmp r0, #0
	bne _080107C8
	ldrb r0, [r4, #27]
	cmp r0, #0
	bne _080107C8
	ldr r0, _08010760  @ =gNewKeys
	ldrh r1, [r0]
	cmp r1, #2
	beq _080107B0
	cmp r1, #2
	bgt _08010764
	cmp r1, #1
	beq _08010782
	b _080107C8
	.byte 0x00
	.byte 0x00
_0801075C:
	.4byte gUnknown_02016D60
_08010760:
	.4byte gNewKeys
_08010764:
	cmp r1, #16
	beq _0801076C
	cmp r1, #32
	bne _080107C8
_0801076C:
	mov r0, #32
	eor r1, r1, r0
	neg r0, r1
	lsr r0, r0, #31
	add r1, r4, #0
	add r1, r1, #32
	strb r0, [r1]
	mov r0, #61
	bl sub_0800D24C
	b _080107C8
_08010782:
	add r0, r4, #0
	add r0, r0, #32
	ldrb r0, [r0]
	cmp r0, #0
	bne _080107B0
	ldr r1, _080107AC  @ =gSubState
	mov r0, #3
	strb r0, [r1]
	ldrh r0, [r4, #4]
	add r0, r0, #60
	strh r0, [r4, #4]
	ldrb r0, [r4, #30]
	strb r0, [r4, #31]
	mov r0, #7
	mov r1, #0
	bl sub_08010104
	bl sub_080107D8
	b _080107C8
	.byte 0x00
	.byte 0x00
_080107AC:
	.4byte gSubState
_080107B0:
	ldr r1, _080107D0  @ =gSubState
	mov r0, #1
	strb r0, [r1]
	ldr r1, _080107D4  @ =gUnknown_02016D60
	mov r0, #1
	strb r0, [r1, #26]
	mov r0, #3
	bl sub_080100E4
	mov r0, #148
	bl sub_0800D24C
_080107C8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080107D0:
	.4byte gSubState
_080107D4:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_08010724

	THUMB_FUNC_START sub_080107D8
sub_080107D8: @ 0x080107D8
	push {lr}
	ldr r1, _080107F0  @ =gUnknown_02016D60
	mov r0, #60
	strh r0, [r1, #4]
	mov r0, #1
	strb r0, [r1, #21]
	strb r0, [r1, #22]
	ldr r0, _080107F4  @ =0x80040002
	bl sub_0800D24C
	pop {r0}
	bx r0
_080107F0:
	.4byte gUnknown_02016D60
_080107F4:
	.4byte 0x80040002
	THUMB_FUNC_END sub_080107D8

	THUMB_FUNC_START sub_080107F8
sub_080107F8: @ 0x080107F8
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r4, _08010828  @ =gUnknown_02016D60
	mov r5, #0
	strb r0, [r4, #31]
	bl sub_080100E4
	mov r0, #255
	strb r0, [r4, #30]
	strb r5, [r4, #26]
	ldr r1, _0801082C  @ =gUnknown_03005050
	mov r0, #2
	strb r0, [r1]
	ldr r1, _08010830  @ =gSubState
	mov r0, #1
	strb r0, [r1]
	mov r0, #148
	bl sub_0800D24C
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08010828:
	.4byte gUnknown_02016D60
_0801082C:
	.4byte gUnknown_03005050
_08010830:
	.4byte gSubState
	THUMB_FUNC_END sub_080107F8

	THUMB_FUNC_START sub_08010834
sub_08010834: @ 0x08010834
	push {lr}
	bl sub_0800BC50
	ldr r1, _08010850  @ =gUnknown_0842750C
	ldr r0, _08010854  @ =gSubState
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08010850:
	.4byte gUnknown_0842750C
_08010854:
	.4byte gSubState
	THUMB_FUNC_END sub_08010834

	THUMB_FUNC_START sub_08010858
sub_08010858: @ 0x08010858
	push {lr}
	ldr r3, _080108B4  @ =gUnknown_02016D60
	ldrb r0, [r3, #27]
	cmp r0, #0
	bne _080108B0
	ldr r1, _080108B8  @ =gUnknown_030004A0
	ldrh r2, [r1]
	ldr r0, _080108BC  @ =0x0000F9FF
	and r0, r0, r2
	mov r2, #0
	strh r0, [r1]
	ldr r0, _080108C0  @ =0x00001D05
	strh r0, [r1, #20]
	mov r0, #4
	strh r0, [r1, #36]
	strh r0, [r1, #34]
	strh r0, [r1, #24]
	strh r0, [r1, #22]
	ldr r1, _080108C4  @ =gUnknown_0200B250
	mov r0, #192
	lsl r0, r0, #18
	ldrb r0, [r0, #4]
	lsl r0, r0, #6
	add r0, r0, r1
	strb r2, [r0, #9]
	strb r2, [r0, #8]
	add r0, r3, #0
	add r0, r0, #32
	strb r2, [r0]
	add r0, r0, #1
	strb r2, [r0]
	add r0, r0, #1
	strb r2, [r0]
	strb r2, [r3, #3]
	strb r2, [r3, #2]
	mov r0, #3
	strb r0, [r3, #26]
	ldr r1, _080108C8  @ =gSubState
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #24
	bl sub_0800BA44
_080108B0:
	pop {r0}
	bx r0
_080108B4:
	.4byte gUnknown_02016D60
_080108B8:
	.4byte gUnknown_030004A0
_080108BC:
	.4byte 0x0000F9FF
_080108C0:
	.4byte 0x00001D05
_080108C4:
	.4byte gUnknown_0200B250
_080108C8:
	.4byte gSubState
	THUMB_FUNC_END sub_08010858

	THUMB_FUNC_START sub_080108CC
sub_080108CC: @ 0x080108CC
	push {r4-r6,lr}
	ldr r2, _080108FC  @ =gUnknown_02016D60
	ldrb r0, [r2, #27]
	add r4, r2, #0
	cmp r0, #0
	beq _080108DA
	b _08010A9E
_080108DA:
	ldr r0, _08010900  @ =gNewKeys
	ldrh r1, [r0]
	add r3, r0, #0
	cmp r1, #16
	beq _08010984
	cmp r1, #16
	bgt _08010912
	cmp r1, #2
	bne _080108EE
	b _08010A60
_080108EE:
	cmp r1, #2
	bgt _08010904
	cmp r1, #1
	bne _080108F8
	b _08010A26
_080108F8:
	b _08010A9E
	.byte 0x00
	.byte 0x00
_080108FC:
	.4byte gUnknown_02016D60
_08010900:
	.4byte gNewKeys
_08010904:
	cmp r1, #4
	bne _0801090A
	b _08010A16
_0801090A:
	cmp r1, #8
	bne _08010910
	b _08010A66
_08010910:
	b _08010A9E
_08010912:
	cmp r1, #128
	beq _08010936
	cmp r1, #128
	bgt _08010924
	cmp r1, #32
	beq _08010984
	cmp r1, #64
	beq _08010936
	b _08010A9E
_08010924:
	mov r0, #128
	lsl r0, r0, #1
	cmp r1, r0
	beq _08010A16
	mov r0, #128
	lsl r0, r0, #2
	cmp r1, r0
	beq _08010A1E
	b _08010A9E
_08010936:
	ldrb r0, [r4, #3]
	cmp r0, #5
	bne _0801094A
	ldrh r0, [r3]
	mov r1, #0
	cmp r0, #64
	bne _08010946
	mov r1, #4
_08010946:
	strb r1, [r4, #3]
	b _08010A0E
_0801094A:
	add r5, r4, #0
	ldrb r1, [r4, #3]
	ldrh r0, [r3]
	cmp r0, #64
	bne _08010958
	add r0, r1, #5
	b _0801095A
_08010958:
	add r0, r1, #7
_0801095A:
	mov r1, #6
	bl __modsi3
	strb r0, [r5, #3]
	ldr r2, _0801097C  @ =gUnknown_08427524
	ldrb r1, [r4, #2]
	ldr r0, _08010980  @ =gUnknown_0202A8C0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08010970
	add r1, r1, #13
_08010970:
	add r0, r1, r2
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, r0, #32
	strb r1, [r0]
	b _08010A0E
_0801097C:
	.4byte gUnknown_08427524
_08010980:
	.4byte gUnknown_0202A8C0
_08010984:
	ldrb r0, [r4, #3]
	cmp r0, #5
	bne _080109F4
	ldr r0, _080109A8  @ =gUnknown_0202A8C0
	ldrb r1, [r0]
	add r6, r0, #0
	cmp r1, #0
	bne _080109BA
	add r5, r4, #0
	add r0, r4, #0
	add r0, r0, #32
	ldrb r1, [r0]
	ldrh r0, [r3]
	cmp r0, #32
	bne _080109AC
	add r0, r1, #4
	b _080109AE
	.byte 0x00
	.byte 0x00
_080109A8:
	.4byte gUnknown_0202A8C0
_080109AC:
	add r0, r1, #6
_080109AE:
	mov r1, #5
	bl __modsi3
	add r1, r0, #0
	add r0, r5, #0
	b _080109D4
_080109BA:
	add r2, r4, #0
	add r0, r4, #0
	add r0, r0, #32
	ldrb r1, [r0]
	ldrh r0, [r3]
	cmp r0, #32
	bne _080109CC
	sub r1, r1, #1
	b _080109CE
_080109CC:
	add r1, r1, #1
_080109CE:
	mov r0, #3
	and r1, r1, r0
	add r0, r2, #0
_080109D4:
	add r0, r0, #32
	strb r1, [r0]
	ldr r2, _080109F0  @ =gUnknown_0842753E
	add r0, r4, #0
	add r0, r0, #32
	ldrb r1, [r0]
	ldrb r0, [r6]
	cmp r0, #0
	beq _080109E8
	add r1, r1, #5
_080109E8:
	add r0, r1, r2
	ldrb r0, [r0]
	b _08010A0C
	.byte 0x00
	.byte 0x00
_080109F0:
	.4byte gUnknown_0842753E
_080109F4:
	ldrb r1, [r4, #2]
	ldrh r0, [r3]
	cmp r0, #32
	bne _08010A02
	add r0, r1, #0
	add r0, r0, #12
	b _08010A06
_08010A02:
	add r0, r1, #0
	add r0, r0, #14
_08010A06:
	mov r1, #13
	bl __modsi3
_08010A0C:
	strb r0, [r4, #2]
_08010A0E:
	mov r0, #61
	bl sub_0800D24C
	b _08010A9E
_08010A16:
	mov r0, #3
	bl sub_08010CCC
	b _08010A9E
_08010A1E:
	mov r0, #4
	bl sub_08010CCC
	b _08010A9E
_08010A26:
	ldrb r0, [r2, #3]
	cmp r0, #5
	bne _08010A6C
	ldr r0, _08010A48  @ =gUnknown_0202A8C0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08010A4C
	add r0, r2, #0
	add r0, r0, #32
	ldrb r0, [r0]
	cmp r0, #3
	beq _08010A60
	cmp r0, #4
	beq _08010A66
	bl sub_08010CCC
	b _08010A9E
_08010A48:
	.4byte gUnknown_0202A8C0
_08010A4C:
	add r0, r2, #0
	add r0, r0, #32
	ldrb r0, [r0]
	cmp r0, #2
	beq _08010A60
	cmp r0, #3
	beq _08010A66
	bl sub_08010CCC
	b _08010A9E
_08010A60:
	bl sub_08010C9C
	b _08010A9E
_08010A66:
	bl sub_08010BFC
	b _08010A9E
_08010A6C:
	ldrb r0, [r2, #2]
	ldrb r1, [r2, #3]
	lsl r0, r0, #1
	lsl r1, r1, #6
	add r0, r0, r1
	lsl r0, r0, #1
	ldr r1, _08010A94  @ =0x0600E986
	add r0, r0, r1
	ldrh r0, [r0]
	lsr r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	beq _08010A98
	bl sub_08010C48
	mov r0, #147
	bl sub_0800D24C
	b _08010A9E
_08010A94:
	.4byte 0x0600E986
_08010A98:
	mov r0, #64
	bl sub_0800D24C
_08010A9E:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080108CC

	THUMB_FUNC_START sub_08010AA4
sub_08010AA4: @ 0x08010AA4
	push {r4,lr}
	mov r4, #0
	mov r3, #0
	ldr r2, _08010AFC  @ =gUnknown_0200B250
	mov r0, #192
	lsl r0, r0, #18
	ldrb r0, [r0, #4]
	lsl r0, r0, #6
	add r1, r2, #0
	add r1, r1, #8
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08010AE6
	cmp r0, #32
	bne _08010AEA
_08010AC4:
	add r0, r3, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
	mov r0, #192
	lsl r0, r0, #18
	ldrb r0, [r0, #4]
	lsl r0, r0, #6
	add r0, r3, r0
	add r1, r2, #0
	add r1, r1, #8
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08010AE6
	cmp r0, #32
	beq _08010AC4
	mov r4, #1
_08010AE6:
	cmp r4, #0
	beq _08010B04
_08010AEA:
	mov r0, #8
	mov r1, #0
	bl sub_08010104
	bl sub_080107D8
	ldr r1, _08010B00  @ =gSubState
	mov r0, #4
	b _08010B20
_08010AFC:
	.4byte gUnknown_0200B250
_08010B00:
	.4byte gSubState
_08010B04:
	mov r0, #192
	lsl r0, r0, #18
	ldrb r0, [r0, #4]
	bl sub_08011184
	mov r0, #3
	mov r1, #16
	bl sub_0800C0B0
	ldr r1, _08010B28  @ =gUnknown_03000520
	mov r0, #31
	strb r0, [r1, #7]
	ldr r1, _08010B2C  @ =gSubState
	mov r0, #3
_08010B20:
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
_08010B28:
	.4byte gUnknown_03000520
_08010B2C:
	.4byte gSubState
	THUMB_FUNC_END sub_08010AA4

	THUMB_FUNC_START sub_08010B30
sub_08010B30: @ 0x08010B30
	push {r4,lr}
	ldr r4, _08010B58  @ =gUnknown_03000520
	ldrb r2, [r4]
	cmp r2, #0
	bne _08010B50
	ldr r1, _08010B5C  @ =gUnknown_03005050
	mov r0, #2
	strb r0, [r1]
	ldr r0, _08010B60  @ =gSubState
	strb r2, [r0]
	mov r0, #2
	mov r1, #8
	bl sub_0800C0B0
	mov r0, #31
	strb r0, [r4, #7]
_08010B50:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08010B58:
	.4byte gUnknown_03000520
_08010B5C:
	.4byte gUnknown_03005050
_08010B60:
	.4byte gSubState
	THUMB_FUNC_END sub_08010B30

	THUMB_FUNC_START sub_08010B64
sub_08010B64: @ 0x08010B64
	push {r4,lr}
	bl sub_08010DC0
	cmp r0, #0
	bne _08010BC0
	mov r4, #192
	lsl r4, r4, #18
	ldrb r0, [r4, #4]
	bl sub_080112E0
	bl sub_0801017C
	ldr r1, _08010BA4  @ =gUnknown_0200B250
	ldrb r2, [r4, #4]
	lsl r0, r2, #6
	add r0, r0, r1
	add r0, r0, #63
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bgt _08010BAC
	add r0, r2, #0
	bl sub_08011184
	mov r0, #6
	mov r1, #0
	bl sub_08010104
	ldr r1, _08010BA8  @ =gSubState
	mov r0, #5
	b _08010BBE
_08010BA4:
	.4byte gUnknown_0200B250
_08010BA8:
	.4byte gSubState
_08010BAC:
	mov r0, #3
	mov r1, #16
	bl sub_0800C0B0
	ldr r1, _08010BC8  @ =gUnknown_03000520
	mov r0, #31
	strb r0, [r1, #7]
	ldr r1, _08010BCC  @ =gSubState
	mov r0, #3
_08010BBE:
	strb r0, [r1]
_08010BC0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08010BC8:
	.4byte gUnknown_03000520
_08010BCC:
	.4byte gSubState
	THUMB_FUNC_END sub_08010B64

	THUMB_FUNC_START sub_08010BD0
sub_08010BD0: @ 0x08010BD0
	push {lr}
	bl sub_0801022C
	cmp r0, #0
	bne _08010BEE
	mov r0, #3
	mov r1, #16
	bl sub_0800C0B0
	ldr r1, _08010BF4  @ =gUnknown_03000520
	mov r0, #31
	strb r0, [r1, #7]
	ldr r1, _08010BF8  @ =gSubState
	mov r0, #3
	strb r0, [r1]
_08010BEE:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08010BF4:
	.4byte gUnknown_03000520
_08010BF8:
	.4byte gSubState
	THUMB_FUNC_END sub_08010BD0

	THUMB_FUNC_START sub_08010BFC
sub_08010BFC: @ 0x08010BFC
	push {lr}
	ldr r0, _08010C2C  @ =gUnknown_0202A8C0
	ldrb r0, [r0]
	mov r2, #3
	cmp r0, #0
	bne _08010C0A
	mov r2, #4
_08010C0A:
	ldr r1, _08010C30  @ =gUnknown_02016D60
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08010C1C
	add r0, r1, #0
	add r0, r0, #32
	ldrb r0, [r0]
	cmp r2, r0
	beq _08010C34
_08010C1C:
	mov r0, #10
	strb r0, [r1, #2]
	mov r0, #5
	strb r0, [r1, #3]
	add r0, r1, #0
	add r0, r0, #32
	strb r2, [r0]
	b _08010C3A
_08010C2C:
	.4byte gUnknown_0202A8C0
_08010C30:
	.4byte gUnknown_02016D60
_08010C34:
	ldr r1, _08010C44  @ =gSubState
	mov r0, #2
	strb r0, [r1]
_08010C3A:
	mov r0, #62
	bl sub_0800D24C
	pop {r0}
	bx r0
_08010C44:
	.4byte gSubState
	THUMB_FUNC_END sub_08010BFC

	THUMB_FUNC_START sub_08010C48
sub_08010C48: @ 0x08010C48
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r1, r0, #24
	ldr r0, _08010C94  @ =gUnknown_02016D60
	add r5, r0, #0
	add r5, r5, #34
	ldrb r0, [r5]
	cmp r0, #5
	bls _08010C5E
	mov r0, #5
	strb r0, [r5]
_08010C5E:
	ldr r2, _08010C98  @ =gUnknown_0200B250
	mov r3, #192
	lsl r3, r3, #18
	ldrb r0, [r3, #4]
	lsl r0, r0, #6
	ldrb r4, [r5]
	add r0, r0, r4
	add r2, r2, #8
	add r0, r0, r2
	mov r4, #0
	strb r1, [r0]
	ldrb r1, [r5]
	ldrb r0, [r3, #4]
	lsl r0, r0, #6
	add r0, r0, #1
	add r1, r1, r0
	add r1, r1, r2
	strb r4, [r1]
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	ldrb r0, [r3, #4]
	bl sub_08010D1C
	pop {r4,r5}
	pop {r0}
	bx r0
_08010C94:
	.4byte gUnknown_02016D60
_08010C98:
	.4byte gUnknown_0200B250
	THUMB_FUNC_END sub_08010C48

	THUMB_FUNC_START sub_08010C9C
sub_08010C9C: @ 0x08010C9C
	push {r4,lr}
	ldr r0, _08010CC8  @ =gUnknown_02016D60
	add r4, r0, #0
	add r4, r4, #34
	ldrb r0, [r4]
	cmp r0, #0
	beq _08010CC0
	sub r0, r0, #1
	strb r0, [r4]
	mov r0, #0
	bl sub_08010C48
	ldrb r0, [r4]
	sub r0, r0, #1
	strb r0, [r4]
	mov r0, #148
	bl sub_0800D24C
_08010CC0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08010CC8:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_08010C9C

	THUMB_FUNC_START sub_08010CCC
sub_08010CCC: @ 0x08010CCC
	push {lr}
	add r2, r0, #0
	ldr r3, _08010D0C  @ =gUnknown_02016D60
	cmp r2, #1
	bls _08010CE2
	add r0, r3, #0
	add r0, r0, #33
	ldrb r1, [r0]
	mov r0, #1
	add r2, r0, #0
	eor r2, r2, r1
_08010CE2:
	add r0, r3, #0
	add r0, r0, #33
	ldrb r1, [r0]
	cmp r2, r1
	beq _08010D08
	strb r2, [r0]
	ldr r1, _08010D10  @ =gUnknown_08137F64
	lsl r0, r2, #2
	add r0, r0, r1
	ldr r2, [r0]
	ldr r0, _08010D14  @ =0x03000030
	ldr r0, [r0]
	add r0, r0, r2
	ldr r1, _08010D18  @ =0x0600E800
	bl LZ77UnCompVram
	mov r0, #66
	bl sub_0800D24C
_08010D08:
	pop {r0}
	bx r0
_08010D0C:
	.4byte gUnknown_02016D60
_08010D10:
	.4byte gUnknown_08137F64
_08010D14:
	.4byte 0x03000030
_08010D18:
	.4byte 0x0600E800
	THUMB_FUNC_END sub_08010CCC

	THUMB_FUNC_START sub_08010D1C
sub_08010D1C: @ 0x08010D1C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsl r0, r0, #24
	mov r1, #224
	lsl r1, r1, #19
	and r1, r1, r0
	lsr r7, r1, #24
	bl sub_0800EEA8
	add r5, r0, #0
	cmp r5, #0
	beq _08010DA2
	mov r0, #48
	strb r0, [r5, #2]
	lsl r2, r7, #1
	add r0, r2, r7
	lsl r0, r0, #7
	ldr r1, _08010DB0  @ =gUnknown_02002490
	add r0, r0, r1
	str r0, [r5, #8]
	mov r9, r2
	lsl r1, r7, #6
	ldr r0, _08010DB4  @ =gUnknown_0200B250
	add r0, r0, #8
	add r4, r1, r0
	mov r0, #128
	lsl r0, r0, #1
	mov r8, r0
	mov r6, #5
_08010D5A:
	ldrb r1, [r4]
	ldr r0, _08010DB8  @ =gUnknown_0202A8C0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08010D6C
	cmp r1, #128
	bls _08010D6C
	mov r0, r8
	orr r1, r1, r0
_08010D6C:
	mov r0, r8
	orr r1, r1, r0
	lsl r0, r1, #16
	lsr r0, r0, #16
	bl sub_0800EE50
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0800EF14
	add r4, r4, #1
	sub r6, r6, #1
	cmp r6, #0
	bge _08010D5A
	mov r1, r9
	add r0, r1, r7
	lsl r0, r0, #7
	ldr r1, _08010DBC  @ =0x06010000
	add r0, r0, r1
	ldr r1, [r5, #8]
	mov r2, #192
	lsl r2, r2, #1
	bl 0x080009F4
	add r0, r5, #0
	bl sub_0800EEE0
_08010DA2:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08010DB0:
	.4byte gUnknown_02002490
_08010DB4:
	.4byte gUnknown_0200B250
_08010DB8:
	.4byte gUnknown_0202A8C0
_08010DBC:
	.4byte 0x06010000
	THUMB_FUNC_END sub_08010D1C

	THUMB_FUNC_START sub_08010DC0
sub_08010DC0: @ 0x08010DC0
	ldr r1, _08010DD0  @ =gUnknown_02016D60
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _08010DD4
	sub r0, r0, #1
	strh r0, [r1, #4]
	mov r0, #1
	b _08010DD6
_08010DD0:
	.4byte gUnknown_02016D60
_08010DD4:
	mov r0, #0
_08010DD6:
	bx lr
	THUMB_FUNC_END sub_08010DC0

	THUMB_FUNC_START sub_08010DD8
sub_08010DD8: @ 0x08010DD8
	push {lr}
	mov r2, #1
	ldr r0, _08010DF0  @ =gUnknown_0202A8C0
	strb r2, [r0]
	mov r1, #192
	lsl r1, r1, #18
	ldrb r0, [r1, #5]
	cmp r2, r0
	bne _08010DF4
	mov r0, #0
	b _08010DFE
	.byte 0x00
	.byte 0x00
_08010DF0:
	.4byte gUnknown_0202A8C0
_08010DF4:
	strb r2, [r1, #5]
	add r0, r1, #0
	bl sub_08067A48
	mov r0, #1
_08010DFE:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08010DD8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08010E04
sub_08010E04: @ 0x08010E04
	push {r4-r6,lr}
	add r5, r0, #0
	lsl r1, r5, #4
	ldr r0, _08010E20  @ =gUnknown_0202A6F0
	add r4, r1, r0
	ldr r1, _08010E24  @ =gUnknown_0200B250
	lsl r0, r5, #6
	add r0, r0, r1
	ldr r3, [r0]
	add r6, r1, #0
	cmp r5, #2
	bls _08010E28
	mov r0, #0
	b _08010E8A
_08010E20:
	.4byte gUnknown_0202A6F0
_08010E24:
	.4byte gUnknown_0200B250
_08010E28:
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _08010E32
	mov r0, #1
	orr r3, r3, r0
_08010E32:
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _08010E3C
	mov r0, #2
	orr r3, r3, r0
_08010E3C:
	mov r0, #3
	and r0, r0, r3
	lsl r2, r0, #4
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _08010E56
	mov r0, #4
	and r0, r0, r3
	cmp r0, #0
	beq _08010E56
	mov r0, #64
	orr r2, r2, r0
	b _08010E5C
_08010E56:
	mov r0, #65
	neg r0, r0
	and r3, r3, r0
_08010E5C:
	ldrh r1, [r4]
	ldr r0, _08010E78  @ =0x0000FFFF
	cmp r1, r0
	beq _08010E7C
	mov r0, #8
	and r0, r0, r3
	cmp r0, #0
	beq _08010E7C
	mov r0, #128
	orr r2, r2, r0
	lsl r0, r2, #16
	lsr r2, r0, #16
	b _08010E82
	.byte 0x00
	.byte 0x00
_08010E78:
	.4byte 0x0000FFFF
_08010E7C:
	mov r0, #129
	neg r0, r0
	and r3, r3, r0
_08010E82:
	lsl r0, r5, #6
	add r0, r0, r6
	str r3, [r0]
	add r0, r2, #0
_08010E8A:
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08010E04

	THUMB_FUNC_START sub_08010E90
sub_08010E90: @ 0x08010E90
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	mov r6, #0
	str r6, [sp]
	ldr r4, _08010F3C  @ =gUnknown_0202D110
	ldr r2, _08010F40  @ =0x01000140
	mov r0, sp
	add r1, r4, #0
	bl CpuFastSet
	ldr r0, _08010F44  @ =0x0600E800
	mov r2, #160
	lsl r2, r2, #3
	add r1, r4, #0
	bl 0x080009F4
	mov r0, r8
	bl sub_080111F8
	lsl r0, r0, #24
	cmp r0, #0
	bne _08010ECC
	b _0801110E
_08010ECC:
	ldr r0, _08010F48  @ =0x03000030
	ldr r0, [r0]
	ldr r1, _08010F4C  @ =0x000A4890
	add r0, r0, r1
	add r1, r4, #0
	bl LZ77UnCompWram
	mov r0, r8
	bl sub_08010E04
	ldr r1, _08010F50  @ =gUnknown_0200B250
	mov r3, r8
	lsl r2, r3, #6
	add r1, r2, r1
	ldr r1, [r1]
	and r1, r1, r0
	lsl r1, r1, #16
	lsr r7, r1, #16
	add r5, r4, #0
	add r5, r5, #78
	mov r0, #128
	and r0, r0, r7
	mov r10, r2
	cmp r0, #0
	bne _08010F0E
	add r1, r4, #0
	add r1, r1, #142
	add r0, r4, #0
	add r0, r0, #144
	strh r6, [r0]
	strh r6, [r1]
	strh r6, [r5, #2]
	strh r6, [r5]
_08010F0E:
	mov r0, #64
	and r0, r0, r7
	cmp r0, #0
	bne _08010F26
	add r1, r4, #0
	add r1, r1, #146
	add r0, r4, #0
	add r0, r0, #148
	strh r6, [r0]
	strh r6, [r1]
	strh r6, [r5, #6]
	strh r6, [r5, #4]
_08010F26:
	add r5, r4, #0
	add r5, r5, #98
	mov r0, #48
	and r0, r0, r7
	cmp r0, #16
	beq _08010F7E
	cmp r0, #16
	bgt _08010F54
	cmp r0, #0
	beq _08010F5A
	b _08010F8E
_08010F3C:
	.4byte gUnknown_0202D110
_08010F40:
	.4byte 0x01000140
_08010F44:
	.4byte 0x0600E800
_08010F48:
	.4byte 0x03000030
_08010F4C:
	.4byte 0x000A4890
_08010F50:
	.4byte gUnknown_0200B250
_08010F54:
	cmp r0, #32
	beq _08010F6A
	b _08010F8E
_08010F5A:
	strh r6, [r5, #2]
	strh r6, [r5]
	add r1, r4, #0
	add r1, r1, #162
	add r0, r4, #0
	add r0, r0, #164
	strh r6, [r0]
	strh r6, [r1]
_08010F6A:
	mov r0, #0
	strh r0, [r5, #6]
	strh r0, [r5, #4]
	add r2, r5, #0
	add r2, r2, #68
	add r1, r5, #0
	add r1, r1, #70
	strh r0, [r1]
	strh r0, [r2]
	b _08010F8E
_08010F7E:
	strh r6, [r5, #2]
	strh r6, [r5]
	add r1, r4, #0
	add r1, r1, #162
	add r0, r4, #0
	add r0, r0, #164
	strh r6, [r0]
	strh r6, [r1]
_08010F8E:
	ldr r0, _080110C4  @ =gUnknown_0200B250
	mov r6, r10
	add r1, r6, r0
	ldr r2, [r1]
	mov r1, #128
	lsl r1, r1, #2
	and r2, r2, r1
	cmp r2, #0
	bne _08010FB0
	ldr r5, _080110C8  @ =gUnknown_0202D1F0
	add r0, r5, #0
	add r0, r0, #64
	strh r2, [r0]
	strh r2, [r5]
	add r0, r0, #2
	strh r2, [r0]
	strh r2, [r5, #2]
_08010FB0:
	mov r0, #192
	and r7, r7, r0
	ldr r2, _080110CC  @ =gUnknown_0202D23A
	ldrh r6, [r2]
	ldr r0, _080110D0  @ =gUnknown_0202A6F0
	mov r3, r8
	lsl r1, r3, #4
	add r3, r1, r0
	ldrh r4, [r3]
	ldr r0, _080110D4  @ =0x0000FFFF
	mov r9, r2
	str r1, [sp, #4]
	cmp r4, r0
	beq _08011014
	mov r0, #15
	ldrsb r0, [r3, r0]
	cmp r0, #0
	ble _08011014
	ldr r0, _080110D8  @ =0x000003E7
	cmp r4, r0
	bls _08010FDC
	add r4, r0, #0
_08010FDC:
	mov r5, r9
	sub r5, r5, #20
	cmp r7, #0
	beq _08010FE6
	sub r5, r5, #128
_08010FE6:
	add r0, r4, #0
	mov r1, #100
	bl __udivsi3
	add r0, r6, r0
	strh r0, [r5]
	add r0, r4, #0
	mov r1, #100
	bl __umodsi3
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, #10
	bl __udivsi3
	add r0, r6, r0
	strh r0, [r5, #2]
	add r0, r4, #0
	mov r1, #10
	bl __umodsi3
	add r0, r6, r0
	strh r0, [r5, #4]
_08011014:
	ldr r0, _080110C4  @ =gUnknown_0200B250
	add r0, r0, r10
	mov r8, r0
	ldrh r4, [r0, #6]
	ldr r0, _080110D8  @ =0x000003E7
	cmp r4, r0
	bls _08011024
	add r4, r0, #0
_08011024:
	mov r5, r9
	add r0, r4, #0
	mov r1, #100
	bl __udivsi3
	add r0, r6, r0
	strh r0, [r5]
	add r0, r4, #0
	mov r1, #100
	bl __umodsi3
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, #10
	bl __udivsi3
	add r0, r6, r0
	strh r0, [r5, #2]
	add r0, r4, #0
	mov r1, #10
	bl __umodsi3
	add r0, r6, r0
	strh r0, [r5, #4]
	mov r1, r8
	ldrb r4, [r1, #5]
	sub r5, r5, #192
	add r2, r5, #2
	mov r8, r2
	add r0, r4, #0
	mov r1, r8
	bl sub_08011120
	lsr r0, r4, #2
	add r1, r5, #0
	bl sub_08011120
	lsr r4, r4, #4
	add r1, r5, #4
	add r0, r4, #0
	bl sub_08011120
	ldr r0, _080110D0  @ =gUnknown_0202A6F0
	ldr r3, [sp, #4]
	add r0, r3, r0
	ldrb r1, [r0, #3]
	lsr r1, r1, #3
	ldrb r0, [r0, #2]
	lsr r3, r0, #3
	mov r4, #7
	and r4, r4, r0
	cmp r4, #4
	ble _08011092
	mov r4, #0
	add r3, r3, #1
_08011092:
	mov r6, #0
	add r5, r5, #30
	cmp r7, #0
	beq _0801109E
	mov r5, r8
	add r5, r5, #92
_0801109E:
	lsl r0, r1, #24
	mov r1, #255
	lsl r1, r1, #24
	add r0, r0, r1
	lsr r1, r0, #24
	asr r0, r0, #24
	mov r2, #1
	neg r2, r2
	cmp r0, r2
	beq _0801110E
_080110B2:
	lsl r0, r3, #24
	asr r0, r0, #24
	cmp r0, #0
	ble _080110DC
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
	mov r0, #1
	b _080110E8
_080110C4:
	.4byte gUnknown_0200B250
_080110C8:
	.4byte gUnknown_0202D1F0
_080110CC:
	.4byte gUnknown_0202D23A
_080110D0:
	.4byte gUnknown_0202A6F0
_080110D4:
	.4byte 0x0000FFFF
_080110D8:
	.4byte 0x000003E7
_080110DC:
	cmp r4, #0
	beq _080110E6
	mov r4, #0
	mov r0, #32
	b _080110E8
_080110E6:
	mov r0, #33
_080110E8:
	strh r0, [r5]
	add r5, r5, #2
	lsl r0, r6, #24
	mov r6, #128
	lsl r6, r6, #17
	add r0, r0, r6
	lsr r6, r0, #24
	asr r0, r0, #24
	cmp r0, #10
	bne _080110FE
	add r5, r5, #44
_080110FE:
	lsl r0, r1, #24
	mov r1, #255
	lsl r1, r1, #24
	add r0, r0, r1
	lsr r1, r0, #24
	asr r0, r0, #24
	cmp r0, r2
	bne _080110B2
_0801110E:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08010E90

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08011120
sub_08011120: @ 0x08011120
	push {r4,lr}
	add r3, r1, #0
	lsl r0, r0, #24
	mov r1, #192
	lsl r1, r1, #18
	and r1, r1, r0
	lsr r1, r1, #24
	cmp r1, #0
	bne _0801114C
	ldr r1, _08011144  @ =0x00003048
	add r0, r1, #0
	strh r0, [r3]
	add r1, r3, #0
	add r1, r1, #64
	ldr r2, _08011148  @ =0x00003068
	add r0, r2, #0
	strh r0, [r1]
	b _08011178
_08011144:
	.4byte 0x00003048
_08011148:
	.4byte 0x00003068
_0801114C:
	cmp r1, #0
	blt _08011178
	cmp r1, #2
	bgt _08011178
	mov r4, #176
	lsl r4, r4, #8
	cmp r1, #1
	bne _08011160
	mov r4, #192
	lsl r4, r4, #6
_08011160:
	ldrh r2, [r3]
	ldr r1, _08011180  @ =0x00000FFF
	add r0, r1, #0
	and r0, r0, r2
	orr r0, r0, r4
	strh r0, [r3]
	add r2, r3, #0
	add r2, r2, #64
	ldrh r0, [r2]
	and r1, r1, r0
	orr r4, r4, r1
	strh r4, [r2]
_08011178:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08011180:
	.4byte 0x00000FFF
	THUMB_FUNC_END sub_08011120

	THUMB_FUNC_START sub_08011184
sub_08011184: @ 0x08011184
	push {r4,r5,lr}
	lsl r0, r0, #24
	mov r5, #224
	lsl r5, r5, #19
	and r5, r5, r0
	lsr r5, r5, #24
	lsl r4, r5, #6
	ldr r0, _080111C0  @ =gUnknown_0200B250
	add r4, r4, r0
	add r0, r4, #0
	mov r1, #64
	bl zero_memory
	add r0, r4, #0
	add r0, r0, #36
	mov r1, #1
	strb r1, [r0]
	add r4, r4, #37
	strb r1, [r4]
	lsl r5, r5, #4
	ldr r0, _080111C4  @ =gUnknown_0202A6F0
	add r5, r5, r0
	add r0, r5, #0
	mov r1, #16
	bl zero_memory
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080111C0:
	.4byte gUnknown_0200B250
_080111C4:
	.4byte gUnknown_0202A6F0
	THUMB_FUNC_END sub_08011184

	THUMB_FUNC_START sub_080111C8
sub_080111C8: @ 0x080111C8
	push {r4,lr}
	mov r0, #0
	bl sub_080111F8
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	mov r0, #1
	bl sub_080111F8
	add r4, r4, r0
	lsl r4, r4, #24
	lsr r4, r4, #24
	mov r0, #2
	bl sub_080111F8
	add r4, r4, r0
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080111C8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080111F8
sub_080111F8: @ 0x080111F8
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #2
	bhi _08011224
	ldr r0, _08011220  @ =gUnknown_0200B250
	lsl r1, r1, #6
	add r1, r1, r0
	add r0, r1, #0
	add r0, r0, #63
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	ble _08011224
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq _08011224
	mov r0, #1
	b _08011226
	.byte 0x00
	.byte 0x00
_08011220:
	.4byte gUnknown_0200B250
_08011224:
	mov r0, #0
_08011226:
	bx lr
	THUMB_FUNC_END sub_080111F8

	THUMB_FUNC_START sub_08011228
sub_08011228: @ 0x08011228
	push {r4,r5,lr}
	add r4, r0, #0
	add r5, r1, #0
	mov r0, #7
	and r5, r5, r0
	and r4, r4, r0
	bl sub_080113D8
	add r0, r4, #0
	bl sub_08011344
	ldr r1, _08011270  @ =gUnknown_0200B250
	lsl r0, r4, #6
	add r1, r0, r1
	add r0, r1, #0
	add r0, r0, #63
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	ble _0801128A
	add r0, r5, #0
	bl sub_08067A18
	ldr r0, _08011274  @ =gUnknown_0202A6F0
	lsl r1, r4, #4
	add r1, r1, r0
	mov r0, #15
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _0801127C
	ldr r1, _08011278  @ =gUnknown_020167D0
	add r0, r5, #0
	bl sub_080679F0
	b _0801128A
_08011270:
	.4byte gUnknown_0200B250
_08011274:
	.4byte gUnknown_0202A6F0
_08011278:
	.4byte gUnknown_020167D0
_0801127C:
	mov r1, #128
	add r0, r5, #0
	orr r0, r0, r1
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_08067B68
_0801128A:
	add r0, r5, #0
	bl sub_08011344
	ldr r0, _080112B4  @ =gUnknown_0200B250
	lsl r1, r5, #6
	add r1, r1, r0
	add r1, r1, #63
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bgt _080112A4
	mov r0, #254
	strb r0, [r1]
_080112A4:
	bl sub_08011408
	add r0, r5, #0
	bl sub_08010D1C
	pop {r4,r5}
	pop {r0}
	bx r0
_080112B4:
	.4byte gUnknown_0200B250
	THUMB_FUNC_END sub_08011228

	THUMB_FUNC_START sub_080112B8
sub_080112B8: @ 0x080112B8
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	bl sub_080113D8
	add r0, r4, #0
	bl sub_08067A70
	add r0, r4, #0
	bl sub_08011184
	bl sub_08011408
	add r0, r4, #0
	bl sub_08010D1C
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080112B8

	THUMB_FUNC_START sub_080112E0
sub_080112E0: @ 0x080112E0
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	ldr r1, _08011320  @ =gUnknown_0200B250
	lsl r0, r4, #6
	add r0, r0, r1
	add r1, r0, #0
	add r1, r1, #36
	mov r2, #1
	strb r2, [r1]
	add r0, r0, #37
	strb r2, [r0]
	bl sub_080113D8
	mov r0, #128
	orr r4, r4, r0
	add r0, r4, #0
	bl sub_08067B68
	add r0, r4, #0
	bl sub_08011434
	add r0, r4, #0
	bl sub_08011344
	bl sub_08011408
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08011320:
	.4byte gUnknown_0200B250
	THUMB_FUNC_END sub_080112E0

	THUMB_FUNC_START sub_08011324
sub_08011324: @ 0x08011324
	push {lr}
	bl sub_080113D8
	mov r0, #0
	bl sub_08011344
	mov r0, #1
	bl sub_08011344
	mov r0, #2
	bl sub_08011344
	bl sub_08011408
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08011324

	THUMB_FUNC_START sub_08011344
sub_08011344: @ 0x08011344
	push {r4-r6,lr}
	lsl r0, r0, #24
	mov r1, #224
	lsl r1, r1, #19
	and r1, r1, r0
	lsr r4, r1, #24
	ldr r1, _08011398  @ =gUnknown_020167D0
	add r0, r4, #0
	bl sub_08067A04
	lsl r0, r0, #24
	lsr r6, r0, #24
	lsl r1, r4, #6
	ldr r0, _0801139C  @ =gUnknown_0200B250
	add r1, r1, r0
	add r0, r4, #0
	bl sub_08067A30
	lsl r0, r0, #24
	lsr r5, r0, #24
	lsl r0, r6, #24
	asr r1, r0, #24
	cmp r1, #0
	bge _08011376
	lsr r5, r0, #24
_08011376:
	lsl r0, r5, #24
	cmp r0, #0
	bgt _08011384
	cmp r1, #0
	ble _08011384
	mov r6, #255
	mov r5, #255
_08011384:
	lsl r0, r5, #24
	asr r1, r0, #24
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _080113A0
	cmp r1, #0
	beq _080113A6
	b _080113AC
	.byte 0x00
	.byte 0x00
_08011398:
	.4byte gUnknown_020167D0
_0801139C:
	.4byte gUnknown_0200B250
_080113A0:
	add r0, r4, #0
	bl sub_08067B68
_080113A6:
	add r0, r4, #0
	bl sub_08011184
_080113AC:
	ldr r1, _080113CC  @ =gUnknown_0200B250
	lsl r0, r4, #6
	add r0, r0, r1
	add r0, r0, #63
	strb r5, [r0]
	ldr r0, _080113D0  @ =gUnknown_0202A6F0
	lsl r1, r4, #4
	add r1, r1, r0
	strb r6, [r1, #15]
	ldr r0, _080113D4  @ =gUnknown_020167D0
	bl sub_08068260
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080113CC:
	.4byte gUnknown_0200B250
_080113D0:
	.4byte gUnknown_0202A6F0
_080113D4:
	.4byte gUnknown_020167D0
	THUMB_FUNC_END sub_08011344

	THUMB_FUNC_START sub_080113D8
sub_080113D8: @ 0x080113D8
	push {lr}
	ldr r0, _080113F8  @ =0x80070000
	bl sub_0800D24C
	ldr r1, _080113FC  @ =0x040000B0
	ldrh r2, [r1, #10]
	ldr r0, _08011400  @ =0x0000C5FF
	and r0, r0, r2
	strh r0, [r1, #10]
	ldrh r2, [r1, #10]
	ldr r0, _08011404  @ =0x00007FFF
	and r0, r0, r2
	strh r0, [r1, #10]
	ldrh r0, [r1, #10]
	pop {r0}
	bx r0
_080113F8:
	.4byte 0x80070000
_080113FC:
	.4byte 0x040000B0
_08011400:
	.4byte 0x0000C5FF
_08011404:
	.4byte 0x00007FFF
	THUMB_FUNC_END sub_080113D8

	THUMB_FUNC_START sub_08011408
sub_08011408: @ 0x08011408
	push {lr}
	ldr r0, _08011414  @ =0x80090000
	bl sub_0800D24C
	pop {r0}
	bx r0
_08011414:
	.4byte 0x80090000
	THUMB_FUNC_END sub_08011408

	THUMB_FUNC_START sub_08011418
sub_08011418: @ 0x08011418
	push {r4,lr}
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	bl sub_080113D8
	add r0, r4, #0
	bl sub_08011344
	bl sub_08011408
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08011418

	THUMB_FUNC_START sub_08011434
sub_08011434: @ 0x08011434
	push {r4,r5,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r0, #192
	and r0, r0, r4
	add r5, r0, #0
	mov r0, #7
	and r4, r4, r0
	cmp r5, #0
	bne _0801144C
	bl sub_080113D8
_0801144C:
	ldr r0, _08011478  @ =gUnknown_0200B250
	lsl r1, r4, #6
	add r1, r1, r0
	mov r0, #17
	strb r0, [r1, #4]
	add r2, r1, #0
	add r2, r2, #63
	mov r0, #3
	strb r0, [r2]
	add r0, r4, #0
	bl sub_08067A18
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r5, #0
	bne _08011470
	bl sub_08011408
_08011470:
	add r0, r4, #0
	pop {r4,r5}
	pop {r1}
	bx r1
_08011478:
	.4byte gUnknown_0200B250
	THUMB_FUNC_END sub_08011434

	THUMB_FUNC_START sub_0801147C
sub_0801147C: @ 0x0801147C
	push {lr}
	ldr r2, _08011490  @ =gUnknown_08427548
	ldrb r1, [r0, #10]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08011490:
	.4byte gUnknown_08427548
	THUMB_FUNC_END sub_0801147C

	THUMB_FUNC_START sub_08011494
sub_08011494: @ 0x08011494
	push {lr}
	ldr r2, _080114A8  @ =gUnknown_08427588
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_080114A8:
	.4byte gUnknown_08427588
	THUMB_FUNC_END sub_08011494

	THUMB_FUNC_START sub_080114AC
sub_080114AC: @ 0x080114AC
	push {r4-r6,lr}
	add r6, r0, #0
	mov r5, #0
	mov r4, #1
	strb r4, [r6, #20]
	ldrb r1, [r6, #28]
	mov r2, #4
	neg r2, r2
	add r0, r2, #0
	and r0, r0, r1
	mov r1, #2
	orr r0, r0, r1
	strb r0, [r6, #28]
	ldrb r3, [r6, #31]
	mov r1, #63
	add r0, r1, #0
	and r0, r0, r3
	mov r3, #64
	orr r0, r0, r3
	strb r0, [r6, #31]
	ldrb r0, [r6, #29]
	and r1, r1, r0
	orr r1, r1, r3
	strb r1, [r6, #29]
	ldrb r1, [r6, #11]
	add r3, r6, #0
	add r3, r3, #94
	mov r0, #3
	and r0, r0, r1
	ldrb r1, [r3]
	and r2, r2, r1
	orr r2, r2, r0
	strb r2, [r3]
	strb r5, [r6, #23]
	ldrb r1, [r6, #30]
	mov r0, #16
	neg r0, r0
	and r0, r0, r1
	mov r1, #6
	orr r0, r0, r1
	strb r0, [r6, #30]
	ldrb r0, [r6, #11]
	add r1, r6, #0
	add r1, r1, #33
	strb r0, [r1]
	add r1, r1, #70
	mov r0, #255
	strb r0, [r1]
	ldr r0, _08011528  @ =gUnknown_02016D60
	strb r4, [r0, #27]
	ldrb r2, [r6, #11]
	mov r0, #59
	mov r1, #3
	bl sub_0804C8A8
	str r0, [r6, #88]
	cmp r0, #0
	beq _08011522
	str r6, [r0, #84]
_08011522:
	pop {r4-r6}
	pop {r0}
	bx r0
_08011528:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_080114AC

	THUMB_FUNC_START sub_0801152C
sub_0801152C: @ 0x0801152C
	push {r4,lr}
	add r4, r0, #0
	add r2, r4, #0
	add r2, r2, #103
	ldrb r0, [r2]
	cmp r0, #255
	bne _080115A2
	ldrb r0, [r4, #23]
	cmp r0, #3
	beq _08011546
	cmp r0, #4
	beq _08011558
	b _08011556
_08011546:
	mov r0, #192
	lsl r0, r0, #18
	ldrb r1, [r0, #4]
	lsl r0, r1, #1
	add r0, r0, r1
	add r0, r0, #3
	ldrb r1, [r4, #11]
	add r0, r0, r1
_08011556:
	strb r0, [r2]
_08011558:
	add r1, r4, #0
	add r1, r1, #103
	ldrb r0, [r1]
	cmp r0, #255
	beq _08011590
	add r1, r0, #0
	lsl r1, r1, #2
	ldr r0, _08011588  @ =gUnknown_08138064
	add r1, r1, r0
	ldr r3, _0801158C  @ =gUnknown_08138094
	ldrb r2, [r4, #23]
	lsl r0, r2, #1
	add r0, r0, r2
	ldrb r2, [r4, #11]
	add r0, r0, r2
	add r0, r0, r3
	ldrb r2, [r0]
	add r0, r4, #0
	bl sub_0803D7E8
	ldrb r0, [r4, #23]
	add r0, r0, #1
	strb r0, [r4, #23]
	b _080115A2
_08011588:
	.4byte gUnknown_08138064
_0801158C:
	.4byte gUnknown_08138094
_08011590:
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	ldr r1, [r4, #88]
	cmp r1, #0
	beq _080115A2
	ldrb r0, [r1, #21]
	add r0, r0, #1
	strb r0, [r1, #21]
_080115A2:
	add r0, r4, #0
	bl sub_0803D8AC
	cmp r0, #0
	beq _080115B4
	add r1, r4, #0
	add r1, r1, #103
	mov r0, #255
	strb r0, [r1]
_080115B4:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801152C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080115BC
sub_080115BC: @ 0x080115BC
	push {r4,lr}
	add r4, r0, #0
	ldr r2, _080115D0  @ =gUnknown_02016D60
	ldrb r0, [r2, #30]
	ldrb r1, [r4, #11]
	cmp r0, r1
	bne _080115D4
	mov r2, #3
	b _080115DE
	.byte 0x00
	.byte 0x00
_080115D0:
	.4byte gUnknown_02016D60
_080115D4:
	ldrb r0, [r2, #31]
	mov r2, #6
	cmp r0, r1
	bne _080115DE
	mov r2, #4
_080115DE:
	ldrb r1, [r4, #30]
	mov r0, #16
	neg r0, r0
	and r0, r0, r1
	orr r0, r0, r2
	strb r0, [r4, #30]
	add r0, r4, #0
	bl sub_0803D8AC
	ldrb r1, [r4, #29]
	mov r0, #192
	orr r1, r1, r0
	strb r1, [r4, #29]
	ldr r2, _08011640  @ =gUnknown_02016D60
	ldrb r0, [r2, #31]
	ldrb r3, [r4, #11]
	cmp r0, r3
	bne _0801161C
	add r0, r2, #0
	add r0, r0, #36
	ldrb r0, [r0]
	cmp r0, #0
	beq _08011612
	mov r0, #63
	and r1, r1, r0
	strb r1, [r4, #29]
_08011612:
	add r0, r4, #0
	mov r1, #0
	mov r2, #12
	bl sub_08011EE8
_0801161C:
	ldr r1, _08011640  @ =gUnknown_02016D60
	ldrb r0, [r1, #30]
	cmp r0, #2
	bls _0801167A
	ldrb r2, [r1, #26]
	cmp r2, #3
	bne _0801164E
	mov r0, #1
	strb r0, [r1, #27]
	ldrb r0, [r1, #31]
	ldrb r1, [r4, #11]
	cmp r0, r1
	beq _08011644
	add r0, r4, #0
	bl sub_08012540
	b _0801167A
	.byte 0x00
	.byte 0x00
_08011640:
	.4byte gUnknown_02016D60
_08011644:
	mov r1, #6
	strb r2, [r4, #20]
	mov r0, #0
	strb r0, [r4, #21]
	b _08011660
_0801164E:
	ldrb r2, [r4, #11]
	ldrb r0, [r1, #31]
	cmp r0, r2
	bcc _0801165A
	ldrb r1, [r4, #11]
	b _08011660
_0801165A:
	add r0, r2, #3
	lsl r0, r0, #24
	lsr r1, r0, #24
_08011660:
	add r0, r4, #0
	add r0, r0, #103
	ldrb r2, [r0]
	cmp r1, r2
	beq _0801167A
	strb r1, [r0]
	lsl r1, r1, #2
	ldr r0, _08011680  @ =gUnknown_081380A6
	add r1, r1, r0
	add r0, r4, #0
	mov r2, #8
	bl sub_0803D7E8
_0801167A:
	pop {r4}
	pop {r0}
	bx r0
_08011680:
	.4byte gUnknown_081380A6
	THUMB_FUNC_END sub_080115BC

	THUMB_FUNC_START sub_08011684
sub_08011684: @ 0x08011684
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #21]
	cmp r0, #0
	beq _08011694
	cmp r0, #1
	beq _08011710
	b _08011744
_08011694:
	ldrb r2, [r4, #31]
	mov r1, #63
	add r0, r1, #0
	and r0, r0, r2
	strb r0, [r4, #31]
	ldrb r0, [r4, #29]
	and r1, r1, r0
	mov r0, #64
	orr r1, r1, r0
	strb r1, [r4, #29]
	add r0, r4, #0
	bl sub_0803D8AC
	cmp r0, #0
	beq _0801173E
	mov r0, #1
	strb r0, [r4, #21]
	mov r0, #32
	strb r0, [r4, #24]
	ldr r2, _080116F8  @ =gUnknown_030004A0
	ldrh r1, [r2]
	mov r3, #184
	lsl r3, r3, #6
	add r0, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	add r1, r2, #0
	add r1, r1, #96
	mov r0, #9
	strh r0, [r1]
	add r1, r1, #2
	ldr r0, _080116FC  @ =0x00001F3F
	strh r0, [r1]
	sub r1, r1, #10
	ldr r0, _08011700  @ =0x000008E8
	strh r0, [r1]
	add r1, r1, #4
	ldr r0, _08011704  @ =0x00002898
	strh r0, [r1]
	add r1, r1, #10
	ldr r0, _08011708  @ =0x00000844
	strh r0, [r1]
	add r1, r1, #2
	sub r0, r0, #56
	strh r0, [r1]
	ldr r0, _0801170C  @ =gUnknown_08427598
	bl sub_0804C808
	b _0801173E
	.byte 0x00
	.byte 0x00
_080116F8:
	.4byte gUnknown_030004A0
_080116FC:
	.4byte 0x00001F3F
_08011700:
	.4byte 0x000008E8
_08011704:
	.4byte 0x00002898
_08011708:
	.4byte 0x00000844
_0801170C:
	.4byte gUnknown_08427598
_08011710:
	ldrb r0, [r4, #24]
	cmp r0, #151
	bhi _08011730
	add r0, r0, #8
	strb r0, [r4, #24]
	ldr r1, _0801172C  @ =gUnknown_030004A0
	ldrb r0, [r4, #24]
	lsl r0, r0, #8
	mov r2, #152
	add r1, r1, #92
	orr r0, r0, r2
	strh r0, [r1]
	b _0801173E
	.byte 0x00
	.byte 0x00
_0801172C:
	.4byte gUnknown_030004A0
_08011730:
	ldr r2, _08011754  @ =gUnknown_030004A0
	ldrh r1, [r2]
	ldr r0, _08011758  @ =0x0000DFFF
	and r0, r0, r1
	strh r0, [r2]
	mov r0, #2
	strb r0, [r4, #21]
_0801173E:
	ldr r1, _0801175C  @ =gUnknown_02016D60
	mov r0, #1
	strb r0, [r1, #27]
_08011744:
	add r0, r4, #0
	mov r1, #0
	mov r2, #12
	bl sub_08011EE8
	pop {r4}
	pop {r0}
	bx r0
_08011754:
	.4byte gUnknown_030004A0
_08011758:
	.4byte 0x0000DFFF
_0801175C:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_08011684

	THUMB_FUNC_START sub_08011760
sub_08011760: @ 0x08011760
	push {lr}
	ldr r2, _08011774  @ =gUnknown_084275BC
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08011774:
	.4byte gUnknown_084275BC
	THUMB_FUNC_END sub_08011760

	THUMB_FUNC_START sub_08011778
sub_08011778: @ 0x08011778
	push {r4,lr}
	mov r4, #0
	mov r3, #1
	mov r1, #1
	strb r1, [r0, #20]
	ldrb r1, [r0, #31]
	mov r2, #192
	orr r1, r1, r2
	strb r1, [r0, #31]
	ldrb r1, [r0, #29]
	orr r1, r1, r2
	strb r1, [r0, #29]
	mov r1, #94
	add r1, r1, r0
	mov r12, r1
	ldrb r2, [r1]
	mov r1, #4
	neg r1, r1
	and r1, r1, r2
	orr r1, r1, r3
	mov r2, r12
	strb r1, [r2]
	strb r4, [r0, #24]
	add r2, r0, #0
	add r2, r2, #33
	mov r1, #17
	strb r1, [r2]
	bl sub_08011870
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08011778

	THUMB_FUNC_START sub_080117B8
sub_080117B8: @ 0x080117B8
	push {r4,r5,lr}
	add r4, r0, #0
	ldr r0, _0801181C  @ =gUnknown_02016D60
	mov r5, #1
	strb r5, [r0, #27]
	add r0, r4, #0
	bl sub_08011870
	ldrb r0, [r4, #21]
	cmp r0, #0
	beq _08011814
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #2
	orr r0, r0, r1
	strb r0, [r4, #28]
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	ldrb r2, [r4, #11]
	mov r0, #59
	mov r1, #4
	bl sub_0804C8A8
	str r0, [r4, #88]
	cmp r0, #0
	beq _08011814
	str r4, [r0, #84]
	ldr r0, [r4, #88]
	ldr r1, [r4, #84]
	str r1, [r0, #88]
	ldrb r2, [r4, #11]
	mov r0, #59
	mov r1, #4
	bl sub_0804C8A8
	add r1, r0, #0
	cmp r1, #0
	beq _08011814
	ldr r0, [r4, #88]
	str r0, [r1, #84]
	ldr r0, [r4, #84]
	str r0, [r1, #88]
	strb r5, [r1, #22]
_08011814:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801181C:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_080117B8

	THUMB_FUNC_START sub_08011820
sub_08011820: @ 0x08011820
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #24]
	cmp r0, #135
	bhi _08011834
	add r0, r0, #8
	strb r0, [r4, #24]
	ldr r1, _0801186C  @ =gUnknown_02016D60
	mov r0, #1
	strb r0, [r1, #27]
_08011834:
	add r0, r4, #0
	bl sub_08011870
	ldr r3, _0801186C  @ =gUnknown_02016D60
	ldrb r1, [r3, #28]
	mov r0, #3
	and r0, r0, r1
	ldrb r1, [r4, #11]
	eor r0, r0, r1
	neg r1, r0
	orr r1, r1, r0
	asr r1, r1, #31
	mov r0, #2
	and r1, r1, r0
	ldrb r2, [r4, #28]
	sub r0, r0, #6
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #28]
	ldrb r0, [r3, #26]
	cmp r0, #3
	bne _08011866
	add r0, r4, #0
	bl sub_08012540
_08011866:
	pop {r4}
	pop {r0}
	bx r0
_0801186C:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_08011820

	THUMB_FUNC_START sub_08011870
sub_08011870: @ 0x08011870
	push {r4,lr}
	add r4, r0, #0
	ldr r0, [r4, #84]
	cmp r0, #0
	bne _0801187E
	mov r0, #208
	b _08011892
_0801187E:
	add r1, r4, #0
	bl sub_0803D3D0
	ldrb r0, [r4, #24]
	add r0, r0, #16
	ldrh r1, [r4, #50]
	add r0, r0, r1
	strh r0, [r4, #50]
	ldrh r0, [r4, #54]
	add r0, r0, #20
_08011892:
	strh r0, [r4, #54]
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08011870

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801189C
sub_0801189C: @ 0x0801189C
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #20]
	cmp r0, #0
	bne _080118E2
	mov r0, #1
	strb r0, [r4, #20]
	ldrb r0, [r4, #31]
	mov r3, #192
	orr r0, r0, r3
	strb r0, [r4, #31]
	ldrb r1, [r4, #28]
	mov r2, #4
	neg r2, r2
	add r0, r2, #0
	and r0, r0, r1
	mov r1, #2
	orr r0, r0, r1
	strb r0, [r4, #28]
	ldrb r0, [r4, #29]
	orr r0, r0, r3
	strb r0, [r4, #29]
	add r1, r4, #0
	add r1, r1, #94
	ldrb r0, [r1]
	and r2, r2, r0
	strb r2, [r1]
	ldrb r0, [r4, #22]
	mov r1, #16
	cmp r0, #0
	beq _080118DC
	mov r1, #15
_080118DC:
	add r0, r4, #0
	add r0, r0, #33
	strb r1, [r0]
_080118E2:
	add r0, r4, #0
	bl sub_08011920
	ldr r3, _0801191C  @ =gUnknown_02016D60
	ldrb r1, [r3, #28]
	mov r0, #3
	and r0, r0, r1
	ldrb r1, [r4, #11]
	eor r0, r0, r1
	neg r1, r0
	orr r1, r1, r0
	asr r1, r1, #31
	mov r0, #2
	and r1, r1, r0
	ldrb r2, [r4, #28]
	sub r0, r0, #6
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #28]
	ldrb r0, [r3, #26]
	cmp r0, #3
	bne _08011914
	add r0, r4, #0
	bl sub_08012540
_08011914:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801191C:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_0801189C

	THUMB_FUNC_START sub_08011920
sub_08011920: @ 0x08011920
	push {r4,lr}
	add r4, r0, #0
	ldr r1, [r4, #84]
	cmp r1, #0
	beq _08011930
	ldr r0, [r4, #88]
	cmp r0, #0
	bne _08011936
_08011930:
	mov r0, #208
	strh r0, [r4, #54]
	b _0801195A
_08011936:
	add r0, r1, #0
	add r1, r4, #0
	bl sub_0803D3D0
	ldrh r0, [r4, #50]
	sub r0, r0, #48
	strh r0, [r4, #50]
	ldr r2, [r4, #88]
	mov r1, #50
	ldrsh r0, [r2, r1]
	add r0, r0, #16
	mov r3, #50
	ldrsh r1, [r4, r3]
	cmp r0, r1
	ble _0801195A
	ldrh r0, [r2, #50]
	add r0, r0, #16
	strh r0, [r4, #50]
_0801195A:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08011920

	THUMB_FUNC_START sub_08011960
sub_08011960: @ 0x08011960
	push {lr}
	add r2, r0, #0
	ldr r0, _08011988  @ =gUnknown_02016D60
	ldrb r1, [r0, #28]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08011974
	mov r0, #1
	strb r0, [r2, #20]
_08011974:
	ldr r0, _0801198C  @ =gUnknown_084275C8
	ldrb r1, [r2, #20]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0
_08011988:
	.4byte gUnknown_02016D60
_0801198C:
	.4byte gUnknown_084275C8
	THUMB_FUNC_END sub_08011960

	THUMB_FUNC_START sub_08011990
sub_08011990: @ 0x08011990
	mov r1, #2
	strb r1, [r0, #20]
	ldr r1, _0801199C  @ =gUnknown_02016D60
	mov r0, #195
	strb r0, [r1, #28]
	bx lr
_0801199C:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_08011990

	THUMB_FUNC_START sub_080119A0
sub_080119A0: @ 0x080119A0
	push {r4,lr}
	add r4, r0, #0
	ldr r3, _080119D4  @ =gUnknown_02016D60
	ldrb r2, [r3, #28]
	mov r0, #128
	and r0, r0, r2
	cmp r0, #0
	beq _08011A44
	mov r1, #3
	and r1, r1, r2
	strb r1, [r4, #11]
	mov r2, #64
	add r0, r1, #0
	orr r0, r0, r2
	strb r0, [r3, #28]
	mov r0, #1
	strb r0, [r3, #27]
	cmp r1, #2
	bls _080119E0
	ldr r2, _080119D8  @ =gUnknown_030004A0
	ldrh r1, [r2]
	ldr r0, _080119DC  @ =0x0000F9FF
	and r0, r0, r1
	strh r0, [r2]
	b _08011A44
	.byte 0x00
	.byte 0x00
_080119D4:
	.4byte gUnknown_02016D60
_080119D8:
	.4byte gUnknown_030004A0
_080119DC:
	.4byte 0x0000F9FF
_080119E0:
	ldr r0, _08011A4C  @ =gUnknown_030004A0
	mov r12, r0
	ldrh r1, [r0]
	mov r2, #152
	lsl r2, r2, #6
	add r0, r2, #0
	mov r3, #0
	orr r0, r0, r1
	mov r1, r12
	strh r0, [r1]
	add r1, r1, #96
	mov r0, #63
	strh r0, [r1]
	add r1, r1, #2
	ldr r0, _08011A50  @ =0x00001F39
	strh r0, [r1]
	sub r1, r1, #10
	mov r0, #240
	strh r0, [r1]
	ldr r2, _08011A54  @ =gUnknown_084275D4
	ldrb r0, [r4, #11]
	lsl r0, r0, #1
	add r0, r0, r2
	ldrh r1, [r0]
	mov r0, r12
	add r0, r0, #92
	strh r1, [r0]
	ldrb r0, [r4, #11]
	lsl r0, r0, #1
	add r0, r0, r2
	ldrb r0, [r0]
	neg r0, r0
	mov r1, r12
	strh r0, [r1, #36]
	strh r0, [r1, #24]
	ldrb r0, [r4, #11]
	lsl r0, r0, #1
	add r0, r0, r2
	ldrh r0, [r0]
	strb r0, [r4, #23]
	strb r3, [r4, #24]
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	ldrb r0, [r4, #11]
	bl sub_08010E90
	mov r0, #67
	bl sub_0800D24C
_08011A44:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08011A4C:
	.4byte gUnknown_030004A0
_08011A50:
	.4byte 0x00001F39
_08011A54:
	.4byte gUnknown_084275D4
	THUMB_FUNC_END sub_080119A0

	THUMB_FUNC_START sub_08011A58
sub_08011A58: @ 0x08011A58
	push {r4,r5,lr}
	add r4, r0, #0
	ldr r3, _08011A80  @ =gUnknown_02016D60
	mov r5, #1
	strb r5, [r3, #27]
	ldrb r0, [r4, #24]
	cmp r0, #39
	bhi _08011A88
	add r0, r0, #4
	strb r0, [r4, #24]
	ldr r3, _08011A84  @ =gUnknown_030004A0
	ldrb r0, [r4, #23]
	lsl r2, r0, #8
	ldrb r1, [r4, #24]
	add r0, r0, r1
	orr r2, r2, r0
	add r3, r3, #92
	strh r2, [r3]
	b _08011A98
	.byte 0x00
	.byte 0x00
_08011A80:
	.4byte gUnknown_02016D60
_08011A84:
	.4byte gUnknown_030004A0
_08011A88:
	ldr r2, _08011AA0  @ =gUnknown_030004A0
	ldrh r1, [r2]
	ldr r0, _08011AA4  @ =0x0000DFFF
	and r0, r0, r1
	strh r0, [r2]
	ldrb r0, [r4, #11]
	strb r0, [r3, #28]
	strb r5, [r4, #20]
_08011A98:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08011AA0:
	.4byte gUnknown_030004A0
_08011AA4:
	.4byte 0x0000DFFF
	THUMB_FUNC_END sub_08011A58

	THUMB_FUNC_START sub_08011AA8
sub_08011AA8: @ 0x08011AA8
	push {lr}
	ldr r2, _08011ABC  @ =gUnknown_084275DC
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08011ABC:
	.4byte gUnknown_084275DC
	THUMB_FUNC_END sub_08011AA8

	THUMB_FUNC_START sub_08011AC0
sub_08011AC0: @ 0x08011AC0
	mov r1, #1
	strb r1, [r0, #20]
	ldrb r2, [r0, #28]
	sub r1, r1, #5
	and r1, r1, r2
	mov r2, #2
	orr r1, r1, r2
	strb r1, [r0, #28]
	ldrb r1, [r0, #29]
	mov r2, #192
	orr r1, r1, r2
	strb r1, [r0, #29]
	bx lr
	THUMB_FUNC_END sub_08011AC0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08011ADC
sub_08011ADC: @ 0x08011ADC
	push {r4,lr}
	add r4, r0, #0
	ldr r1, _08011B04  @ =gUnknown_02016D60
	mov r2, #1
	strb r2, [r1, #27]
	ldrb r0, [r4, #21]
	cmp r0, #0
	bne _08011B5C
	strb r2, [r4, #21]
	ldrb r0, [r1, #26]
	strb r0, [r4, #24]
	ldrb r0, [r1, #26]
	cmp r0, #2
	beq _08011B12
	cmp r0, #2
	bgt _08011B08
	cmp r0, #0
	beq _08011B0E
	b _08011B1A
	.byte 0x00
	.byte 0x00
_08011B04:
	.4byte gUnknown_02016D60
_08011B08:
	cmp r0, #3
	beq _08011B16
	b _08011B1A
_08011B0E:
	mov r3, #0
	b _08011B1C
_08011B12:
	mov r3, #1
	b _08011B1C
_08011B16:
	mov r3, #3
	b _08011B1C
_08011B1A:
	mov r3, #2
_08011B1C:
	ldr r2, _08011B58  @ =gUnknown_081380C2
	ldrb r0, [r4, #11]
	lsl r0, r0, #1
	lsl r1, r3, #1
	add r1, r1, r3
	lsl r1, r1, #1
	add r0, r0, r1
	add r0, r0, r2
	ldrb r0, [r0]
	add r3, r4, #0
	add r3, r3, #98
	strh r0, [r3]
	ldrb r0, [r4, #11]
	lsl r0, r0, #1
	add r1, r1, #1
	add r0, r0, r1
	add r0, r0, r2
	ldrb r0, [r0]
	add r2, r4, #0
	add r2, r2, #101
	strb r0, [r2]
	ldrh r0, [r4, #50]
	add r1, r4, #0
	add r1, r1, #96
	strh r0, [r1]
	add r0, r4, #0
	mov r2, #20
	bl sub_0803D7E8
	b _08011B6E
_08011B58:
	.4byte gUnknown_081380C2
_08011B5C:
	add r0, r4, #0
	bl sub_0803D8AC
	cmp r0, #0
	beq _08011B6E
	mov r0, #2
	strb r0, [r4, #20]
	mov r0, #0
	strb r0, [r4, #21]
_08011B6E:
	add r0, r4, #0
	bl sub_08011BE0
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08011ADC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08011B7C
sub_08011B7C: @ 0x08011B7C
	push {r4,r5,lr}
	add r4, r0, #0
	bl sub_08011BE0
	ldr r5, _08011BB4  @ =gUnknown_02016D60
	ldrb r0, [r4, #24]
	ldrb r1, [r5, #26]
	cmp r0, r1
	beq _08011BAE
	ldrh r0, [r4, #50]
	add r1, r4, #0
	add r1, r1, #96
	strh r0, [r1]
	add r2, r4, #0
	add r2, r2, #98
	mov r0, #192
	strh r0, [r2]
	add r0, r4, #0
	mov r2, #20
	bl sub_0803D7E8
	mov r0, #3
	strb r0, [r4, #20]
	mov r0, #1
	strb r0, [r5, #27]
_08011BAE:
	pop {r4,r5}
	pop {r0}
	bx r0
_08011BB4:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_08011B7C

	THUMB_FUNC_START sub_08011BB8
sub_08011BB8: @ 0x08011BB8
	push {r4-r6,lr}
	add r4, r0, #0
	ldr r6, _08011BDC  @ =gUnknown_02016D60
	mov r5, #1
	strb r5, [r6, #27]
	bl sub_08011BE0
	add r0, r4, #0
	bl sub_0803D8AC
	cmp r0, #0
	beq _08011BD4
	strb r5, [r4, #20]
	strb r5, [r6, #29]
_08011BD4:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08011BDC:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_08011BB8

	THUMB_FUNC_START sub_08011BE0
sub_08011BE0: @ 0x08011BE0
	push {r4,lr}
	add r4, r0, #0
	ldr r1, _08011C0C  @ =gUnknown_02016D60
	ldrb r0, [r1, #31]
	cmp r0, #3
	bne _08011C10
	add r1, r1, #32
	ldrb r0, [r4, #11]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08011C10
	mov r1, #33
	neg r1, r1
	mov r2, #11
	neg r2, r2
	add r0, r4, #0
	bl sub_08011EE8
	add r1, r4, #0
	add r1, r1, #100
	mov r0, #0
	b _08011C16
_08011C0C:
	.4byte gUnknown_02016D60
_08011C10:
	add r1, r4, #0
	add r1, r1, #100
	mov r0, #1
_08011C16:
	strb r0, [r1]
	add r2, r4, #0
	add r2, r2, #101
	ldrb r0, [r1]
	ldrb r2, [r2]
	add r0, r0, r2
	add r1, r4, #0
	add r1, r1, #33
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08011BE0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08011C30
sub_08011C30: @ 0x08011C30
	push {lr}
	ldr r2, _08011C44  @ =gUnknown_084275EC
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08011C44:
	.4byte gUnknown_084275EC
	THUMB_FUNC_END sub_08011C30

	THUMB_FUNC_START sub_08011C48
sub_08011C48: @ 0x08011C48
	mov r1, #1
	strb r1, [r0, #20]
	mov r1, #255
	strb r1, [r0, #11]
	mov r1, #32
	strb r1, [r0, #23]
	bx lr
	THUMB_FUNC_END sub_08011C48

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08011C58
sub_08011C58: @ 0x08011C58
	add r1, r0, #0
	ldr r3, _08011C70  @ =gUnknown_02016D60
	ldrb r2, [r3, #26]
	ldrb r0, [r1, #11]
	cmp r0, r2
	beq _08011C6E
	strb r2, [r1, #11]
	mov r0, #2
	strb r0, [r1, #20]
	mov r0, #1
	strb r0, [r3, #27]
_08011C6E:
	bx lr
_08011C70:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_08011C58

	THUMB_FUNC_START sub_08011C74
sub_08011C74: @ 0x08011C74
	push {r4,lr}
	add r4, r0, #0
	ldr r1, _08011C88  @ =gUnknown_030004A0
	ldrh r0, [r1, #12]
	cmp r0, #31
	bhi _08011C8C
	add r0, r0, #2
	strh r0, [r1, #12]
	b _08011CA8
	.byte 0x00
	.byte 0x00
_08011C88:
	.4byte gUnknown_030004A0
_08011C8C:
	ldr r3, _08011CB4  @ =0x03000030
	ldr r2, _08011CB8  @ =gUnknown_084275FC
	ldr r0, _08011CBC  @ =gUnknown_02016D60
	ldrb r1, [r0, #26]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r0, [r3]
	ldr r1, [r1]
	add r0, r0, r1
	ldr r1, _08011CC0  @ =0x0600E000
	bl LZ77UnCompVram
	mov r0, #3
	strb r0, [r4, #20]
_08011CA8:
	ldr r1, _08011CBC  @ =gUnknown_02016D60
	mov r0, #1
	strb r0, [r1, #27]
	pop {r4}
	pop {r0}
	bx r0
_08011CB4:
	.4byte 0x03000030
_08011CB8:
	.4byte gUnknown_084275FC
_08011CBC:
	.4byte gUnknown_02016D60
_08011CC0:
	.4byte 0x0600E000
	THUMB_FUNC_END sub_08011C74

	THUMB_FUNC_START sub_08011CC4
sub_08011CC4: @ 0x08011CC4
	add r3, r0, #0
	ldr r2, _08011CD8  @ =gUnknown_030004A0
	ldrh r0, [r2, #12]
	add r1, r0, #0
	cmp r1, #0
	beq _08011CDC
	sub r0, r0, #2
	strh r0, [r2, #12]
	b _08011CE2
	.byte 0x00
	.byte 0x00
_08011CD8:
	.4byte gUnknown_030004A0
_08011CDC:
	strh r1, [r2, #12]
	mov r0, #1
	strb r0, [r3, #20]
_08011CE2:
	ldr r1, _08011CEC  @ =gUnknown_02016D60
	mov r0, #1
	strb r0, [r1, #27]
	bx lr
	.byte 0x00
	.byte 0x00
_08011CEC:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_08011CC4

	THUMB_FUNC_START sub_08011CF0
sub_08011CF0: @ 0x08011CF0
	push {r4,lr}
	add r2, r0, #0
	ldrb r0, [r2, #20]
	cmp r0, #0
	bne _08011D1A
	mov r0, #1
	strb r0, [r2, #20]
	ldrb r1, [r2, #31]
	mov r0, #63
	and r0, r0, r1
	mov r1, #128
	orr r0, r0, r1
	strb r0, [r2, #31]
	ldrb r0, [r2, #29]
	mov r1, #192
	orr r0, r0, r1
	strb r0, [r2, #29]
	add r1, r2, #0
	add r1, r1, #33
	mov r0, #14
	strb r0, [r1]
_08011D1A:
	ldr r4, _08011D48  @ =gUnknown_02016D60
	ldrb r0, [r4, #3]
	mov r3, #0
	cmp r0, #4
	bhi _08011D26
	mov r3, #2
_08011D26:
	ldrb r1, [r2, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	orr r0, r0, r3
	strb r0, [r2, #28]
	ldrb r0, [r4, #2]
	lsl r0, r0, #4
	add r0, r0, #24
	strh r0, [r2, #50]
	ldrb r0, [r4, #3]
	lsl r0, r0, #4
	add r0, r0, #53
	strh r0, [r2, #54]
	pop {r4}
	pop {r0}
	bx r0
_08011D48:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_08011CF0

	THUMB_FUNC_START sub_08011D4C
sub_08011D4C: @ 0x08011D4C
	push {lr}
	add r2, r0, #0
	ldrb r0, [r2, #20]
	cmp r0, #0
	bne _08011DB4
	mov r0, #1
	strb r0, [r2, #20]
	ldrb r1, [r2, #28]
	sub r0, r0, #5
	and r0, r0, r1
	mov r1, #2
	orr r0, r0, r1
	strb r0, [r2, #28]
	ldr r0, _08011D80  @ =gUnknown_0202A8C0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08011D84
	add r1, r2, #0
	add r1, r1, #33
	mov r0, #9
	strb r0, [r1]
	ldrb r0, [r2, #11]
	lsl r0, r0, #3
	sub r1, r1, #1
	b _08011DB2
	.byte 0x00
	.byte 0x00
_08011D80:
	.4byte gUnknown_0202A8C0
_08011D84:
	ldrb r0, [r2, #11]
	cmp r0, #4
	bne _08011D92
	add r0, r2, #0
	bl sub_08012540
	b _08011DD8
_08011D92:
	add r1, r2, #0
	add r1, r1, #33
	mov r0, #10
	strb r0, [r1]
	ldrb r1, [r2, #11]
	mov r0, #13
	mul r0, r1, r0
	ldrh r1, [r2, #50]
	add r0, r0, r1
	strh r0, [r2, #50]
	ldrb r1, [r2, #11]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #1
	add r1, r2, #0
	add r1, r1, #32
_08011DB2:
	strb r0, [r1]
_08011DB4:
	ldr r1, _08011DDC  @ =gUnknown_02016D60
	ldrb r0, [r1, #3]
	mov r3, #6
	cmp r0, #5
	bne _08011DCC
	add r0, r1, #0
	add r0, r0, #32
	ldrb r0, [r0]
	ldrb r1, [r2, #11]
	cmp r0, r1
	bne _08011DCC
	mov r3, #5
_08011DCC:
	ldrb r1, [r2, #30]
	mov r0, #16
	neg r0, r0
	and r0, r0, r1
	orr r0, r0, r3
	strb r0, [r2, #30]
_08011DD8:
	pop {r0}
	bx r0
_08011DDC:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_08011D4C

	THUMB_FUNC_START sub_08011DE0
sub_08011DE0: @ 0x08011DE0
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #20]
	cmp r0, #0
	bne _08011E12
	mov r0, #1
	strb r0, [r4, #20]
	ldrb r1, [r4, #28]
	sub r0, r0, #5
	and r0, r0, r1
	mov r1, #2
	orr r0, r0, r1
	strb r0, [r4, #28]
	ldrb r2, [r4, #31]
	mov r1, #63
	add r0, r1, #0
	and r0, r0, r2
	strb r0, [r4, #31]
	ldrb r0, [r4, #29]
	and r1, r1, r0
	strb r1, [r4, #29]
	add r0, r4, #0
	mov r1, #1
	bl 0x08003870
_08011E12:
	ldr r0, _08011E24  @ =gUnknown_02016D60
	add r1, r0, #0
	add r1, r1, #34
	ldrb r0, [r1]
	cmp r0, #5
	bhi _08011E28
	lsl r0, r0, #3
	add r0, r0, #36
	b _08011E2A
_08011E24:
	.4byte gUnknown_02016D60
_08011E28:
	mov r0, #76
_08011E2A:
	strh r0, [r4, #50]
	mov r0, #13
	strh r0, [r4, #54]
	ldr r2, _08011E54  @ =gUnknown_08427614
	ldr r0, _08011E58  @ =gUnknown_03000948
	ldrh r0, [r0]
	lsr r0, r0, #2
	mov r1, #7
	and r0, r0, r1
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	strh r0, [r4, #58]
	add r0, r4, #0
	bl 0x08003828
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08011E54:
	.4byte gUnknown_08427614
_08011E58:
	.4byte gUnknown_03000948
	THUMB_FUNC_END sub_08011DE0

	THUMB_FUNC_START sub_08011E5C
sub_08011E5C: @ 0x08011E5C
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #20]
	cmp r0, #0
	bne _08011E8C
	mov r0, #1
	strb r0, [r4, #20]
	ldrb r2, [r4, #29]
	mov r1, #63
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #128
	orr r0, r0, r2
	strb r0, [r4, #29]
	ldrb r0, [r4, #31]
	and r1, r1, r0
	orr r1, r1, r2
	strb r1, [r4, #31]
	add r0, r4, #0
	mov r1, #2
	bl 0x08003870
	ldr r0, _08011E98  @ =gUnknown_02016D60
	str r4, [r0, #8]
_08011E8C:
	add r0, r4, #0
	bl 0x08003828
	pop {r4}
	pop {r0}
	bx r0
_08011E98:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_08011E5C

	THUMB_FUNC_START sub_08011E9C
sub_08011E9C: @ 0x08011E9C
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #20]
	cmp r0, #0
	bne _08011EC8
	mov r0, #1
	strb r0, [r4, #20]
	ldrb r1, [r4, #28]
	sub r0, r0, #5
	and r0, r0, r1
	mov r1, #2
	orr r0, r0, r1
	strb r0, [r4, #28]
	ldrb r1, [r4, #11]
	mov r0, #176
	mul r0, r1, r0
	add r0, r0, #32
	strh r0, [r4, #50]
	add r0, r4, #0
	mov r1, #2
	bl 0x08003870
_08011EC8:
	ldr r0, _08011EE4  @ =gUnknown_0202A8C0
	ldrb r1, [r0]
	sub r1, r1, #1
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #2
	sub r0, r0, #2
	strh r0, [r4, #54]
	add r0, r4, #0
	bl 0x08003828
	pop {r4}
	pop {r0}
	bx r0
_08011EE4:
	.4byte gUnknown_0202A8C0
	THUMB_FUNC_END sub_08011E9C

	THUMB_FUNC_START sub_08011EE8
sub_08011EE8: @ 0x08011EE8
	push {r4,lr}
	add r4, r0, #0
	lsl r1, r1, #16
	lsr r1, r1, #16
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r0, _08011F24  @ =gUnknown_02016D60
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _08011F1E
	lsl r0, r1, #16
	asr r0, r0, #16
	ldrh r1, [r4, #50]
	add r0, r0, r1
	strh r0, [r3, #50]
	lsl r0, r2, #16
	asr r0, r0, #16
	ldrh r4, [r4, #54]
	add r0, r0, r4
	strh r0, [r3, #54]
	ldrb r1, [r3, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #2
	orr r0, r0, r1
	strb r0, [r3, #28]
_08011F1E:
	pop {r4}
	pop {r0}
	bx r0
_08011F24:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_08011EE8

	THUMB_FUNC_START sub_08011F28
sub_08011F28: @ 0x08011F28
	add r3, r0, #0
	ldrb r0, [r3, #20]
	cmp r0, #0
	bne _08011F78
	mov r0, #1
	strb r0, [r3, #20]
	ldrb r1, [r3, #29]
	sub r0, r0, #14
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	mov r1, #63
	and r0, r0, r1
	mov r2, #128
	orr r0, r0, r2
	strb r0, [r3, #29]
	ldrb r0, [r3, #31]
	and r1, r1, r0
	orr r1, r1, r2
	strb r1, [r3, #31]
	ldrb r1, [r3, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #2
	orr r0, r0, r1
	strb r0, [r3, #28]
	mov r0, #120
	strh r0, [r3, #50]
	ldrb r1, [r3, #11]
	sub r1, r1, #1
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #2
	sub r0, r0, #2
	strh r0, [r3, #54]
	add r1, r3, #0
	add r1, r1, #33
	mov r0, #11
	strb r0, [r1]
_08011F78:
	ldr r1, _08011F94  @ =gUnknown_0202A8C0
	ldrb r0, [r3, #11]
	mov r2, #1
	ldrb r1, [r1]
	cmp r0, r1
	bne _08011F86
	mov r2, #2
_08011F86:
	ldrb r1, [r3, #30]
	mov r0, #16
	neg r0, r0
	and r0, r0, r1
	orr r0, r0, r2
	strb r0, [r3, #30]
	bx lr
_08011F94:
	.4byte gUnknown_0202A8C0
	THUMB_FUNC_END sub_08011F28

	THUMB_FUNC_START sub_08011F98
sub_08011F98: @ 0x08011F98
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #11]
	cmp r0, #1
	beq _08011FCC
	cmp r0, #2
	beq _08011FDC
	ldr r2, _08011FC8  @ =gUnknown_02016D60
	add r0, r2, #0
	add r0, r0, #37
	ldrb r0, [r0]
	add r0, r0, #28
	add r1, r4, #0
	add r1, r1, #33
	strb r0, [r1]
	add r3, r4, #0
	add r3, r3, #94
	ldrb r1, [r3]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	b _08011FFA
	.byte 0x00
	.byte 0x00
_08011FC8:
	.4byte gUnknown_02016D60
_08011FCC:
	ldr r2, _08011FD8  @ =gUnknown_02016D60
	add r0, r2, #0
	add r0, r0, #38
	ldrb r0, [r0]
	add r0, r0, #30
	b _08011FE6
_08011FD8:
	.4byte gUnknown_02016D60
_08011FDC:
	ldr r2, _08012014  @ =gUnknown_02016D60
	add r0, r2, #0
	add r0, r0, #39
	ldrb r0, [r0]
	add r0, r0, #33
_08011FE6:
	add r1, r4, #0
	add r1, r1, #33
	strb r0, [r1]
	add r3, r4, #0
	add r3, r3, #94
	ldrb r1, [r3]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #2
_08011FFA:
	orr r0, r0, r1
	strb r0, [r3]
	add r3, r2, #0
	mov r1, #1
	strb r1, [r3, #27]
	ldrb r0, [r4, #20]
	cmp r0, #1
	beq _0801206E
	cmp r0, #1
	bgt _08012018
	cmp r0, #0
	beq _0801201E
	b _080120BC
_08012014:
	.4byte gUnknown_02016D60
_08012018:
	cmp r0, #2
	beq _08012090
	b _080120BC
_0801201E:
	strb r1, [r4, #20]
	ldrb r1, [r4, #31]
	mov r2, #63
	add r0, r2, #0
	and r0, r0, r1
	mov r1, #64
	orr r0, r0, r1
	strb r0, [r4, #31]
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #2
	orr r0, r0, r1
	strb r0, [r4, #28]
	ldrb r0, [r4, #29]
	and r2, r2, r0
	mov r0, #128
	orr r2, r2, r0
	strb r2, [r4, #29]
	ldr r1, _08012084  @ =gUnknown_081380E6
	ldrb r0, [r3, #31]
	lsl r0, r0, #2
	add r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #50]
	ldrb r0, [r3, #31]
	lsl r0, r0, #2
	add r1, r1, #2
	add r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #54]
	ldrb r1, [r3, #31]
	lsl r1, r1, #2
	ldr r0, _08012088  @ =gUnknown_081380DA
	add r1, r1, r0
	add r0, r4, #0
	mov r2, #16
	bl sub_0803D7E8
_0801206E:
	add r0, r4, #0
	bl sub_0803D8AC
	cmp r0, #0
	beq _080120CC
	mov r0, #0
	mov r1, #2
	strb r1, [r4, #20]
	ldr r1, _0801208C  @ =gUnknown_02016D60
	strb r0, [r1, #27]
	b _080120CC
_08012084:
	.4byte gUnknown_081380E6
_08012088:
	.4byte gUnknown_081380DA
_0801208C:
	.4byte gUnknown_02016D60
_08012090:
	add r0, r2, #0
	add r0, r0, #36
	ldrb r0, [r0]
	cmp r0, #2
	beq _080120CC
	mov r0, #3
	strb r0, [r4, #20]
	ldrb r1, [r2, #31]
	lsl r1, r1, #2
	ldr r0, _080120B8  @ =gUnknown_081380E6
	add r1, r1, r0
	add r0, r4, #0
	mov r2, #10
	bl sub_0803D7E8
	mov r0, #68
	bl sub_0800D24C
	b _080120CC
	.byte 0x00
	.byte 0x00
_080120B8:
	.4byte gUnknown_081380E6
_080120BC:
	add r0, r4, #0
	bl sub_0803D8AC
	cmp r0, #0
	beq _080120CC
	add r0, r4, #0
	bl sub_08012540
_080120CC:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08011F98

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080120D4
sub_080120D4: @ 0x080120D4
	push {r4-r7,lr}
	add r6, r0, #0
	ldrb r3, [r6, #20]
	cmp r3, #0
	bne _08012118
	mov r0, #1
	strb r0, [r6, #20]
	ldrb r2, [r6, #31]
	mov r1, #63
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #128
	orr r0, r0, r2
	strb r0, [r6, #31]
	ldrb r0, [r6, #29]
	and r1, r1, r0
	orr r1, r1, r2
	strb r1, [r6, #29]
	ldrb r1, [r6, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #192
	orr r0, r0, r1
	strb r0, [r6, #28]
	add r0, r6, #0
	add r0, r0, #32
	strb r3, [r0]
	mov r1, #38
	mov r0, #38
	strh r0, [r6, #50]
	add r0, r6, #0
	add r0, r0, #96
	strb r1, [r0]
_08012118:
	ldr r7, _080121A0  @ =gUnknown_02016D60
	add r1, r6, #0
	add r1, r1, #96
	ldrb r0, [r7, #28]
	add r3, r0, #0
	ldrb r2, [r1]
	cmp r3, r2
	bne _0801212A
	b _08012248
_0801212A:
	strb r0, [r1]
	ldrb r0, [r6, #28]
	mov r5, #4
	neg r5, r5
	add r2, r5, #0
	and r2, r2, r0
	strb r2, [r6, #28]
	cmp r3, #2
	bls _0801213E
	b _08012248
_0801213E:
	ldr r0, _080121A4  @ =gUnknown_0200B250
	ldrb r4, [r7, #28]
	lsl r1, r4, #6
	add r1, r1, r0
	add r1, r1, #63
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _08012248
	mov r3, #0
	ldrb r0, [r6, #11]
	cmp r0, #0
	beq _080121AC
	cmp r0, #1
	beq _080121F0
	add r0, r2, #0
	and r0, r0, r5
	mov r1, #2
	orr r0, r0, r1
	strb r0, [r6, #28]
	ldr r3, _080121A8  @ =gUnknown_0202A6F0
	lsl r0, r4, #4
	add r0, r0, r3
	ldrb r1, [r0, #6]
	add r1, r1, #12
	mov r0, #15
	and r1, r1, r0
	ldrb r2, [r6, #30]
	mov r0, #16
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r6, #30]
	add r2, r6, #0
	add r2, r2, #94
	ldrb r1, [r2]
	add r0, r5, #0
	and r0, r0, r1
	strb r0, [r2]
	ldrb r0, [r7, #28]
	lsl r0, r0, #4
	add r0, r0, r3
	ldrb r0, [r0, #4]
	mov r1, #7
	cmp r0, #0
	beq _08012234
	mov r1, #6
	b _08012234
	.byte 0x00
	.byte 0x00
_080121A0:
	.4byte gUnknown_02016D60
_080121A4:
	.4byte gUnknown_0200B250
_080121A8:
	.4byte gUnknown_0202A6F0
_080121AC:
	ldr r0, _080121EC  @ =gUnknown_0202A6F0
	lsl r1, r4, #4
	add r1, r1, r0
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _08012236
	mov r3, #4
	sub r0, r0, #1
	lsl r0, r0, #2
	add r1, r6, #0
	add r1, r1, #32
	strb r0, [r1]
	ldrb r1, [r6, #28]
	add r0, r5, #0
	and r0, r0, r1
	mov r1, #2
	orr r0, r0, r1
	strb r0, [r6, #28]
	ldrb r0, [r6, #30]
	mov r1, #15
	orr r0, r0, r1
	strb r0, [r6, #30]
	add r2, r6, #0
	add r2, r2, #94
	ldrb r1, [r2]
	add r0, r5, #0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r2]
	b _08012236
	.byte 0x00
	.byte 0x00
_080121EC:
	.4byte gUnknown_0202A6F0
_080121F0:
	ldr r0, _08012230  @ =gUnknown_0202A6F0
	lsl r1, r4, #4
	add r1, r1, r0
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _0801222A
	sub r0, r0, #1
	lsl r0, r0, #1
	add r1, r6, #0
	add r1, r1, #32
	strb r0, [r1]
	ldrb r1, [r6, #28]
	add r0, r5, #0
	and r0, r0, r1
	mov r1, #2
	orr r0, r0, r1
	strb r0, [r6, #28]
	ldrb r0, [r6, #30]
	mov r1, #15
	orr r0, r0, r1
	strb r0, [r6, #30]
	add r2, r6, #0
	add r2, r2, #94
	ldrb r1, [r2]
	add r0, r5, #0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r2]
_0801222A:
	mov r3, #5
	b _08012236
	.byte 0x00
	.byte 0x00
_08012230:
	.4byte gUnknown_0202A6F0
_08012234:
	add r3, r1, #0
_08012236:
	add r0, r6, #0
	add r1, r3, #0
	bl 0x08003870
	ldr r0, _080122B8  @ =gUnknown_030004A0
	ldrh r0, [r0, #24]
	neg r0, r0
	add r0, r0, #33
	strh r0, [r6, #54]
_08012248:
	ldrb r0, [r6, #11]
	cmp r0, #2
	bne _080122AA
	ldr r0, _080122BC  @ =gUnknown_03006A30
	ldr r4, [r0, #40]
	ldrb r1, [r6, #28]
	lsl r1, r1, #30
	lsr r1, r1, #30
	ldrb r2, [r4, #28]
	mov r3, #4
	neg r3, r3
	add r0, r3, #0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #28]
	ldrb r2, [r6, #29]
	lsr r2, r2, #6
	lsl r2, r2, #6
	ldrb r5, [r4, #29]
	mov r1, #63
	add r0, r1, #0
	and r0, r0, r5
	orr r0, r0, r2
	strb r0, [r4, #29]
	ldrb r0, [r6, #31]
	lsr r0, r0, #6
	lsl r0, r0, #6
	ldrb r2, [r4, #31]
	and r1, r1, r2
	orr r1, r1, r0
	strb r1, [r4, #31]
	add r0, r6, #0
	add r0, r0, #94
	ldrb r0, [r0]
	lsl r0, r0, #30
	add r2, r4, #0
	add r2, r2, #94
	lsr r0, r0, #30
	ldrb r1, [r2]
	and r3, r3, r1
	orr r3, r3, r0
	strb r3, [r2]
	mov r0, #145
	strh r0, [r4, #50]
	ldr r0, _080122B8  @ =gUnknown_030004A0
	ldrh r0, [r0, #24]
	neg r0, r0
	add r0, r0, #34
	strh r0, [r4, #54]
_080122AA:
	add r0, r6, #0
	bl 0x08003828
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080122B8:
	.4byte gUnknown_030004A0
_080122BC:
	.4byte gUnknown_03006A30
	THUMB_FUNC_END sub_080120D4

	THUMB_FUNC_START sub_080122C0
sub_080122C0: @ 0x080122C0
	push {r4,r5,lr}
	add r4, r0, #0
	ldrb r0, [r4, #20]
	cmp r0, #0
	bne _08012310
	mov r0, #1
	strb r0, [r4, #20]
	ldrb r1, [r4, #31]
	mov r0, #63
	and r0, r0, r1
	mov r1, #64
	orr r0, r0, r1
	strb r0, [r4, #31]
	ldrb r0, [r4, #11]
	cmp r0, #0
	beq _08012300
	ldrb r1, [r4, #30]
	mov r0, #16
	neg r0, r0
	and r0, r0, r1
	mov r1, #8
	orr r0, r0, r1
	strb r0, [r4, #30]
	add r1, r4, #0
	add r1, r1, #32
	mov r0, #224
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
	b _08012310
_08012300:
	ldrb r0, [r4, #29]
	mov r1, #192
	orr r0, r0, r1
	strb r0, [r4, #29]
	add r0, r4, #0
	mov r1, #3
	bl 0x08003870
_08012310:
	add r0, r4, #0
	bl 0x08003828
	ldrb r0, [r4, #28]
	mov r5, #4
	neg r5, r5
	add r3, r5, #0
	and r3, r3, r0
	strb r3, [r4, #28]
	ldrb r0, [r4, #11]
	cmp r0, #0
	beq _0801234C
	ldr r1, _08012344  @ =gUnknown_081380DA
	ldr r2, _08012348  @ =gUnknown_02016D60
	ldrb r0, [r2, #28]
	lsl r0, r0, #2
	add r1, r1, #2
	add r0, r0, r1
	ldrh r0, [r0]
	add r0, r0, #16
	strh r0, [r4, #54]
	add r2, r2, #36
	ldrb r0, [r2]
	cmp r0, #2
	bne _08012388
	b _0801237E
_08012344:
	.4byte gUnknown_081380DA
_08012348:
	.4byte gUnknown_02016D60
_0801234C:
	ldr r1, _08012390  @ =gUnknown_02016D60
	ldrb r0, [r1, #26]
	cmp r0, #0
	bne _08012388
	add r0, r1, #0
	add r0, r0, #36
	ldrb r0, [r0]
	cmp r0, #0
	bne _08012388
	ldrb r0, [r1, #28]
	cmp r0, #2
	bhi _08012388
	ldr r0, _08012394  @ =gUnknown_0200B250
	ldrb r2, [r1, #28]
	lsl r1, r2, #6
	add r1, r1, r0
	add r1, r1, #63
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _08012388
	ldr r0, _08012398  @ =gUnknown_081380F2
	add r0, r2, r0
	ldrb r0, [r0]
	strh r0, [r4, #54]
_0801237E:
	add r0, r3, #0
	and r0, r0, r5
	mov r1, #2
	orr r0, r0, r1
	strb r0, [r4, #28]
_08012388:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08012390:
	.4byte gUnknown_02016D60
_08012394:
	.4byte gUnknown_0200B250
_08012398:
	.4byte gUnknown_081380F2
	THUMB_FUNC_END sub_080122C0

	THUMB_FUNC_START sub_0801239C
sub_0801239C: @ 0x0801239C
	push {lr}
	sub sp, sp, #4
	mov r0, #0
	str r0, [sp]
	ldr r1, _080123B4  @ =gUnknown_03001050
	ldr r2, _080123B8  @ =0x05001000
	mov r0, sp
	bl CpuSet
	add sp, sp, #4
	pop {r0}
	bx r0
_080123B4:
	.4byte gUnknown_03001050
_080123B8:
	.4byte 0x05001000
	THUMB_FUNC_END sub_0801239C

	THUMB_FUNC_START sub_080123BC
sub_080123BC: @ 0x080123BC
	ldr r0, _080123DC  @ =gUnknown_03005960
	add r1, r0, #0
	add r1, r1, #64
	ldr r2, _080123E0  @ =gUnknown_03005AD8
	ldr r3, _080123E4  @ =gUnknown_0202A8C4
	cmp r0, r1
	bcs _080123D4
_080123CA:
	str r0, [r0, #4]
	str r0, [r0]
	add r0, r0, #8
	cmp r0, r1
	bcc _080123CA
_080123D4:
	mov r0, #0
	strb r0, [r2]
	strb r0, [r3]
	bx lr
_080123DC:
	.4byte gUnknown_03005960
_080123E0:
	.4byte gUnknown_03005AD8
_080123E4:
	.4byte gUnknown_0202A8C4
	THUMB_FUNC_END sub_080123BC

	THUMB_FUNC_START sub_080123E8
sub_080123E8: @ 0x080123E8
	ldr r1, _08012400  @ =gUnknown_03001050
	mov r2, #232
	lsl r2, r2, #6
	add r0, r1, r2
	cmp r1, r0
	bcs _0801240A
	add r2, r0, #0
_080123F6:
	ldr r0, [r1]
	cmp r0, #0
	bne _08012404
	add r0, r1, #0
	b _0801240C
_08012400:
	.4byte gUnknown_03001050
_08012404:
	add r1, r1, #128
	cmp r1, r2
	bcc _080123F6
_0801240A:
	mov r0, #0
_0801240C:
	bx lr
	THUMB_FUNC_END sub_080123E8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08012410
sub_08012410: @ 0x08012410
	add r1, r0, #0
	add r1, r1, #128
	ldr r0, _0801241C  @ =gUnknown_03004A50
	cmp r1, r0
	bcc _08012424
	b _0801243C
_0801241C:
	.4byte gUnknown_03004A50
_08012420:
	add r0, r1, #0
	b _0801243E
_08012424:
	mov r2, #192
	lsl r2, r2, #3
	add r0, r0, r2
	cmp r1, r0
	bcs _0801243C
	add r2, r0, #0
_08012430:
	ldr r0, [r1]
	cmp r0, #0
	beq _08012420
	add r1, r1, #128
	cmp r1, r2
	bcc _08012430
_0801243C:
	mov r0, #0
_0801243E:
	bx lr
	THUMB_FUNC_END sub_08012410

	THUMB_FUNC_START sub_08012440
sub_08012440: @ 0x08012440
	ldr r1, _08012458  @ =gUnknown_03004A50
	mov r2, #192
	lsl r2, r2, #3
	add r0, r1, r2
	cmp r1, r0
	bcs _08012462
	add r2, r0, #0
_0801244E:
	ldr r0, [r1]
	cmp r0, #0
	bne _0801245C
	add r0, r1, #0
	b _08012464
_08012458:
	.4byte gUnknown_03004A50
_0801245C:
	add r1, r1, #128
	cmp r1, r2
	bcc _0801244E
_08012462:
	mov r0, #0
_08012464:
	bx lr
	THUMB_FUNC_END sub_08012440

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08012468
sub_08012468: @ 0x08012468
	push {r4,r5,lr}
	lsl r0, r0, #16
	lsr r5, r0, #16
	bl sub_080123E8
	add r4, r0, #0
	cmp r4, #0
	beq _0801248A
	mov r0, #3
	strb r0, [r4, #8]
	strb r5, [r4, #9]
	mov r0, #4
	add r1, r4, #0
	bl sub_08012728
	add r0, r4, #0
	b _0801248C
_0801248A:
	mov r0, #0
_0801248C:
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08012468

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08012494
sub_08012494: @ 0x08012494
	push {r4,r5,lr}
	lsl r0, r0, #16
	lsr r5, r0, #16
	bl sub_080123E8
	add r4, r0, #0
	cmp r4, #0
	beq _080124B6
	mov r0, #4
	strb r0, [r4, #8]
	strb r5, [r4, #9]
	mov r0, #5
	add r1, r4, #0
	bl sub_08012728
	add r0, r4, #0
	b _080124B8
_080124B6:
	mov r0, #0
_080124B8:
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08012494

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080124C0
sub_080124C0: @ 0x080124C0
	push {r4,r5,lr}
	lsl r0, r0, #16
	lsr r5, r0, #16
	bl sub_080123E8
	add r4, r0, #0
	cmp r4, #0
	beq _080124E2
	mov r0, #4
	strb r0, [r4, #8]
	strb r5, [r4, #9]
	mov r0, #3
	add r1, r4, #0
	bl sub_08012728
	add r0, r4, #0
	b _080124E4
_080124E2:
	mov r0, #0
_080124E4:
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080124C0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080124EC
sub_080124EC: @ 0x080124EC
	push {r4-r7,lr}
	add r5, r0, #0
	lsl r1, r1, #24
	lsr r7, r1, #24
	lsl r2, r2, #24
	lsr r6, r2, #24
	bl sub_080123E8
	add r4, r0, #0
	cmp r4, #0
	beq _08012534
	ldrb r0, [r5, #8]
	strb r0, [r4, #8]
	ldrb r0, [r5, #9]
	strb r0, [r4, #9]
	strb r7, [r4, #10]
	strb r6, [r4, #11]
	add r0, r5, #0
	add r0, r0, #80
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, r0, #80
	strh r1, [r0]
	add r0, r5, #0
	add r0, r0, #82
	ldrb r0, [r0]
	add r1, r4, #0
	add r1, r1, #82
	strb r0, [r1]
	ldr r1, _0801253C  @ =gUnknown_081380F8
	ldrb r0, [r4, #8]
	add r0, r0, r1
	ldrb r0, [r0]
	add r1, r4, #0
	bl sub_08012728
_08012534:
	add r0, r4, #0
	pop {r4-r7}
	pop {r1}
	bx r1
_0801253C:
	.4byte gUnknown_081380F8
	THUMB_FUNC_END sub_080124EC

	THUMB_FUNC_START sub_08012540
sub_08012540: @ 0x08012540
	push {r4,lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0801254C
	b _080126B2
_0801254C:
	add r0, r4, #0
	add r0, r0, #83
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801255C
	add r0, r4, #0
	bl sub_0802C0EC
_0801255C:
	ldrb r0, [r4, #8]
	cmp r0, #4
	beq _08012608
	cmp r0, #4
	bgt _0801256C
	cmp r0, #3
	beq _08012572
	b _0801265A
_0801256C:
	cmp r0, #6
	beq _080125C8
	b _0801265A
_08012572:
	ldr r0, [r4, #96]
	cmp r0, #0
	beq _080125A2
	add r0, r0, #98
	ldrh r1, [r0]
	sub r1, r1, #1
	strh r1, [r0]
	add r1, r4, #0
	add r1, r1, #104
	ldrb r0, [r1]
	cmp r0, #0
	beq _080125A2
	ldr r2, [r4, #96]
	add r2, r2, #100
	ldr r3, _080125B8  @ =gUnknown_08137B10
	sub r0, r0, #1
	mov r1, #31
	and r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldr r1, [r0]
	ldrh r0, [r2]
	bic r0, r0, r1
	strh r0, [r2]
_080125A2:
	ldrb r0, [r4, #9]
	lsl r0, r0, #4
	ldr r1, _080125BC  @ =gUnknown_08138C20
	add r2, r0, r1
	ldrh r1, [r2]
	ldr r0, _080125C0  @ =0x0000FFFF
	cmp r1, r0
	bne _08012628
	ldr r0, _080125C4  @ =gUnknown_081390E0
	b _0801261A
	.byte 0x00
	.byte 0x00
_080125B8:
	.4byte gUnknown_08137B10
_080125BC:
	.4byte gUnknown_08138C20
_080125C0:
	.4byte 0x0000FFFF
_080125C4:
	.4byte gUnknown_081390E0
_080125C8:
	ldrb r1, [r4, #9]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #1
	ldr r1, _080125F0  @ =gUnknown_0813C72C
	add r2, r0, r1
	ldrh r1, [r2]
	ldr r0, _080125F4  @ =0x0000FFFF
	cmp r1, r0
	bne _080125FC
	ldr r0, _080125F8  @ =gUnknown_0813CBB4
	ldrh r1, [r2, #2]
	lsl r1, r1, #2
	add r1, r1, r0
	ldrb r2, [r4, #10]
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #1
	b _08012624
	.byte 0x00
	.byte 0x00
_080125F0:
	.4byte gUnknown_0813C72C
_080125F4:
	.4byte 0x0000FFFF
_080125F8:
	.4byte gUnknown_0813CBB4
_080125FC:
	ldr r0, _08012604  @ =0x0000FFFE
	cmp r1, r0
	beq _0801265A
	b _08012628
_08012604:
	.4byte 0x0000FFFE
_08012608:
	ldrb r0, [r4, #9]
	lsl r0, r0, #4
	ldr r1, _0801263C  @ =gUnknown_0813C16C
	add r2, r0, r1
	ldrh r1, [r2]
	ldr r0, _08012640  @ =0x0000FFFF
	cmp r1, r0
	bne _08012648
	ldr r0, _08012644  @ =gUnknown_0813C2EC
_0801261A:
	ldrh r1, [r2, #2]
	lsl r1, r1, #2
	add r1, r1, r0
	ldrb r0, [r4, #10]
	lsl r0, r0, #4
_08012624:
	ldr r1, [r1]
	add r2, r1, r0
_08012628:
	ldrh r1, [r2, #2]
	mov r0, #128
	lsl r0, r0, #8
	and r0, r0, r1
	cmp r0, #0
	bne _0801265A
	ldrh r0, [r2, #2]
	bl sub_0802C39C
	b _0801265A
_0801263C:
	.4byte gUnknown_0813C16C
_08012640:
	.4byte 0x0000FFFF
_08012644:
	.4byte gUnknown_0813C2EC
_08012648:
	ldrh r1, [r2, #2]
	mov r0, #128
	lsl r0, r0, #8
	and r0, r0, r1
	cmp r0, #0
	bne _0801265A
	ldrh r0, [r2, #2]
	bl sub_0802C39C
_0801265A:
	ldr r1, [r4]
	ldr r0, [r4, #4]
	str r0, [r1, #4]
	ldr r1, [r4, #4]
	ldr r0, [r4]
	str r0, [r1]
	ldr r1, _080126B8  @ =gUnknown_0300044C
	ldr r0, [r1]
	cmp r4, r0
	bne _08012672
	ldr r0, [r4]
	str r0, [r1]
_08012672:
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	strb r0, [r4, #28]
	add r1, r4, #0
	add r1, r1, #60
	mov r0, #0
	strb r0, [r1]
	add r1, r1, #5
	strb r0, [r1]
	add r1, r1, #1
	strb r0, [r1]
	add r1, r1, #3
	strb r0, [r1]
	str r0, [r4, #4]
	ldr r3, _080126BC  @ =gUnknown_0202A370
	ldr r2, _080126C0  @ =gUnknown_0202A8C4
	ldrb r1, [r2]
	add r0, r1, #1
	strb r0, [r2]
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r1, r1, r3
	ldr r0, _080126C4  @ =gUnknown_03001050
	sub r0, r4, r0
	lsr r0, r0, #7
	strb r0, [r1]
	ldr r1, _080126C8  @ =gUnknown_03005AD8
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
_080126B2:
	pop {r4}
	pop {r0}
	bx r0
_080126B8:
	.4byte gUnknown_0300044C
_080126BC:
	.4byte gUnknown_0202A370
_080126C0:
	.4byte gUnknown_0202A8C4
_080126C4:
	.4byte gUnknown_03001050
_080126C8:
	.4byte gUnknown_03005AD8
	THUMB_FUNC_END sub_08012540

	THUMB_FUNC_START sub_080126CC
sub_080126CC: @ 0x080126CC
	push {r4,r5,lr}
	sub sp, sp, #4
	ldr r5, _08012718  @ =gUnknown_0202A370
	ldr r1, _0801271C  @ =gUnknown_0202A8C4
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #255
	beq _08012708
	add r4, r1, #0
_080126E4:
	mov r0, #0
	str r0, [sp]
	ldrb r1, [r5]
	lsl r1, r1, #7
	ldr r0, _08012720  @ =gUnknown_03001050
	add r1, r1, r0
	add r5, r5, #1
	mov r0, sp
	ldr r2, _08012724  @ =0x05000020
	bl CpuSet
	ldrb r0, [r4]
	sub r0, r0, #1
	strb r0, [r4]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #255
	bne _080126E4
_08012708:
	ldr r1, _0801271C  @ =gUnknown_0202A8C4
	mov r0, #0
	strb r0, [r1]
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08012718:
	.4byte gUnknown_0202A370
_0801271C:
	.4byte gUnknown_0202A8C4
_08012720:
	.4byte gUnknown_03001050
_08012724:
	.4byte 0x05000020
	THUMB_FUNC_END sub_080126CC

	THUMB_FUNC_START sub_08012728
sub_08012728: @ 0x08012728
	add r2, r1, #0
	lsl r0, r0, #24
	lsr r0, r0, #21
	ldr r1, _08012760  @ =gUnknown_03005960
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r1, [r0]
	str r1, [r2]
	str r2, [r0]
	str r2, [r1, #4]
	ldr r0, [r2, #72]
	cmp r0, #0
	bne _08012746
	ldr r0, _08012764  @ =gUnknown_0813E7D4
	str r0, [r2, #72]
_08012746:
	add r2, r2, #94
	ldrb r1, [r2]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #2
	orr r0, r0, r1
	strb r0, [r2]
	ldr r1, _08012768  @ =gUnknown_03005AD8
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	bx lr
_08012760:
	.4byte gUnknown_03005960
_08012764:
	.4byte gUnknown_0813E7D4
_08012768:
	.4byte gUnknown_03005AD8
	THUMB_FUNC_END sub_08012728

	THUMB_FUNC_START sub_0801276C
sub_0801276C: @ 0x0801276C
	push {lr}
	lsl r0, r0, #24
	lsr r3, r0, #24
	lsl r0, r3, #3
	ldr r1, _080127A0  @ =gUnknown_03005960
	add r0, r0, r1
	ldr r2, [r0, #4]
	ldr r0, [r0]
	cmp r2, r0
	beq _0801279C
	ldr r1, [r2]
	ldr r0, [r2, #4]
	str r0, [r1, #4]
	ldr r1, [r2, #4]
	ldr r0, [r2]
	str r0, [r1]
	ldr r1, _080127A4  @ =gUnknown_03005AD8
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	add r0, r3, #0
	add r1, r2, #0
	bl sub_08012728
_0801279C:
	pop {r0}
	bx r0
_080127A0:
	.4byte gUnknown_03005960
_080127A4:
	.4byte gUnknown_03005AD8
	THUMB_FUNC_END sub_0801276C

	THUMB_FUNC_START sub_080127A8
sub_080127A8: @ 0x080127A8
	lsl r0, r0, #24
	lsr r3, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #21
	ldr r0, _080127C4  @ =gUnknown_03005960
	add r1, r1, r0
	ldr r2, [r1, #4]
	cmp r2, r1
	beq _080127CE
_080127BA:
	ldrb r0, [r2, #9]
	cmp r0, r3
	bne _080127C8
	add r0, r2, #0
	b _080127D0
_080127C4:
	.4byte gUnknown_03005960
_080127C8:
	ldr r2, [r2, #4]
	cmp r2, r1
	bne _080127BA
_080127CE:
	mov r0, #0
_080127D0:
	bx lr
	THUMB_FUNC_END sub_080127A8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080127D4
sub_080127D4: @ 0x080127D4
	add r3, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #21
	ldr r0, _080127F0  @ =gUnknown_03005960
	add r1, r1, r0
	ldr r2, [r3, #4]
	cmp r2, r1
	beq _080127FA
	ldrb r3, [r3, #9]
_080127E6:
	ldrb r0, [r2, #9]
	cmp r0, r3
	bne _080127F4
	add r0, r2, #0
	b _080127FC
_080127F0:
	.4byte gUnknown_03005960
_080127F4:
	ldr r2, [r2, #4]
	cmp r2, r1
	bne _080127E6
_080127FA:
	mov r0, #0
_080127FC:
	bx lr
	THUMB_FUNC_END sub_080127D4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08012800
sub_08012800: @ 0x08012800
	ldr r1, _08012814  @ =gUnknown_03000940
	ldr r0, _08012818  @ =gHeldKeys
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0801281C  @ =gUnknown_03005E10
	ldr r0, _08012820  @ =gNewKeys
	ldrh r0, [r0]
	strh r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_08012814:
	.4byte gUnknown_03000940
_08012818:
	.4byte gHeldKeys
_0801281C:
	.4byte gUnknown_03005E10
_08012820:
	.4byte gNewKeys
	THUMB_FUNC_END sub_08012800

	THUMB_FUNC_START sub_08012824
sub_08012824: @ 0x08012824
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsl r0, r0, #24
	lsr r7, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r8, r1
	lsl r2, r2, #24
	lsr r2, r2, #24
	mov r9, r2
	bl sub_080123E8
	add r6, r0, #0
	cmp r6, #0
	beq _080128D6
	mov r1, #0
	mov r0, #1
	strb r0, [r6, #8]
	strb r1, [r6, #9]
	strb r7, [r6, #10]
	ldrb r1, [r6, #31]
	mov r4, #63
	add r0, r4, #0
	and r0, r0, r1
	mov r5, #128
	orr r0, r0, r5
	strb r0, [r6, #31]
	lsl r1, r7, #5
	add r0, r6, #0
	add r0, r0, #32
	strb r1, [r0]
	add r1, r6, #0
	add r1, r1, #60
	add r0, r7, #0
	orr r0, r0, r5
	strb r0, [r1]
	add r1, r1, #10
	mov r0, #2
	strb r0, [r1]
	add r2, r7, #7
	mov r0, #15
	add r1, r2, #0
	and r1, r1, r0
	ldrb r3, [r6, #30]
	mov r0, #16
	neg r0, r0
	and r0, r0, r3
	orr r0, r0, r1
	mov r1, #15
	and r2, r2, r1
	lsl r2, r2, #4
	and r0, r0, r1
	orr r0, r0, r2
	strb r0, [r6, #30]
	ldrb r0, [r6, #29]
	and r4, r4, r0
	orr r4, r4, r5
	strb r4, [r6, #29]
	mov r1, r8
	lsl r0, r1, #4
	add r0, r0, #8
	strh r0, [r6, #50]
	mov r1, r9
	lsl r0, r1, #4
	add r0, r0, #8
	strh r0, [r6, #54]
	add r1, r6, #0
	add r1, r1, #42
	mov r0, #4
	strb r0, [r1]
	ldr r0, _080128E4  @ =gUnknown_03006C80
	add r0, r0, #96
	add r0, r7, r0
	ldrb r0, [r0]
	add r1, r1, #27
	strb r0, [r1]
	mov r0, #1
	add r1, r6, #0
	bl sub_08012728
	ldr r1, _080128E8  @ =gUnknown_03006A30
	lsl r0, r7, #3
	add r0, r0, r7
	lsl r0, r0, #4
	add r1, r1, #40
	add r0, r0, r1
	str r6, [r0]
_080128D6:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080128E4:
	.4byte gUnknown_03006C80
_080128E8:
	.4byte gUnknown_03006A30
	THUMB_FUNC_END sub_08012824

	THUMB_FUNC_START sub_080128EC
sub_080128EC: @ 0x080128EC
	push {r4-r7,lr}
	sub sp, sp, #8
	add r3, r0, #0
	ldr r0, _08012930  @ =gUnknown_03006C80
	ldrb r1, [r0, #2]
	cmp r1, #0
	beq _0801293C
	add r0, r0, #79
	ldrb r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _0801293C
	mov r0, #15
	and r0, r0, r1
	lsl r0, r0, #3
	ldr r1, _08012934  @ =gUnknown_0842B8E4
	add r5, r0, r1
	mov r6, #0
	ldr r2, _08012938  @ =gUnknown_0201F000
_08012914:
	mov r0, sp
	add r1, r0, r6
	ldrb r0, [r5]
	strb r0, [r1]
	add r5, r5, #1
	add r6, r6, #1
	cmp r6, #7
	bls _08012914
	ldr r0, [r2]
	mov r1, #1
	orr r0, r0, r1
	str r0, [r2]
	b _080129AE
	.byte 0x00
	.byte 0x00
_08012930:
	.4byte gUnknown_03006C80
_08012934:
	.4byte gUnknown_0842B8E4
_08012938:
	.4byte gUnknown_0201F000
_0801293C:
	ldr r0, [r3, #20]
	ldr r0, [r0, #24]
	cmp r0, #0
	beq _0801295C
	add r5, r0, #0
	ldrb r4, [r5]
	add r5, r5, #1
	bl 0x0800099C
	add r1, r4, #0
	bl __umodsi3
	add r4, r0, #0
	lsl r0, r4, #3
	add r5, r5, r0
	b _08012960
_0801295C:
	add r5, r3, #0
	add r5, r5, #12
_08012960:
	mov r6, #0
	ldr r2, _08012A10  @ =gUnknown_03006C80
_08012964:
	mov r0, sp
	add r1, r0, r6
	ldrb r0, [r5]
	strb r0, [r1]
	add r5, r5, #1
	add r6, r6, #1
	cmp r6, #7
	bls _08012964
	ldrb r0, [r2, #2]
	cmp r0, #0
	bne _080129AE
	mov r6, #3
	mov r5, sp
	add r5, r5, #6
_08012980:
	bl 0x0800099C
	add r1, r6, #0
	bl __umodsi3
	ldrb r4, [r5]
	lsl r0, r0, #1
	mov r1, sp
	add r2, r1, r0
	ldrb r1, [r2]
	strb r1, [r5]
	strb r4, [r2]
	ldrb r4, [r5, #1]
	add r0, r0, #1
	mov r2, sp
	add r1, r2, r0
	ldrb r0, [r1]
	strb r0, [r5, #1]
	strb r4, [r1]
	sub r5, r5, #2
	sub r6, r6, #1
	cmp r6, #0
	bne _08012980
_080129AE:
	mov r5, sp
	mov r6, #0
	ldr r2, _08012A10  @ =gUnknown_03006C80
	ldrb r0, [r2]
	cmp r6, r0
	bcs _080129E8
	ldr r0, _08012A14  @ =gUnknown_03006A30
	add r4, r2, #0
	add r7, r0, #0
	add r7, r7, #40
_080129C2:
	lsl r0, r6, #24
	lsr r0, r0, #24
	ldrb r1, [r5]
	ldrb r2, [r5, #1]
	bl sub_08012824
	ldr r1, [r7]
	add r0, r4, #0
	add r0, r0, #96
	add r0, r6, r0
	ldrb r0, [r0]
	add r1, r1, #69
	strb r0, [r1]
	add r7, r7, #144
	add r6, r6, #1
	add r5, r5, #2
	ldrb r1, [r4]
	cmp r6, r1
	bcc _080129C2
_080129E8:
	ldr r1, _08012A18  @ =gUnknown_03006D04
	mov r0, sp
	mov r2, #4
	bl CpuSet
	ldr r3, _08012A1C  @ =gUnknown_03000450
	ldr r2, _08012A14  @ =gUnknown_03006A30
	ldr r0, _08012A20  @ =gUnknown_03000414
	ldrb r1, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r2, r2, #40
	add r0, r0, r2
	ldr r0, [r0]
	str r0, [r3]
	add sp, sp, #8
	pop {r4-r7}
	pop {r0}
	bx r0
_08012A10:
	.4byte gUnknown_03006C80
_08012A14:
	.4byte gUnknown_03006A30
_08012A18:
	.4byte gUnknown_03006D04
_08012A1C:
	.4byte gUnknown_03000450
_08012A20:
	.4byte gUnknown_03000414
	THUMB_FUNC_END sub_080128EC

	THUMB_FUNC_START sub_08012A24
sub_08012A24: @ 0x08012A24
	push {r4,lr}
	add r2, r0, #0
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldr r3, _08012A3C  @ =0x0000FFFF
	add r4, r3, #0
_08012A30:
	ldrh r0, [r2]
	cmp r0, r1
	bne _08012A40
	ldrh r3, [r2, #2]
	b _08012A48
	.byte 0x00
	.byte 0x00
_08012A3C:
	.4byte 0x0000FFFF
_08012A40:
	add r2, r2, #4
	ldrh r0, [r2]
	cmp r0, r4
	bne _08012A30
_08012A48:
	add r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08012A24

	THUMB_FUNC_START sub_08012A50
sub_08012A50: @ 0x08012A50
	push {r4,r5,lr}
	add r2, r0, #0
	lsl r2, r2, #16
	lsr r2, r2, #16
	lsl r1, r1, #16
	lsr r5, r1, #16
	ldr r0, _08012A8C  @ =gUnknown_08138104
	add r1, r2, #0
	bl sub_08012A24
	add r4, r0, #0
	ldr r0, _08012A90  @ =0x0000FFFF
	cmp r4, r0
	beq _08012A86
	bl 0x0800099C
	mov r1, #1
	and r1, r1, r0
	mov r0, #32
	cmp r1, #0
	beq _08012A7C
	add r0, r4, #0
_08012A7C:
	mov r2, #128
	lsl r2, r2, #7
	add r1, r5, #0
	bl 0x08008F78
_08012A86:
	pop {r4,r5}
	pop {r0}
	bx r0
_08012A8C:
	.4byte gUnknown_08138104
_08012A90:
	.4byte 0x0000FFFF
	THUMB_FUNC_END sub_08012A50

	THUMB_FUNC_START sub_08012A94
sub_08012A94: @ 0x08012A94
	push {r4-r6,lr}
	lsl r0, r0, #16
	lsr r2, r0, #16
	lsl r1, r1, #16
	lsr r5, r1, #16
	add r6, r5, #0
	ldr r0, _08012AD4  @ =gUnknown_03006C80
	ldrb r0, [r0, #1]
	cmp r0, #3
	bne _08012AFE
	add r0, r2, #0
	sub r0, r0, #189
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #1
	bhi _08012AD8
	mov r4, #128
	lsl r4, r4, #7
	bl 0x0800099C
	mov r1, #255
	and r1, r1, r0
	mov r0, #177
	cmp r1, #126
	bhi _08012AC8
	mov r0, #187
_08012AC8:
	add r2, r0, #0
	add r1, r5, #0
	add r2, r4, #0
	bl 0x08008F78
	b _08012AFE
_08012AD4:
	.4byte gUnknown_03006C80
_08012AD8:
	cmp r2, #203
	beq _08012AE0
	cmp r2, #190
	bne _08012AFE
_08012AE0:
	mov r4, #128
	lsl r4, r4, #8
	bl 0x0800099C
	mov r1, #255
	and r1, r1, r0
	mov r0, #191
	cmp r1, #126
	bhi _08012AF4
	mov r0, #201
_08012AF4:
	add r2, r0, #0
	add r1, r6, #0
	add r2, r4, #0
	bl 0x08008F78
_08012AFE:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08012A94

	THUMB_FUNC_START sub_08012B04
sub_08012B04: @ 0x08012B04
	push {r4,lr}
	lsl r0, r0, #16
	lsr r3, r0, #16
	lsl r1, r1, #16
	lsr r4, r1, #16
	ldr r0, _08012B40  @ =gUnknown_03006C80
	ldrb r0, [r0, #1]
	cmp r0, #3
	beq _08012B1A
	cmp r0, #0
	bne _08012B3A
_08012B1A:
	cmp r3, #130
	bne _08012B3A
	bl 0x0800099C
	mov r1, #255
	and r1, r1, r0
	mov r0, #128
	cmp r1, #126
	bhi _08012B2E
	mov r0, #129
_08012B2E:
	add r3, r0, #0
	mov r2, #128
	lsl r2, r2, #7
	add r1, r4, #0
	bl 0x08008F78
_08012B3A:
	pop {r4}
	pop {r0}
	bx r0
_08012B40:
	.4byte gUnknown_03006C80
	THUMB_FUNC_END sub_08012B04

	THUMB_FUNC_START sub_08012B44
sub_08012B44: @ 0x08012B44
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	mov r1, #7
	bl sub_08012F84
	add r1, r0, #0
	cmp r1, #0
	beq _08012B5E
	add r0, r4, #0
	bl _call_via_r1
_08012B5E:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08012B44

	THUMB_FUNC_START sub_08012B64
sub_08012B64: @ 0x08012B64
	push {r4-r7,lr}
	ldr r3, _08012BC4  @ =gUnknown_02016350
	lsl r0, r0, #29
	lsr r6, r0, #24
	mov r4, #0
	mov r5, #0
	mov r7, #224
	mov r2, #31
_08012B74:
	ldrb r1, [r3, #2]
	add r0, r7, #0
	and r0, r0, r1
	cmp r0, r6
	bne _08012B88
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, #7
	bne _08012B88
	add r5, r5, #1
_08012B88:
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r3, r3, #4
	cmp r4, #31
	bls _08012B74
	bl 0x0800099C
	add r1, r5, #0
	bl __umodsi3
	add r5, r0, #0
	ldr r3, _08012BC4  @ =gUnknown_02016350
	mov r4, #0
_08012BA4:
	ldrb r1, [r3, #2]
	mov r2, #224
	and r2, r2, r1
	cmp r2, r6
	bne _08012BD2
	mov r0, #31
	and r0, r0, r1
	cmp r0, #7
	bne _08012BD2
	cmp r5, #0
	bne _08012BC8
	strb r2, [r3, #2]
	mov r0, #16
	strb r0, [r3, #3]
	b _08012BD0
	.byte 0x00
	.byte 0x00
_08012BC4:
	.4byte gUnknown_02016350
_08012BC8:
	mov r1, #1
	add r0, r2, #0
	orr r0, r0, r1
	strb r0, [r3, #2]
_08012BD0:
	sub r5, r5, #1
_08012BD2:
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r3, r3, #4
	cmp r4, #31
	bls _08012BA4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08012B64

	THUMB_FUNC_START sub_08012BE4
sub_08012BE4: @ 0x08012BE4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r1, _08012C7C  @ =gUnknown_02030A60
	mov r0, #0
	strb r0, [r1]
	ldr r0, _08012C80  @ =gUnknown_0201F000
	mov r1, #0
	str r1, [r0, #16]
	str r1, [r0, #12]
	str r1, [r0, #8]
	str r1, [r0, #4]
	str r1, [r0]
	ldr r0, _08012C84  @ =gUnknown_0200B314
	strb r1, [r0]
	mov r4, #0
	ldr r2, _08012C88  @ =gUnknown_02000430
_08012C0A:
	add r0, r4, r2
	strb r1, [r0]
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #7
	bls _08012C0A
	mov r4, #0
	ldr r2, _08012C8C  @ =gUnknown_0202A760
	mov r1, #0
_08012C1E:
	add r0, r4, r2
	strb r1, [r0]
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #3
	bls _08012C1E
	mov r4, #0
	ldr r2, _08012C90  @ =gUnknown_02016330
	mov r1, #0
_08012C32:
	lsl r0, r4, #2
	add r0, r0, r2
	str r1, [r0]
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #4
	bls _08012C32
	bl sub_08013DE0
	bl sub_08012FA8
	bl sub_080133D0
	bl sub_08016084
	ldr r1, _08012C94  @ =gUnknown_03006C80
	ldrb r0, [r1, #2]
	mov r2, #4
	cmp r0, #0
	bne _08012C5E
	ldrb r2, [r1, #1]
_08012C5E:
	strb r2, [r1, #7]
	ldr r0, _08012C7C  @ =gUnknown_02030A60
	ldrb r0, [r0]
	cmp r0, #0
	beq _08012CA0
	ldr r1, _08012C98  @ =gUnknown_02000028
	ldr r0, _08012C9C  @ =gUnknown_03000204
	ldrb r0, [r0]
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0]
	bl 0x08008ED8
	b _08012E9C
	.byte 0x00
	.byte 0x00
_08012C7C:
	.4byte gUnknown_02030A60
_08012C80:
	.4byte gUnknown_0201F000
_08012C84:
	.4byte gUnknown_0200B314
_08012C88:
	.4byte gUnknown_02000430
_08012C8C:
	.4byte gUnknown_0202A760
_08012C90:
	.4byte gUnknown_02016330
_08012C94:
	.4byte gUnknown_03006C80
_08012C98:
	.4byte gUnknown_02000028
_08012C9C:
	.4byte gUnknown_03000204
_08012CA0:
	mov r4, #0
	ldr r5, _08012E28  @ =0x03000030
_08012CA4:
	ldr r0, _08012E2C  @ =gUnknown_0202A760
	add r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08012CCC
	lsl r0, r4, #6
	ldr r2, _08012E30  @ =0x06004240
	add r0, r0, r2
	ldr r2, _08012E34  @ =gUnknown_0842761C
	ldrb r1, [r1]
	add r1, r1, r2
	ldrb r2, [r1]
	lsl r2, r2, #6
	ldr r1, _08012E38  @ =0x00044520
	add r2, r2, r1
	ldr r1, [r5]
	add r1, r1, r2
	mov r2, #64
	bl 0x080009F4
_08012CCC:
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #3
	bls _08012CA4
	ldr r7, _08012E3C  @ =gUnknown_03006C80
	ldrb r0, [r7, #1]
	cmp r0, #1
	beq _08012D0A
	ldr r6, _08012E28  @ =0x03000030
	ldr r5, _08012E40  @ =gUnknown_03000414
	ldrb r1, [r5]
	lsl r1, r1, #7
	ldr r4, _08012E44  @ =0x00044920
	add r1, r1, r4
	ldr r0, [r6]
	add r0, r0, r1
	ldr r1, _08012E48  @ =0x06004C00
	mov r2, #16
	bl CpuFastSet
	ldrb r1, [r5]
	lsl r1, r1, #7
	add r1, r1, r4
	ldr r0, [r6]
	add r0, r0, r1
	add r0, r0, #64
	ldr r1, _08012E4C  @ =0x06005000
	mov r2, #16
	bl CpuFastSet
_08012D0A:
	bl 0x0800099C
	ldrb r1, [r7]
	bl __umodsi3
	add r0, r0, #15
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r9, r0
	bl 0x0800099C
	ldrb r1, [r7]
	bl __umodsi3
	mov r2, #187
	lsl r2, r2, #1
	add r0, r0, r2
	lsl r0, r0, #16
	lsr r6, r0, #16
	mov r0, #1
	mov r8, r0
_08012D34:
	mov r7, #0
	mov r1, r8
	lsl r1, r1, #4
	mov r10, r1
_08012D3C:
	mov r2, r10
	lsl r0, r2, #2
	orr r0, r0, r7
	lsl r0, r0, #16
	lsr r5, r0, #16
	add r0, r5, #0
	mov r1, #128
	lsl r1, r1, #7
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #21
	bne _08012D64
	mov r0, r9
	add r1, r5, #0
	mov r2, #128
	lsl r2, r2, #7
	bl sub_080144F0
_08012D64:
	mov r0, #189
	lsl r0, r0, #1
	cmp r4, r0
	bne _08012D78
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #128
	lsl r2, r2, #7
	bl sub_080144F0
_08012D78:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_08012A50
	add r0, r4, #0
	add r1, r5, #0
	bl sub_08012A94
	add r0, r4, #0
	add r1, r5, #0
	bl sub_08012B04
	add r0, r5, #0
	mov r1, #128
	lsl r1, r1, #8
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r4, r0, #16
	add r0, r4, #0
	add r1, r5, #0
	bl sub_08012A94
	add r0, r7, #1
	lsl r0, r0, #24
	lsr r7, r0, #24
	cmp r7, #63
	bls _08012D3C
	mov r0, r8
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	cmp r0, #63
	bls _08012D34
	mov r0, #1
	mov r8, r0
	mov r4, #128
	lsl r4, r4, #7
_08012DC6:
	mov r7, #0
	mov r1, #1
	add r1, r1, r8
	mov r10, r1
	mov r2, r8
	lsl r2, r2, #6
	mov r8, r2
_08012DD4:
	add r0, r7, #0
	mov r1, r8
	orr r0, r0, r1
	lsl r0, r0, #16
	lsr r5, r0, #16
	add r0, r5, #0
	add r1, r4, #0
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r9, r0
	mov r1, r9
	sub r1, r1, #15
	lsl r0, r1, #16
	lsr r0, r0, #16
	cmp r0, #3
	bhi _08012E5A
	ldr r0, _08012E40  @ =gUnknown_03000414
	ldrb r0, [r0]
	cmp r1, r0
	beq _08012E5A
	add r0, r5, #0
	sub r0, r0, #64
	lsl r0, r0, #16
	lsr r0, r0, #16
	add r1, r4, #0
	bl 0x08009380
	lsl r0, r0, #16
	lsr r6, r0, #16
	cmp r6, #66
	beq _08012E1A
	cmp r6, #6
	bne _08012E50
_08012E1A:
	mov r0, #19
	add r1, r5, #0
	add r2, r4, #0
	bl sub_080144F0
	b _08012E5A
	.byte 0x00
	.byte 0x00
_08012E28:
	.4byte 0x03000030
_08012E2C:
	.4byte gUnknown_0202A760
_08012E30:
	.4byte 0x06004240
_08012E34:
	.4byte gUnknown_0842761C
_08012E38:
	.4byte 0x00044520
_08012E3C:
	.4byte gUnknown_03006C80
_08012E40:
	.4byte gUnknown_03000414
_08012E44:
	.4byte 0x00044920
_08012E48:
	.4byte 0x06004C00
_08012E4C:
	.4byte 0x06005000
_08012E50:
	mov r0, #20
	add r1, r5, #0
	add r2, r4, #0
	bl sub_080144F0
_08012E5A:
	add r0, r7, #1
	lsl r0, r0, #24
	lsr r7, r0, #24
	cmp r7, #63
	bls _08012DD4
	mov r2, r10
	lsl r0, r2, #24
	lsr r0, r0, #24
	mov r8, r0
	cmp r0, #63
	bls _08012DC6
	mov r0, #0
	bl sub_08012B44
	mov r0, #1
	bl sub_08012B44
	mov r0, #0
	bl sub_08012B64
	mov r0, #1
	bl sub_08012B64
	bl sub_08013A10
	ldr r1, _08012EAC  @ =gUnknown_02000028
	ldr r0, _08012EB0  @ =gUnknown_03000204
	ldrb r0, [r0]
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0]
	bl 0x08008ED8
_08012E9C:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08012EAC:
	.4byte gUnknown_02000028
_08012EB0:
	.4byte gUnknown_03000204
	THUMB_FUNC_END sub_08012BE4

	THUMB_FUNC_START sub_08012EB4
sub_08012EB4: @ 0x08012EB4
	push {r4,lr}
	ldr r1, _08012F0C  @ =gUnknown_0842AD18
	ldr r0, _08012F10  @ =gUnknown_03006C80
	ldrb r0, [r0, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r4, [r0]
	ldr r1, _08012F14  @ =gUnknown_02016330
	ldr r0, [r4, #20]
	str r0, [r1]
	ldrb r0, [r4, #1]
	bl sub_08015DD8
	ldrb r0, [r4]
	bl sub_08015F74
	mov r0, #0
	mov r1, #0
	bl sub_08012F84
	cmp r0, #0
	beq _08012EF2
	mov r0, #0
	mov r1, #0
	bl sub_08012F84
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_08013C8C
_08012EF2:
	bl sub_08016084
	ldr r1, _08012F18  @ =gUnknown_02000028
	ldr r0, _08012F1C  @ =gUnknown_03000204
	ldrb r0, [r0]
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0]
	bl 0x08008ED8
	pop {r4}
	pop {r0}
	bx r0
_08012F0C:
	.4byte gUnknown_0842AD18
_08012F10:
	.4byte gUnknown_03006C80
_08012F14:
	.4byte gUnknown_02016330
_08012F18:
	.4byte gUnknown_02000028
_08012F1C:
	.4byte gUnknown_03000204
	THUMB_FUNC_END sub_08012EB4

	THUMB_FUNC_START sub_08012F20
sub_08012F20: @ 0x08012F20
	push {r4,lr}
	ldr r4, _08012F74  @ =gUnknown_0842F0D4
	ldr r1, _08012F78  @ =gUnknown_02016330
	ldr r0, [r4, #20]
	str r0, [r1]
	add r0, r4, #0
	bl sub_080128EC
	ldrb r0, [r4, #1]
	bl sub_08015DD8
	ldrb r0, [r4]
	bl sub_08015F74
	mov r0, #0
	mov r1, #0
	bl sub_08012F84
	cmp r0, #0
	beq _08012F5A
	mov r0, #0
	mov r1, #0
	bl sub_08012F84
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_08013C8C
_08012F5A:
	bl sub_08016084
	ldr r1, _08012F7C  @ =gUnknown_02000028
	ldr r0, _08012F80  @ =gUnknown_03000204
	ldrb r0, [r0]
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0]
	bl 0x08008ED8
	pop {r4}
	pop {r0}
	bx r0
_08012F74:
	.4byte gUnknown_0842F0D4
_08012F78:
	.4byte gUnknown_02016330
_08012F7C:
	.4byte gUnknown_02000028
_08012F80:
	.4byte gUnknown_03000204
	THUMB_FUNC_END sub_08012F20

	THUMB_FUNC_START sub_08012F84
sub_08012F84: @ 0x08012F84
	lsl r0, r0, #24
	lsl r1, r1, #24
	lsr r2, r1, #24
	ldr r1, _08012FA0  @ =gUnknown_02016330
	lsr r0, r0, #22
	add r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08012FA4
	lsl r0, r2, #2
	add r0, r0, r1
	ldr r0, [r0]
	b _08012FA6
	.byte 0x00
	.byte 0x00
_08012FA0:
	.4byte gUnknown_02016330
_08012FA4:
	mov r0, #0
_08012FA6:
	bx lr
	THUMB_FUNC_END sub_08012F84

	THUMB_FUNC_START sub_08012FA8
sub_08012FA8: @ 0x08012FA8
	push {r4,r5,lr}
	sub sp, sp, #4
	ldr r0, _08013028  @ =gUnknown_03006C80
	ldrb r1, [r0, #4]
	cmp r1, #0
	bne _0801301E
	add r2, r0, #0
	add r2, r2, #75
	strb r1, [r2]
	add r0, r0, #73
	strb r1, [r0]
	mov r4, #0
	ldr r2, _0801302C  @ =gUnknown_0202A880
	ldr r1, _08013030  @ =gUnknown_0202A720
_08012FC4:
	add r0, r4, r2
	strb r4, [r0]
	add r0, r4, r1
	strb r4, [r0]
	add r4, r4, #1
	cmp r4, #63
	bls _08012FC4
	mov r4, #63
	ldr r5, _0801302C  @ =gUnknown_0202A880
_08012FD6:
	bl 0x0800099C
	add r1, r4, #0
	bl __umodsi3
	add r2, r4, r5
	ldrb r3, [r2]
	add r1, r0, r5
	ldrb r0, [r1]
	strb r0, [r2]
	strb r3, [r1]
	sub r4, r4, #1
	cmp r4, #0
	bne _08012FD6
	mov r4, #63
	ldr r5, _08013030  @ =gUnknown_0202A720
_08012FF6:
	bl 0x0800099C
	add r1, r4, #0
	bl __umodsi3
	add r2, r4, r5
	ldrb r3, [r2]
	add r1, r0, r5
	ldrb r0, [r1]
	strb r0, [r2]
	strb r3, [r1]
	sub r4, r4, #1
	cmp r4, #0
	bne _08012FF6
	str r4, [sp]
	ldr r1, _08013034  @ =gUnknown_020309E0
	ldr r2, _08013038  @ =0x05000020
	mov r0, sp
	bl CpuSet
_0801301E:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08013028:
	.4byte gUnknown_03006C80
_0801302C:
	.4byte gUnknown_0202A880
_08013030:
	.4byte gUnknown_0202A720
_08013034:
	.4byte gUnknown_020309E0
_08013038:
	.4byte 0x05000020
	THUMB_FUNC_END sub_08012FA8

	THUMB_FUNC_START sub_0801303C
sub_0801303C: @ 0x0801303C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r4, r0, #0
	lsl r2, r2, #24
	lsr r5, r2, #24
	ldr r2, _080130CC  @ =gUnknown_02016350
	mov r0, #0
	mov r12, r0
	ldrb r0, [r4]
	cmp r0, #255
	beq _080130BA
	ldr r7, _080130D0  @ =0x0000FFFF
	mov r10, r7
	sub r0, r5, #1
	lsl r0, r0, #1
	str r0, [sp]
	add r6, r1, #4
	add r0, r0, #1
	add r0, r0, r6
	mov r9, r0
	lsl r0, r5, #5
	mov r8, r0
_08013070:
	ldrh r0, [r2]
	cmp r0, r10
	bne _080130A4
	ldrb r1, [r4]
	ldrb r3, [r4, #1]
	cmp r5, #0
	beq _0801308C
	ldr r7, [sp]
	add r0, r6, r7
	ldrb r0, [r0]
	add r1, r1, r0
	mov r7, r9
	ldrb r0, [r7]
	add r3, r3, r0
_0801308C:
	lsl r0, r3, #6
	orr r1, r1, r0
	strh r1, [r2]
	ldrb r1, [r4, #2]
	mov r0, #31
	and r0, r0, r1
	mov r1, r8
	orr r0, r0, r1
	strb r0, [r2, #2]
	ldrb r0, [r4, #3]
	strb r0, [r2, #3]
	add r4, r4, #4
_080130A4:
	mov r0, r12
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r12, r0
	add r2, r2, #4
	cmp r0, #31
	bhi _080130BA
	ldrb r0, [r4]
	cmp r0, #255
	bne _08013070
_080130BA:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080130CC:
	.4byte gUnknown_02016350
_080130D0:
	.4byte 0x0000FFFF
	THUMB_FUNC_END sub_0801303C

	THUMB_FUNC_START sub_080130D4
sub_080130D4: @ 0x080130D4
	push {r4,lr}
	add r3, r0, #0
	mov r1, #0
	mov r2, #0
	ldr r4, _080130E0  @ =gUnknown_020309E0
	b _080130F0
_080130E0:
	.4byte gUnknown_020309E0
_080130E4:
	add r0, r1, #1
	lsl r0, r0, #24
	lsr r1, r0, #24
	add r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
_080130F0:
	cmp r1, #31
	bhi _08013106
	lsl r0, r1, #2
	add r0, r0, r4
	ldr r0, [r0]
	cmp r0, r3
	bne _08013102
	mov r0, #0
	b _08013114
_08013102:
	cmp r0, #0
	bne _080130E4
_08013106:
	cmp r2, #31
	bhi _08013112
	ldr r1, _0801311C  @ =gUnknown_020309E0
	lsl r0, r2, #2
	add r0, r0, r1
	str r3, [r0]
_08013112:
	mov r0, #1
_08013114:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0801311C:
	.4byte gUnknown_020309E0
	THUMB_FUNC_END sub_080130D4

	THUMB_FUNC_START sub_08013120
sub_08013120: @ 0x08013120
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	str r1, [sp]
	bl sub_080131C8
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	ldr r6, _080131B8  @ =gUnknown_03006C80
	ldr r0, _080131BC  @ =gUnknown_0202A880
	mov r9, r0
	add r5, r6, #0
	add r5, r5, #75
	mov r8, r9
	mov r7, #63
_08013146:
	ldr r0, _080131B8  @ =gUnknown_03006C80
	ldr r1, _080131C0  @ =gUnknown_0842B8DC
	ldrb r0, [r0, #1]
	lsl r0, r0, #1
	add r1, r0, r1
_08013150:
	ldrb r0, [r5]
	add r0, r0, #1
	and r0, r0, r7
	strb r0, [r5]
	ldrb r2, [r5]
	mov r3, r8
	add r0, r2, r3
	ldrb r0, [r0]
	ldrh r3, [r1]
	cmp r0, r3
	bcs _08013150
	ldrb r1, [r6, #1]
	lsl r1, r1, #2
	ldr r0, _080131C4  @ =gUnknown_0842B8CC
	add r1, r1, r0
	mov r3, r9
	add r0, r2, r3
	ldrb r0, [r0]
	lsl r0, r0, #3
	ldr r1, [r1]
	add r3, r1, r0
	ldr r2, [r3, #4]
	lsr r0, r2, #30
	cmp r0, r10
	bne _08013146
	mov r1, #31
	ldr r0, [sp]
	and r1, r1, r0
	mov r0, #1
	lsl r0, r0, r1
	and r2, r2, r0
	cmp r2, #0
	bne _08013146
	ldr r4, [r3]
	ldrb r0, [r4, #2]
	ldrb r1, [r6]
	cmp r0, r1
	bne _08013146
	add r0, r3, #0
	bl sub_080130D4
	cmp r0, #0
	beq _08013146
	add r0, r4, #0
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
_080131B8:
	.4byte gUnknown_03006C80
_080131BC:
	.4byte gUnknown_0202A880
_080131C0:
	.4byte gUnknown_0842B8DC
_080131C4:
	.4byte gUnknown_0842B8CC
	THUMB_FUNC_END sub_08013120

	THUMB_FUNC_START sub_080131C8
sub_080131C8: @ 0x080131C8
	push {r4,lr}
	ldr r1, _080131D8  @ =gUnknown_03006C80
	ldrb r0, [r1, #1]
	cmp r0, #2
	bne _080131DC
	ldrb r0, [r1, #3]
	add r0, r0, #3
	b _080131E0
_080131D8:
	.4byte gUnknown_03006C80
_080131DC:
	ldrb r0, [r1, #6]
	sub r0, r0, #1
_080131E0:
	lsl r0, r0, #3
	ldr r1, _080131F8  @ =gUnknown_0842AD28
	add r4, r0, r1
	bl 0x0800099C
	mov r1, #7
	and r1, r1, r0
	add r1, r4, r1
	ldrb r0, [r1]
	pop {r4}
	pop {r1}
	bx r1
_080131F8:
	.4byte gUnknown_0842AD28
	THUMB_FUNC_END sub_080131C8

	THUMB_FUNC_START sub_080131FC
sub_080131FC: @ 0x080131FC
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	mov r8, r0
	mov r9, r1
	mov r4, #0
	ldrb r0, [r0, #2]
	cmp r4, r0
	bcs _0801329E
_08013210:
	mov r0, r8
	mov r1, r9
	bl sub_08013120
	ldr r2, _080132AC  @ =gUnknown_02016330
	add r7, r4, #1
	lsl r1, r7, #2
	add r1, r1, r2
	ldr r2, [r0, #4]
	str r2, [r1]
	ldrh r0, [r0]
	lsl r2, r4, #1
	mov r3, r8
	add r3, r3, #4
	add r6, r3, r2
	ldrb r1, [r6]
	add r2, r2, #1
	add r5, r3, r2
	ldrb r2, [r5]
	bl sub_08015FE4
	lsl r0, r7, #24
	lsr r4, r0, #24
	add r0, r4, #0
	mov r1, #0
	bl sub_08012F84
	cmp r0, #0
	beq _0801325C
	add r0, r4, #0
	mov r1, #0
	bl sub_08012F84
	ldrb r1, [r6]
	ldrb r2, [r5]
	add r3, r7, #0
	bl sub_08013C8C
_0801325C:
	add r0, r4, #0
	mov r1, #1
	bl sub_08012F84
	cmp r0, #0
	beq _0801327A
	add r0, r4, #0
	mov r1, #1
	bl sub_08012F84
	ldrb r1, [r6]
	ldrb r2, [r5]
	add r3, r7, #0
	bl sub_08013C8C
_0801327A:
	add r0, r4, #0
	mov r1, #3
	bl sub_08012F84
	cmp r0, #0
	beq _08013296
	add r0, r4, #0
	mov r1, #3
	bl sub_08012F84
	mov r1, r8
	add r2, r4, #0
	bl sub_0801303C
_08013296:
	mov r1, r8
	ldrb r1, [r1, #2]
	cmp r4, r1
	bcc _08013210
_0801329E:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080132AC:
	.4byte gUnknown_02016330
	THUMB_FUNC_END sub_080131FC

	THUMB_FUNC_START sub_080132B0
sub_080132B0: @ 0x080132B0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r5, _080132E0  @ =gUnknown_03006C80
	ldrb r0, [r5, #2]
	add r4, r5, #0
	cmp r0, #0
	beq _08013338
	add r0, r4, #0
	add r0, r0, #79
	ldrb r1, [r0]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _08013304
	ldrb r0, [r4]
	cmp r0, #1
	bls _080132E4
	sub r0, r0, #2
	lsl r0, r0, #27
	lsr r3, r0, #24
	b _080132E6
_080132E0:
	.4byte gUnknown_03006C80
_080132E4:
	mov r3, #0
_080132E6:
	ldr r2, _08013300  @ =gUnknown_0842B8A8
	add r0, r4, #0
	add r0, r0, #79
	ldrb r1, [r0]
	mov r0, #15
	and r0, r0, r1
	add r0, r3, r0
	lsl r0, r0, #3
	add r0, r0, #8
	ldr r1, [r2, #20]
	add r4, r1, r0
	b _080133B2
	.byte 0x00
	.byte 0x00
_08013300:
	.4byte gUnknown_0842B8A8
_08013304:
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	bne _0801332C
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _0801332C
	ldr r0, _08013328  @ =gUnknown_0842B8A8
	ldrb r1, [r4]
	lsl r1, r1, #1
	sub r1, r1, #5
	ldrb r4, [r4, #4]
	add r1, r1, r4
	lsl r1, r1, #3
	ldr r0, [r0, #16]
	add r4, r0, r1
	b _080133B2
_08013328:
	.4byte gUnknown_0842B8A8
_0801332C:
	ldr r0, _08013334  @ =gUnknown_0842B8A8
	ldr r4, [r0, #20]
	b _080133B2
	.byte 0x00
	.byte 0x00
_08013334:
	.4byte gUnknown_0842B8A8
_08013338:
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _08013350
	ldr r1, _0801334C  @ =gUnknown_0842AD08
	ldrb r0, [r4, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r4, [r0]
	b _080133B2
	.byte 0x00
	.byte 0x00
_0801334C:
	.4byte gUnknown_0842AD08
_08013350:
	bl sub_080131C8
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r9, r0
	ldr r0, _080133C4  @ =gUnknown_0842B8A8
	mov r10, r0
	ldr r2, _080133C8  @ =gUnknown_0202A720
	mov r8, r2
	add r6, r5, #0
	add r5, r5, #73
	mov r7, r8
_08013368:
	ldr r1, _080133CC  @ =gUnknown_0842B8C0
	ldrb r0, [r6, #1]
	lsl r0, r0, #1
	add r2, r0, r1
	mov r3, #63
_08013372:
	ldrb r0, [r5]
	add r0, r0, #1
	and r0, r0, r3
	strb r0, [r5]
	ldrb r1, [r5]
	add r0, r1, r7
	ldrb r0, [r0]
	ldrh r4, [r2]
	cmp r0, r4
	bcs _08013372
	mov r2, r8
	add r0, r1, r2
	ldrb r0, [r0]
	add r2, r6, #0
	add r2, r2, #72
	strb r0, [r2]
	ldrb r1, [r6, #1]
	lsl r1, r1, #2
	add r1, r1, r10
	ldrb r0, [r2]
	lsl r0, r0, #3
	ldr r1, [r1]
	add r4, r1, r0
	ldr r0, [r4, #4]
	lsr r0, r0, #30
	cmp r0, r9
	bne _08013368
	add r0, r4, #0
	bl sub_080130D4
	cmp r0, #0
	beq _08013368
_080133B2:
	add r0, r4, #0
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080133C4:
	.4byte gUnknown_0842B8A8
_080133C8:
	.4byte gUnknown_0202A720
_080133CC:
	.4byte gUnknown_0842B8C0
	THUMB_FUNC_END sub_080132B0

	THUMB_FUNC_START sub_080133D0
sub_080133D0: @ 0x080133D0
	push {r4-r6,lr}
	bl sub_080132B0
	ldr r5, [r0]
	ldr r6, [r0, #4]
	ldr r2, _08013484  @ =gUnknown_03006C80
	mov r1, #0
	ldrb r0, [r5, #1]
	cmp r0, #4
	bne _080133E6
	mov r1, #1
_080133E6:
	mov r4, #0
	strb r1, [r2, #2]
	ldr r1, _08013488  @ =gUnknown_02016330
	ldr r0, [r5, #20]
	str r0, [r1]
	ldrb r1, [r5, #3]
	add r0, r2, #0
	add r0, r0, #76
	strb r1, [r0]
	add r0, r5, #0
	bl sub_080128EC
	ldrb r0, [r5, #1]
	bl sub_08015DD8
	ldrb r0, [r5]
	bl sub_08015F74
	ldr r1, _0801348C  @ =gUnknown_0201EFF8
	strh r4, [r1, #2]
	strh r4, [r1]
	ldrb r0, [r5, #4]
	lsl r0, r0, #4
	strh r0, [r1, #4]
	ldrb r0, [r5, #5]
	lsl r0, r0, #4
	strh r0, [r1, #6]
	mov r0, #0
	mov r1, #0
	bl sub_08012F84
	cmp r0, #0
	beq _0801343A
	mov r0, #0
	mov r1, #0
	bl sub_08012F84
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_08013C8C
_0801343A:
	mov r0, #0
	mov r1, #1
	bl sub_08012F84
	cmp r0, #0
	beq _08013458
	mov r0, #0
	mov r1, #1
	bl sub_08012F84
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_08013C8C
_08013458:
	mov r0, #0
	mov r1, #3
	bl sub_08012F84
	cmp r0, #0
	beq _08013474
	mov r0, #0
	mov r1, #3
	bl sub_08012F84
	add r1, r5, #0
	mov r2, #0
	bl sub_0801303C
_08013474:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_080131FC
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08013484:
	.4byte gUnknown_03006C80
_08013488:
	.4byte gUnknown_02016330
_0801348C:
	.4byte gUnknown_0201EFF8
	THUMB_FUNC_END sub_080133D0

	THUMB_FUNC_START sub_08013490
sub_08013490: @ 0x08013490
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	str r0, [sp]
	lsl r1, r1, #16
	lsr r0, r1, #16
	mov r8, r0
	cmp r0, #0
	bne _080134AA
	b _080136C2
_080134AA:
	lsr r5, r1, #17
	add r2, r5, #0
	mov r0, #1
	mov r3, r8
	and r0, r0, r3
	cmp r0, #0
	beq _080134BA
	add r5, r5, #1
_080134BA:
	ldr r6, [sp]
	lsl r0, r5, #1
	add r7, r6, r0
	ldr r4, _08013548  @ =gUnknown_02038000
	lsr r1, r1, #18
	mov r0, r8
	lsl r0, r0, #1
	mov r12, r0
_080134CA:
	ldrh r0, [r6]
	strh r0, [r4]
	add r6, r6, #2
	add r4, r4, #2
	sub r0, r5, #1
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r2, #0
	beq _080134EA
	ldrh r0, [r7]
	strh r0, [r4]
	add r7, r7, #2
	add r4, r4, #2
	sub r0, r2, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
_080134EA:
	cmp r5, #0
	bne _080134CA
	add r3, r1, #0
	mov r10, r3
	add r2, r3, #0
	add r5, r3, #0
	mov r1, #3
	mov r0, r8
	and r1, r1, r0
	cmp r1, #0
	beq _08013510
	add r5, r5, #1
	add r0, r3, #1
	cmp r1, #1
	bls _08013510
	add r2, r0, #0
	cmp r1, #2
	bls _08013510
	add r3, r2, #0
_08013510:
	ldr r6, _08013548  @ =gUnknown_02038000
	lsl r0, r5, #1
	add r0, r0, r6
	lsl r1, r2, #1
	add r0, r0, r1
	sub r7, r0, #2
	mov r9, r0
	ldr r1, _0801354C  @ =gUnknown_02037FFE
	add r1, r1, r12
	mov r8, r1
	ldr r4, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl 0x0800099C
	add r1, r0, #0
	mov r0, #3
	and r1, r1, r0
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	cmp r1, #1
	beq _080135B6
	cmp r1, #1
	bgt _08013550
	cmp r1, #0
	beq _0801355C
	b _080136C2
	.byte 0x00
	.byte 0x00
_08013548:
	.4byte gUnknown_02038000
_0801354C:
	.4byte gUnknown_02037FFE
_08013550:
	cmp r1, #2
	beq _08013610
	cmp r1, #3
	bne _0801355A
	b _0801366A
_0801355A:
	b _080136C2
_0801355C:
	ldrh r0, [r6]
	strh r0, [r4]
	add r6, r6, #2
	add r4, r4, #2
	sub r0, r5, #1
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r2, #0
	beq _0801357C
	ldrh r0, [r7]
	strh r0, [r4]
	sub r7, r7, #2
	add r4, r4, #2
	sub r0, r2, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
_0801357C:
	cmp r3, #0
	beq _08013592
	mov r1, r9
	ldrh r0, [r1]
	strh r0, [r4]
	mov r0, #2
	add r9, r9, r0
	add r4, r4, #2
	sub r0, r3, #1
	lsl r0, r0, #16
	lsr r3, r0, #16
_08013592:
	mov r1, r10
	cmp r1, #0
	beq _080135B0
	mov r1, r8
	ldrh r0, [r1]
	strh r0, [r4]
	mov r0, #2
	neg r0, r0
	add r8, r8, r0
	add r4, r4, #2
	mov r0, r10
	sub r0, r0, #1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r10, r0
_080135B0:
	cmp r5, #0
	bne _0801355C
	b _080136C2
_080135B6:
	mov r1, r10
	cmp r1, #0
	beq _080135D4
	mov r1, r8
	ldrh r0, [r1]
	strh r0, [r4]
	mov r0, #2
	neg r0, r0
	add r8, r8, r0
	add r4, r4, #2
	mov r0, r10
	sub r0, r0, #1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r10, r0
_080135D4:
	cmp r3, #0
	beq _080135EA
	mov r1, r9
	ldrh r0, [r1]
	strh r0, [r4]
	mov r0, #2
	add r9, r9, r0
	add r4, r4, #2
	sub r0, r3, #1
	lsl r0, r0, #16
	lsr r3, r0, #16
_080135EA:
	cmp r2, #0
	beq _080135FC
	ldrh r0, [r7]
	strh r0, [r4]
	sub r7, r7, #2
	add r4, r4, #2
	sub r0, r2, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
_080135FC:
	ldrh r0, [r6]
	strh r0, [r4]
	add r6, r6, #2
	add r4, r4, #2
	sub r0, r5, #1
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, #0
	bne _080135B6
	b _080136C2
_08013610:
	cmp r3, #0
	beq _08013626
	mov r1, r9
	ldrh r0, [r1]
	strh r0, [r4]
	mov r0, #2
	add r9, r9, r0
	add r4, r4, #2
	sub r0, r3, #1
	lsl r0, r0, #16
	lsr r3, r0, #16
_08013626:
	ldrh r0, [r6]
	strh r0, [r4]
	add r6, r6, #2
	add r4, r4, #2
	sub r0, r5, #1
	lsl r0, r0, #16
	lsr r5, r0, #16
	mov r1, r10
	cmp r1, #0
	beq _08013652
	mov r1, r8
	ldrh r0, [r1]
	strh r0, [r4]
	mov r0, #2
	neg r0, r0
	add r8, r8, r0
	add r4, r4, #2
	mov r0, r10
	sub r0, r0, #1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r10, r0
_08013652:
	cmp r2, #0
	beq _08013664
	ldrh r0, [r7]
	strh r0, [r4]
	sub r7, r7, #2
	add r4, r4, #2
	sub r0, r2, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
_08013664:
	cmp r5, #0
	bne _08013610
	b _080136C2
_0801366A:
	cmp r2, #0
	beq _0801367C
	ldrh r0, [r7]
	strh r0, [r4]
	sub r7, r7, #2
	add r4, r4, #2
	sub r0, r2, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
_0801367C:
	mov r1, r10
	cmp r1, #0
	beq _0801369A
	mov r1, r8
	ldrh r0, [r1]
	strh r0, [r4]
	mov r0, #2
	neg r0, r0
	add r8, r8, r0
	add r4, r4, #2
	mov r0, r10
	sub r0, r0, #1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r10, r0
_0801369A:
	ldrh r0, [r6]
	strh r0, [r4]
	add r6, r6, #2
	add r4, r4, #2
	sub r0, r5, #1
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r3, #0
	beq _080136BE
	mov r1, r9
	ldrh r0, [r1]
	strh r0, [r4]
	mov r0, #2
	add r9, r9, r0
	add r4, r4, #2
	sub r0, r3, #1
	lsl r0, r0, #16
	lsr r3, r0, #16
_080136BE:
	cmp r5, #0
	bne _0801366A
_080136C2:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08013490

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080136D4
sub_080136D4: @ 0x080136D4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsl r0, r0, #16
	lsr r4, r0, #16
	lsl r1, r1, #16
	lsr r5, r1, #16
	lsl r2, r2, #16
	lsr r7, r2, #16
	add r0, r5, #0
	mul r0, r7, r0
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r8, r0
	add r0, r0, #1
	lsl r0, r0, #17
	lsr r0, r0, #16
	bl sub_0800BD14
	add r6, r0, #0
	cmp r6, #0
	bne _08013704
	mov r0, #0
	b _0801374A
_08013704:
	mov r0, r8
	strh r0, [r6]
	add r2, r6, #2
	mov r0, #0
	mov r12, r2
	cmp r0, r7
	bcs _08013740
_08013712:
	mov r1, #0
	add r3, r0, #1
	cmp r1, r5
	bcs _0801372E
_0801371A:
	strh r4, [r2]
	add r2, r2, #2
	add r0, r4, #1
	lsl r0, r0, #16
	lsr r4, r0, #16
	add r0, r1, #1
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r1, r5
	bcc _0801371A
_0801372E:
	add r0, r4, #0
	add r0, r0, #64
	sub r0, r0, r5
	lsl r0, r0, #16
	lsr r4, r0, #16
	lsl r0, r3, #16
	lsr r0, r0, #16
	cmp r0, r7
	bcc _08013712
_08013740:
	mov r0, r12
	mov r1, r8
	bl sub_08013490
	add r0, r6, #0
_0801374A:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080136D4

	THUMB_FUNC_START sub_08013754
sub_08013754: @ 0x08013754
	push {r4-r7,lr}
	lsl r0, r0, #16
	lsr r6, r0, #16
	lsl r1, r1, #16
	lsr r5, r1, #16
	lsl r2, r2, #16
	lsr r4, r2, #16
	mov r2, #0
	ldr r1, _0801379C  @ =gUnknown_0202A580
_08013766:
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r1
	ldrh r3, [r0, #4]
	cmp r6, r3
	bne _08013780
	ldrb r3, [r0, #6]
	cmp r5, r3
	bne _08013780
	ldrb r3, [r0, #7]
	cmp r4, r3
	beq _080137D0
_08013780:
	add r0, r2, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	cmp r2, #7
	bls _08013766
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_080136D4
	add r3, r0, #0
	cmp r3, #0
	bne _080137AC
	b _080137CE
_0801379C:
	.4byte gUnknown_0202A580
_080137A0:
	str r3, [r0]
	strh r6, [r0, #4]
	strb r5, [r0, #6]
	strb r4, [r0, #7]
	strh r1, [r0, #8]
	b _080137D0
_080137AC:
	mov r2, #0
	ldr r7, _080137D8  @ =gUnknown_0202A580
_080137B0:
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r7
	ldr r1, [r0]
	cmp r1, #0
	beq _080137A0
	add r0, r2, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	cmp r2, #7
	bls _080137B0
	add r0, r3, #0
	bl sub_0800BE50
_080137CE:
	mov r0, #0
_080137D0:
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080137D8:
	.4byte gUnknown_0202A580
	THUMB_FUNC_END sub_08013754

	THUMB_FUNC_START sub_080137DC
sub_080137DC: @ 0x080137DC
	mov r1, #0
	ldr r3, _08013800  @ =gUnknown_0202A580
	mov r2, #0
_080137E2:
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	str r2, [r0]
	strh r2, [r0, #4]
	strb r2, [r0, #6]
	strb r2, [r0, #7]
	add r0, r1, #1
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r1, #7
	bls _080137E2
	bx lr
	.byte 0x00
	.byte 0x00
_08013800:
	.4byte gUnknown_0202A580
	THUMB_FUNC_END sub_080137DC

	THUMB_FUNC_START sub_08013804
sub_08013804: @ 0x08013804
	push {lr}
	ldr r1, _0801381C  @ =gUnknown_0813811A
	ldr r0, _08013820  @ =gUnknown_03006C80
	ldrb r0, [r0, #1]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	bl sub_0800BA44
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801381C:
	.4byte gUnknown_0813811A
_08013820:
	.4byte gUnknown_03006C80
	THUMB_FUNC_END sub_08013804

	THUMB_FUNC_START sub_08013824
sub_08013824: @ 0x08013824
	push {r4,r5,lr}
	add r4, r0, #0
	lsl r4, r4, #16
	lsl r1, r1, #16
	lsl r2, r2, #16
	lsr r2, r2, #16
	lsl r3, r3, #24
	ldr r0, _08013868  @ =gUnknown_0201EFF8
	lsr r3, r3, #22
	add r5, r3, r0
	lsr r4, r4, #16
	ldrh r5, [r5]
	add r4, r4, r5
	lsl r4, r4, #16
	add r0, r0, #2
	add r3, r3, r0
	lsr r1, r1, #16
	ldrh r3, [r3]
	add r1, r1, r3
	lsl r1, r1, #16
	mov r0, #155
	lsl r0, r0, #1
	lsr r4, r4, #20
	lsr r1, r1, #20
	lsl r1, r1, #6
	orr r4, r4, r1
	lsl r4, r4, #16
	lsr r4, r4, #16
	add r1, r4, #0
	bl sub_080144F0
	pop {r4,r5}
	pop {r0}
	bx r0
_08013868:
	.4byte gUnknown_0201EFF8
	THUMB_FUNC_END sub_08013824

	THUMB_FUNC_START sub_0801386C
sub_0801386C: @ 0x0801386C
	push {r4-r7,lr}
	add r5, r0, #0
	lsl r1, r1, #24
	lsr r7, r1, #24
	ldrb r0, [r5]
	cmp r0, #255
	beq _080138B2
	mov r6, #8
_0801387C:
	ldrb r0, [r5]
	lsl r2, r0, #4
	orr r2, r2, r6
	ldrb r1, [r5, #1]
	lsl r3, r1, #4
	orr r3, r3, r6
	ldr r4, _080138B8  @ =0x000003FF
	add r0, r4, #0
	and r3, r3, r0
	mov r0, #128
	and r1, r1, r0
	mov r4, #128
	lsl r4, r4, #7
	cmp r1, #0
	beq _0801389E
	mov r4, #128
	lsl r4, r4, #8
_0801389E:
	add r0, r2, #0
	add r1, r3, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_08013824
	add r5, r5, #2
	ldrb r0, [r5]
	cmp r0, #255
	bne _0801387C
_080138B2:
	pop {r4-r7}
	pop {r0}
	bx r0
_080138B8:
	.4byte 0x000003FF
	THUMB_FUNC_END sub_0801386C

	THUMB_FUNC_START sub_080138BC
sub_080138BC: @ 0x080138BC
	push {r4,r5,lr}
	sub sp, sp, #8
	mov r4, #0
	str r4, [sp]
	ldr r1, _080138E4  @ =gUnknown_0201EF30
	ldr r5, _080138E8  @ =0x05000030
	mov r0, sp
	add r2, r5, #0
	bl CpuSet
	str r4, [sp, #4]
	add r0, sp, #4
	ldr r1, _080138EC  @ =gUnknown_02003110
	add r2, r5, #0
	bl CpuSet
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
_080138E4:
	.4byte gUnknown_0201EF30
_080138E8:
	.4byte 0x05000030
_080138EC:
	.4byte gUnknown_02003110
	THUMB_FUNC_END sub_080138BC

	THUMB_FUNC_START sub_080138F0
sub_080138F0: @ 0x080138F0
	push {r4-r6,lr}
	add r4, r0, #0
	lsl r1, r1, #24
	lsr r6, r1, #24
	ldrh r0, [r4]
	lsr r2, r0, #9
	mov r1, #15
	and r2, r2, r1
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r2, #6
	bne _08013940
	cmp r5, #92
	bne _0801391E
	ldr r2, _08013938  @ =gUnknown_0201EF30
	add r3, r2, #0
	add r3, r3, #192
	add r0, r4, #0
	add r1, r6, #0
	bl sub_08013948
	cmp r0, #0
	bne _08013934
_0801391E:
	cmp r5, #8
	bne _08013940
	ldr r2, _0801393C  @ =gUnknown_02003110
	add r3, r2, #0
	add r3, r3, #192
	add r0, r4, #0
	add r1, r6, #0
	bl sub_08013948
	cmp r0, #0
	beq _08013940
_08013934:
	mov r0, #0
	b _08013942
_08013938:
	.4byte gUnknown_0201EF30
_0801393C:
	.4byte gUnknown_02003110
_08013940:
	mov r0, #1
_08013942:
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080138F0

	THUMB_FUNC_START sub_08013948
sub_08013948: @ 0x08013948
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	add r5, r2, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r8, r1
	ldrh r0, [r4, #2]
	lsr r1, r0, #8
	mov r10, r1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r9, r0
	cmp r5, r3
	bcs _080139FE
	ldr r6, _080139B8  @ =0x000003FF
	ldr r2, _080139BC  @ =gUnknown_0201EFF8
	mov r0, r8
	lsl r1, r0, #2
	add r0, r2, #2
	add r7, r1, r0
_08013978:
	ldrh r0, [r5]
	cmp r0, #0
	bne _080139F8
	ldrh r3, [r4, #4]
	add r0, r1, r2
	add r1, r6, #0
	and r1, r1, r3
	ldrh r0, [r0]
	add r1, r1, r0
	lsl r1, r1, #16
	ldrh r2, [r4, #6]
	add r0, r6, #0
	and r0, r0, r2
	ldrh r7, [r7]
	add r0, r0, r7
	lsl r0, r0, #16
	lsr r1, r1, #20
	lsr r0, r0, #20
	lsl r0, r0, #6
	orr r1, r1, r0
	strh r1, [r5]
	mov r2, #192
	lsl r2, r2, #4
	add r0, r2, #0
	and r0, r0, r3
	cmp r0, #0
	beq _080139C0
	lsl r0, r0, #4
	orr r1, r1, r0
	strh r1, [r5]
	b _080139DC
	.byte 0x00
	.byte 0x00
_080139B8:
	.4byte 0x000003FF
_080139BC:
	.4byte gUnknown_0201EFF8
_080139C0:
	ldrh r4, [r5]
	add r0, r4, #0
	bl 0x08008E5C
	lsl r0, r0, #16
	cmp r0, #0
	beq _080139D4
	mov r0, #128
	lsl r0, r0, #8
	b _080139D8
_080139D4:
	mov r0, #128
	lsl r0, r0, #7
_080139D8:
	orr r0, r0, r4
	strh r0, [r5]
_080139DC:
	ldrh r1, [r5]
	mov r0, r8
	cmp r0, #0
	beq _080139EA
	mov r0, #128
	lsl r0, r0, #5
	orr r1, r1, r0
_080139EA:
	strh r1, [r5]
	mov r1, r10
	strb r1, [r5, #2]
	mov r2, r9
	strb r2, [r5, #3]
	mov r0, #1
	b _08013A00
_080139F8:
	add r5, r5, #4
	cmp r5, r3
	bcc _08013978
_080139FE:
	mov r0, #0
_08013A00:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08013948

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08013A10
sub_08013A10: @ 0x08013A10
	push {r4,lr}
	ldr r4, _08013A54  @ =gUnknown_0201EF30
	add r0, r4, #0
	add r0, r0, #192
	cmp r4, r0
	bcs _08013A4E
_08013A1C:
	ldrb r0, [r4, #2]
	cmp r0, #255
	bne _08013A46
	ldrh r0, [r4]
	ldr r2, _08013A58  @ =0x00000FFF
	add r1, r2, #0
	and r1, r1, r0
	mov r3, #192
	lsl r3, r3, #8
	add r2, r3, #0
	and r2, r2, r0
	mov r0, #155
	lsl r0, r0, #1
	bl sub_080144F0
	ldrh r1, [r4]
	mov r2, #128
	lsl r2, r2, #6
	add r0, r2, #0
	orr r0, r0, r1
	strh r0, [r4]
_08013A46:
	add r4, r4, #4
	ldr r0, _08013A5C  @ =gUnknown_0201EFF0
	cmp r4, r0
	bcc _08013A1C
_08013A4E:
	pop {r4}
	pop {r0}
	bx r0
_08013A54:
	.4byte gUnknown_0201EF30
_08013A58:
	.4byte 0x00000FFF
_08013A5C:
	.4byte gUnknown_0201EFF0
	THUMB_FUNC_END sub_08013A10

	THUMB_FUNC_START sub_08013A60
sub_08013A60: @ 0x08013A60
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	mov r6, #0
	ldr r4, _08013BE8  @ =gUnknown_0201EF30
	add r0, r4, #0
	add r0, r0, #192
	cmp r4, r0
	bcs _08013B3A
	ldr r0, _08013BEC  @ =gUnknown_0201F000
	mov r9, r0
	ldr r1, _08013BF0  @ =0x0000FFFF
	mov r8, r1
_08013A7C:
	ldrh r1, [r4]
	cmp r1, #0
	beq _08013B3A
	mov r5, #128
	lsl r5, r5, #6
	add r0, r5, #0
	and r0, r0, r1
	cmp r0, #0
	bne _08013AE2
	ldrb r0, [r4, #2]
	bl sub_08013D20
	add r2, r0, #0
	ldrb r3, [r4, #2]
	add r0, r3, #0
	cmp r0, #255
	beq _08013AB8
	ldrh r0, [r4]
	mov r7, #128
	lsl r7, r7, #5
	add r1, r7, #0
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #28
	lsl r0, r0, #2
	add r0, r0, r9
	ldr r0, [r0]
	and r0, r0, r2
	cmp r0, r2
	bne _08013AE2
_08013AB8:
	mov r0, #255
	strb r0, [r4, #2]
	ldrh r0, [r4]
	ldr r2, _08013BF4  @ =0x00000FFF
	add r1, r2, #0
	and r1, r1, r0
	mov r3, #192
	lsl r3, r3, #8
	add r2, r3, #0
	and r2, r2, r0
	mov r0, #155
	lsl r0, r0, #1
	bl sub_080144F0
	add r0, r4, #0
	bl sub_08013C04
	ldrh r1, [r4]
	add r0, r5, #0
	orr r0, r0, r1
	strh r0, [r4]
_08013AE2:
	ldrb r0, [r4, #3]
	cmp r0, #255
	beq _08013B32
	bl sub_08013D20
	ldrh r2, [r4]
	mov r7, #128
	lsl r7, r7, #5
	add r1, r7, #0
	and r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #28
	lsl r1, r1, #2
	add r1, r1, r9
	ldr r1, [r1]
	and r1, r1, r0
	cmp r1, r0
	bne _08013B22
	mov r0, #255
	strb r0, [r4, #3]
	ldr r1, _08013BF4  @ =0x00000FFF
	add r0, r1, #0
	and r0, r0, r2
	mov r3, #192
	lsl r3, r3, #8
	add r1, r3, #0
	and r1, r1, r2
	bl sub_0801478C
	add r0, r4, #0
	bl sub_08013C04
_08013B22:
	ldrh r1, [r4, #2]
	mov r0, r8
	and r0, r0, r1
	cmp r0, r8
	bne _08013B30
	mov r0, #0
	strh r0, [r4]
_08013B30:
	mov r6, #1
_08013B32:
	add r4, r4, #4
	ldr r0, _08013BF8  @ =gUnknown_0201EFF0
	cmp r4, r0
	bcc _08013A7C
_08013B3A:
	cmp r6, #0
	beq _08013B48
	ldr r0, _08013BE8  @ =gUnknown_0201EF30
	add r1, r0, #0
	add r1, r1, #192
	bl sub_08013C50
_08013B48:
	mov r6, #0
	ldr r4, _08013BFC  @ =gUnknown_02003110
	add r0, r4, #0
	add r0, r0, #192
	cmp r4, r0
	bcs _08013BCE
	ldr r7, _08013BEC  @ =gUnknown_0201F000
	mov r8, r7
	mov r7, #8
_08013B5A:
	ldrh r0, [r4]
	cmp r0, #0
	beq _08013BCE
	ldrb r0, [r4, #2]
	bl sub_08013D20
	ldrh r2, [r4]
	mov r5, #128
	lsl r5, r5, #5
	add r1, r5, #0
	and r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #28
	lsl r1, r1, #2
	add r1, r1, r8
	ldr r1, [r1]
	and r1, r1, r0
	cmp r1, r0
	bne _08013BC6
	ldrb r1, [r4, #2]
	ldrb r0, [r4, #3]
	mov r2, #128
	orr r2, r2, r0
	mov r0, #8
	bl sub_0804C8A8
	add r2, r0, #0
	cmp r2, #0
	beq _08013BC0
	ldrh r1, [r4]
	mov r0, #63
	and r0, r0, r1
	lsl r0, r0, #4
	orr r0, r0, r7
	strh r0, [r2, #50]
	ldrh r0, [r4]
	mov r3, #252
	lsl r3, r3, #4
	add r1, r3, #0
	and r0, r0, r1
	lsr r0, r0, #2
	orr r0, r0, r7
	strh r0, [r2, #54]
	ldrh r1, [r4]
	add r0, r5, #0
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #28
	add r1, r2, #0
	add r1, r1, #82
	strb r0, [r1]
_08013BC0:
	mov r0, #0
	strh r0, [r4]
	mov r6, #1
_08013BC6:
	add r4, r4, #4
	ldr r0, _08013C00  @ =gUnknown_020031D0
	cmp r4, r0
	bcc _08013B5A
_08013BCE:
	cmp r6, #0
	beq _08013BDC
	ldr r0, _08013BFC  @ =gUnknown_02003110
	add r1, r0, #0
	add r1, r1, #192
	bl sub_08013C50
_08013BDC:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_08013BE8:
	.4byte gUnknown_0201EF30
_08013BEC:
	.4byte gUnknown_0201F000
_08013BF0:
	.4byte 0x0000FFFF
_08013BF4:
	.4byte 0x00000FFF
_08013BF8:
	.4byte gUnknown_0201EFF0
_08013BFC:
	.4byte gUnknown_02003110
_08013C00:
	.4byte gUnknown_020031D0
	THUMB_FUNC_END sub_08013A60

	THUMB_FUNC_START sub_08013C04
sub_08013C04: @ 0x08013C04
	push {r4,lr}
	add r4, r0, #0
	mov r0, #15
	mov r1, #2
	mov r2, #0
	bl sub_0804C8A8
	add r3, r0, #0
	cmp r3, #0
	beq _08013C48
	ldrh r1, [r4]
	mov r0, #63
	and r0, r0, r1
	lsl r0, r0, #4
	mov r2, #8
	orr r0, r0, r2
	strh r0, [r3, #50]
	ldrh r1, [r4]
	mov r0, #252
	lsl r0, r0, #4
	and r0, r0, r1
	lsr r0, r0, #2
	orr r0, r0, r2
	strh r0, [r3, #54]
	ldrh r1, [r4]
	mov r0, #192
	lsl r0, r0, #8
	and r0, r0, r1
	add r1, r3, #0
	add r1, r1, #80
	strh r0, [r1]
	add r0, r3, #0
	bl 0x08008DD8
_08013C48:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08013C04

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08013C50
sub_08013C50: @ 0x08013C50
	push {r4,lr}
	add r3, r0, #0
_08013C54:
	sub r1, r1, #4
	ldrh r0, [r1]
	cmp r0, #0
	bne _08013C80
	cmp r1, r3
	bhi _08013C54
	b _08013C80
_08013C62:
	ldrh r2, [r3]
	add r4, r3, #4
	cmp r2, #0
	bne _08013C7E
	ldr r0, [r1]
	str r0, [r3]
	str r2, [r1]
	b _08013C74
_08013C72:
	sub r1, r1, #4
_08013C74:
	ldrh r0, [r1]
	cmp r0, #0
	bne _08013C7E
	cmp r1, r3
	bhi _08013C72
_08013C7E:
	add r3, r4, #0
_08013C80:
	cmp r3, r1
	bcc _08013C62
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08013C50

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08013C8C
sub_08013C8C: @ 0x08013C8C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r5, r0, #0
	lsl r3, r3, #24
	lsr r6, r3, #24
	ldrh r0, [r5]
	ldr r1, _08013CE0  @ =0x0000FFFF
	cmp r0, r1
	beq _08013D16
	ldr r7, _08013CE4  @ =gUnknown_0202A760
	mov r8, r1
_08013CA4:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_080138F0
	cmp r0, #0
	beq _08013D0E
	bl sub_080123E8
	add r4, r0, #0
	cmp r4, #0
	beq _08013D0E
	add r1, r5, #0
	add r2, r6, #0
	bl 0x0800A148
	cmp r0, #0
	beq _08013D0E
	add r0, r4, #0
	add r0, r0, #82
	strb r6, [r0]
	ldrb r0, [r4, #8]
	cmp r0, #6
	bne _08013D0E
	ldrb r0, [r4, #9]
	cmp r0, #33
	beq _08013CE8
	cmp r0, #45
	beq _08013D02
	b _08013D0E
	.byte 0x00
	.byte 0x00
_08013CE0:
	.4byte 0x0000FFFF
_08013CE4:
	.4byte gUnknown_0202A760
_08013CE8:
	ldrb r0, [r4, #10]
	bl sub_08013D54
	add r1, r4, #0
	add r1, r1, #32
	strb r0, [r1]
	ldrb r1, [r4, #23]
	mov r0, #3
	and r0, r0, r1
	add r0, r0, r7
	ldrb r1, [r4, #10]
	strb r1, [r0]
	b _08013D0E
_08013D02:
	ldrb r0, [r4, #23]
	mov r1, #3
	and r1, r1, r0
	add r1, r1, r7
	ldrb r0, [r4, #11]
	strb r0, [r1]
_08013D0E:
	add r5, r5, #8
	ldrh r0, [r5]
	cmp r0, r8
	bne _08013CA4
_08013D16:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08013C8C

	THUMB_FUNC_START sub_08013D20
sub_08013D20: @ 0x08013D20
	push {r4,r5,lr}
	sub sp, sp, #32
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r2, sp
	ldr r1, _08013D50  @ =gUnknown_0813813C
	ldm r1!, {r3-r5}
	stm r2!, {r3-r5}
	ldm r1!, {r3-r5}
	stm r2!, {r3-r5}
	ldm r1!, {r3,r4}
	stm r2!, {r3,r4}
	lsr r1, r0, #5
	lsl r1, r1, #2
	mov r5, sp
	add r2, r5, r1
	mov r1, #31
	and r1, r1, r0
	ldr r0, [r2]
	lsl r0, r0, r1
	add sp, sp, #32
	pop {r4,r5}
	pop {r1}
	bx r1
_08013D50:
	.4byte gUnknown_0813813C
	THUMB_FUNC_END sub_08013D20

	THUMB_FUNC_START sub_08013D54
sub_08013D54: @ 0x08013D54
	push {r4-r6,lr}
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r0, _08013D68  @ =gUnknown_0200B314
	ldrb r1, [r0]
	add r6, r0, #0
	cmp r1, #8
	bne _08013D6C
	mov r0, #0
	b _08013DD8
_08013D68:
	.4byte gUnknown_0200B314
_08013D6C:
	mov r2, #0
	cmp r2, r1
	bcs _08013D8C
	ldr r3, _08013DC4  @ =gUnknown_02000430
	ldrb r0, [r3]
	cmp r0, r5
	beq _08013D8C
_08013D7A:
	add r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, r1
	bcs _08013D8C
	add r0, r2, r3
	ldrb r0, [r0]
	cmp r0, r5
	bne _08013D7A
_08013D8C:
	ldrb r0, [r6]
	cmp r2, r0
	bne _08013DCC
	ldrb r4, [r6]
	lsl r4, r4, #7
	ldr r1, _08013DC8  @ =0x06015800
	add r4, r4, r1
	add r0, r5, #0
	bl sub_0802C3C4
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #128
	bl 0x080009F4
	ldr r1, _08013DC4  @ =gUnknown_02000430
	ldrb r0, [r6]
	add r0, r0, r1
	strb r5, [r0]
	ldrb r1, [r6]
	lsl r0, r1, #26
	mov r2, #192
	lsl r2, r2, #24
	add r0, r0, r2
	lsr r2, r0, #24
	add r1, r1, #1
	strb r1, [r6]
	b _08013DD6
_08013DC4:
	.4byte gUnknown_02000430
_08013DC8:
	.4byte 0x06015800
_08013DCC:
	lsl r0, r2, #26
	mov r1, #192
	lsl r1, r1, #24
	add r0, r0, r1
	lsr r2, r0, #24
_08013DD6:
	add r0, r2, #0
_08013DD8:
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08013D54

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08013DE0
sub_08013DE0: @ 0x08013DE0
	push {lr}
	sub sp, sp, #4
	ldr r1, _08013E00  @ =gUnknown_0202A4F0
	mov r0, #0
	str r0, [r1]
	sub r0, r0, #1
	str r0, [sp]
	ldr r1, _08013E04  @ =gUnknown_02016350
	ldr r2, _08013E08  @ =0x05000020
	mov r0, sp
	bl CpuSet
	add sp, sp, #4
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08013E00:
	.4byte gUnknown_0202A4F0
_08013E04:
	.4byte gUnknown_02016350
_08013E08:
	.4byte 0x05000020
	THUMB_FUNC_END sub_08013DE0

	THUMB_FUNC_START sub_08013E0C
sub_08013E0C: @ 0x08013E0C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	mov r9, r0
	lsl r1, r1, #16
	lsr r6, r1, #16
	lsl r2, r2, #16
	lsr r2, r2, #16
	mov r8, r2
	ldr r5, _08013EAC  @ =gUnknown_02016350
	mov r1, #0
	ldrh r0, [r5]
	add r2, r5, #0
	add r2, r2, #128
	cmp r0, r6
	beq _08013E40
_08013E2E:
	add r0, r1, #1
	lsl r0, r0, #24
	lsr r1, r0, #24
	add r5, r5, #4
	cmp r1, #31
	bhi _08013E40
	ldrh r0, [r5]
	cmp r0, r6
	bne _08013E2E
_08013E40:
	cmp r5, r2
	beq _08013E9E
	ldr r7, _08013EB0  @ =gUnknown_0202A4F0
	ldr r0, _08013EB4  @ =gUnknown_08137B10
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r0, [r7]
	ldr r4, [r1]
	and r0, r0, r4
	cmp r0, #0
	bne _08013E9E
	mov r0, #33
	bl sub_0800D24C
	ldr r0, [r7]
	orr r0, r0, r4
	str r0, [r7]
	add r0, r6, #0
	mov r1, r8
	bl 0x0800932C
	ldr r2, _08013EB8  @ =gUnknown_08427630
	ldrb r1, [r5, #2]
	mov r0, #31
	and r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r3, [r0]
	add r0, r5, #0
	mov r1, r9
	add r2, r6, #0
	bl _call_via_r3
	add r0, r6, #0
	mov r1, r8
	bl 0x0800932C
	lsl r0, r0, #16
	ldr r1, _08013EBC  @ =0x01070000
	cmp r0, r1
	bne _08013E9E
	mov r0, #132
	lsl r0, r0, #1
	add r1, r6, #0
	mov r2, r8
	bl sub_08014658
_08013E9E:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08013EAC:
	.4byte gUnknown_02016350
_08013EB0:
	.4byte gUnknown_0202A4F0
_08013EB4:
	.4byte gUnknown_08137B10
_08013EB8:
	.4byte gUnknown_08427630
_08013EBC:
	.4byte 0x01070000
	THUMB_FUNC_END sub_08013E0C

	THUMB_FUNC_START sub_08013EC0
sub_08013EC0: @ 0x08013EC0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	mov r8, r2
	lsl r0, r0, #24
	lsr r2, r0, #24
	add r3, r2, #0
	lsl r1, r1, #16
	lsr r7, r1, #16
	lsl r0, r2, #2
	ldr r6, _08013EE8  @ =gUnknown_084299B4
	add r5, r0, r6
	cmp r2, #15
	beq _08013F36
	cmp r2, #15
	bgt _08013EEC
	cmp r2, #14
	beq _08013EF2
	b _08013F94
	.byte 0x00
	.byte 0x00
_08013EE8:
	.4byte gUnknown_084299B4
_08013EEC:
	cmp r3, #17
	beq _08013F78
	b _08013F94
_08013EF2:
	bl sub_080123E8
	add r4, r0, #0
	cmp r4, #0
	beq _08013FF6
	mov r0, #8
	strb r0, [r4, #8]
	mov r0, #4
	strb r0, [r4, #9]
	mov r0, #254
	strb r0, [r4, #10]
	mov r0, #63
	and r0, r0, r7
	lsl r0, r0, #4
	mov r1, #8
	orr r0, r0, r1
	strh r0, [r4, #50]
	mov r0, #252
	lsl r0, r0, #4
	and r0, r0, r7
	lsr r0, r0, #2
	orr r0, r0, r1
	strh r0, [r4, #54]
	mov r0, #2
	add r1, r4, #0
	bl sub_08012728
	add r0, r4, #0
	bl 0x08008D90
	add r0, r4, #0
	bl sub_08014474
	b _08013FF6
_08013F36:
	ldr r5, _08013F74  @ =gUnknown_03000200
	ldr r0, [r5]
	cmp r0, #0
	bne _08013FF6
	bl sub_080123E8
	add r4, r0, #0
	cmp r4, #0
	beq _08013FF6
	mov r0, #6
	strb r0, [r4, #8]
	mov r0, #61
	strb r0, [r4, #9]
	mov r0, #63
	and r0, r0, r7
	lsl r0, r0, #4
	mov r1, #8
	orr r0, r0, r1
	strh r0, [r4, #50]
	mov r0, #252
	lsl r0, r0, #4
	and r0, r0, r7
	lsr r0, r0, #2
	orr r0, r0, r1
	strh r0, [r4, #54]
	mov r0, #2
	add r1, r4, #0
	bl sub_08012728
	str r4, [r5]
	b _08013FF6
_08013F74:
	.4byte gUnknown_03000200
_08013F78:
	ldr r1, _08014000  @ =gUnknown_08429D2C
	ldr r0, _08014004  @ =gUnknown_03006C80
	ldrb r0, [r0, #1]
	add r0, r0, r1
	ldrb r4, [r0]
	bl 0x0800099C
	mov r1, #31
	and r1, r1, r0
	add r5, r6, #0
	add r5, r5, #24
	cmp r4, r1
	bcc _08013F94
	add r5, r5, #28
_08013F94:
	ldrb r0, [r5]
	ldrb r1, [r5, #1]
	ldrb r2, [r5, #2]
	bl sub_0804C8A8
	add r4, r0, #0
	cmp r4, #0
	beq _08013FF6
	mov r0, r8
	str r0, [r4, #76]
	mov r0, #63
	and r0, r0, r7
	lsl r0, r0, #4
	mov r3, #8
	mov r6, #0
	orr r0, r0, r3
	strh r0, [r4, #50]
	mov r0, #252
	lsl r0, r0, #4
	and r0, r0, r7
	lsr r0, r0, #2
	orr r0, r0, r3
	strh r0, [r4, #54]
	ldrb r0, [r5, #3]
	add r1, r4, #0
	add r1, r1, #126
	strh r0, [r1]
	ldrb r0, [r5]
	cmp r0, #11
	bne _08013FF0
	ldr r2, _08014008  @ =gUnknown_03006A30
	mov r0, r8
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r2
	strb r3, [r0, #12]
	mov r0, r8
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r2
	add r0, r0, #56
	strb r6, [r0]
_08013FF0:
	add r0, r4, #0
	bl 0x08008D90
_08013FF6:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_08014000:
	.4byte gUnknown_08429D2C
_08014004:
	.4byte gUnknown_03006C80
_08014008:
	.4byte gUnknown_03006A30
	THUMB_FUNC_END sub_08013EC0

	THUMB_FUNC_START sub_0801400C
sub_0801400C: @ 0x0801400C
	push {lr}
	add r3, r1, #0
	lsl r1, r2, #16
	lsr r1, r1, #16
	ldrb r0, [r0, #3]
	add r2, r3, #0
	bl sub_08013EC0
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801400C

	THUMB_FUNC_START sub_08014020
sub_08014020: @ 0x08014020
	push {r4,r5,lr}
	add r5, r1, #0
	lsl r4, r2, #16
	lsr r4, r4, #16
	ldr r0, _08014044  @ =gUnknown_08429B4C
	ldrb r1, [r5, #10]
	bl sub_08014180
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r1, r4, #0
	add r2, r5, #0
	bl sub_08013EC0
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08014044:
	.4byte gUnknown_08429B4C
	THUMB_FUNC_END sub_08014020

	THUMB_FUNC_START sub_08014048
sub_08014048: @ 0x08014048
	push {r4-r7,lr}
	add r5, r1, #0
	lsl r2, r2, #16
	lsr r7, r2, #16
	ldrb r0, [r0, #2]
	lsr r0, r0, #5
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #128
	lsl r1, r1, #17
	lsl r1, r1, r0
	lsr r6, r1, #24
	ldr r0, _08014084  @ =gUnknown_03006C80
	add r4, r0, #0
	add r4, r4, #76
	ldrb r0, [r4]
	and r0, r0, r6
	cmp r0, #0
	beq _08014088
	mov r0, #16
	add r1, r7, #0
	add r2, r5, #0
	bl sub_08013EC0
	ldrb r0, [r4]
	bic r0, r0, r6
	strb r0, [r4]
	b _0801409C
	.byte 0x00
	.byte 0x00
_08014084:
	.4byte gUnknown_03006C80
_08014088:
	ldr r0, _080140A4  @ =gUnknown_08429C2C
	ldrb r1, [r5, #10]
	bl sub_08014180
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r1, r7, #0
	add r2, r5, #0
	bl sub_08013EC0
_0801409C:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080140A4:
	.4byte gUnknown_08429C2C
	THUMB_FUNC_END sub_08014048

	THUMB_FUNC_START sub_080140A8
sub_080140A8: @ 0x080140A8
	bx lr
	THUMB_FUNC_END sub_080140A8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080140AC
sub_080140AC: @ 0x080140AC
	push {r4,r5,lr}
	add r5, r1, #0
	lsl r4, r2, #16
	lsr r4, r4, #16
	ldr r0, _080140D0  @ =gUnknown_08429D0C
	ldrb r1, [r5, #10]
	bl sub_08014180
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r1, r4, #0
	add r2, r5, #0
	bl sub_08013EC0
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080140D0:
	.4byte gUnknown_08429D0C
	THUMB_FUNC_END sub_080140AC

	THUMB_FUNC_START sub_080140D4
sub_080140D4: @ 0x080140D4
	push {r4-r7,lr}
	add r5, r1, #0
	lsl r2, r2, #16
	lsr r7, r2, #16
	ldrb r0, [r0, #2]
	lsr r0, r0, #5
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #128
	lsl r1, r1, #17
	lsl r1, r1, r0
	lsr r6, r1, #24
	ldr r0, _08014110  @ =gUnknown_03006C80
	add r4, r0, #0
	add r4, r4, #76
	ldrb r0, [r4]
	and r0, r0, r6
	cmp r0, #0
	beq _08014114
	mov r0, #16
	add r1, r7, #0
	add r2, r5, #0
	bl sub_08013EC0
	ldrb r0, [r4]
	bic r0, r0, r6
	strb r0, [r4]
	b _08014128
	.byte 0x00
	.byte 0x00
_08014110:
	.4byte gUnknown_03006C80
_08014114:
	ldr r0, _08014130  @ =gUnknown_08429D0C
	ldrb r1, [r5, #10]
	bl sub_08014180
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r1, r7, #0
	add r2, r5, #0
	bl sub_08013EC0
_08014128:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08014130:
	.4byte gUnknown_08429D0C
	THUMB_FUNC_END sub_080140D4

	THUMB_FUNC_START sub_08014134
sub_08014134: @ 0x08014134
	push {r4,r5,lr}
	add r4, r1, #0
	lsl r2, r2, #16
	lsr r5, r2, #16
	ldr r0, _0801415C  @ =gUnknown_03000200
	ldr r0, [r0]
	cmp r0, #0
	bne _08014160
	bl 0x0800099C
	mov r1, #1
	and r1, r1, r0
	cmp r1, #0
	beq _08014160
	mov r0, #15
	add r1, r5, #0
	add r2, r4, #0
	bl sub_08013EC0
	b _08014174
_0801415C:
	.4byte gUnknown_03000200
_08014160:
	ldr r0, _0801417C  @ =gUnknown_08429B4C
	ldrb r1, [r4, #10]
	bl sub_08014180
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r1, r5, #0
	add r2, r4, #0
	bl sub_08013EC0
_08014174:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801417C:
	.4byte gUnknown_08429B4C
	THUMB_FUNC_END sub_08014134

	THUMB_FUNC_START sub_08014180
sub_08014180: @ 0x08014180
	push {r4,r5,lr}
	add r5, r0, #0
	lsl r4, r1, #24
	lsr r4, r4, #24
	bl 0x0800099C
	ldr r1, _080141A8  @ =gUnknown_03006C80
	add r1, r1, #84
	add r4, r4, r1
	ldrb r2, [r4]
	lsl r2, r2, #2
	add r2, r2, r5
	mov r1, #31
	and r1, r1, r0
	ldr r0, [r2]
	add r0, r0, r1
	ldrb r0, [r0]
	pop {r4,r5}
	pop {r1}
	bx r1
_080141A8:
	.4byte gUnknown_03006C80
	THUMB_FUNC_END sub_08014180

	THUMB_FUNC_START sub_080141AC
sub_080141AC: @ 0x080141AC
	push {r4,lr}
	lsl r0, r0, #24
	ldr r1, _080141E4  @ =gUnknown_03006C80
	lsr r0, r0, #22
	add r1, r1, #12
	add r0, r0, r1
	ldr r4, [r0]
	mov r3, #0
	mov r2, #3
_080141BE:
	lsl r0, r2, #24
	asr r2, r0, #24
	lsl r0, r2, #2
	add r0, r0, r1
	ldr r0, [r0]
	sub r0, r0, r4
	cmp r0, r3
	ble _080141D0
	add r3, r0, #0
_080141D0:
	sub r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r0, #0
	bge _080141BE
	add r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080141E4:
	.4byte gUnknown_03006C80
	THUMB_FUNC_END sub_080141AC

	THUMB_FUNC_START sub_080141E8
sub_080141E8: @ 0x080141E8
	push {r4,r5,lr}
	ldr r0, _08014244  @ =gUnknown_03006C80
	mov r4, #0
	ldrb r0, [r0]
	cmp r4, r0
	bcs _0801423E
_080141F4:
	add r0, r4, #0
	bl sub_080141AC
	add r3, r0, #0
	ldr r0, _08014244  @ =gUnknown_03006C80
	ldrb r0, [r0, #1]
	lsl r0, r0, #4
	ldr r1, _08014248  @ =gUnknown_08429A4C
	add r1, r0, r1
	mov r2, #0
	ldrh r0, [r1]
	add r5, r4, #1
	cmp r0, r3
	bgt _08014222
_08014210:
	add r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	add r1, r1, #2
	cmp r2, #6
	bhi _08014222
	ldrh r0, [r1]
	cmp r0, r3
	ble _08014210
_08014222:
	ldr r3, _08014244  @ =gUnknown_03006C80
	add r0, r3, #0
	add r0, r0, #84
	add r0, r4, r0
	add r1, r2, #0
	cmp r2, #7
	bls _08014232
	mov r1, #7
_08014232:
	strb r1, [r0]
	lsl r0, r5, #24
	lsr r4, r0, #24
	ldrb r3, [r3]
	cmp r4, r3
	bcc _080141F4
_0801423E:
	pop {r4,r5}
	pop {r0}
	bx r0
_08014244:
	.4byte gUnknown_03006C80
_08014248:
	.4byte gUnknown_08429A4C
	THUMB_FUNC_END sub_080141E8

	THUMB_FUNC_START sub_0801424C
sub_0801424C: @ 0x0801424C
	push {r4-r7,lr}
	ldr r1, _080142C4  @ =gUnknown_03006C80
	ldrb r0, [r1, #6]
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r2, #0
	ldrb r3, [r1]
	add r5, r1, #0
	ldr r7, _080142C8  @ =gUnknown_08429D70
	cmp r2, r3
	bcs _08014286
	add r0, r5, #0
	add r0, r0, #45
	ldrb r0, [r0]
	cmp r0, #63
	bne _08014286
	add r1, r3, #0
_08014270:
	add r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, r1
	bcs _08014286
	lsl r0, r2, #3
	add r0, r0, r5
	add r0, r0, #45
	ldrb r0, [r0]
	cmp r0, #63
	beq _08014270
_08014286:
	ldrb r1, [r5]
	cmp r2, r1
	bne _08014292
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
_08014292:
	ldr r3, _080142CC  @ =0x0000FFFF
	mov r2, #0
	lsl r4, r4, #2
	mov r12, r4
	cmp r2, r1
	bcs _080142B6
	add r4, r5, #0
_080142A0:
	lsl r0, r2, #3
	add r0, r0, r4
	ldrh r6, [r0, #46]
	cmp r3, r6
	bls _080142AC
	ldrh r3, [r0, #46]
_080142AC:
	add r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, r1
	bcc _080142A0
_080142B6:
	cmp r3, #0
	beq _080142DA
	cmp r3, #5
	bhi _080142D0
	mov r3, #1
	b _080142DA
	.byte 0x00
	.byte 0x00
_080142C4:
	.4byte gUnknown_03006C80
_080142C8:
	.4byte gUnknown_08429D70
_080142CC:
	.4byte 0x0000FFFF
_080142D0:
	cmp r3, #10
	bhi _080142D8
	mov r3, #2
	b _080142DA
_080142D8:
	mov r3, #3
_080142DA:
	ldrb r0, [r5, #1]
	lsl r0, r0, #2
	add r0, r0, r7
	ldr r0, [r0]
	add r0, r0, r12
	add r0, r0, r3
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, r0, #77
	strb r1, [r0]
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801424C

	THUMB_FUNC_START sub_080142F4
sub_080142F4: @ 0x080142F4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r6, r0, #0
	add r4, r2, #0
	lsl r1, r1, #24
	lsr r5, r1, #24
	ldr r0, _08014358  @ =gUnknown_03005AD8
	ldrb r0, [r0]
	cmp r0, #112
	bls _0801430C
	b _08014460
_0801430C:
	add r0, r6, #0
	bl 0x080093A4
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801431A
	b _08014460
_0801431A:
	cmp r4, #0
	bne _08014320
	b _08014460
_08014320:
	bl 0x0800099C
	mov r1, #255
	and r1, r1, r0
	ldr r0, _0801435C  @ =gUnknown_0842AA44
	add r0, r5, r0
	ldrb r0, [r0]
	cmp r1, r0
	bcc _08014334
	b _08014460
_08014334:
	add r0, r4, #0
	bl sub_0800C004
	lsl r0, r0, #24
	cmp r0, #0
	beq _08014364
	ldrb r0, [r4, #8]
	cmp r0, #3
	beq _08014364
	ldrb r0, [r4, #10]
	cmp r0, #3
	bhi _08014364
	ldr r0, _08014360  @ =gUnknown_03006C80
	add r0, r0, #84
	ldrb r4, [r4, #10]
	add r0, r0, r4
	ldrb r4, [r0]
	b _08014366
_08014358:
	.4byte gUnknown_03005AD8
_0801435C:
	.4byte gUnknown_0842AA44
_08014360:
	.4byte gUnknown_03006C80
_08014364:
	mov r4, #5
_08014366:
	bl 0x0800099C
	ldr r2, _080143A4  @ =gUnknown_0842AA30
	lsl r1, r5, #2
	add r1, r1, r2
	ldr r2, _080143A8  @ =gUnknown_03006C80
	mov r12, r2
	ldrb r7, [r2, #1]
	ldr r2, [r1]
	lsl r1, r7, #2
	add r1, r1, r2
	ldr r2, [r1]
	lsl r1, r4, #2
	add r1, r1, r2
	mov r2, #31
	mov r8, r2
	and r0, r0, r2
	ldr r1, [r1]
	add r1, r1, r0
	ldrb r1, [r1]
	add r3, r1, #0
	lsl r0, r1, #2
	ldr r5, _080143AC  @ =gUnknown_08429A00
	add r2, r0, r5
	cmp r1, #17
	beq _080143F4
	cmp r1, #17
	bgt _080143B0
	cmp r1, #14
	beq _080143B6
	b _08014432
_080143A4:
	.4byte gUnknown_0842AA30
_080143A8:
	.4byte gUnknown_03006C80
_080143AC:
	.4byte gUnknown_08429A00
_080143B0:
	cmp r3, #18
	beq _08014414
	b _08014432
_080143B6:
	bl sub_080123E8
	add r4, r0, #0
	cmp r4, #0
	beq _08014460
	mov r0, #8
	strb r0, [r4, #8]
	mov r0, #4
	strb r0, [r4, #9]
	mov r0, #255
	strb r0, [r4, #10]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0803D3D0
	ldrh r0, [r6, #50]
	strh r0, [r4, #50]
	ldrh r0, [r6, #54]
	strh r0, [r4, #54]
	add r2, r4, #0
	add r2, r2, #94
	ldrb r1, [r2]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	strb r0, [r2]
	mov r0, #2
	add r1, r4, #0
	bl sub_08012728
	b _08014460
_080143F4:
	ldr r0, _08014410  @ =gUnknown_08429D2C
	add r0, r7, r0
	ldrb r4, [r0]
	bl 0x0800099C
	mov r1, r8
	and r0, r0, r1
	add r2, r5, #0
	add r2, r2, #24
	cmp r4, r0
	bcc _08014432
	add r2, r2, #28
	b _08014432
	.byte 0x00
	.byte 0x00
_08014410:
	.4byte gUnknown_08429D2C
_08014414:
	ldr r1, _0801446C  @ =gUnknown_0842AA49
	mov r0, r12
	add r0, r0, #77
	ldrb r0, [r0]
	add r0, r0, r1
	ldrb r4, [r0]
	bl 0x0800099C
	mov r2, r8
	and r0, r0, r2
	add r2, r5, #0
	add r2, r2, #28
	cmp r4, r0
	bcc _08014432
	add r2, r2, #4
_08014432:
	ldrb r0, [r2]
	ldrb r1, [r2, #1]
	ldrb r2, [r2, #2]
	bl sub_0804C8A8
	add r4, r0, #0
	cmp r4, #0
	beq _08014460
	ldrh r0, [r6, #50]
	strh r0, [r4, #50]
	ldrh r0, [r6, #54]
	strh r0, [r4, #54]
	add r0, r6, #0
	add r0, r0, #80
	ldrh r1, [r0]
	ldr r0, _08014470  @ =0x0000CFFF
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #80
	strh r0, [r1]
	add r0, r4, #0
	bl 0x08008DD8
_08014460:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801446C:
	.4byte gUnknown_0842AA49
_08014470:
	.4byte 0x0000CFFF
	THUMB_FUNC_END sub_080142F4

	THUMB_FUNC_START sub_08014474
sub_08014474: @ 0x08014474
	push {r4,lr}
	add r4, r0, #0
	mov r0, #36
	mov r1, #0
	mov r2, #0
	bl sub_0804C8A8
	add r1, r0, #0
	cmp r1, #0
	beq _08014498
	ldrh r0, [r4, #50]
	strh r0, [r1, #50]
	ldrh r0, [r4, #54]
	strh r0, [r1, #54]
	str r4, [r1, #76]
	add r0, r1, #0
	bl 0x08008D90
_08014498:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08014474

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080144A0
sub_080144A0: @ 0x080144A0
	ldr r0, _080144DC  @ =gUnknown_0201F020
	ldr r2, _080144E0  @ =gUnknown_030004C0
	str r2, [r0]
	ldr r3, _080144E4  @ =gUnknown_08142374
	ldrh r0, [r3, #32]
	strh r0, [r2]
	ldr r0, _080144E8  @ =gUnknown_0200B320
	add r1, r2, #0
	sub r1, r1, #12
	str r1, [r0]
	ldrh r0, [r3, #34]
	strh r0, [r1]
	ldr r1, _080144EC  @ =gUnknown_02002440
	mov r0, #0
	sub r2, r2, #32
	mov r3, #0
_080144C0:
	str r3, [r1]
	add r0, r0, #1
	lsl r0, r0, #16
	lsr r0, r0, #16
	add r1, r1, #8
	cmp r0, #7
	bls _080144C0
	ldrh r1, [r2]
	mov r3, #192
	lsl r3, r3, #3
	add r0, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	bx lr
_080144DC:
	.4byte gUnknown_0201F020
_080144E0:
	.4byte gUnknown_030004C0
_080144E4:
	.4byte gUnknown_08142374
_080144E8:
	.4byte gUnknown_0200B320
_080144EC:
	.4byte gUnknown_02002440
	THUMB_FUNC_END sub_080144A0

	THUMB_FUNC_START sub_080144F0
sub_080144F0: @ 0x080144F0
	push {r4-r7,lr}
	lsl r0, r0, #16
	lsr r5, r0, #16
	lsl r1, r1, #16
	lsr r4, r1, #16
	lsl r7, r2, #16
	lsr r1, r7, #16
	ldr r0, _08014548  @ =0x000007FF
	cmp r5, r0
	bhi _080145A8
	add r0, r1, #0
	bl sub_08015DC0
	add r2, r0, #0
	lsl r1, r5, #1
	ldr r3, _0801454C  @ =0x00006004
	add r0, r2, r3
	add r0, r0, r1
	ldrh r6, [r0]
	lsl r1, r4, #1
	add r0, r2, #4
	add r0, r0, r1
	strh r6, [r0]
	ldr r0, _08014550  @ =0x00002004
	add r1, r2, r0
	add r1, r1, r4
	ldr r0, _08014554  @ =gUnknown_0814AB24
	add r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r1]
	mov r1, #63
	and r1, r1, r4
	lsl r1, r1, #1
	mov r0, #252
	lsl r0, r0, #4
	and r0, r0, r4
	lsl r0, r0, #2
	add r1, r1, r0
	lsr r0, r7, #30
	cmp r0, #2
	beq _0801455C
	lsl r1, r1, #1
	ldr r0, _08014558  @ =gUnknown_02016D90
	b _08014560
_08014548:
	.4byte 0x000007FF
_0801454C:
	.4byte 0x00006004
_08014550:
	.4byte 0x00002004
_08014554:
	.4byte gUnknown_0814AB24
_08014558:
	.4byte gUnknown_02016D90
_0801455C:
	lsl r1, r1, #1
	ldr r0, _08014598  @ =gUnknown_020031D0
_08014560:
	add r3, r1, r0
	lsl r0, r6, #3
	ldr r1, _0801459C  @ =0x00007004
	add r0, r0, r1
	add r0, r2, r0
	ldrh r1, [r0]
	strh r1, [r3]
	add r0, r0, #2
	ldrh r1, [r0]
	strh r1, [r3, #2]
	add r0, r0, #2
	mov r1, #128
	lsl r1, r1, #1
	add r2, r3, r1
	ldrh r1, [r0]
	strh r1, [r2]
	mov r2, #129
	lsl r2, r2, #1
	add r1, r3, r2
	ldrh r0, [r0, #2]
	strh r0, [r1]
	ldr r1, _080145A0  @ =gUnknown_02000028
	ldr r0, _080145A4  @ =gUnknown_03000204
	ldrb r0, [r0]
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0]
	b _080145AE
_08014598:
	.4byte gUnknown_020031D0
_0801459C:
	.4byte 0x00007004
_080145A0:
	.4byte gUnknown_02000028
_080145A4:
	.4byte gUnknown_03000204
_080145A8:
	add r0, r4, #0
	bl sub_0801478C
_080145AE:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080144F0

	THUMB_FUNC_START sub_080145B4
sub_080145B4: @ 0x080145B4
	push {lr}
	lsl r0, r0, #16
	lsr r0, r0, #16
	lsl r1, r1, #16
	lsr r1, r1, #16
	bl 0x08009380
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, #66
	eor r0, r0, r1
	neg r1, r0
	orr r1, r1, r0
	lsr r1, r1, #31
	add r0, r1, #0
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080145B4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080145D8
sub_080145D8: @ 0x080145D8
	push {r4-r6,lr}
	lsl r0, r0, #16
	lsr r6, r0, #16
	lsl r1, r1, #16
	lsr r5, r1, #16
	add r0, r6, #0
	add r1, r5, #0
	bl sub_080145B4
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801464C
	add r0, r6, #0
	sub r0, r0, #64
	lsl r0, r0, #16
	lsr r0, r0, #16
	add r1, r5, #0
	bl sub_080145B4
	add r4, r0, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	add r0, r6, #1
	lsl r0, r0, #16
	lsr r0, r0, #16
	add r1, r5, #0
	bl sub_080145B4
	lsl r0, r0, #24
	lsr r0, r0, #23
	orr r4, r4, r0
	add r0, r6, #0
	add r0, r0, #64
	lsl r0, r0, #16
	lsr r0, r0, #16
	add r1, r5, #0
	bl sub_080145B4
	lsl r0, r0, #24
	lsr r0, r0, #22
	orr r4, r4, r0
	sub r0, r6, #1
	lsl r0, r0, #16
	lsr r0, r0, #16
	add r1, r5, #0
	bl sub_080145B4
	lsl r0, r0, #24
	lsr r0, r0, #21
	orr r4, r4, r0
	ldr r0, _08014654  @ =gUnknown_0813815C
	lsl r4, r4, #1
	add r4, r4, r0
	ldrh r0, [r4]
	add r1, r6, #0
	add r2, r5, #0
	bl sub_080144F0
_0801464C:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08014654:
	.4byte gUnknown_0813815C
	THUMB_FUNC_END sub_080145D8

	THUMB_FUNC_START sub_08014658
sub_08014658: @ 0x08014658
	push {r4,r5,lr}
	lsl r0, r0, #16
	lsr r3, r0, #16
	lsl r1, r1, #16
	lsr r4, r1, #16
	lsl r2, r2, #16
	lsr r5, r2, #16
	mov r0, #172
	lsl r0, r0, #1
	cmp r3, r0
	bne _080146C4
	ldr r0, _080146C0  @ =gUnknown_03006C80
	ldrb r0, [r0, #1]
	cmp r0, #1
	beq _080146C4
	add r0, r3, #0
	add r1, r4, #0
	add r2, r5, #0
	bl 0x08008F78
	add r0, r4, #0
	add r1, r5, #0
	bl sub_080145D8
	add r0, r4, #1
	lsl r0, r0, #16
	lsr r0, r0, #16
	add r1, r5, #0
	bl sub_080145D8
	sub r0, r4, #1
	lsl r0, r0, #16
	lsr r0, r0, #16
	add r1, r5, #0
	bl sub_080145D8
	add r0, r4, #0
	add r0, r0, #64
	lsl r0, r0, #16
	lsr r0, r0, #16
	add r1, r5, #0
	bl sub_080145D8
	add r0, r4, #0
	sub r0, r0, #64
	lsl r0, r0, #16
	lsr r0, r0, #16
	add r1, r5, #0
	bl sub_080145D8
	b _080146CE
	.byte 0x00
	.byte 0x00
_080146C0:
	.4byte gUnknown_03006C80
_080146C4:
	add r0, r3, #0
	add r1, r4, #0
	add r2, r5, #0
	bl sub_080144F0
_080146CE:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08014658

	THUMB_FUNC_START sub_080146D4
sub_080146D4: @ 0x080146D4
	push {r4-r7,lr}
	add r4, r1, #0
	add r5, r2, #0
	lsl r0, r0, #16
	lsr r7, r0, #16
	lsl r4, r4, #16
	lsr r4, r4, #16
	lsl r5, r5, #16
	lsr r0, r5, #16
	bl sub_08015DC0
	add r6, r0, #0
	lsl r1, r4, #1
	add r0, r6, #4
	add r0, r0, r1
	strh r7, [r0]
	ldr r0, _0801472C  @ =0x00002004
	add r2, r6, r0
	add r2, r2, r4
	ldr r1, _08014730  @ =gUnknown_0814AB24
	mov r12, r1
	lsl r1, r7, #1
	ldr r3, _08014734  @ =0x00005004
	add r0, r6, r3
	add r0, r0, r1
	ldrh r0, [r0]
	add r0, r0, r12
	ldrb r0, [r0]
	strb r0, [r2]
	mov r1, #63
	and r1, r1, r4
	lsl r1, r1, #1
	mov r0, #252
	lsl r0, r0, #4
	and r0, r0, r4
	lsl r0, r0, #2
	add r1, r1, r0
	lsr r5, r5, #30
	cmp r5, #2
	beq _0801473C
	lsl r1, r1, #1
	ldr r0, _08014738  @ =gUnknown_02016D90
	b _08014740
	.byte 0x00
	.byte 0x00
_0801472C:
	.4byte 0x00002004
_08014730:
	.4byte gUnknown_0814AB24
_08014734:
	.4byte 0x00005004
_08014738:
	.4byte gUnknown_02016D90
_0801473C:
	lsl r1, r1, #1
	ldr r0, _0801477C  @ =gUnknown_020031D0
_08014740:
	add r3, r1, r0
	lsl r0, r7, #3
	ldr r1, _08014780  @ =0x00007004
	add r0, r0, r1
	add r0, r6, r0
	ldrh r1, [r0]
	strh r1, [r3]
	add r0, r0, #2
	ldrh r1, [r0]
	strh r1, [r3, #2]
	add r0, r0, #2
	mov r1, #128
	lsl r1, r1, #1
	add r2, r3, r1
	ldrh r1, [r0]
	strh r1, [r2]
	mov r2, #129
	lsl r2, r2, #1
	add r1, r3, r2
	ldrh r0, [r0, #2]
	strh r0, [r1]
	ldr r1, _08014784  @ =gUnknown_02000028
	ldr r0, _08014788  @ =gUnknown_03000204
	ldrb r0, [r0]
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0]
	pop {r4-r7}
	pop {r0}
	bx r0
_0801477C:
	.4byte gUnknown_020031D0
_08014780:
	.4byte 0x00007004
_08014784:
	.4byte gUnknown_02000028
_08014788:
	.4byte gUnknown_03000204
	THUMB_FUNC_END sub_080146D4

	THUMB_FUNC_START sub_0801478C
sub_0801478C: @ 0x0801478C
	push {r4-r7,lr}
	add r4, r0, #0
	add r5, r1, #0
	lsl r4, r4, #16
	lsr r4, r4, #16
	lsl r5, r5, #16
	lsr r0, r5, #16
	bl sub_08015DC0
	add r6, r0, #0
	lsl r2, r4, #1
	add r1, r6, #4
	add r1, r1, r2
	ldr r3, _080147E8  @ =0x00003004
	add r0, r6, r3
	add r0, r0, r2
	ldrh r7, [r0]
	strh r7, [r1]
	ldr r0, _080147EC  @ =0x00002004
	add r2, r6, r0
	add r2, r2, r4
	ldr r1, _080147F0  @ =gUnknown_0814AB24
	mov r12, r1
	lsl r1, r7, #1
	ldr r3, _080147F4  @ =0x00005004
	add r0, r6, r3
	add r0, r0, r1
	ldrh r0, [r0]
	add r0, r0, r12
	ldrb r0, [r0]
	strb r0, [r2]
	mov r1, #63
	and r1, r1, r4
	lsl r1, r1, #1
	mov r0, #252
	lsl r0, r0, #4
	and r0, r0, r4
	lsl r0, r0, #2
	add r1, r1, r0
	lsr r5, r5, #30
	cmp r5, #2
	beq _080147FC
	lsl r1, r1, #1
	ldr r0, _080147F8  @ =gUnknown_02016D90
	b _08014800
	.byte 0x00
	.byte 0x00
_080147E8:
	.4byte 0x00003004
_080147EC:
	.4byte 0x00002004
_080147F0:
	.4byte gUnknown_0814AB24
_080147F4:
	.4byte 0x00005004
_080147F8:
	.4byte gUnknown_02016D90
_080147FC:
	lsl r1, r1, #1
	ldr r0, _0801483C  @ =gUnknown_020031D0
_08014800:
	add r3, r1, r0
	lsl r0, r7, #3
	ldr r1, _08014840  @ =0x00007004
	add r0, r0, r1
	add r0, r6, r0
	ldrh r1, [r0]
	strh r1, [r3]
	add r0, r0, #2
	ldrh r1, [r0]
	strh r1, [r3, #2]
	add r0, r0, #2
	mov r1, #128
	lsl r1, r1, #1
	add r2, r3, r1
	ldrh r1, [r0]
	strh r1, [r2]
	mov r2, #129
	lsl r2, r2, #1
	add r1, r3, r2
	ldrh r0, [r0, #2]
	strh r0, [r1]
	ldr r1, _08014844  @ =gUnknown_02000028
	ldr r0, _08014848  @ =gUnknown_03000204
	ldrb r0, [r0]
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0]
	pop {r4-r7}
	pop {r0}
	bx r0
_0801483C:
	.4byte gUnknown_020031D0
_08014840:
	.4byte 0x00007004
_08014844:
	.4byte gUnknown_02000028
_08014848:
	.4byte gUnknown_03000204
	THUMB_FUNC_END sub_0801478C

	THUMB_FUNC_START sub_0801484C
sub_0801484C: @ 0x0801484C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r5, r0, #0
	lsl r1, r1, #24
	cmp r1, #0
	bne _08014876
	ldr r4, _080148B4  @ =gUnknown_0200B324
	mov r1, #128
	lsl r1, r1, #6
	add r0, r4, #0
	bl zero_memory
	mov r0, #128
	lsl r0, r0, #6
	add r4, r4, r0
	mov r1, #128
	lsl r1, r1, #5
	add r0, r4, #0
	bl zero_memory
_08014876:
	ldr r7, _080148B8  @ =0x04000004
	mov r0, #1
	mov r8, r0
_0801487C:
	ldr r4, [r5, #4]
	ldr r2, [r5]
	add r6, r5, #0
	add r6, r6, #12
_08014884:
	ldrh r1, [r7]
	mov r0, r8
	and r0, r0, r1
	cmp r0, #0
	beq _08014884
	add r3, r4, #0
	cmp r3, #0
	beq _080148DC
	ldr r0, _080148BC  @ =gUnknown_03000BA4
	ldr r1, _080148C0  @ =0x7FFFFFFF
	and r2, r2, r1
	ldr r0, [r0]
	add r1, r0, r2
	ldr r0, [r5, #8]
	cmp r0, #0
	bge _080148CE
	lsr r0, r3, #24
	cmp r0, #6
	bne _080148C4
	add r0, r1, #0
	add r1, r3, #0
	bl LZ77UnCompVram
	b _080148E6
_080148B4:
	.4byte gUnknown_0200B324
_080148B8:
	.4byte 0x04000004
_080148BC:
	.4byte gUnknown_03000BA4
_080148C0:
	.4byte 0x7FFFFFFF
_080148C4:
	add r0, r1, #0
	add r1, r3, #0
	bl LZ77UnCompWram
	b _080148E6
_080148CE:
	lsl r2, r0, #10
	lsr r2, r2, #11
	add r0, r1, #0
	add r1, r4, #0
	bl CpuSet
	b _080148E6
_080148DC:
	ldr r0, _080148FC  @ =0x7FFFFFFF
	and r2, r2, r0
	add r0, r2, #0
	bl sub_0800B890
_080148E6:
	add r5, r6, #0
	add r0, r5, #0
	sub r0, r0, #12
	ldr r0, [r0]
	cmp r0, #0
	blt _0801487C
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_080148FC:
	.4byte 0x7FFFFFFF
	THUMB_FUNC_END sub_0801484C

	THUMB_FUNC_START sub_08014900
sub_08014900: @ 0x08014900
	push {r4-r6,lr}
	ldr r4, _0801491C  @ =gUnknown_0202A500
	mov r5, #0
	ldr r0, _08014920  @ =gUnknown_02000004
	add r6, r0, #0
	ldrb r0, [r6]
	cmp r5, r0
	bcs _08014942
_08014910:
	ldrb r0, [r4, #3]
	cmp r0, #1
	beq _08014924
	cmp r0, #2
	beq _0801492C
	b _08014932
_0801491C:
	.4byte gUnknown_0202A500
_08014920:
	.4byte gUnknown_02000004
_08014924:
	add r0, r4, #0
	bl sub_08014958
	b _08014932
_0801492C:
	add r0, r4, #0
	bl sub_08014E60
_08014932:
	add r0, r5, #1
	lsl r0, r0, #16
	lsr r5, r0, #16
	add r4, r4, #8
	ldr r0, _08014950  @ =gUnknown_02000004
	ldrb r0, [r0]
	cmp r5, r0
	bcc _08014910
_08014942:
	mov r1, #0
	strb r1, [r6]
	ldr r0, _08014954  @ =gUnknown_02016324
	strb r1, [r0]
	pop {r4-r6}
	pop {r0}
	bx r0
_08014950:
	.4byte gUnknown_02000004
_08014954:
	.4byte gUnknown_02016324
	THUMB_FUNC_END sub_08014900

	THUMB_FUNC_START sub_08014958
sub_08014958: @ 0x08014958
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	mov r1, #0
	mov r8, r1
	ldm r0!, {r2}
	lsr r4, r2, #16
	mov r1, #7
	and r4, r4, r1
	lsl r4, r4, #24
	lsr r3, r4, #24
	str r3, [sp, #4]
	ldr r7, _080149A8  @ =0x00000FFF
	and r7, r7, r2
	mov r1, #192
	lsl r1, r1, #8
	and r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r0]
	str r0, [sp]
	add r0, r1, #0
	bl sub_08015DC0
	mov r10, r0
	lsl r0, r7, #1
	add r0, r0, #4
	mov r2, r10
	add r5, r2, r0
	lsr r4, r4, #25
	cmp r4, #1
	beq _08014A88
	cmp r4, #1
	bgt _080149AC
	cmp r4, #0
	beq _080149BA
	b _08014CF8
	.byte 0x00
	.byte 0x00
_080149A8:
	.4byte 0x00000FFF
_080149AC:
	cmp r4, #2
	bne _080149B2
	b _08014B5C
_080149B2:
	cmp r4, #3
	bne _080149B8
	b _08014C34
_080149B8:
	b _08014CF8
_080149BA:
	ldrh r0, [r5]
	ldr r4, [sp]
	add r4, r4, #80
	ldrh r1, [r4]
	bl 0x080094CC
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldr r6, _08014A78  @ =0x00000141
	cmp r0, r6
	beq _080149F6
	sub r5, r5, #2
	ldrh r0, [r5]
	ldrh r1, [r4]
	bl 0x080094CC
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, r6
	beq _080149F6
	sub r5, r5, #2
	ldrh r0, [r5]
	ldrh r1, [r4]
	bl 0x080094CC
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, r6
	beq _080149F6
	sub r5, r5, #2
_080149F6:
	mov r3, #1
	mov r9, r3
	sub r5, r5, #128
	ldrh r0, [r5]
	ldrh r1, [r4]
	bl 0x080094CC
	lsl r0, r0, #16
	lsr r6, r0, #16
	ldr r0, _08014A7C  @ =0x00000145
	cmp r6, r0
	bne _08014A2A
	mov r0, #2
	mov r9, r0
	sub r5, r5, #128
	ldrh r0, [r5]
	ldrh r1, [r4]
	bl 0x080094CC
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, r6
	bne _08014A2A
	mov r1, #3
	mov r9, r1
	sub r5, r5, #128
_08014A2A:
	sub r0, r5, #4
	mov r2, r10
	sub r0, r0, r2
	lsl r0, r0, #15
	lsr r7, r0, #16
	add r0, r7, #0
	ldr r1, [sp, #8]
	bl 0x0800932C
	lsl r0, r0, #16
	ldr r3, _08014A80  @ =0xFEC60000
	add r0, r0, r3
	lsr r0, r0, #16
	cmp r0, #1
	bls _08014A4A
	b _08014E4E
_08014A4A:
	ldr r1, _08014A84  @ =0x00001FC4
	add r0, r7, r1
	mov r2, r10
	add r1, r2, r0
	mov r2, #0
	mov r3, r9
	lsl r0, r3, #16
	lsr r0, r0, #16
	cmp r2, r0
	bhi _08014A74
	add r3, r0, #0
_08014A60:
	ldrb r0, [r1]
	cmp r0, #0
	beq _08014A68
	b _08014E4E
_08014A68:
	add r0, r2, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	add r1, r1, #1
	cmp r2, r3
	bls _08014A60
_08014A74:
	mov r0, #1
	b _08014CF6
_08014A78:
	.4byte 0x00000141
_08014A7C:
	.4byte 0x00000145
_08014A80:
	.4byte 0xFEC60000
_08014A84:
	.4byte 0x00001FC4
_08014A88:
	ldrh r0, [r5]
	ldr r4, [sp]
	add r4, r4, #80
	ldrh r1, [r4]
	bl 0x080094CC
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldr r6, _08014B50  @ =0x00000141
	cmp r0, r6
	beq _08014AC4
	add r5, r5, #128
	ldrh r0, [r5]
	ldrh r1, [r4]
	bl 0x080094CC
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, r6
	beq _08014AC4
	add r5, r5, #128
	ldrh r0, [r5]
	ldrh r1, [r4]
	bl 0x080094CC
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, r6
	beq _08014AC4
	add r5, r5, #128
_08014AC4:
	mov r1, #1
	mov r9, r1
	sub r5, r5, #128
	ldrh r0, [r5]
	ldrh r1, [r4]
	bl 0x080094CC
	lsl r0, r0, #16
	lsr r6, r0, #16
	ldr r0, _08014B54  @ =0x00000145
	cmp r6, r0
	bne _08014AF8
	mov r2, #2
	mov r9, r2
	sub r5, r5, #128
	ldrh r0, [r5]
	ldrh r1, [r4]
	bl 0x080094CC
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, r6
	bne _08014AF8
	mov r3, #3
	mov r9, r3
	sub r5, r5, #128
_08014AF8:
	sub r0, r5, #4
	mov r1, r10
	sub r0, r0, r1
	lsl r0, r0, #15
	lsr r7, r0, #16
	add r0, r7, #0
	ldr r1, [sp, #8]
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r1, r0, #16
	mov r0, #159
	lsl r0, r0, #1
	cmp r1, r0
	beq _08014B1E
	sub r0, r0, #4
	cmp r1, r0
	beq _08014B1E
	b _08014E4E
_08014B1E:
	mov r2, r9
	add r0, r7, r2
	ldr r3, _08014B58  @ =0x00002005
	add r0, r0, r3
	mov r2, r10
	add r1, r2, r0
	mov r2, #0
	mov r3, r9
	lsl r0, r3, #16
	lsr r0, r0, #16
	cmp r2, r0
	bhi _08014B4C
	add r3, r0, #0
_08014B38:
	ldrb r0, [r1]
	cmp r0, #0
	beq _08014B40
	b _08014E4E
_08014B40:
	add r0, r2, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	add r1, r1, #64
	cmp r2, r3
	bls _08014B38
_08014B4C:
	mov r0, #2
	b _08014CF6
_08014B50:
	.4byte 0x00000141
_08014B54:
	.4byte 0x00000145
_08014B58:
	.4byte 0x00002005
_08014B5C:
	ldrh r0, [r5]
	ldr r4, [sp]
	add r4, r4, #80
	ldrh r1, [r4]
	bl 0x080094CC
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r6, #160
	lsl r6, r6, #1
	cmp r0, r6
	beq _08014B9A
	add r5, r5, #2
	ldrh r0, [r5]
	ldrh r1, [r4]
	bl 0x080094CC
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, r6
	beq _08014B9A
	add r5, r5, #2
	ldrh r0, [r5]
	ldrh r1, [r4]
	bl 0x080094CC
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, r6
	beq _08014B9A
	add r5, r5, #2
_08014B9A:
	mov r1, #1
	mov r9, r1
	sub r5, r5, #2
	ldrh r0, [r5]
	ldrh r1, [r4]
	bl 0x080094CC
	lsl r0, r0, #16
	lsr r6, r0, #16
	ldr r0, _08014C2C  @ =0x00000143
	cmp r6, r0
	bne _08014BCE
	mov r2, #2
	mov r9, r2
	sub r5, r5, #2
	ldrh r0, [r5]
	ldrh r1, [r4]
	bl 0x080094CC
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, r6
	bne _08014BCE
	mov r3, #3
	mov r9, r3
	sub r5, r5, #2
_08014BCE:
	sub r0, r5, #4
	mov r1, r10
	sub r0, r0, r1
	lsl r0, r0, #15
	lsr r7, r0, #16
	add r0, r7, #0
	ldr r1, [sp, #8]
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r1, r0, #16
	mov r0, #158
	lsl r0, r0, #1
	cmp r1, r0
	beq _08014BF4
	sub r0, r0, #2
	cmp r1, r0
	beq _08014BF4
	b _08014E4E
_08014BF4:
	mov r0, r9
	add r0, r0, #1
	lsl r0, r0, #6
	add r0, r7, r0
	ldr r2, _08014C30  @ =0x00002004
	add r0, r0, r2
	mov r3, r10
	add r1, r3, r0
	mov r2, #0
	mov r3, r9
	lsl r0, r3, #16
	lsr r0, r0, #16
	cmp r2, r0
	bhi _08014C26
	add r3, r0, #0
_08014C12:
	ldrb r0, [r1]
	cmp r0, #0
	beq _08014C1A
	b _08014E4E
_08014C1A:
	add r0, r2, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	add r1, r1, #1
	cmp r2, r3
	bls _08014C12
_08014C26:
	mov r0, #3
	b _08014CF6
	.byte 0x00
	.byte 0x00
_08014C2C:
	.4byte 0x00000143
_08014C30:
	.4byte 0x00002004
_08014C34:
	ldrh r0, [r5]
	ldr r4, [sp]
	add r4, r4, #80
	ldrh r1, [r4]
	bl 0x080094CC
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r6, #160
	lsl r6, r6, #1
	cmp r0, r6
	beq _08014C72
	sub r5, r5, #128
	ldrh r0, [r5]
	ldrh r1, [r4]
	bl 0x080094CC
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, r6
	beq _08014C72
	sub r5, r5, #128
	ldrh r0, [r5]
	ldrh r1, [r4]
	bl 0x080094CC
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, r6
	beq _08014C72
	sub r5, r5, #128
_08014C72:
	mov r1, #1
	mov r9, r1
	sub r5, r5, #2
	ldrh r0, [r5]
	ldrh r1, [r4]
	bl 0x080094CC
	lsl r0, r0, #16
	lsr r6, r0, #16
	ldr r0, _08014D44  @ =0x00000143
	cmp r6, r0
	bne _08014CA6
	mov r2, #2
	mov r9, r2
	sub r5, r5, #2
	ldrh r0, [r5]
	ldrh r1, [r4]
	bl 0x080094CC
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, r6
	bne _08014CA6
	mov r3, #3
	mov r9, r3
	sub r5, r5, #2
_08014CA6:
	sub r0, r5, #4
	mov r1, r10
	sub r0, r0, r1
	lsl r0, r0, #15
	lsr r7, r0, #16
	add r0, r7, #0
	ldr r1, [sp, #8]
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r1, r0, #16
	ldr r0, _08014D48  @ =0x0000013D
	cmp r1, r0
	beq _08014CCA
	sub r0, r0, #3
	cmp r1, r0
	beq _08014CCA
	b _08014E4E
_08014CCA:
	ldr r2, _08014D4C  @ =0x00002003
	add r0, r7, r2
	mov r3, r10
	add r1, r3, r0
	mov r2, #0
	mov r3, r9
	lsl r0, r3, #16
	lsr r0, r0, #16
	cmp r2, r0
	bhi _08014CF4
	add r3, r0, #0
_08014CE0:
	ldrb r0, [r1]
	cmp r0, #0
	beq _08014CE8
	b _08014E4E
_08014CE8:
	add r0, r2, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	add r1, r1, #64
	cmp r2, r3
	bls _08014CE0
_08014CF4:
	mov r0, #4
_08014CF6:
	mov r8, r0
_08014CF8:
	mov r3, #0
	ldr r6, _08014D50  @ =gUnknown_0202A030
	mov r2, #0
	ldr r0, _08014D54  @ =gUnknown_02016324
	add r5, r6, #0
	add r4, r0, #0
	ldrb r1, [r4]
	cmp r3, r1
	bcs _08014D32
	ldrb r0, [r6]
	cmp r8, r0
	bne _08014D16
	ldrh r1, [r6, #6]
	cmp r7, r1
	beq _08014D36
_08014D16:
	add r0, r2, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	add r6, r6, #24
	ldrb r0, [r4]
	cmp r2, r0
	bcs _08014D32
	ldrb r1, [r6]
	cmp r8, r1
	bne _08014D16
	ldrh r0, [r6, #6]
	cmp r7, r0
	bne _08014D16
	mov r3, #1
_08014D32:
	cmp r3, #0
	beq _08014E18
_08014D36:
	ldr r0, [r6, #12]
	cmp r0, #0
	bne _08014D58
	ldr r1, [sp]
	str r1, [r6, #12]
	b _08014D6E
	.byte 0x00
	.byte 0x00
_08014D44:
	.4byte 0x00000143
_08014D48:
	.4byte 0x0000013D
_08014D4C:
	.4byte 0x00002003
_08014D50:
	.4byte gUnknown_0202A030
_08014D54:
	.4byte gUnknown_02016324
_08014D58:
	ldr r0, [r6, #16]
	cmp r0, #0
	bne _08014D64
	ldr r2, [sp]
	str r2, [r6, #16]
	b _08014D6E
_08014D64:
	ldr r0, [r6, #20]
	cmp r0, #0
	bne _08014D6E
	ldr r3, [sp]
	str r3, [r6, #20]
_08014D6E:
	ldrb r0, [r6, #3]
	add r0, r0, #1
	strb r0, [r6, #3]
	ldrb r1, [r6, #2]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r1, r0
	bne _08014E4E
	bl sub_080123E8
	add r5, r0, #0
	cmp r5, #0
	beq _08014E4E
	mov r0, #6
	strb r0, [r5, #8]
	mov r0, #7
	strb r0, [r5, #9]
	mov r0, r9
	strb r0, [r5, #10]
	ldr r1, [sp, #4]
	lsl r4, r1, #2
	add r0, r5, #0
	add r0, r0, #43
	strb r4, [r0]
	mov r0, #63
	and r0, r0, r7
	lsl r0, r0, #4
	add r0, r0, #8
	strh r0, [r5, #50]
	mov r0, #252
	lsl r0, r0, #4
	and r0, r0, r7
	lsr r0, r0, #2
	add r0, r0, #8
	strh r0, [r5, #54]
	add r0, r5, #0
	add r0, r0, #80
	mov r2, sp
	ldrh r2, [r2, #8]
	strh r2, [r0]
	add r0, r7, #0
	ldr r1, [sp, #8]
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [r5, #96]
	mov r0, #6
	add r1, r5, #0
	bl sub_08012728
	mov r2, #0
	add r6, r6, #8
	mov r3, #0
_08014DDA:
	lsl r0, r2, #2
	add r0, r6, r0
	ldr r5, [r0]
	cmp r5, #0
	beq _08014E08
	ldrb r0, [r5, #8]
	cmp r0, #1
	bne _08014E08
	ldrb r1, [r5, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	ldr r1, _08014E14  @ =gUnknown_03006A30
	add r0, r0, r1
	mov r1, #161
	strb r1, [r0, #6]
	mov r1, #5
	strb r1, [r0, #12]
	strh r3, [r5, #48]
	strh r3, [r5, #52]
	add r0, r5, #0
	add r0, r0, #43
	strb r4, [r0]
_08014E08:
	add r0, r2, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	cmp r2, #3
	bls _08014DDA
	b _08014E4E
_08014E14:
	.4byte gUnknown_03006A30
_08014E18:
	ldrb r0, [r4]
	add r1, r0, #0
	cmp r1, #7
	bhi _08014E4E
	add r0, r0, #1
	strb r0, [r4]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r6, r0, r5
	mov r0, r8
	strb r0, [r6]
	mov r1, sp
	ldrb r1, [r1, #4]
	strb r1, [r6, #1]
	mov r2, r9
	strb r2, [r6, #2]
	strb r3, [r6, #3]
	mov r0, sp
	ldrh r0, [r0, #8]
	strh r0, [r6, #4]
	strh r7, [r6, #6]
	ldr r1, [sp]
	str r1, [r6, #8]
	str r3, [r6, #12]
	str r3, [r6, #16]
	str r3, [r6, #20]
_08014E4E:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08014958

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08014E60
sub_08014E60: @ 0x08014E60
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	mov r4, #0
	ldm r0!, {r3}
	lsr r1, r3, #16
	mov r2, #6
	and r1, r1, r2
	lsl r5, r1, #24
	lsr r1, r5, #24
	str r1, [sp]
	ldr r7, _08014EA8  @ =0x00000FFF
	and r7, r7, r3
	mov r1, #192
	lsl r1, r1, #8
	mov r9, r1
	and r1, r1, r3
	mov r9, r1
	ldr r0, [r0]
	mov r8, r0
	add r0, r7, #0
	bl 0x08009380
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #39
	beq _08014F30
	cmp r0, #39
	bgt _08014EAC
	cmp r0, #38
	beq _08014EB4
	b _08015176
	.byte 0x00
	.byte 0x00
_08014EA8:
	.4byte 0x00000FFF
_08014EAC:
	cmp r0, #40
	bne _08014EB2
	b _08015028
_08014EB2:
	b _08015176
_08014EB4:
	mov r0, #1
	mov r10, r0
	lsr r1, r5, #25
	cmp r1, #1
	beq _08014EEE
	cmp r1, #1
	bgt _08014EC8
	cmp r1, #0
	beq _08014ED2
	b _08015176
_08014EC8:
	cmp r1, #2
	beq _08014F02
	cmp r1, #3
	beq _08014F16
	b _08015176
_08014ED2:
	add r0, r7, #0
	sub r0, r0, #64
	lsl r0, r0, #16
	lsr r7, r0, #16
	add r0, r7, #0
	mov r1, r9
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #234
	bne _08014EEC
	b _08015090
_08014EEC:
	b _0801508A
_08014EEE:
	add r0, r7, #0
	mov r1, r9
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #234
	bne _08014F00
	b _080150DC
_08014F00:
	b _080150D4
_08014F02:
	add r0, r7, #0
	mov r1, r9
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #234
	bne _08014F14
	b _08015122
_08014F14:
	b _0801511C
_08014F16:
	sub r0, r7, #1
	lsl r0, r0, #16
	lsr r7, r0, #16
	add r0, r7, #0
	mov r1, r9
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #234
	bne _08014F2E
	b _08015174
_08014F2E:
	b _0801516C
_08014F30:
	mov r1, #2
	mov r10, r1
	lsr r1, r5, #25
	cmp r1, #1
	beq _08014F82
	cmp r1, #1
	bgt _08014F44
	cmp r1, #0
	beq _08014F4E
	b _08015176
_08014F44:
	cmp r1, #2
	beq _08014FB0
	cmp r1, #3
	beq _08014FDC
	b _08015176
_08014F4E:
	add r0, r7, #0
	sub r0, r0, #128
	lsl r0, r0, #16
	lsr r7, r0, #16
	add r0, r7, #0
	mov r1, r9
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #238
	bne _08014F68
	b _08015090
_08014F68:
	sub r0, r7, #1
	lsl r0, r0, #16
	lsr r7, r0, #16
	add r0, r7, #0
	mov r1, r9
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #238
	bne _08014F80
	b _08015090
_08014F80:
	b _0801508A
_08014F82:
	add r0, r7, #0
	mov r1, r9
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #238
	bne _08014F94
	b _080150DC
_08014F94:
	add r0, r7, #0
	sub r0, r0, #64
	lsl r0, r0, #16
	lsr r7, r0, #16
	add r0, r7, #0
	mov r1, r9
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #238
	bne _08014FAE
	b _080150DC
_08014FAE:
	b _080150D4
_08014FB0:
	add r0, r7, #0
	mov r1, r9
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #238
	bne _08014FC2
	b _08015122
_08014FC2:
	sub r0, r7, #1
	lsl r0, r0, #16
	lsr r7, r0, #16
	add r0, r7, #0
	mov r1, r9
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #238
	bne _08014FDA
	b _08015122
_08014FDA:
	b _0801511C
_08014FDC:
	sub r0, r7, #2
	lsl r0, r0, #16
	lsr r7, r0, #16
	add r0, r7, #0
	mov r1, r9
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #238
	bne _08014FF4
	b _08015174
_08014FF4:
	add r0, r7, #0
	sub r0, r0, #64
	lsl r0, r0, #16
	lsr r7, r0, #16
	add r0, r7, #0
	mov r1, r9
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #238
	beq _08015014
	add r0, r7, #0
	sub r0, r0, #64
	lsl r0, r0, #16
	lsr r7, r0, #16
_08015014:
	add r0, r7, #0
	mov r1, r9
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #238
	bne _08015026
	b _08015174
_08015026:
	b _0801516C
_08015028:
	mov r0, #3
	mov r10, r0
	lsr r1, r5, #25
	cmp r1, #1
	beq _08015094
	cmp r1, #1
	bgt _0801503C
	cmp r1, #0
	beq _08015046
	b _08015176
_0801503C:
	cmp r1, #2
	beq _080150E0
	cmp r1, #3
	beq _08015126
	b _08015176
_08015046:
	add r0, r7, #0
	sub r0, r0, #192
	lsl r0, r0, #16
	lsr r7, r0, #16
	add r0, r7, #0
	mov r1, r9
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #247
	beq _08015090
	sub r0, r7, #1
	lsl r0, r0, #16
	lsr r7, r0, #16
	add r0, r7, #0
	mov r1, r9
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #247
	beq _08015090
	sub r0, r7, #1
	lsl r0, r0, #16
	lsr r7, r0, #16
	add r0, r7, #0
	mov r1, r9
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #247
	beq _08015090
_0801508A:
	sub r0, r7, #1
	lsl r0, r0, #16
	lsr r7, r0, #16
_08015090:
	mov r4, #5
	b _08015176
_08015094:
	add r0, r7, #0
	mov r1, r9
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #247
	beq _080150DC
	add r0, r7, #0
	sub r0, r0, #64
	lsl r0, r0, #16
	lsr r7, r0, #16
	add r0, r7, #0
	mov r1, r9
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #247
	beq _080150DC
	add r0, r7, #0
	sub r0, r0, #64
	lsl r0, r0, #16
	lsr r7, r0, #16
	add r0, r7, #0
	mov r1, r9
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #247
	beq _080150DC
_080150D4:
	add r0, r7, #0
	sub r0, r0, #64
	lsl r0, r0, #16
	lsr r7, r0, #16
_080150DC:
	mov r4, #6
	b _08015176
_080150E0:
	add r0, r7, #0
	mov r1, r9
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #247
	beq _08015122
	sub r0, r7, #1
	lsl r0, r0, #16
	lsr r7, r0, #16
	add r0, r7, #0
	mov r1, r9
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #247
	beq _08015122
	sub r0, r7, #1
	lsl r0, r0, #16
	lsr r7, r0, #16
	add r0, r7, #0
	mov r1, r9
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #247
	beq _08015122
_0801511C:
	sub r0, r7, #1
	lsl r0, r0, #16
	lsr r7, r0, #16
_08015122:
	mov r4, #7
	b _08015176
_08015126:
	sub r0, r7, #3
	lsl r0, r0, #16
	lsr r7, r0, #16
	add r0, r7, #0
	mov r1, r9
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #247
	beq _08015174
	add r0, r7, #0
	sub r0, r0, #64
	lsl r0, r0, #16
	lsr r7, r0, #16
	add r0, r7, #0
	mov r1, r9
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #247
	beq _08015174
	add r0, r7, #0
	sub r0, r0, #64
	lsl r0, r0, #16
	lsr r7, r0, #16
	add r0, r7, #0
	mov r1, r9
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #247
	beq _08015174
_0801516C:
	add r0, r7, #0
	sub r0, r0, #64
	lsl r0, r0, #16
	lsr r7, r0, #16
_08015174:
	mov r4, #8
_08015176:
	mov r2, #0
	ldr r6, _080151C0  @ =gUnknown_0202A030
	mov r3, #0
	ldr r0, _080151C4  @ =gUnknown_02016324
	mov r12, r6
	add r5, r0, #0
	ldrb r1, [r5]
	cmp r2, r1
	bcs _080151B0
	ldrb r0, [r6]
	cmp r4, r0
	bne _08015194
	ldrh r1, [r6, #6]
	cmp r7, r1
	beq _080151B4
_08015194:
	add r0, r3, #1
	lsl r0, r0, #16
	lsr r3, r0, #16
	add r6, r6, #24
	ldrb r0, [r5]
	cmp r3, r0
	bcs _080151B0
	ldrb r1, [r6]
	cmp r4, r1
	bne _08015194
	ldrh r0, [r6, #6]
	cmp r7, r0
	bne _08015194
	mov r2, #1
_080151B0:
	cmp r2, #0
	beq _0801529C
_080151B4:
	ldr r0, [r6, #12]
	cmp r0, #0
	bne _080151C8
	mov r1, r8
	str r1, [r6, #12]
	b _080151DE
_080151C0:
	.4byte gUnknown_0202A030
_080151C4:
	.4byte gUnknown_02016324
_080151C8:
	ldr r0, [r6, #16]
	cmp r0, #0
	bne _080151D4
	mov r0, r8
	str r0, [r6, #16]
	b _080151DE
_080151D4:
	ldr r0, [r6, #20]
	cmp r0, #0
	bne _080151DE
	mov r1, r8
	str r1, [r6, #20]
_080151DE:
	ldrb r0, [r6, #3]
	add r0, r0, #1
	strb r0, [r6, #3]
	ldrb r1, [r6, #2]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r1, r0
	bne _080152D0
	bl sub_080123E8
	add r5, r0, #0
	cmp r5, #0
	beq _080152D0
	mov r0, #6
	strb r0, [r5, #8]
	mov r0, #51
	strb r0, [r5, #9]
	mov r4, r10
	sub r4, r4, #1
	strb r4, [r5, #10]
	ldr r1, [sp]
	lsl r0, r1, #2
	add r1, r5, #0
	add r1, r1, #43
	strb r0, [r1]
	mov r0, #63
	and r0, r0, r7
	lsl r0, r0, #4
	add r0, r0, #8
	strh r0, [r5, #50]
	mov r0, #252
	lsl r0, r0, #4
	and r7, r7, r0
	lsr r0, r7, #2
	add r0, r0, #8
	strh r0, [r5, #54]
	add r0, r5, #0
	add r0, r0, #80
	mov r1, r9
	strh r1, [r0]
	mov r0, #6
	add r1, r5, #0
	bl sub_08012728
	mov r3, #0
	add r6, r6, #8
	mov r9, r3
	ldr r7, _08015294  @ =gUnknown_08137B10
_0801523E:
	lsl r0, r3, #2
	add r0, r6, r0
	ldr r0, [r0]
	mov r8, r0
	cmp r0, #0
	beq _08015288
	ldrb r0, [r0, #8]
	cmp r0, #1
	bne _08015288
	mov r0, r8
	str r5, [r0, #88]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	ldr r1, _08015298  @ =gUnknown_03006A30
	add r2, r0, r1
	mov r0, #12
	strb r0, [r2, #12]
	add r0, r2, #0
	add r0, r0, #56
	strb r4, [r0]
	add r0, r0, #1
	mov r1, r9
	strb r1, [r0]
	ldrh r0, [r2, #54]
	mov r1, #1
	orr r0, r0, r1
	strh r0, [r2, #54]
	mov r1, r8
	ldrb r0, [r1, #10]
	lsl r0, r0, #2
	add r0, r0, r7
	ldr r0, [r0]
	ldrb r1, [r5, #23]
	orr r0, r0, r1
	strb r0, [r5, #23]
_08015288:
	add r0, r3, #1
	lsl r0, r0, #16
	lsr r3, r0, #16
	cmp r3, #3
	bls _0801523E
	b _080152D0
_08015294:
	.4byte gUnknown_08137B10
_08015298:
	.4byte gUnknown_03006A30
_0801529C:
	ldrb r0, [r5]
	add r1, r0, #0
	cmp r1, #7
	bhi _080152D0
	add r0, r0, #1
	strb r0, [r5]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	mov r1, r12
	add r6, r0, r1
	strb r4, [r6]
	mov r0, sp
	ldrb r0, [r0]
	strb r0, [r6, #1]
	mov r1, r10
	strb r1, [r6, #2]
	strb r2, [r6, #3]
	mov r0, r9
	strh r0, [r6, #4]
	strh r7, [r6, #6]
	mov r1, r8
	str r1, [r6, #8]
	str r2, [r6, #12]
	str r2, [r6, #16]
	str r2, [r6, #20]
_080152D0:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08014E60

	THUMB_FUNC_START sub_080152E0
sub_080152E0: @ 0x080152E0
	ldr r0, _080152EC  @ =gUnknown_02000004
	mov r1, #0
	strb r1, [r0]
	ldr r0, _080152F0  @ =gUnknown_02016324
	strb r1, [r0]
	bx lr
_080152EC:
	.4byte gUnknown_02000004
_080152F0:
	.4byte gUnknown_02016324
	THUMB_FUNC_END sub_080152E0

	THUMB_FUNC_START sub_080152F4
sub_080152F4: @ 0x080152F4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	add r0, r0, #80
	str r0, [sp]
	ldrh r0, [r0]
	bl sub_08015DC0
	mov r10, r0
	mov r1, #42
	add r1, r1, r5
	mov r9, r1
	ldrb r1, [r1]
	mov r0, #6
	and r0, r0, r1
	lsl r0, r0, #1
	ldr r1, _0801537C  @ =gUnknown_0813817C
	add r7, r0, r1
	mov r2, #50
	ldrsh r1, [r5, r2]
	mov r4, #0
	ldrsh r0, [r7, r4]
	add r1, r1, r0
	ldr r3, _08015380  @ =gUnknown_03000450
	ldrh r0, [r3, #24]
	sub r1, r1, r0
	asr r1, r1, #4
	mov r2, #54
	ldrsh r0, [r5, r2]
	mov r4, #2
	ldrsh r2, [r7, r4]
	add r0, r0, r2
	ldrh r2, [r3, #26]
	sub r0, r0, r2
	asr r0, r0, #4
	lsl r0, r0, #6
	orr r1, r1, r0
	lsl r1, r1, #16
	lsr r1, r1, #16
	mov r8, r1
	ldr r0, [sp]
	ldrh r1, [r0]
	mov r0, r8
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r4, r0, #16
	add r0, r4, #0
	bl 0x080094BC
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r1, #58
	beq _0801544C
	cmp r1, #58
	bgt _08015384
	cmp r1, #41
	bne _08015374
	b _08015520
_08015374:
	cmp r1, #57
	bne _0801537A
	b _080154C6
_0801537A:
	b _080156A8
_0801537C:
	.4byte gUnknown_0813817C
_08015380:
	.4byte gUnknown_03000450
_08015384:
	ldr r0, _08015398  @ =0x00004002
	cmp r1, r0
	beq _080153AC
	cmp r1, r0
	bgt _0801539C
	cmp r1, #91
	bne _08015394
	b _080154F4
_08015394:
	b _080156A8
	.byte 0x00
	.byte 0x00
_08015398:
	.4byte 0x00004002
_0801539C:
	ldr r0, _080153A8  @ =0x00004009
	cmp r1, r0
	bne _080153A4
	b _08015564
_080153A4:
	b _080156A8
	.byte 0x00
	.byte 0x00
_080153A8:
	.4byte 0x00004009
_080153AC:
	add r0, r6, #0
	add r0, r0, #53
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r7, r0, #24
	cmp r7, #0
	beq _080153C0
	b _080156A8
_080153C0:
	add r0, r5, #0
	add r0, r0, #41
	ldrb r0, [r0]
	cmp r0, #0
	bne _080153CC
	b _080156A8
_080153CC:
	ldr r0, _08015440  @ =gUnknown_08137B90
	mov r2, r9
	ldrb r1, [r2]
	lsr r1, r1, #1
	lsl r1, r1, #1
	add r1, r1, r0
	mov r4, #0
	ldrsh r2, [r1, r4]
	add r2, r2, r8
	ldr r0, _08015444  @ =0x00002004
	add r0, r0, r10
	add r0, r0, r2
	ldrb r4, [r0]
	ldrh r0, [r1]
	add r0, r0, r8
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldr r2, [sp]
	ldrh r1, [r2]
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r0, r0, #16
	bl 0x080094BC
	lsl r0, r0, #16
	lsr r1, r0, #16
	sub r0, r4, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #30
	bls _080154F0
	cmp r1, #87
	beq _080154F0
	mov r4, r8
	lsl r0, r4, #1
	mov r1, r10
	add r1, r1, #4
	add r1, r1, r0
	mov r2, r9
	ldrb r0, [r2]
	lsr r0, r0, #1
	ldr r4, _08015448  @ =0x00004003
	add r0, r0, r4
	strh r0, [r1]
	mov r0, #160
	strb r0, [r6, #6]
	mov r0, #5
	strb r0, [r6, #12]
	ldrh r1, [r6, #54]
	mov r0, #1
	orr r0, r0, r1
	strh r0, [r6, #54]
	strh r7, [r5, #48]
	strh r7, [r5, #52]
	ldrb r0, [r2]
	b _080155F0
	.byte 0x00
	.byte 0x00
_08015440:
	.4byte gUnknown_08137B90
_08015444:
	.4byte 0x00002004
_08015448:
	.4byte 0x00004003
_0801544C:
	add r0, r6, #0
	add r0, r0, #53
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0801545C
	b _080156A8
_0801545C:
	add r0, r5, #0
	add r0, r0, #41
	ldrb r0, [r0]
	cmp r0, #0
	bne _08015468
	b _080156A8
_08015468:
	add r0, r5, #0
	bl sub_0802C6E8
	lsl r0, r0, #24
	cmp r0, #0
	bne _08015476
	b _080156A8
_08015476:
	ldr r1, [sp]
	ldrh r0, [r1]
	lsr r0, r0, #14
	cmp r0, #2
	beq _0801548E
	mov r2, #128
	lsl r2, r2, #7
	mov r0, #47
	mov r1, r8
	bl sub_08014658
	b _0801549A
_0801548E:
	mov r2, #128
	lsl r2, r2, #8
	mov r0, #88
	mov r1, r8
	bl sub_08014658
_0801549A:
	mov r0, #15
	mov r1, #2
	mov r2, #0
	bl sub_0804C8A8
	add r4, r0, #0
	cmp r4, #0
	bne _080154AC
	b _080156A8
_080154AC:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0803D3D0
	ldrh r0, [r7]
	ldrh r2, [r4, #50]
	add r0, r0, r2
	strh r0, [r4, #50]
	ldrh r0, [r7, #2]
	ldrh r1, [r4, #54]
	add r0, r0, r1
	strh r0, [r4, #54]
	b _080156A8
_080154C6:
	add r0, r6, #0
	add r0, r0, #53
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080154D6
	b _080156A8
_080154D6:
	add r0, r5, #0
	add r0, r0, #41
	ldrb r0, [r0]
	cmp r0, #0
	bne _080154E2
	b _080156A8
_080154E2:
	lsl r1, r1, #26
	lsr r1, r1, #24
	add r0, r5, #0
	add r2, r4, #0
	mov r3, r8
	bl sub_080157F8
_080154F0:
	mov r0, #2
	b _080156AA
_080154F4:
	add r0, r6, #0
	add r0, r0, #53
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08015504
	b _080156A8
_08015504:
	add r0, r5, #0
	bl sub_0802C6E8
	lsl r0, r0, #24
	cmp r0, #0
	bne _08015512
	b _080156A8
_08015512:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r10
	bl sub_08015964
	mov r0, #1
	b _080156AA
_08015520:
	ldr r0, _08015558  @ =gNewKeys
	ldrh r1, [r0]
	ldr r0, _0801555C  @ =0x00000101
	and r0, r0, r1
	cmp r0, #0
	bne _0801552E
	b _080156A8
_0801552E:
	mov r2, r9
	ldrb r0, [r2]
	cmp r0, #0
	beq _08015538
	b _080156A8
_08015538:
	ldr r2, _08015560  @ =gUnknown_03006A30
	ldrb r1, [r5, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r2
	mov r1, #1
	strb r1, [r0, #26]
	ldr r4, [sp]
	ldrh r2, [r4]
	add r0, r5, #0
	mov r1, r8
	bl sub_08013E0C
	mov r0, #1
	b _080156AA
_08015558:
	.4byte gNewKeys
_0801555C:
	.4byte 0x00000101
_08015560:
	.4byte gUnknown_03006A30
_08015564:
	ldr r1, _080155FC  @ =gUnknown_08137B90
	mov r2, r9
	ldrb r0, [r2]
	lsr r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r7, [r0]
	add r0, r6, #0
	add r0, r0, #53
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _0801560C
	add r0, r5, #0
	add r0, r0, #41
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801560C
	mov r4, r8
	add r0, r4, r7
	lsl r0, r0, #16
	lsr r4, r0, #16
	ldr r0, [sp]
	ldrh r1, [r0]
	add r0, r4, #0
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r0, r0, #16
	bl 0x080094BC
	lsl r0, r0, #16
	lsr r1, r0, #16
	ldr r2, _08015600  @ =0xFFB90000
	add r0, r0, r2
	lsr r0, r0, #16
	cmp r0, #1
	bls _080156A8
	cmp r1, #87
	beq _080156A8
	ldr r0, _08015604  @ =0x00002004
	add r0, r0, r10
	add r0, r0, r4
	ldrb r4, [r0]
	cmp r4, #0
	bne _080156A8
	mov r1, r8
	lsl r0, r1, #1
	mov r1, r10
	add r1, r1, #4
	add r1, r1, r0
	mov r2, r9
	ldrb r0, [r2]
	lsr r0, r0, #1
	ldr r2, _08015608  @ =0x0000400A
	add r0, r0, r2
	strh r0, [r1]
	mov r0, #160
	strb r0, [r6, #6]
	mov r0, #5
	strb r0, [r6, #12]
	ldrh r1, [r6, #54]
	mov r0, #1
	orr r0, r0, r1
	strh r0, [r6, #54]
	strh r4, [r5, #48]
	strh r4, [r5, #52]
	mov r4, r9
	ldrb r0, [r4]
_080155F0:
	lsl r0, r0, #2
	add r1, r5, #0
	add r1, r1, #43
	strb r0, [r1]
	b _080154F0
	.byte 0x00
	.byte 0x00
_080155FC:
	.4byte gUnknown_08137B90
_08015600:
	.4byte 0xFFB90000
_08015604:
	.4byte 0x00002004
_08015608:
	.4byte 0x0000400A
_0801560C:
	ldrb r0, [r6, #5]
	cmp r0, #1
	bne _080156A8
	add r0, r5, #0
	add r0, r0, #41
	ldrb r0, [r0]
	cmp r0, #0
	beq _080156A8
	mov r1, r8
	sub r0, r1, r7
	lsl r0, r0, #16
	lsr r4, r0, #16
	sub r0, r4, r7
	lsl r0, r0, #16
	lsr r7, r0, #16
	add r0, r5, #0
	add r0, r0, #80
	ldrh r1, [r0]
	add r0, r4, #0
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r0, r0, #16
	bl 0x080094BC
	lsl r0, r0, #16
	lsr r1, r0, #16
	ldr r2, _0801569C  @ =0xFFB90000
	add r0, r0, r2
	lsr r0, r0, #16
	cmp r0, #1
	bls _080156A8
	cmp r1, #87
	beq _080156A8
	ldr r0, _080156A0  @ =0x00002004
	add r0, r0, r10
	add r1, r0, r4
	ldrb r4, [r1]
	add r0, r0, r7
	ldrb r0, [r0]
	cmp r4, #0
	bne _080156A8
	cmp r0, #0
	bne _080156A8
	mov r1, r8
	lsl r0, r1, #1
	mov r1, r10
	add r1, r1, #4
	add r1, r1, r0
	ldr r2, _080156A4  @ =gUnknown_0813818C
	add r0, r5, #0
	add r0, r0, #42
	ldrb r0, [r0]
	lsr r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1]
	mov r0, #16
	strb r0, [r6, #12]
	add r1, r6, #0
	add r1, r1, #56
	mov r0, #32
	strb r0, [r1]
	ldrh r1, [r6, #54]
	mov r0, #1
	orr r0, r0, r1
	strh r0, [r6, #54]
	strh r4, [r5, #48]
	strh r4, [r5, #52]
	b _080154F0
	.byte 0x00
	.byte 0x00
_0801569C:
	.4byte 0xFFB90000
_080156A0:
	.4byte 0x00002004
_080156A4:
	.4byte gUnknown_0813818C
_080156A8:
	mov r0, #0
_080156AA:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080152F4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080156BC
sub_080156BC: @ 0x080156BC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	mov r8, r1
	add r7, r4, #0
	add r7, r7, #80
	ldrh r0, [r7]
	bl sub_08015DC0
	mov r0, #42
	add r0, r0, r4
	mov r9, r0
	ldrb r0, [r0]
	mov r1, #6
	mov r10, r1
	mov r2, r10
	and r2, r2, r0
	lsl r2, r2, #1
	ldr r0, _08015788  @ =gUnknown_08138194
	add r2, r2, r0
	mov r3, #50
	ldrsh r1, [r4, r3]
	mov r5, #0
	ldrsh r0, [r2, r5]
	add r1, r1, r0
	ldr r3, _0801578C  @ =gUnknown_03000450
	ldrh r0, [r3, #24]
	sub r1, r1, r0
	asr r1, r1, #4
	mov r5, #54
	ldrsh r0, [r4, r5]
	mov r5, #2
	ldrsh r2, [r2, r5]
	add r0, r0, r2
	ldrh r2, [r3, #26]
	sub r0, r0, r2
	asr r0, r0, #4
	lsl r0, r0, #6
	orr r1, r1, r0
	lsl r1, r1, #16
	lsr r6, r1, #16
	add r5, r6, #0
	ldrh r1, [r7]
	add r0, r6, #0
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r0, r0, #16
	bl 0x080094BC
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #38
	blt _080157DC
	cmp r0, #40
	ble _0801579C
	cmp r0, #60
	bne _080157DC
	mov r0, r8
	add r0, r0, #53
	ldrb r2, [r0]
	mov r0, #128
	and r0, r0, r2
	cmp r0, #0
	bne _080157DC
	add r0, r4, #0
	add r0, r0, #41
	ldrb r0, [r0]
	cmp r0, #0
	beq _080157DC
	ldr r5, _08015790  @ =gUnknown_02000004
	ldrb r0, [r5]
	cmp r0, #15
	bhi _08015782
	lsl r0, r0, #3
	ldr r1, _08015794  @ =gUnknown_0202A500
	add r3, r0, r1
	mov r1, r10
	and r1, r1, r2
	lsl r1, r1, #16
	ldrh r2, [r7]
	mov r0, #192
	lsl r0, r0, #8
	and r0, r0, r2
	mov r2, #128
	lsl r2, r2, #17
	orr r0, r0, r2
	orr r1, r1, r0
	ldr r0, _08015798  @ =0x00000FFF
	and r0, r0, r6
	orr r1, r1, r0
	stm r3!, {r1}
	str r4, [r3]
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
_08015782:
	mov r0, #1
	b _080157DE
	.byte 0x00
	.byte 0x00
_08015788:
	.4byte gUnknown_08138194
_0801578C:
	.4byte gUnknown_03000450
_08015790:
	.4byte gUnknown_02000004
_08015794:
	.4byte gUnknown_0202A500
_08015798:
	.4byte 0x00000FFF
_0801579C:
	mov r1, r8
	ldrb r0, [r1, #5]
	cmp r0, #1
	bne _080157DC
	ldr r6, _080157EC  @ =gUnknown_02000004
	ldrb r0, [r6]
	cmp r0, #15
	bhi _080157DC
	lsl r0, r0, #3
	ldr r1, _080157F0  @ =gUnknown_0202A500
	add r3, r0, r1
	mov r1, r9
	ldrb r0, [r1]
	mov r1, r10
	and r1, r1, r0
	lsl r1, r1, #16
	ldrh r2, [r7]
	mov r0, #192
	lsl r0, r0, #8
	and r0, r0, r2
	mov r2, #128
	lsl r2, r2, #18
	orr r0, r0, r2
	orr r1, r1, r0
	ldr r0, _080157F4  @ =0x00000FFF
	and r5, r5, r0
	orr r1, r1, r5
	stm r3!, {r1}
	str r4, [r3]
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
_080157DC:
	mov r0, #0
_080157DE:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
_080157EC:
	.4byte gUnknown_02000004
_080157F0:
	.4byte gUnknown_0202A500
_080157F4:
	.4byte 0x00000FFF
	THUMB_FUNC_END sub_080156BC

	THUMB_FUNC_START sub_080157F8
sub_080157F8: @ 0x080157F8
	push {r4,r5,lr}
	add r5, r0, #0
	lsl r1, r1, #24
	lsr r4, r1, #24
	lsl r2, r2, #16
	lsr r2, r2, #16
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r1, _0801581C  @ =0xFFFFFECF
	add r0, r2, r1
	cmp r0, #4
	bhi _08015882
	lsl r0, r0, #2
	ldr r1, _08015820  @ =0x08015824
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_0801581C:
	.4byte 0xFFFFFECF
_08015820:
	.4byte 0x08015824
	.4byte _08015838
	.4byte _08015844
	.4byte _08015864
	.4byte _08015874
	.4byte _08015854
_08015838:
	add r0, r5, #0
	add r1, r3, #0
	add r2, r4, #0
	bl sub_08015888
	b _08015882
_08015844:
	cmp r4, #0
	bne _08015882
	add r0, r5, #0
	add r1, r3, #0
	mov r2, #0
	bl sub_08015888
	b _08015882
_08015854:
	cmp r4, #8
	bne _08015882
	add r0, r5, #0
	add r1, r3, #0
	mov r2, #8
	bl sub_08015888
	b _08015882
_08015864:
	cmp r4, #16
	bne _08015882
	add r0, r5, #0
	add r1, r3, #0
	mov r2, #16
	bl sub_08015888
	b _08015882
_08015874:
	cmp r4, #24
	bne _08015882
	add r0, r5, #0
	add r1, r3, #0
	mov r2, #24
	bl sub_08015888
_08015882:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080157F8

	THUMB_FUNC_START sub_08015888
sub_08015888: @ 0x08015888
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r5, r0, #0
	add r4, r2, #0
	lsl r1, r1, #16
	lsr r1, r1, #16
	add r6, r1, #0
	lsl r4, r4, #24
	lsr r0, r4, #24
	mov r8, r0
	add r7, r5, #0
	add r7, r7, #80
	ldrh r0, [r7]
	bl sub_08015DC0
	ldr r1, _08015958  @ =gUnknown_08137B90
	lsr r4, r4, #27
	lsl r4, r4, #1
	add r4, r4, r1
	mov r2, #0
	ldrsh r1, [r4, r2]
	add r1, r6, r1
	ldr r2, _0801595C  @ =0x00002004
	add r0, r0, r2
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080158CC
	sub r0, r0, #32
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #15
	bhi _0801594C
_080158CC:
	bl sub_080123E8
	add r2, r0, #0
	cmp r2, #0
	beq _0801594C
	mov r4, #0
	mov r0, #6
	strb r0, [r2, #8]
	mov r0, #7
	strb r0, [r2, #9]
	strb r4, [r2, #10]
	add r0, r2, #0
	add r0, r0, #43
	mov r1, r8
	strb r1, [r0]
	mov r0, #63
	and r0, r0, r6
	lsl r0, r0, #4
	add r0, r0, #8
	strh r0, [r2, #50]
	mov r0, #252
	lsl r0, r0, #4
	and r0, r0, r6
	lsr r0, r0, #2
	add r0, r0, #8
	strh r0, [r2, #54]
	ldrh r1, [r7]
	add r0, r2, #0
	add r0, r0, #80
	strh r1, [r0]
	mov r0, #6
	add r1, r2, #0
	bl sub_08012728
	ldr r2, _08015960  @ =gUnknown_03006A30
	ldrb r1, [r5, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r2
	mov r1, #160
	strb r1, [r0, #6]
	ldrb r1, [r5, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r2
	mov r1, #5
	strb r1, [r0, #12]
	ldrb r0, [r5, #10]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #4
	add r1, r1, r2
	ldrh r2, [r1, #54]
	mov r0, #1
	orr r0, r0, r2
	strh r0, [r1, #54]
	strh r4, [r5, #48]
	strh r4, [r5, #52]
	add r0, r5, #0
	add r0, r0, #43
	mov r2, r8
	strb r2, [r0]
_0801594C:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08015958:
	.4byte gUnknown_08137B90
_0801595C:
	.4byte 0x00002004
_08015960:
	.4byte gUnknown_03006A30
	THUMB_FUNC_END sub_08015888

	THUMB_FUNC_START sub_08015964
sub_08015964: @ 0x08015964
	push {r4-r7,lr}
	add r6, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	bl sub_080123E8
	add r4, r0, #0
	cmp r4, #0
	beq _080159E6
	mov r3, #0
	mov r0, #6
	strb r0, [r4, #8]
	mov r0, #8
	strb r0, [r4, #9]
	add r0, r5, #0
	add r0, r0, #53
	ldrb r0, [r0]
	lsr r0, r0, #1
	mov r1, #128
	orr r0, r0, r1
	strb r0, [r4, #11]
	ldr r2, _080159EC  @ =gUnknown_081381AC
	mov r1, #3
	and r1, r1, r0
	lsl r0, r1, #2
	add r0, r0, r2
	ldrh r0, [r0]
	ldrh r5, [r6, #50]
	add r0, r0, r5
	strh r0, [r4, #50]
	lsl r1, r1, #1
	add r1, r1, #1
	lsl r1, r1, #1
	add r1, r1, r2
	ldrh r0, [r1]
	ldrh r6, [r6, #54]
	add r0, r0, r6
	strh r0, [r4, #54]
	add r2, r4, #0
	add r2, r2, #126
	ldrh r1, [r2]
	mov r0, #2
	orr r0, r0, r1
	strh r0, [r2]
	mov r0, #50
	ldrsh r1, [r4, r0]
	ldr r2, _080159F0  @ =gUnknown_03000450
	ldrh r0, [r2, #24]
	sub r1, r1, r0
	asr r1, r1, #4
	mov r5, #54
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #26]
	sub r0, r0, r2
	asr r0, r0, #4
	lsl r0, r0, #6
	orr r1, r1, r0
	lsl r1, r1, #1
	add r0, r7, #4
	add r0, r0, r1
	strh r3, [r0]
	mov r0, #6
	add r1, r4, #0
	bl sub_08012728
_080159E6:
	pop {r4-r7}
	pop {r0}
	bx r0
_080159EC:
	.4byte gUnknown_081381AC
_080159F0:
	.4byte gUnknown_03000450
	THUMB_FUNC_END sub_08015964

	THUMB_FUNC_START sub_080159F4
sub_080159F4: @ 0x080159F4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r4, r0, #0
	add r5, r1, #0
	add r1, r5, #4
	mov r0, #0
	ldr r6, _08015AC0  @ =0x00007004
	mov r2, #128
	lsl r2, r2, #1
	mov r8, r2
_08015A0A:
	mov r7, #0
	add r0, r0, #1
	mov r12, r0
	mov r0, #128
	lsl r0, r0, #1
	add r3, r4, r0
_08015A16:
	ldrh r0, [r1]
	lsl r0, r0, #3
	add r0, r0, r6
	add r2, r5, r0
	ldrh r0, [r2]
	strh r0, [r4]
	add r2, r2, #2
	ldrh r0, [r2]
	strh r0, [r4, #2]
	add r2, r2, #2
	ldrh r0, [r2]
	strh r0, [r3]
	ldrh r0, [r2, #2]
	strh r0, [r3, #2]
	add r3, r3, #4
	add r4, r4, #4
	add r1, r1, #2
	ldrh r0, [r1]
	lsl r0, r0, #3
	add r0, r0, r6
	add r2, r5, r0
	ldrh r0, [r2]
	strh r0, [r4]
	add r2, r2, #2
	ldrh r0, [r2]
	strh r0, [r4, #2]
	add r2, r2, #2
	ldrh r0, [r2]
	strh r0, [r3]
	ldrh r0, [r2, #2]
	strh r0, [r3, #2]
	add r3, r3, #4
	add r4, r4, #4
	add r1, r1, #2
	ldrh r0, [r1]
	lsl r0, r0, #3
	add r0, r0, r6
	add r2, r5, r0
	ldrh r0, [r2]
	strh r0, [r4]
	add r2, r2, #2
	ldrh r0, [r2]
	strh r0, [r4, #2]
	add r2, r2, #2
	ldrh r0, [r2]
	strh r0, [r3]
	ldrh r0, [r2, #2]
	strh r0, [r3, #2]
	add r3, r3, #4
	add r4, r4, #4
	add r1, r1, #2
	ldrh r0, [r1]
	lsl r0, r0, #3
	add r0, r0, r6
	add r2, r5, r0
	ldrh r0, [r2]
	strh r0, [r4]
	add r2, r2, #2
	ldrh r0, [r2]
	strh r0, [r4, #2]
	add r2, r2, #2
	ldrh r0, [r2]
	strh r0, [r3]
	ldrh r0, [r2, #2]
	strh r0, [r3, #2]
	add r3, r3, #4
	add r4, r4, #4
	add r1, r1, #2
	add r0, r7, #1
	lsl r0, r0, #16
	lsr r7, r0, #16
	cmp r7, #15
	bls _08015A16
	add r4, r4, r8
	mov r2, r12
	lsl r0, r2, #16
	lsr r0, r0, #16
	cmp r0, #63
	bls _08015A0A
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08015AC0:
	.4byte 0x00007004
	THUMB_FUNC_END sub_080159F4

	THUMB_FUNC_START sub_08015AC4
sub_08015AC4: @ 0x08015AC4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #20
	ldr r0, _08015AE4  @ =gUnknown_03000450
	ldrh r1, [r0, #40]
	lsr r1, r1, #4
	mov r9, r1
	ldrh r0, [r0, #42]
	lsr r0, r0, #4
	str r0, [sp]
	mov r5, #0
	mov r0, #0
	b _08015C4C
_08015AE4:
	.4byte gUnknown_03000450
_08015AE8:
	mov r1, #0
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r1, r9
	bcc _08015AF4
	b _08015C3A
_08015AF4:
	ldr r2, _08015B80  @ =0x0000FFFF
	mov r8, r2
_08015AF8:
	mov r2, #0
	ldr r4, _08015B84  @ =gUnknown_0813821E
	ldrh r0, [r4]
	add r1, r1, #1
	str r1, [sp, #12]
	add r1, r5, #1
	str r1, [sp, #4]
	cmp r0, r8
	beq _08015B98
	mov r7, #128
	lsl r7, r7, #8
	mov r0, #0
	mov r10, r0
	mov r0, #252
	lsl r0, r0, #4
	add r1, r0, #0
	add r0, r5, #0
	and r0, r0, r1
	lsr r0, r0, #2
	add r6, r0, #0
	add r6, r6, #8
_08015B22:
	add r0, r5, #0
	add r1, r7, #0
	str r2, [sp, #16]
	bl 0x0800932C
	ldrh r1, [r4]
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldr r2, [sp, #16]
	cmp r1, r0
	bne _08015B90
	bl sub_080123E8
	add r2, r0, #0
	cmp r2, #0
	beq _08015C28
	ldrh r0, [r4, #2]
	strb r0, [r2, #8]
	ldrh r0, [r4, #4]
	strb r0, [r2, #9]
	ldrh r0, [r4, #6]
	strb r0, [r2, #10]
	ldrh r0, [r4, #6]
	lsr r0, r0, #8
	strb r0, [r2, #11]
	mov r0, #63
	and r5, r5, r0
	lsl r0, r5, #4
	add r0, r0, #8
	strh r0, [r2, #50]
	strh r6, [r2, #54]
	ldr r0, _08015B88  @ =gUnknown_03000450
	ldrh r0, [r0, #18]
	add r1, r7, #0
	orr r1, r1, r0
	add r0, r2, #0
	add r0, r0, #80
	strh r1, [r0]
	ldr r1, _08015B8C  @ =gUnknown_081380F8
	ldrb r0, [r2, #8]
	add r0, r0, r1
	ldrb r0, [r0]
	add r1, r2, #0
	bl sub_08012728
	b _08015C28
	.byte 0x00
	.byte 0x00
_08015B80:
	.4byte 0x0000FFFF
_08015B84:
	.4byte gUnknown_0813821E
_08015B88:
	.4byte gUnknown_03000450
_08015B8C:
	.4byte gUnknown_081380F8
_08015B90:
	add r4, r4, #8
	ldrh r0, [r4]
	cmp r0, r8
	bne _08015B22
_08015B98:
	cmp r2, #0
	bne _08015C28
	ldr r4, _08015C14  @ =gUnknown_081381BC
	ldrh r0, [r4]
	cmp r0, r8
	beq _08015C28
	mov r7, #128
	lsl r7, r7, #7
	mov r1, #0
	mov r10, r1
	mov r2, #252
	lsl r2, r2, #4
	add r1, r2, #0
	add r0, r5, #0
	and r0, r0, r1
	lsr r0, r0, #2
	add r6, r0, #0
	add r6, r6, #8
_08015BBC:
	add r0, r5, #0
	add r1, r7, #0
	bl 0x0800932C
	ldrh r1, [r4]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r1, r0
	bne _08015C20
	bl sub_080123E8
	add r2, r0, #0
	cmp r2, #0
	beq _08015C28
	ldrh r0, [r4, #2]
	strb r0, [r2, #8]
	ldrh r0, [r4, #4]
	strb r0, [r2, #9]
	ldrh r0, [r4, #6]
	strb r0, [r2, #10]
	ldrh r0, [r4, #6]
	lsr r0, r0, #8
	strb r0, [r2, #11]
	mov r0, #63
	and r5, r5, r0
	lsl r0, r5, #4
	add r0, r0, #8
	strh r0, [r2, #50]
	strh r6, [r2, #54]
	ldr r0, _08015C18  @ =gUnknown_03000450
	ldrh r0, [r0, #18]
	add r1, r7, #0
	orr r1, r1, r0
	add r0, r2, #0
	add r0, r0, #80
	strh r1, [r0]
	ldr r1, _08015C1C  @ =gUnknown_081380F8
	ldrb r0, [r2, #8]
	add r0, r0, r1
	ldrb r0, [r0]
	add r1, r2, #0
	bl sub_08012728
	b _08015C28
_08015C14:
	.4byte gUnknown_081381BC
_08015C18:
	.4byte gUnknown_03000450
_08015C1C:
	.4byte gUnknown_081380F8
_08015C20:
	add r4, r4, #8
	ldrh r0, [r4]
	cmp r0, r8
	bne _08015BBC
_08015C28:
	ldr r1, [sp, #12]
	lsl r0, r1, #16
	lsr r1, r0, #16
	ldr r2, [sp, #4]
	lsl r0, r2, #16
	lsr r5, r0, #16
	cmp r1, r9
	bcs _08015C3A
	b _08015AF8
_08015C3A:
	add r0, r5, #0
	add r0, r0, #64
	mov r1, r9
	sub r0, r0, r1
	lsl r0, r0, #16
	lsr r5, r0, #16
	ldr r2, [sp, #8]
	lsl r0, r2, #16
	lsr r0, r0, #16
_08015C4C:
	ldr r1, [sp]
	cmp r0, r1
	bcs _08015C54
	b _08015AE8
_08015C54:
	add sp, sp, #20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08015AC4

	THUMB_FUNC_START sub_08015C64
sub_08015C64: @ 0x08015C64
	push {r4,r5,lr}
	mov r3, #0
	ldr r4, _08015CB4  @ =gUnknown_02002440
	mov r5, #8
_08015C6C:
	ldr r2, [r4]
	cmp r2, #0
	beq _08015CCA
	ldrh r1, [r4, #6]
	sub r0, r1, #1
	strh r0, [r4, #6]
	lsl r0, r0, #16
	cmp r0, #0
	bne _08015CBE
	cmp r3, #0
	bne _08015CBC
	ldr r0, _08015CB8  @ =gUnknown_03000520
	ldrb r0, [r0]
	cmp r0, #0
	bne _08015C90
	ldr r0, [r2]
	bl sub_08015D04
_08015C90:
	ldr r0, [r4]
	add r0, r0, #4
	bl sub_08015CD0
	strh r0, [r4, #6]
	ldr r0, [r4]
	add r1, r0, #0
	add r1, r1, #8
	str r1, [r4]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _08015CB0
	ldr r0, [r1, #4]
	lsl r0, r0, #3
	sub r0, r1, r0
	str r0, [r4]
_08015CB0:
	mov r3, #1
	b _08015CBE
_08015CB4:
	.4byte gUnknown_02002440
_08015CB8:
	.4byte gUnknown_03000520
_08015CBC:
	strh r1, [r4, #6]
_08015CBE:
	add r4, r4, #8
	sub r0, r5, #1
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, #0
	bne _08015C6C
_08015CCA:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08015C64

	THUMB_FUNC_START sub_08015CD0
sub_08015CD0: @ 0x08015CD0
	push {r4,lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	blt _08015CE0
	lsl r0, r0, #16
	lsr r0, r0, #16
	b _08015CF8
_08015CE0:
	bl 0x0800099C
	ldr r1, _08015D00  @ =gUnknown_081382A0
	ldrb r2, [r4]
	lsl r2, r2, #2
	add r2, r2, r1
	mov r1, #7
	and r1, r1, r0
	ldr r0, [r2]
	lsl r1, r1, #1
	add r1, r1, r0
	ldrh r0, [r1]
_08015CF8:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08015D00:
	.4byte gUnknown_081382A0
	THUMB_FUNC_END sub_08015CD0

	THUMB_FUNC_START sub_08015D04
sub_08015D04: @ 0x08015D04
	push {r4,r5,lr}
	add r4, r0, #0
_08015D08:
	ldr r0, _08015D2C  @ =0x03000030
	ldr r1, [r0]
	ldr r0, [r4, #4]
	add r5, r1, r0
	ldrb r0, [r4, #2]
	add r2, r0, #1
	ldrh r3, [r4]
	ldr r0, [r4]
	lsr r0, r0, #28
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08015D30
	lsr r1, r3, #5
	add r0, r5, #0
	bl sub_0800B8D4
	b _08015D3E
_08015D2C:
	.4byte 0x03000030
_08015D30:
	mov r0, #192
	lsl r0, r0, #19
	add r1, r3, r0
	lsl r2, r2, #3
	add r0, r5, #0
	bl CpuFastSet
_08015D3E:
	ldr r0, [r4]
	cmp r0, #0
	bge _08015D48
	add r4, r4, #8
	b _08015D08
_08015D48:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08015D04

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08015D50
sub_08015D50: @ 0x08015D50
	push {r4,lr}
	add r1, r0, #0
	ldr r2, _08015D80  @ =gUnknown_02002440
	ldrh r0, [r1]
	ldr r3, _08015D84  @ =0x0000FFFF
	cmp r0, r3
	beq _08015D78
	ldr r4, _08015D88  @ =gUnknown_08138BB4
_08015D60:
	ldrh r0, [r1]
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r2]
	ldrh r0, [r0, #4]
	strh r0, [r2, #6]
	add r2, r2, #8
	add r1, r1, #2
	ldrh r0, [r1]
	cmp r0, r3
	bne _08015D60
_08015D78:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08015D80:
	.4byte gUnknown_02002440
_08015D84:
	.4byte 0x0000FFFF
_08015D88:
	.4byte gUnknown_08138BB4
	THUMB_FUNC_END sub_08015D50

	THUMB_FUNC_START sub_08015D8C
sub_08015D8C: @ 0x08015D8C
	ldr r0, _08015D98  @ =gUnknown_03000450
	mov r2, #0
	mov r1, #1
	strb r1, [r0, #6]
	strb r2, [r0, #4]
	bx lr
_08015D98:
	.4byte gUnknown_03000450
	THUMB_FUNC_END sub_08015D8C

	THUMB_FUNC_START sub_08015D9C
sub_08015D9C: @ 0x08015D9C
	push {lr}
	ldr r1, _08015DB4  @ =gUnknown_08138C08
	ldr r0, _08015DB8  @ =gUnknown_03000450
	ldrb r0, [r0, #6]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08015DB4:
	.4byte gUnknown_08138C08
_08015DB8:
	.4byte gUnknown_03000450
	THUMB_FUNC_END sub_08015D9C

	THUMB_FUNC_START sub_08015DBC
sub_08015DBC: @ 0x08015DBC
	bx lr
	THUMB_FUNC_END sub_08015DBC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08015DC0
sub_08015DC0: @ 0x08015DC0
	lsl r0, r0, #16
	lsr r0, r0, #30
	cmp r0, #2
	beq _08015DD0
	ldr r0, _08015DCC  @ =gUnknown_0201F020
	b _08015DD2
_08015DCC:
	.4byte gUnknown_0201F020
_08015DD0:
	ldr r0, _08015DD4  @ =gUnknown_0200B320
_08015DD2:
	bx lr
_08015DD4:
	.4byte gUnknown_0200B320
	THUMB_FUNC_END sub_08015DC0

	THUMB_FUNC_START sub_08015DD8
sub_08015DD8: @ 0x08015DD8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r8, r0
	ldr r3, _08015E1C  @ =gUnknown_03000450
	mov r4, #0
	strh r4, [r3, #28]
	strh r4, [r3, #30]
	ldr r0, [r3]
	ldrh r2, [r0, #50]
	ldrh r5, [r0, #54]
	strh r4, [r3, #20]
	mov r1, #14
	strh r1, [r3, #18]
	add r0, r0, #80
	strh r1, [r0]
	mov r1, #252
	lsl r1, r1, #2
	strh r1, [r3, #40]
	strh r1, [r3, #42]
	strh r4, [r3, #24]
	strh r4, [r3, #26]
	strh r2, [r3, #36]
	strh r5, [r3, #38]
	lsl r2, r2, #16
	asr r2, r2, #16
	cmp r2, #119
	bgt _08015E20
	strh r4, [r3, #32]
	b _08015E34
	.byte 0x00
	.byte 0x00
_08015E1C:
	.4byte gUnknown_03000450
_08015E20:
	mov r0, #222
	lsl r0, r0, #2
	cmp r0, r2
	bge _08015E2E
	add r0, r1, #0
	sub r0, r0, #240
	b _08015E32
_08015E2E:
	add r0, r2, #0
	sub r0, r0, #120
_08015E32:
	strh r0, [r3, #32]
_08015E34:
	lsl r0, r5, #16
	asr r1, r0, #16
	cmp r1, #79
	bgt _08015E48
	ldr r1, _08015E44  @ =gUnknown_03000450
	mov r0, #0
	strh r0, [r1, #34]
	b _08015E5A
_08015E44:
	.4byte gUnknown_03000450
_08015E48:
	ldr r3, _08015F4C  @ =gUnknown_03000450
	ldrh r2, [r3, #42]
	add r0, r2, #0
	sub r0, r0, #80
	cmp r0, r1
	blt _08015E56
	add r0, r1, #0
_08015E56:
	sub r0, r0, #80
	strh r0, [r3, #34]
_08015E5A:
	ldr r0, _08015F50  @ =gUnknown_02038000
	mov r1, #128
	lsl r1, r1, #4
	bl zero_memory
	mov r0, sp
	ldr r1, _08015F54  @ =0x0000FFFF
	add r5, r1, #0
	strh r5, [r0]
	ldr r7, _08015F58  @ =gUnknown_02024024
	ldr r6, _08015F5C  @ =0x01000800
	add r1, r7, #0
	add r2, r6, #0
	bl CpuSet
	mov r4, #0
	strh r4, [r7]
	mov r0, sp
	add r0, r0, #2
	strh r5, [r0]
	ldr r5, _08015F60  @ =gUnknown_02010324
	add r1, r5, #0
	add r2, r6, #0
	bl CpuSet
	strh r4, [r5]
	ldr r0, _08015F64  @ =gUnknown_08146078
	mov r2, r8
	lsl r4, r2, #2
	add r0, r4, r0
	ldr r0, [r0]
	mov r1, #1
	bl sub_0801484C
	mov r0, #30
	bl sub_0800BA44
	bl sub_0801620C
	ldr r0, _08015F68  @ =gUnknown_08146060
	add r4, r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08015EB6
	bl sub_08015D50
_08015EB6:
	add r1, r7, #0
	mov r2, #0
	ldr r4, _08015F4C  @ =gUnknown_03000450
	add r6, r5, #0
	ldr r0, _08015F6C  @ =0xFFFFAFFC
	add r7, r1, r0
	add r0, r0, r6
	mov r12, r0
	ldr r3, _08015F70  @ =0x000007FF
	mov r0, #128
	lsl r0, r0, #5
	add r5, r1, r0
_08015ECE:
	ldrh r0, [r1]
	cmp r0, r3
	bhi _08015EDA
	lsl r0, r0, #1
	add r0, r0, r5
	strh r2, [r0]
_08015EDA:
	lsl r0, r2, #16
	mov r2, #128
	lsl r2, r2, #9
	add r0, r0, r2
	add r1, r1, #2
	lsr r2, r0, #16
	asr r0, r0, #16
	cmp r0, r3
	ble _08015ECE
	add r1, r6, #0
	mov r2, #0
	ldr r3, _08015F70  @ =0x000007FF
	mov r0, #128
	lsl r0, r0, #5
	add r5, r1, r0
_08015EF8:
	ldrh r0, [r1]
	cmp r0, r3
	bhi _08015F04
	lsl r0, r0, #1
	add r0, r0, r5
	strh r2, [r0]
_08015F04:
	lsl r0, r2, #16
	mov r2, #128
	lsl r2, r2, #9
	add r0, r0, r2
	add r1, r1, #2
	lsr r2, r0, #16
	asr r0, r0, #16
	cmp r0, r3
	ble _08015EF8
	ldr r3, [r7]
	mov r0, r12
	ldr r2, [r0]
	ldrh r0, [r4, #32]
	ldrh r1, [r4, #28]
	add r0, r0, r1
	ldrh r1, [r4, #24]
	sub r0, r0, r1
	strh r0, [r2, #2]
	strh r0, [r3, #2]
	ldr r3, [r7]
	mov r0, r12
	ldr r2, [r0]
	ldrh r0, [r4, #34]
	ldrh r1, [r4, #30]
	add r0, r0, r1
	ldrh r1, [r4, #26]
	sub r0, r0, r1
	strh r0, [r2, #4]
	strh r0, [r3, #4]
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08015F4C:
	.4byte gUnknown_03000450
_08015F50:
	.4byte gUnknown_02038000
_08015F54:
	.4byte 0x0000FFFF
_08015F58:
	.4byte gUnknown_02024024
_08015F5C:
	.4byte 0x01000800
_08015F60:
	.4byte gUnknown_02010324
_08015F64:
	.4byte gUnknown_08146078
_08015F68:
	.4byte gUnknown_08146060
_08015F6C:
	.4byte 0xFFFFAFFC
_08015F70:
	.4byte 0x000007FF
	THUMB_FUNC_END sub_08015DD8

	THUMB_FUNC_START sub_08015F74
sub_08015F74: @ 0x08015F74
	push {r4-r6,lr}
	add r4, r0, #0
	lsl r4, r4, #16
	lsr r4, r4, #16
	ldr r6, _08015FCC  @ =gUnknown_02038000
	mov r1, #128
	lsl r1, r1, #7
	add r0, r6, #0
	bl zero_memory
	ldr r0, _08015FD0  @ =gUnknown_08146090
	lsl r4, r4, #2
	add r4, r4, r0
	ldr r0, [r4]
	mov r1, #0
	bl sub_0801484C
	ldr r0, _08015FD4  @ =gUnknown_0201F024
	ldr r4, _08015FD8  @ =gUnknown_03000450
	ldrh r2, [r4, #40]
	lsr r2, r2, #4
	ldrh r3, [r4, #42]
	lsr r3, r3, #4
	mov r1, #128
	lsl r1, r1, #8
	add r5, r1, #0
	orr r3, r3, r5
	add r1, r6, #0
	bl sub_0800BAE4
	ldr r0, _08015FDC  @ =gUnknown_0200B324
	ldr r1, _08015FE0  @ =gUnknown_0203A000
	ldrh r2, [r4, #40]
	lsr r2, r2, #4
	ldrh r3, [r4, #42]
	lsr r3, r3, #4
	orr r3, r3, r5
	bl sub_0800BAE4
	bl sub_080160F8
	pop {r4-r6}
	pop {r0}
	bx r0
_08015FCC:
	.4byte gUnknown_02038000
_08015FD0:
	.4byte gUnknown_08146090
_08015FD4:
	.4byte gUnknown_0201F024
_08015FD8:
	.4byte gUnknown_03000450
_08015FDC:
	.4byte gUnknown_0200B324
_08015FE0:
	.4byte gUnknown_0203A000
	THUMB_FUNC_END sub_08015F74

	THUMB_FUNC_START sub_08015FE4
sub_08015FE4: @ 0x08015FE4
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	add r4, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	lsl r4, r4, #16
	lsr r4, r4, #16
	lsl r6, r6, #16
	lsr r6, r6, #16
	lsl r5, r5, #16
	lsr r5, r5, #16
	ldr r0, _0801606C  @ =gUnknown_02038000
	mov r9, r0
	mov r1, #128
	lsl r1, r1, #5
	bl zero_memory
	ldr r2, _08016070  @ =gUnknown_081465E0
	lsl r1, r4, #2
	add r0, r1, r2
	ldrh r0, [r0]
	mov r8, r0
	lsr r0, r0, #4
	mov r8, r0
	lsl r4, r4, #1
	add r4, r4, #1
	lsl r4, r4, #1
	add r4, r4, r2
	ldrh r4, [r4]
	lsr r4, r4, #4
	ldr r0, _08016074  @ =gUnknown_0814627C
	add r1, r1, r0
	ldr r0, [r1]
	mov r1, #1
	bl sub_0801484C
	lsl r5, r5, #6
	add r5, r5, r6
	lsl r5, r5, #1
	ldr r0, _08016078  @ =gUnknown_0201F024
	add r0, r5, r0
	mov r2, #128
	lsl r2, r2, #8
	add r1, r2, #0
	orr r4, r4, r1
	mov r1, r9
	mov r2, r8
	add r3, r4, #0
	bl sub_0800BAE4
	ldr r0, _0801607C  @ =gUnknown_0200B324
	add r5, r5, r0
	ldr r1, _08016080  @ =gUnknown_02038800
	add r0, r5, #0
	mov r2, r8
	add r3, r4, #0
	bl sub_0800BAE4
	bl sub_080160F8
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
_0801606C:
	.4byte gUnknown_02038000
_08016070:
	.4byte gUnknown_081465E0
_08016074:
	.4byte gUnknown_0814627C
_08016078:
	.4byte gUnknown_0201F024
_0801607C:
	.4byte gUnknown_0200B324
_08016080:
	.4byte gUnknown_02038800
	THUMB_FUNC_END sub_08015FE4

	THUMB_FUNC_START sub_08016084
sub_08016084: @ 0x08016084
	push {r4-r6,lr}
	ldr r5, _080160DC  @ =gUnknown_0201F024
	mov r0, #192
	lsl r0, r0, #6
	add r1, r5, r0
	ldr r6, _080160E0  @ =0x04000800
	add r0, r5, #0
	add r2, r6, #0
	bl CpuSet
	ldr r4, _080160E4  @ =gUnknown_0200B324
	mov r2, #192
	lsl r2, r2, #6
	add r1, r4, r2
	add r0, r4, #0
	add r2, r6, #0
	bl CpuSet
	ldr r0, _080160E8  @ =gUnknown_02016D90
	sub r5, r5, #4
	add r1, r5, #0
	bl sub_080159F4
	ldr r0, _080160EC  @ =gUnknown_020031D0
	sub r4, r4, #4
	add r1, r4, #0
	bl sub_080159F4
	ldr r0, _080160F0  @ =gUnknown_02016470
	mov r2, #128
	lsl r2, r2, #2
	add r1, r0, r2
	mov r2, #8
	bl CpuFastSet
	ldr r2, _080160F4  @ =gUnknown_0200B310
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #14
	orr r0, r0, r1
	str r0, [r2]
	pop {r4-r6}
	pop {r0}
	bx r0
_080160DC:
	.4byte gUnknown_0201F024
_080160E0:
	.4byte 0x04000800
_080160E4:
	.4byte gUnknown_0200B324
_080160E8:
	.4byte gUnknown_02016D90
_080160EC:
	.4byte gUnknown_020031D0
_080160F0:
	.4byte gUnknown_02016470
_080160F4:
	.4byte gUnknown_0200B310
	THUMB_FUNC_END sub_08016084

	THUMB_FUNC_START sub_080160F8
sub_080160F8: @ 0x080160F8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r0, _080161D4  @ =gUnknown_02024024
	mov r8, r0
	ldr r1, _080161D8  @ =gUnknown_02010324
	mov r12, r1
	ldr r5, _080161DC  @ =0xFFFFB000
	add r5, r5, r8
	ldr r3, _080161DC  @ =0xFFFFB000
	add r3, r3, r12
	ldr r6, _080161E0  @ =0xFFFFD000
	add r6, r6, r8
	ldr r4, _080161E0  @ =0xFFFFD000
	add r4, r4, r12
	mov r2, #0
	mov r9, r6
	mov r10, r4
	ldr r7, _080161E4  @ =gUnknown_0814AB24
_08016122:
	ldrh r0, [r5]
	lsl r0, r0, #1
	add r0, r0, r8
	ldrh r0, [r0]
	add r0, r0, r7
	ldrb r0, [r0]
	strb r0, [r6]
	add r5, r5, #2
	add r6, r6, #1
	ldrh r1, [r3]
	ldr r0, _080161E8  @ =0x00007FFF
	and r0, r0, r1
	lsl r0, r0, #1
	add r0, r0, r12
	ldrh r0, [r0]
	add r0, r0, r7
	ldrb r0, [r0]
	strb r0, [r4]
	add r3, r3, #2
	add r4, r4, #1
	add r0, r2, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	ldr r0, _080161EC  @ =0x00000FFF
	cmp r2, r0
	bls _08016122
	ldr r1, _080161F0  @ =gUnknown_03000450
	ldrh r0, [r1, #40]
	lsr r0, r0, #4
	mov r1, r9
	add r6, r0, r1
	mov r1, r10
	add r4, r0, r1
	mov r5, r9
	add r5, r5, #63
	mov r3, r10
	add r3, r3, #63
	mov r2, #0
	mov r1, #255
_08016170:
	strb r1, [r6]
	strb r1, [r5]
	strb r1, [r4]
	strb r1, [r3]
	add r6, r6, #64
	add r5, r5, #64
	add r4, r4, #64
	add r3, r3, #64
	add r0, r2, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	cmp r2, #63
	bls _08016170
	ldr r0, _080161F0  @ =gUnknown_03000450
	ldrh r1, [r0, #42]
	ldr r0, _080161F4  @ =0x0000FFF0
	and r0, r0, r1
	lsl r0, r0, #2
	mov r1, r9
	add r6, r0, r1
	mov r1, r10
	add r4, r0, r1
	mov r5, #252
	lsl r5, r5, #4
	add r5, r5, r9
	mov r3, #252
	lsl r3, r3, #4
	add r3, r3, r10
	mov r2, #0
	mov r1, #255
_080161AC:
	strb r1, [r6]
	add r6, r6, #1
	strb r1, [r5]
	add r5, r5, #1
	strb r1, [r4]
	add r4, r4, #1
	strb r1, [r3]
	add r3, r3, #1
	add r0, r2, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	cmp r2, #63
	bls _080161AC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080161D4:
	.4byte gUnknown_02024024
_080161D8:
	.4byte gUnknown_02010324
_080161DC:
	.4byte 0xFFFFB000
_080161E0:
	.4byte 0xFFFFD000
_080161E4:
	.4byte gUnknown_0814AB24
_080161E8:
	.4byte 0x00007FFF
_080161EC:
	.4byte 0x00000FFF
_080161F0:
	.4byte gUnknown_03000450
_080161F4:
	.4byte 0x0000FFF0
	THUMB_FUNC_END sub_080160F8

	THUMB_FUNC_START sub_080161F8
sub_080161F8: @ 0x080161F8
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r2, _08016208  @ =gUnknown_03000450
	strh r0, [r2, #22]
	mov r0, #3
	and r1, r1, r0
	strb r1, [r2, #5]
	bx lr
_08016208:
	.4byte gUnknown_03000450
	THUMB_FUNC_END sub_080161F8

	THUMB_FUNC_START sub_0801620C
sub_0801620C: @ 0x0801620C
	push {lr}
	ldr r0, _0801623C  @ =gUnknown_03006C80
	ldrb r0, [r0, #1]
	cmp r0, #0
	blt _08016238
	cmp r0, #2
	bgt _08016238
	ldr r1, _08016240  @ =gUnknown_03000450
	mov r0, #12
	strb r0, [r1, #8]
	ldr r1, _08016244  @ =gUnknown_030004A0
	ldr r0, _08016248  @ =gUnknown_08142374
	ldrh r0, [r0, #38]
	strh r0, [r1, #44]
	ldrh r2, [r1]
	mov r3, #128
	lsl r3, r3, #4
	add r0, r3, #0
	orr r0, r0, r2
	strh r0, [r1]
	bl 0x08008D74
_08016238:
	pop {r0}
	bx r0
_0801623C:
	.4byte gUnknown_03006C80
_08016240:
	.4byte gUnknown_03000450
_08016244:
	.4byte gUnknown_030004A0
_08016248:
	.4byte gUnknown_08142374
	THUMB_FUNC_END sub_0801620C

	THUMB_FUNC_START sub_0801624C
sub_0801624C: @ 0x0801624C
	lsl r0, r0, #16
	lsl r1, r1, #16
	ldr r2, _08016274  @ =0xFF880000
	add r0, r0, r2
	lsr r0, r0, #16
	ldr r2, _08016278  @ =0xFFB00000
	add r1, r1, r2
	lsr r1, r1, #16
	ldr r2, _0801627C  @ =gUnknown_03000450
	strh r0, [r2, #32]
	strh r1, [r2, #34]
	strh r0, [r2, #36]
	strh r1, [r2, #38]
	ldr r1, _08016280  @ =gUnknown_02000028
	ldr r0, _08016284  @ =gUnknown_03000204
	ldrb r0, [r0]
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0]
	bx lr
_08016274:
	.4byte 0xFF880000
_08016278:
	.4byte 0xFFB00000
_0801627C:
	.4byte gUnknown_03000450
_08016280:
	.4byte gUnknown_02000028
_08016284:
	.4byte gUnknown_03000204
	THUMB_FUNC_END sub_0801624C

	THUMB_FUNC_START sub_08016288
sub_08016288: @ 0x08016288
	push {r4,lr}
	add r4, r0, #0
	ldr r0, _080162B0  @ =gUnknown_03000C00
	ldrb r0, [r0]
	cmp r0, #0
	bne _080162A4
	ldr r0, _080162B4  @ =gUnknown_08138C10
	ldrb r1, [r4, #20]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r4, #0
	bl _call_via_r1
_080162A4:
	add r0, r4, #0
	bl 0x08003688
	pop {r4}
	pop {r0}
	bx r0
_080162B0:
	.4byte gUnknown_03000C00
_080162B4:
	.4byte gUnknown_08138C10
	THUMB_FUNC_END sub_08016288

	THUMB_FUNC_START sub_080162B8
sub_080162B8: @ 0x080162B8
	push {r4-r6,lr}
	add r4, r0, #0
	ldr r2, _080163E8  @ =gUnknown_03006A30
	ldrb r1, [r4, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r2, r2, #40
	add r0, r0, r2
	ldr r5, [r0]
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	ldrb r1, [r4, #28]
	mov r6, #4
	neg r6, r6
	add r0, r6, #0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	ldrb r1, [r4, #30]
	mov r0, #16
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r4, #30]
	mov r0, #9
	strb r0, [r4, #27]
	mov r0, #192
	lsl r0, r0, #1
	str r0, [r4, #12]
	ldr r0, [r5, #48]
	str r0, [r4, #48]
	ldr r0, [r5, #52]
	sub r0, r0, #1
	str r0, [r4, #52]
	ldr r0, [r5, #56]
	str r0, [r4, #56]
	add r0, r5, #0
	add r0, r0, #80
	ldrh r2, [r0]
	mov r1, #192
	lsl r1, r1, #8
	add r0, r1, #0
	add r1, r4, #0
	add r1, r1, #80
	orr r0, r0, r2
	strh r0, [r1]
	ldrb r1, [r5, #28]
	lsr r1, r1, #6
	lsl r1, r1, #6
	ldrb r2, [r4, #28]
	mov r3, #63
	add r0, r3, #0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #28]
	add r0, r5, #0
	add r0, r0, #32
	ldrb r0, [r0]
	add r0, r0, #16
	add r1, r4, #0
	add r1, r1, #32
	strb r0, [r1]
	add r1, r1, #74
	mov r0, #160
	lsl r0, r0, #4
	strh r0, [r1]
	ldrb r1, [r4, #11]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080163FC
	mov r0, #120
	strb r0, [r4, #23]
	ldr r0, [r4, #88]
	str r4, [r0, #84]
	ldrb r1, [r5, #29]
	lsr r1, r1, #6
	sub r1, r1, #1
	lsl r1, r1, #6
	ldrb r2, [r4, #29]
	add r0, r3, #0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #29]
	ldrb r1, [r4, #31]
	add r0, r3, #0
	and r0, r0, r1
	mov r1, #64
	orr r0, r0, r1
	strb r0, [r4, #31]
	add r1, r4, #0
	add r1, r1, #68
	mov r0, #10
	strb r0, [r1]
	add r1, r1, #2
	mov r0, #15
	strb r0, [r1]
	sub r1, r1, #6
	mov r0, #19
	strb r0, [r1]
	sub r1, r1, #1
	mov r0, #29
	strb r0, [r1]
	add r0, r5, #0
	add r0, r0, #60
	ldrb r0, [r0]
	add r0, r0, #1
	mov r1, #127
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #60
	strb r0, [r1]
	add r0, r5, #0
	add r0, r0, #92
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, r0, #92
	strh r1, [r0]
	ldr r0, _080163EC  @ =gUnknown_08138C18
	str r0, [r4, #72]
	add r0, r4, #0
	bl 0x080005F0
	add r1, r4, #0
	add r1, r1, #46
	mov r0, #8
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #11
	bl 0x08003870
	ldrb r0, [r4, #10]
	lsl r0, r0, #10
	ldr r2, _080163F0  @ =0x06010200
	add r0, r0, r2
	ldr r1, _080163F4  @ =0x03000030
	ldr r1, [r1]
	ldr r2, _080163F8  @ =0x00041B20
	add r1, r1, r2
	mov r2, #128
	lsl r2, r2, #2
	bl 0x080009F4
	mov r0, #81
	bl 0x08003DFC
	b _08016420
	.byte 0x00
	.byte 0x00
_080163E8:
	.4byte gUnknown_03006A30
_080163EC:
	.4byte gUnknown_08138C18
_080163F0:
	.4byte 0x06010200
_080163F4:
	.4byte 0x03000030
_080163F8:
	.4byte 0x00041B20
_080163FC:
	ldrb r1, [r5, #29]
	lsr r1, r1, #6
	lsl r1, r1, #6
	ldrb r2, [r4, #29]
	add r0, r3, #0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #29]
	add r2, r4, #0
	add r2, r2, #94
	ldrb r1, [r2]
	add r0, r6, #0
	and r0, r0, r1
	strb r0, [r2]
	add r0, r4, #0
	mov r1, #13
	bl 0x08003870
_08016420:
	ldrb r0, [r4, #11]
	cmp r0, #4
	bhi _08016476
	bl sub_080123E8
	str r0, [r4, #88]
	cmp r0, #0
	beq _08016476
	str r4, [r0, #84]
	ldr r1, [r4, #88]
	mov r0, #16
	strb r0, [r1, #9]
	ldr r1, [r4, #88]
	mov r0, #8
	strb r0, [r1, #8]
	ldr r1, [r4, #88]
	ldrb r0, [r4, #10]
	strb r0, [r1, #10]
	ldr r1, [r4, #88]
	ldrb r0, [r4, #11]
	add r0, r0, #1
	strb r0, [r1, #11]
	ldrb r0, [r4, #11]
	cmp r0, #4
	bne _0801646E
	ldr r2, [r4, #88]
	ldrb r0, [r2, #11]
	mov r1, #128
	orr r0, r0, r1
	strb r0, [r2, #11]
	ldr r2, _08016484  @ =gUnknown_03006A30
	ldrb r1, [r4, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r2
	add r0, r0, #61
	mov r1, #1
	strb r1, [r0]
_0801646E:
	ldr r1, [r4, #88]
	mov r0, #6
	bl sub_08012728
_08016476:
	ldrb r0, [r4, #11]
	cmp r0, #0
	bne _0801647E
	str r5, [r4, #84]
_0801647E:
	pop {r4-r6}
	pop {r0}
	bx r0
_08016484:
	.4byte gUnknown_03006A30
	THUMB_FUNC_END sub_080162B8

	THUMB_FUNC_START sub_08016488
sub_08016488: @ 0x08016488
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r6, r0, #0
	ldr r2, _08016618  @ =gUnknown_03006A30
	ldrb r1, [r6, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r2, r2, #40
	add r0, r0, r2
	ldr r0, [r0]
	mov r8, r0
	add r0, r6, #0
	add r0, r0, #65
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080164C2
	mov r0, #127
	and r0, r0, r1
	cmp r0, #0
	bne _080164C2
	ldr r0, [r6, #76]
	ldrb r0, [r0, #10]
	mov r1, #11
	bl sub_0803D65C
_080164C2:
	ldrb r1, [r6, #11]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _080164CE
	b _08016706
_080164CE:
	add r1, r6, #0
	add r1, r1, #61
	mov r0, #0
	strb r0, [r1]
	add r0, r6, #0
	bl 0x08003828
	ldrb r0, [r6, #23]
	sub r0, r0, #1
	strb r0, [r6, #23]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #255
	bne _0801656A
	mov r0, #120
	strb r0, [r6, #23]
	ldr r5, _0801661C  @ =gUnknown_03005980
	ldr r4, [r5, #4]
	cmp r4, r5
	beq _08016526
_080164F6:
	ldr r0, [r6, #100]
	cmp r4, r0
	beq _08016520
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #48
	mov r3, #48
	bl 0x0800390C
	lsl r0, r0, #24
	cmp r0, #0
	beq _08016520
	add r0, r4, #0
	add r0, r0, #60
	ldrb r1, [r0]
	mov r7, #128
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08016520
	b _0801666C
_08016520:
	ldr r4, [r4, #4]
	cmp r4, r5
	bne _080164F6
_08016526:
	ldrb r0, [r6, #21]
	cmp r0, #1
	beq _08016570
	mov r4, #0
	ldr r7, _08016620  @ =gUnknown_03006A58
_08016530:
	ldrb r0, [r6, #10]
	cmp r4, r0
	beq _08016556
	lsl r0, r4, #3
	add r0, r0, r4
	lsl r0, r0, #4
	add r5, r0, r7
	ldr r1, [r5]
	ldr r0, [r6, #100]
	cmp r1, r0
	beq _08016556
	add r0, r6, #0
	mov r2, #48
	mov r3, #48
	bl 0x0800390C
	lsl r0, r0, #24
	cmp r0, #0
	bne _08016624
_08016556:
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #3
	bls _08016530
_08016560:
	ldrb r0, [r6, #21]
	cmp r0, #1
	beq _08016570
	mov r0, #0
	str r0, [r6, #100]
_0801656A:
	ldrb r0, [r6, #21]
	cmp r0, #1
	bne _0801658A
_08016570:
	add r0, r6, #0
	add r0, r0, #65
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0801658A
	ldr r1, [r6, #76]
	ldr r0, [r6, #100]
	cmp r1, r0
	bne _0801658A
	mov r0, #0
	str r0, [r6, #100]
_0801658A:
	add r0, r6, #0
	bl sub_0803CC20
	add r5, r6, #0
	ldrb r0, [r6, #11]
	cmp r0, #0
	beq _080165B0
	add r4, r6, #0
	add r4, r4, #106
_0801659C:
	ldr r0, [r5, #84]
	mov r1, #0
	ldrsh r2, [r4, r1]
	add r1, r5, #0
	bl sub_0801679C
	ldr r5, [r5, #84]
	ldrb r0, [r5, #11]
	cmp r0, #0
	bne _0801659C
_080165B0:
	ldr r4, _08016618  @ =gUnknown_03006A30
	ldrb r1, [r6, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r4
	add r0, r0, #61
	ldrb r1, [r0]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _080165EA
	add r0, r6, #0
	mov r1, r8
	mov r2, #2
	mov r3, #2
	bl 0x0800390C
	lsl r0, r0, #24
	cmp r0, #0
	beq _080165EA
	ldrb r0, [r6, #10]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #4
	add r1, r1, r4
	add r1, r1, #61
	mov r0, #0
	strb r0, [r1]
_080165EA:
	mov r1, #128
	lsl r1, r1, #6
	add r0, r6, #0
	bl 0x08003594
	cmp r0, #0
	beq _080165FA
	b _0801676C
_080165FA:
	mov r0, #128
	lsl r0, r0, #9
	str r0, [r6, #16]
	ldrb r0, [r6, #21]
	cmp r0, #1
	beq _080166B4
	mov r0, #192
	lsl r0, r0, #1
	str r0, [r6, #12]
	bl 0x0800099C
	mov r1, #159
	and r0, r0, r1
	b _080166E8
	.byte 0x00
	.byte 0x00
_08016618:
	.4byte gUnknown_03006A30
_0801661C:
	.4byte gUnknown_03005980
_08016620:
	.4byte gUnknown_03006A58
_08016624:
	ldr r1, [r5]
	add r0, r6, #0
	bl sub_0803CECC
	add r1, r6, #0
	add r1, r1, #43
	strb r0, [r1]
	add r0, r6, #0
	bl sub_0803D224
	add r0, r6, #0
	add r0, r0, #42
	ldrb r1, [r0]
	lsr r1, r1, #1
	add r1, r1, #9
	add r0, r6, #0
	bl 0x08003870
	mov r0, #192
	lsl r0, r0, #2
	str r0, [r6, #12]
	mov r0, #1
	strb r0, [r6, #21]
	ldr r0, [r5]
	str r0, [r6, #100]
	add r1, r6, #0
	add r1, r1, #104
	mov r0, #3
	strh r0, [r1]
	add r2, r6, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r2]
	b _08016560
_0801666C:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0803CECC
	add r1, r6, #0
	add r1, r1, #43
	strb r0, [r1]
	add r0, r6, #0
	bl sub_0803D224
	add r0, r6, #0
	add r0, r0, #42
	ldrb r1, [r0]
	lsr r1, r1, #1
	add r1, r1, #9
	add r0, r6, #0
	bl 0x08003870
	mov r0, #192
	lsl r0, r0, #2
	str r0, [r6, #12]
	mov r0, #1
	strb r0, [r6, #21]
	str r4, [r6, #100]
	add r1, r6, #0
	add r1, r1, #104
	mov r0, #3
	strh r0, [r1]
	sub r1, r1, #44
	ldrb r0, [r1]
	orr r0, r0, r7
	strb r0, [r1]
	mov r0, #81
	bl 0x08003DFC
	b _08016526
_080166B4:
	add r0, r6, #0
	add r0, r0, #104
	ldrh r1, [r0]
	sub r1, r1, #1
	strh r1, [r0]
	lsl r1, r1, #16
	ldr r0, _080166D8  @ =0xFFFF0000
	cmp r1, r0
	bne _080166DC
	mov r0, #0
	strb r0, [r6, #21]
	add r2, r6, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #127
	and r0, r0, r1
	strb r0, [r2]
	b _0801676C
_080166D8:
	.4byte 0xFFFF0000
_080166DC:
	ldr r1, [r6, #100]
	cmp r1, #0
	beq _080166EE
	add r0, r6, #0
	bl sub_0803CECC
_080166E8:
	add r1, r6, #0
	add r1, r1, #43
	strb r0, [r1]
_080166EE:
	add r0, r6, #0
	bl sub_0803D224
	add r0, r6, #0
	add r0, r0, #42
	ldrb r1, [r0]
	lsr r1, r1, #1
	add r1, r1, #9
	add r0, r6, #0
	bl 0x08003870
	b _0801676C
_08016706:
	add r0, r6, #0
	bl 0x08008D90
	ldr r2, _08016750  @ =gUnknown_03006A30
	ldrb r1, [r6, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r2
	add r0, r0, #61
	ldrb r1, [r0]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08016732
	add r1, r6, #0
	add r1, r1, #106
	ldrh r0, [r1]
	cmp r0, #0
	beq _08016732
	sub r0, r0, #128
	strh r0, [r1]
_08016732:
	ldrb r0, [r6, #11]
	cmp r0, #0
	bne _0801676C
	ldr r1, [r6, #84]
	add r4, r6, #0
	add r4, r4, #106
	mov r0, #0
	ldrsh r2, [r4, r0]
	add r0, r6, #0
	bl sub_0801679C
	add r5, r6, #0
	ldrb r1, [r6, #11]
	b _08016764
	.byte 0x00
	.byte 0x00
_08016750:
	.4byte gUnknown_03006A30
_08016754:
	ldr r0, [r5, #88]
	mov r1, #0
	ldrsh r2, [r4, r1]
	add r1, r5, #0
	bl sub_0801679C
	ldr r5, [r5, #88]
	ldrb r1, [r5, #11]
_08016764:
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08016754
_0801676C:
	ldr r2, _08016798  @ =gUnknown_03006A30
	ldrb r1, [r6, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r2
	add r0, r0, #61
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801678C
	add r0, r6, #0
	bl sub_08012540
	add r0, r6, #0
	bl 0x08000620
_0801678C:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08016798:
	.4byte gUnknown_03006A30
	THUMB_FUNC_END sub_08016488

	THUMB_FUNC_START sub_0801679C
sub_0801679C: @ 0x0801679C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r6, r0, #0
	add r4, r1, #0
	lsl r5, r2, #16
	lsr r5, r5, #16
	mov r0, #50
	ldrsh r1, [r4, r0]
	mov r2, #50
	ldrsh r0, [r6, r2]
	sub r2, r1, r0
	mov r3, #54
	ldrsh r1, [r4, r3]
	mov r3, #54
	ldrsh r0, [r6, r3]
	sub r1, r1, r0
	lsl r0, r2, #16
	asr r0, r0, #16
	lsl r1, r1, #16
	asr r1, r1, #16
	bl 0x080040E0
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r7, r0, #0
	ldr r0, [r4, #48]
	ldr r1, [r6, #48]
	mov r12, r1
	sub r2, r0, r1
	ldr r0, [r4, #52]
	ldr r4, [r6, #52]
	sub r1, r0, r4
	ldr r3, _08016844  @ =gUnknown_0813E4CC
	mov r8, r3
	lsl r0, r7, #1
	add r0, r0, r8
	mov r3, #0
	ldrsh r0, [r0, r3]
	lsl r5, r5, #16
	asr r5, r5, #16
	mul r0, r5, r0
	sub r3, r2, r0
	cmp r0, #0
	bge _080167F8
	neg r0, r0
_080167F8:
	cmp r2, #0
	bge _080167FE
	neg r2, r2
_080167FE:
	sub r0, r2, r0
	cmp r0, #0
	bgt _08016806
	mov r3, #0
_08016806:
	add r0, r7, #0
	add r0, r0, #64
	lsl r0, r0, #1
	add r0, r0, r8
	mov r2, #0
	ldrsh r0, [r0, r2]
	mul r5, r0, r5
	neg r0, r5
	sub r2, r1, r0
	cmp r0, #0
	bge _0801681E
	add r0, r5, #0
_0801681E:
	cmp r1, #0
	bge _08016824
	neg r1, r1
_08016824:
	sub r0, r1, r0
	cmp r0, #0
	bgt _0801682C
	mov r2, #0
_0801682C:
	mov r1, r12
	add r0, r1, r3
	str r0, [r6, #48]
	add r0, r4, r2
	str r0, [r6, #52]
	add r0, r3, r2
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08016844:
	.4byte gUnknown_0813E4CC
	THUMB_FUNC_END sub_0801679C

	THUMB_FUNC_START sub_08016848
sub_08016848: @ 0x08016848
	push {lr}
	ldr r1, _08016854  @ =gUnknown_08139104
	bl 0x08009924
	pop {r0}
	bx r0
_08016854:
	.4byte gUnknown_08139104
	THUMB_FUNC_END sub_08016848

	THUMB_FUNC_START sub_08016858
sub_08016858: @ 0x08016858
	push {lr}
	ldr r2, _0801686C  @ =gUnknown_0813911C
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0801686C:
	.4byte gUnknown_0813911C
	THUMB_FUNC_END sub_08016858

	THUMB_FUNC_START sub_08016870
sub_08016870: @ 0x08016870
	push {lr}
	ldr r1, _0801687C  @ =gUnknown_08139104
	bl 0x080098A0
	pop {r0}
	bx r0
_0801687C:
	.4byte gUnknown_08139104
	THUMB_FUNC_END sub_08016870

	THUMB_FUNC_START sub_08016880
sub_08016880: @ 0x08016880
	push {r4,r5,lr}
	add r4, r0, #0
	mov r5, #1
	mov r0, #1
	strb r0, [r4, #20]
	bl 0x0800099C
	mov r1, #63
	and r0, r0, r1
	add r0, r0, #180
	strb r0, [r4, #24]
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	orr r0, r0, r5
	strb r0, [r4, #28]
	add r1, r4, #0
	add r1, r1, #46
	mov r0, #2
	strb r0, [r1]
	ldr r0, _080168C4  @ =gUnknown_081391DC
	str r0, [r4, #72]
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
	add r0, r4, #0
	bl sub_080169F8
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080168C4:
	.4byte gUnknown_081391DC
	THUMB_FUNC_END sub_08016880

	THUMB_FUNC_START sub_080168C8
sub_080168C8: @ 0x080168C8
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #24]
	sub r0, r0, #1
	strb r0, [r4, #24]
	lsl r0, r0, #24
	cmp r0, #0
	bne _080168F0
	mov r0, #3
	strb r0, [r4, #20]
	add r0, r4, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r1, r1, #4
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x08003870
	b _0801692E
_080168F0:
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08016922
	mov r0, #2
	strb r0, [r4, #20]
	bl 0x0800099C
	ldr r2, _08016934  @ =gUnknown_0813912C
	mov r1, #3
	and r1, r1, r0
	add r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #23]
	add r0, r4, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r1, r1, #4
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x08003870
_08016922:
	add r0, r4, #0
	bl 0x0800963C
	add r0, r4, #0
	bl 0x08003828
_0801692E:
	pop {r4}
	pop {r0}
	bx r0
_08016934:
	.4byte gUnknown_0813912C
	THUMB_FUNC_END sub_080168C8

	THUMB_FUNC_START sub_08016938
sub_08016938: @ 0x08016938
	push {lr}
	add r1, r0, #0
	ldrb r0, [r1, #23]
	sub r0, r0, #1
	strb r0, [r1, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08016952
	mov r0, #1
	strb r0, [r1, #20]
	add r0, r1, #0
	bl sub_080169F8
_08016952:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08016938

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08016958
sub_08016958: @ 0x08016958
	push {r4,r5,lr}
	add r4, r0, #0
	bl 0x08003828
	add r2, r4, #0
	add r2, r2, #41
	ldrb r1, [r2]
	cmp r1, #1
	bne _080169C4
	mov r0, #0
	strb r0, [r2]
	add r0, r4, #0
	mov r1, #4
	mov r2, #0
	bl sub_0804411C
	add r2, r0, #0
	cmp r2, #0
	beq _080169F2
	ldr r1, _080169C0  @ =gUnknown_08139130
	add r3, r4, #0
	add r3, r3, #42
	ldrb r0, [r3]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrh r5, [r2, #50]
	add r0, r0, r5
	strh r0, [r2, #50]
	ldrb r0, [r3]
	lsl r0, r0, #1
	add r0, r0, #1
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrh r1, [r2, #54]
	add r0, r0, r1
	strh r0, [r2, #54]
	add r0, r4, #0
	add r0, r0, #43
	ldrb r1, [r0]
	add r0, r2, #0
	add r0, r0, #43
	strb r1, [r0]
	mov r0, #42
	bl 0x08003DFC
	b _080169F2
	.byte 0x00
	.byte 0x00
_080169C0:
	.4byte gUnknown_08139130
_080169C4:
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080169F2
	mov r0, #2
	strb r0, [r4, #20]
	mov r0, #30
	strb r0, [r4, #23]
	bl 0x0800099C
	mov r1, #63
	and r0, r0, r1
	add r0, r0, #180
	strb r0, [r4, #24]
	add r0, r4, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r1, r1, #4
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x08003870
_080169F2:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08016958

	THUMB_FUNC_START sub_080169F8
sub_080169F8: @ 0x080169F8
	push {r4,lr}
	add r4, r0, #0
	bl 0x0800099C
	ldr r2, _08016A30  @ =gUnknown_08139138
	mov r1, #3
	and r1, r1, r0
	add r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #23]
	bl 0x0800099C
	mov r1, #24
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	lsr r0, r0, #3
	sub r1, r1, #1
	strb r0, [r1]
	ldrb r1, [r1]
	add r0, r4, #0
	bl 0x08003870
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08016A30:
	.4byte gUnknown_08139138
	THUMB_FUNC_END sub_080169F8

	THUMB_FUNC_START sub_08016A34
sub_08016A34: @ 0x08016A34
	push {r4,r5,lr}
	add r5, r0, #0
	bl 0x080095A4
	add r0, r5, #0
	bl 0x08009874
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #0
	beq _08016A6E
	add r0, r5, #0
	add r0, r0, #60
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _08016A64
	ldrb r0, [r5, #23]
	cmp r0, #1
	bne _08016A64
	add r0, r5, #0
	bl sub_08016DF8
_08016A64:
	add r0, r5, #0
	add r1, r4, #0
	bl 0x0800996C
	b _08016A84
_08016A6E:
	ldr r4, _08016A8C  @ =gUnknown_081391E4
	add r0, r5, #0
	bl 0x080098DC
	lsl r0, r0, #24
	lsr r0, r0, #22
	add r0, r0, r4
	ldr r1, [r0]
	add r0, r5, #0
	bl _call_via_r1
_08016A84:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08016A8C:
	.4byte gUnknown_081391E4
	THUMB_FUNC_END sub_08016A34

	THUMB_FUNC_START sub_08016A90
sub_08016A90: @ 0x08016A90
	push {lr}
	ldr r2, _08016AA4  @ =gUnknown_081391FC
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08016AA4:
	.4byte gUnknown_081391FC
	THUMB_FUNC_END sub_08016A90

	THUMB_FUNC_START sub_08016AA8
sub_08016AA8: @ 0x08016AA8
	push {r4,lr}
	add r4, r0, #0
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #0
	bne _08016ABA
	add r0, r4, #0
	bl sub_08016DF8
_08016ABA:
	add r0, r4, #0
	add r0, r0, #65
	ldrb r0, [r0]
	cmp r0, #128
	bne _08016B0C
	ldr r1, _08016B08  @ =gUnknown_0813922C
	ldr r0, [r4, #76]
	ldrb r0, [r0, #10]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, r0, #92
	mov r2, #0
	mov r3, #0
	strh r1, [r0]
	mov r0, #6
	strb r0, [r4, #20]
	mov r0, #240
	strb r0, [r4, #23]
	add r0, r4, #0
	add r0, r0, #46
	strb r2, [r0]
	strh r3, [r4, #58]
	ldr r0, [r4, #76]
	str r0, [r4, #88]
	add r1, r4, #0
	add r1, r1, #108
	ldrh r0, [r1]
	cmp r0, #0
	beq _08016AFC
	add r0, r0, #1
	strh r0, [r1]
_08016AFC:
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
	b _08016B14
	.byte 0x00
	.byte 0x00
_08016B08:
	.4byte gUnknown_0813922C
_08016B0C:
	ldr r1, _08016B1C  @ =gUnknown_081391E4
	add r0, r4, #0
	bl 0x080098A0
_08016B14:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08016B1C:
	.4byte gUnknown_081391E4
	THUMB_FUNC_END sub_08016AA8

	THUMB_FUNC_START sub_08016B20
sub_08016B20: @ 0x08016B20
	push {r4,lr}
	add r4, r0, #0
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	add r1, r4, #0
	add r1, r1, #46
	mov r0, #2
	strb r0, [r1]
	ldrb r1, [r4, #28]
	sub r0, r0, #51
	and r0, r0, r1
	mov r1, #16
	orr r0, r0, r1
	strb r0, [r4, #28]
	ldr r0, _08016B80  @ =gUnknown_0813927C
	str r0, [r4, #72]
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	bl 0x0800099C
	mov r1, #56
	and r0, r0, r1
	add r0, r0, #20
	strb r0, [r4, #23]
	bl sub_08044594
	add r1, r0, #0
	str r1, [r4, #100]
	add r0, r4, #0
	bl sub_0803CECC
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08016B80:
	.4byte gUnknown_0813927C
	THUMB_FUNC_END sub_08016B20

	THUMB_FUNC_START sub_08016B84
sub_08016B84: @ 0x08016B84
	push {r4,lr}
	add r4, r0, #0
	mov r1, #128
	lsl r1, r1, #6
	bl 0x08003594
	cmp r0, #0
	bne _08016BB4
	add r0, r4, #0
	bl 0x08003828
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08016BB4
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	add r0, r4, #0
	mov r1, #1
	bl 0x08003870
_08016BB4:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08016B84

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08016BBC
sub_08016BBC: @ 0x08016BBC
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r0, [r0]
	cmp r0, #128
	bne _08016BFC
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	mov r0, #192
	lsl r0, r0, #9
	str r0, [r4, #16]
	add r0, r4, #0
	mov r1, #2
	bl 0x08003870
	ldr r1, [r4, #100]
	add r0, r4, #0
	bl 0x08009EA4
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	add r0, r4, #0
	bl 0x08009308
	mov r0, #49
	bl 0x08003DFC
_08016BFC:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08016BBC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08016C04
sub_08016C04: @ 0x08016C04
	push {r4,lr}
	add r4, r0, #0
	bl 0x0800963C
	mov r1, #128
	lsl r1, r1, #6
	add r0, r4, #0
	bl 0x08003594
	ldr r0, [r4, #16]
	cmp r0, #0
	bge _08016C2A
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	add r0, r4, #0
	mov r1, #3
	bl 0x08003870
_08016C2A:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08016C04

	THUMB_FUNC_START sub_08016C30
sub_08016C30: @ 0x08016C30
	push {r4,lr}
	add r4, r0, #0
	bl 0x0800963C
	mov r1, #128
	lsl r1, r1, #6
	add r0, r4, #0
	bl 0x08003594
	cmp r0, #0
	bne _08016C54
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	add r0, r4, #0
	mov r1, #4
	bl 0x08003870
_08016C54:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08016C30

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08016C5C
sub_08016C5C: @ 0x08016C5C
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r0, [r0]
	cmp r0, #128
	bne _08016C86
	mov r0, #1
	strb r0, [r4, #20]
	bl 0x0800099C
	mov r1, #56
	and r0, r0, r1
	add r0, r0, #20
	strb r0, [r4, #23]
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
_08016C86:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08016C5C

	THUMB_FUNC_START sub_08016C8C
sub_08016C8C: @ 0x08016C8C
	push {r4,lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, r1, #108
	ldrh r0, [r1]
	cmp r0, #0
	beq _08016C9E
	add r0, r0, #1
	strh r0, [r1]
_08016C9E:
	ldrb r3, [r4, #23]
	sub r2, r3, #1
	strb r2, [r4, #23]
	ldr r1, _08016CC4  @ =gUnknown_03005E10
	ldrb r0, [r4, #10]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r1, [r0]
	mov r0, #243
	and r0, r0, r1
	cmp r0, #0
	beq _08016CCE
	lsl r0, r2, #24
	lsr r0, r0, #24
	cmp r0, #7
	bhi _08016CC8
	mov r0, #0
	b _08016CCC
	.byte 0x00
	.byte 0x00
_08016CC4:
	.4byte gUnknown_03005E10
_08016CC8:
	add r0, r3, #0
	sub r0, r0, #9
_08016CCC:
	strb r0, [r4, #23]
_08016CCE:
	ldr r1, [r4, #88]
	ldrb r0, [r1, #20]
	cmp r0, #2
	beq _08016D4C
	ldrb r0, [r4, #23]
	cmp r0, #0
	beq _08016D4C
	ldr r3, _08016D40  @ =gUnknown_03006A30
	ldrb r0, [r1, #10]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #4
	add r1, r1, r3
	ldrb r2, [r1, #26]
	mov r0, #128
	orr r0, r0, r2
	strb r0, [r1, #26]
	ldr r0, [r4, #88]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r3
	add r0, r0, #52
	mov r1, #1
	strb r1, [r0]
	ldr r0, [r4, #88]
	add r1, r4, #0
	bl sub_0803D3D0
	ldr r2, _08016D44  @ =gUnknown_0813921C
	ldr r0, _08016D48  @ =gUnknown_03000E20
	ldrh r0, [r0]
	mov r1, #28
	and r1, r1, r0
	lsr r1, r1, #1
	add r0, r1, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrh r3, [r4, #50]
	add r0, r0, r3
	strh r0, [r4, #50]
	add r1, r1, #1
	add r1, r1, r2
	mov r0, #0
	ldrsb r0, [r1, r0]
	ldrh r1, [r4, #54]
	add r0, r0, r1
	strh r0, [r4, #54]
	add r2, r4, #0
	add r2, r2, #94
	ldrb r0, [r2]
	mov r1, #3
	orr r0, r0, r1
	strb r0, [r2]
	b _08016DAA
_08016D40:
	.4byte gUnknown_03006A30
_08016D44:
	.4byte gUnknown_0813921C
_08016D48:
	.4byte gUnknown_03000E20
_08016D4C:
	ldr r3, _08016DB0  @ =gUnknown_03006A30
	ldrb r0, [r4, #11]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #4
	add r1, r1, r3
	ldrb r0, [r1, #2]
	cmp r0, #0
	bne _08016DAA
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	add r1, r4, #0
	add r1, r1, #46
	mov r0, #2
	strb r0, [r1]
	ldr r0, [r4, #88]
	add r0, r0, #42
	ldrb r1, [r0]
	mov r0, #6
	and r0, r0, r1
	mov r1, #4
	eor r0, r0, r1
	lsl r0, r0, #2
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	ldr r0, [r4, #12]
	add r0, r0, #64
	str r0, [r4, #12]
	mov r0, #224
	lsl r0, r0, #9
	str r0, [r4, #16]
	add r1, r1, #18
	mov r0, #220
	strb r0, [r1]
	add r1, r1, #31
	mov r2, #0
	ldr r0, _08016DB4  @ =0x000021FF
	strh r0, [r1]
	ldr r0, [r4, #88]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r3
	strb r2, [r0, #26]
_08016DAA:
	pop {r4}
	pop {r0}
	bx r0
_08016DB0:
	.4byte gUnknown_03006A30
_08016DB4:
	.4byte 0x000021FF
	THUMB_FUNC_END sub_08016C8C

	THUMB_FUNC_START sub_08016DB8
sub_08016DB8: @ 0x08016DB8
	push {r4,lr}
	add r4, r0, #0
	bl 0x0800963C
	mov r1, #128
	lsl r1, r1, #6
	add r0, r4, #0
	bl 0x08003594
	cmp r0, #0
	bne _08016DF2
	mov r0, #5
	strb r0, [r4, #20]
	ldr r0, [r4, #12]
	sub r0, r0, #64
	str r0, [r4, #12]
	add r2, r4, #0
	add r2, r2, #94
	ldrb r1, [r2]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #2
	orr r0, r0, r1
	strb r0, [r2]
	add r0, r4, #0
	mov r1, #4
	bl 0x08003870
_08016DF2:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08016DB8

	THUMB_FUNC_START sub_08016DF8
sub_08016DF8: @ 0x08016DF8
	add r2, r0, #0
	ldr r0, [r2, #96]
	cmp r0, #0
	beq _08016E18
	ldr r0, [r2, #84]
	cmp r0, #0
	beq _08016E18
	ldrb r0, [r2, #11]
	cmp r0, #1
	bne _08016E18
	add r0, r2, #0
	add r0, r0, #104
	mov r1, #0
	strb r1, [r0]
	ldr r0, [r2, #84]
	strb r1, [r0, #11]
_08016E18:
	bx lr
	THUMB_FUNC_END sub_08016DF8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08016E1C
sub_08016E1C: @ 0x08016E1C
	push {lr}
	ldr r1, _08016E28  @ =gUnknown_08139284
	bl 0x08009924
	pop {r0}
	bx r0
_08016E28:
	.4byte gUnknown_08139284
	THUMB_FUNC_END sub_08016E1C

	THUMB_FUNC_START sub_08016E2C
sub_08016E2C: @ 0x08016E2C
	push {lr}
	ldr r2, _08016E40  @ =gUnknown_0813929C
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08016E40:
	.4byte gUnknown_0813929C
	THUMB_FUNC_END sub_08016E2C

	THUMB_FUNC_START sub_08016E44
sub_08016E44: @ 0x08016E44
	push {lr}
	add r2, r0, #0
	ldrb r0, [r2, #20]
	cmp r0, #3
	bne _08016E5A
	mov r0, #1
	strb r0, [r2, #20]
	mov r0, #128
	str r0, [r2, #12]
	mov r0, #20
	strb r0, [r2, #24]
_08016E5A:
	ldr r1, _08016E68  @ =gUnknown_08139284
	add r0, r2, #0
	bl 0x080098A0
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08016E68:
	.4byte gUnknown_08139284
	THUMB_FUNC_END sub_08016E44

	THUMB_FUNC_START sub_08016E6C
sub_08016E6C: @ 0x08016E6C
	push {r4,r5,lr}
	add r4, r0, #0
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	add r1, r4, #0
	add r1, r1, #46
	mov r5, #0
	mov r0, #2
	strb r0, [r1]
	ldr r0, _08016EA4  @ =gUnknown_0813935C
	str r0, [r4, #72]
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	add r4, r4, #42
	strb r5, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
_08016EA4:
	.4byte gUnknown_0813935C
	THUMB_FUNC_END sub_08016E6C

	THUMB_FUNC_START sub_08016EA8
sub_08016EA8: @ 0x08016EA8
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	bl 0x0800099C
	mov r1, #48
	and r0, r0, r1
	add r0, r0, #60
	strb r0, [r4, #23]
	bl 0x0800099C
	mov r1, #24
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	ldrb r0, [r1]
	bl sub_08043EE0
	lsl r0, r0, #24
	lsr r1, r0, #24
	add r0, r4, #0
	add r0, r0, #42
	ldrb r2, [r0]
	cmp r1, r2
	beq _08016EE8
	strb r1, [r0]
	add r0, r4, #0
	bl 0x08003870
_08016EE8:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08016EA8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08016EF0
sub_08016EF0: @ 0x08016EF0
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #24]
	cmp r0, #0
	bne _08016F36
	add r0, r4, #0
	mov r1, #12
	bl 0x0800997C
	lsl r1, r0, #24
	lsr r2, r1, #24
	mov r1, #128
	and r1, r1, r0
	cmp r1, #0
	beq _08016F3A
	mov r0, #3
	strb r0, [r4, #20]
	mov r0, #16
	strb r0, [r4, #23]
	mov r0, #208
	lsl r0, r0, #1
	str r0, [r4, #12]
	mov r1, #24
	and r1, r1, r2
	add r0, r4, #0
	add r0, r0, #43
	strb r1, [r0]
	lsr r1, r1, #3
	sub r0, r0, #1
	strb r1, [r0]
	add r1, r1, #4
	add r0, r4, #0
	bl 0x08003870
	b _08016F56
_08016F36:
	sub r0, r0, #1
	strb r0, [r4, #24]
_08016F3A:
	ldrb r0, [r4, #23]
	cmp r0, #0
	bne _08016F46
	mov r0, #1
	strb r0, [r4, #20]
	b _08016F56
_08016F46:
	sub r0, r0, #1
	strb r0, [r4, #23]
	add r0, r4, #0
	bl 0x0800963C
	add r0, r4, #0
	bl 0x08003828
_08016F56:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08016EF0

	THUMB_FUNC_START sub_08016F5C
sub_08016F5C: @ 0x08016F5C
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	cmp r0, #0
	beq _08016F6C
	sub r0, r0, #1
	strb r0, [r4, #23]
	b _08016F96
_08016F6C:
	add r0, r4, #0
	bl 0x08003828
	add r0, r4, #0
	bl 0x0800963C
	lsl r0, r0, #16
	cmp r0, #0
	bne _08016F96
	mov r0, #1
	strb r0, [r4, #20]
	mov r0, #128
	str r0, [r4, #12]
	mov r0, #20
	strb r0, [r4, #24]
	add r0, r4, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r0, r4, #0
	bl 0x08003870
_08016F96:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08016F5C

	THUMB_FUNC_START sub_08016F9C
sub_08016F9C: @ 0x08016F9C
	push {lr}
	ldr r1, _08016FA8  @ =gUnknown_08139364
	bl 0x08009924
	pop {r0}
	bx r0
_08016FA8:
	.4byte gUnknown_08139364
	THUMB_FUNC_END sub_08016F9C

	THUMB_FUNC_START sub_08016FAC
sub_08016FAC: @ 0x08016FAC
	push {lr}
	ldr r2, _08016FC8  @ =gUnknown_081393C0
	ldrb r1, [r0, #10]
	lsl r1, r1, #2
	add r1, r1, r2
	ldrb r2, [r0, #20]
	ldr r1, [r1]
	lsl r2, r2, #2
	add r2, r2, r1
	ldr r1, [r2]
	bl _call_via_r1
	pop {r0}
	bx r0
_08016FC8:
	.4byte gUnknown_081393C0
	THUMB_FUNC_END sub_08016FAC

	THUMB_FUNC_START sub_08016FCC
sub_08016FCC: @ 0x08016FCC
	push {lr}
	add r2, r0, #0
	add r0, r0, #67
	ldrb r0, [r0]
	cmp r0, #0
	beq _08017002
	ldrb r3, [r2, #20]
	add r1, r3, #0
	cmp r1, #2
	beq _08016FEA
	ldrb r0, [r2, #10]
	cmp r0, #3
	beq _08016FF2
	cmp r1, #4
	bne _08016FF2
_08016FEA:
	add r0, r3, #1
	mov r1, #0
	strb r0, [r2, #20]
	strb r1, [r2, #23]
_08016FF2:
	add r3, r2, #0
	add r3, r3, #63
	ldrb r0, [r3]
	add r1, r2, #0
	add r1, r1, #124
	strb r0, [r1]
	mov r0, #6
	strb r0, [r3]
_08017002:
	ldrb r0, [r2, #21]
	cmp r0, #255
	bne _08017048
	mov r1, #0
	mov r0, #2
	strb r0, [r2, #20]
	strb r1, [r2, #21]
	mov r0, #192
	lsl r0, r0, #9
	str r0, [r2, #16]
	mov r0, #128
	lsl r0, r0, #1
	str r0, [r2, #12]
	add r0, r2, #0
	add r0, r0, #62
	ldrb r0, [r0]
	add r1, r2, #0
	add r1, r1, #43
	strb r0, [r1]
	add r1, r1, #20
	mov r0, #6
	strb r0, [r1]
	add r0, r2, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r1, r1, #4
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r2, #0
	bl 0x08003870
	mov r0, #49
	bl 0x08003DFC
	b _08017050
_08017048:
	ldr r1, _08017054  @ =gUnknown_08139364
	add r0, r2, #0
	bl 0x080098A0
_08017050:
	pop {r0}
	bx r0
_08017054:
	.4byte gUnknown_08139364
	THUMB_FUNC_END sub_08016FCC

	THUMB_FUNC_START sub_08017058
sub_08017058: @ 0x08017058
	push {r4,lr}
	add r4, r0, #0
	bl 0x08009E44
	add r0, r4, #0
	add r0, r0, #67
	ldrb r0, [r0]
	cmp r0, #0
	bne _08017074
	add r0, r4, #0
	add r0, r0, #124
	ldrb r1, [r0]
	sub r0, r0, #61
	strb r1, [r0]
_08017074:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08017058

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801707C
sub_0801707C: @ 0x0801707C
	push {r4,lr}
	add r4, r0, #0
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	add r1, r4, #0
	add r1, r1, #46
	mov r0, #6
	strb r0, [r1]
	add r0, r4, #0
	add r0, r0, #69
	ldrb r0, [r0]
	add r1, r1, #79
	strb r0, [r1]
	ldr r0, _080170E8  @ =gUnknown_08139520
	str r0, [r4, #72]
	ldrb r0, [r4, #10]
	cmp r0, #0
	beq _080170B0
	sub r1, r1, #62
	mov r0, #9
	strb r0, [r1]
_080170B0:
	ldrb r0, [r4, #10]
	cmp r0, #3
	bne _080170C2
	bl 0x0800099C
	mov r1, #127
	and r0, r0, r1
	add r0, r0, #64
	strb r0, [r4, #24]
_080170C2:
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	mov r0, #1
	strb r0, [r4, #23]
	add r1, r4, #0
	add r1, r1, #42
	mov r0, #0
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
	add r0, r4, #0
	bl sub_0801740C
	pop {r4}
	pop {r0}
	bx r0
_080170E8:
	.4byte gUnknown_08139520
	THUMB_FUNC_END sub_0801707C

	THUMB_FUNC_START sub_080170EC
sub_080170EC: @ 0x080170EC
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801710E
	bl 0x0800099C
	mov r1, #28
	and r0, r0, r1
	add r0, r0, #30
	strb r0, [r4, #23]
	add r0, r4, #0
	bl sub_0801740C
_0801710E:
	add r0, r4, #0
	bl 0x0800963C
	add r0, r4, #0
	bl 0x08003828
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080170EC

	THUMB_FUNC_START sub_08017120
sub_08017120: @ 0x08017120
	push {r4,lr}
	add r4, r0, #0
	bl 0x08009664
	add r0, r4, #0
	bl 0x08003828
	mov r1, #136
	lsl r1, r1, #5
	add r0, r4, #0
	bl 0x08003594
	cmp r0, #0
	bne _08017154
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	add r0, r4, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r1, r1, #6
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x08003870
_08017154:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08017120

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801715C
sub_0801715C: @ 0x0801715C
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r2, #128
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, #0
	beq _080171A0
	mov r1, #0
	mov r0, #1
	strb r0, [r4, #20]
	strb r0, [r4, #23]
	add r0, r4, #0
	add r0, r0, #42
	strb r1, [r0]
	str r2, [r4, #12]
	add r2, r4, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #239
	and r0, r0, r1
	strb r0, [r2]
	add r1, r4, #0
	add r1, r1, #63
	mov r0, #9
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
_080171A0:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801715C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080171A8
sub_080171A8: @ 0x080171A8
	push {r4,lr}
	add r4, r0, #0
	mov r1, #0
	ldrb r0, [r4, #24]
	cmp r0, #0
	bne _080171C2
	add r0, r4, #0
	mov r1, #64
	mov r2, #48
	bl 0x08009E6C
	add r1, r0, #0
	b _080171C6
_080171C2:
	sub r0, r0, #1
	strb r0, [r4, #24]
_080171C6:
	cmp r1, #0
	beq _08017224
	mov r0, #4
	strb r0, [r4, #20]
	add r0, r4, #0
	bl sub_0803CECC
	add r3, r4, #0
	add r3, r3, #43
	strb r0, [r3]
	mov r0, #224
	lsl r0, r0, #9
	str r0, [r4, #16]
	mov r0, #192
	lsl r0, r0, #1
	str r0, [r4, #12]
	add r2, r4, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #16
	orr r0, r0, r1
	strb r0, [r2]
	add r1, r4, #0
	add r1, r1, #63
	mov r0, #6
	strb r0, [r1]
	ldrb r0, [r3]
	bl sub_08043EA4
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r1, r4, #0
	add r1, r1, #42
	cmp r0, #255
	beq _0801720E
	strb r0, [r1]
_0801720E:
	ldrb r1, [r1]
	add r1, r1, #4
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x08003870
	mov r0, #49
	bl 0x08003DFC
	b _0801724E
_08017224:
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08017242
	bl 0x0800099C
	mov r1, #28
	and r0, r0, r1
	add r0, r0, #30
	strb r0, [r4, #23]
	add r0, r4, #0
	bl sub_0801740C
_08017242:
	add r0, r4, #0
	bl 0x0800963C
	add r0, r4, #0
	bl 0x08003828
_0801724E:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080171A8

	THUMB_FUNC_START sub_08017254
sub_08017254: @ 0x08017254
	push {r4,lr}
	add r4, r0, #0
	bl 0x08009664
	mov r1, #160
	lsl r1, r1, #5
	add r0, r4, #0
	bl 0x08003594
	add r0, r4, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08017296
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	mov r0, #12
	strb r0, [r4, #23]
	add r0, r4, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r1, r1, #8
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x08003870
_08017296:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08017254

	THUMB_FUNC_START sub_0801729C
sub_0801729C: @ 0x0801729C
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	cmp r0, #0
	beq _080172AC
	sub r0, r0, #1
	strb r0, [r4, #23]
	b _080172DA
_080172AC:
	mov r1, #160
	lsl r1, r1, #10
	add r0, r4, #0
	bl 0x08003594
	cmp r0, #0
	bne _080172DA
	mov r0, #3
	strb r0, [r4, #20]
	mov r0, #16
	strb r0, [r4, #24]
	add r0, r4, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r1, r1, #10
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x08003870
	mov r0, #94
	bl 0x08003DFC
_080172DA:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801729C

	THUMB_FUNC_START sub_080172E0
sub_080172E0: @ 0x080172E0
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #24]
	cmp r0, #0
	beq _08017312
	sub r0, r0, #1
	strb r0, [r4, #24]
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	bne _08017312
	mov r0, #4
	strb r0, [r4, #20]
	mov r0, #32
	strb r0, [r4, #23]
	strb r1, [r4, #24]
	add r1, r4, #0
	add r1, r1, #63
	mov r0, #6
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #12
	bl 0x08003870
	b _0801733C
_08017312:
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08017330
	bl 0x0800099C
	mov r1, #28
	and r0, r0, r1
	add r0, r0, #30
	strb r0, [r4, #23]
	add r0, r4, #0
	bl sub_0801740C
_08017330:
	add r0, r4, #0
	bl 0x0800963C
	add r0, r4, #0
	bl 0x08003828
_0801733C:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080172E0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08017344
sub_08017344: @ 0x08017344
	push {r4-r7,lr}
	add r5, r0, #0
	bl 0x08003828
	add r2, r5, #0
	add r2, r2, #41
	ldrb r1, [r2]
	add r0, r1, #0
	cmp r0, #1
	bne _08017380
	ldr r0, [r5, #88]
	cmp r0, #0
	bne _08017406
	ldrb r2, [r5, #23]
	add r0, r5, #0
	add r1, r2, #0
	bl 0x08009E6C
	str r0, [r5, #88]
	ldrb r0, [r5, #24]
	add r0, r0, #1
	strb r0, [r5, #24]
	mov r1, #3
	and r0, r0, r1
	cmp r0, #0
	bne _08017406
	ldrb r0, [r5, #23]
	add r0, r0, #32
	strb r0, [r5, #23]
	b _08017406
_08017380:
	cmp r0, #2
	bne _080173D4
	mov r0, #0
	strb r0, [r2]
	bl sub_08012494
	add r6, r0, #0
	cmp r6, #0
	beq _080173CE
	bl 0x0800099C
	mov r7, #31
	and r0, r0, r7
	add r4, r6, #0
	add r4, r4, #43
	strb r0, [r4]
	ldr r1, [r5, #88]
	cmp r1, #0
	beq _080173AE
	add r0, r5, #0
	bl sub_0803CECC
	b _080173B4
_080173AE:
	bl 0x0800099C
	and r0, r0, r7
_080173B4:
	strb r0, [r4]
	ldrb r0, [r5, #9]
	cmp r0, #5
	beq _080173C0
	mov r0, #1
	strb r0, [r6, #10]
_080173C0:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0803D3D0
	mov r0, #12
	bl 0x08003DFC
_080173CE:
	mov r0, #0
	str r0, [r5, #88]
	b _08017406
_080173D4:
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08017406
	mov r4, #0
	mov r0, #1
	strb r0, [r5, #20]
	strb r0, [r5, #23]
	bl 0x0800099C
	mov r1, #127
	and r0, r0, r1
	add r0, r0, #64
	strb r0, [r5, #24]
	add r0, r5, #0
	add r0, r0, #42
	strb r4, [r0]
	add r1, r5, #0
	add r1, r1, #63
	mov r0, #9
	strb r0, [r1]
	add r0, r5, #0
	mov r1, #0
	bl 0x08003870
_08017406:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08017344

	THUMB_FUNC_START sub_0801740C
sub_0801740C: @ 0x0801740C
	push {r4,lr}
	add r4, r0, #0
	bl 0x0800099C
	mov r1, #31
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	ldrb r0, [r1]
	bl sub_08043EA4
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #255
	beq _0801743E
	add r0, r4, #0
	add r0, r0, #42
	ldrb r2, [r0]
	cmp r1, r2
	beq _0801743E
	strb r1, [r0]
	add r0, r4, #0
	bl 0x08003870
_0801743E:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801740C

	THUMB_FUNC_START sub_08017444
sub_08017444: @ 0x08017444
	push {r4,r5,lr}
	add r4, r0, #0
	add r5, r4, #0
	add r5, r5, #120
	ldrb r0, [r5]
	cmp r0, #1
	beq _080174A8
	cmp r0, #1
	bgt _0801745C
	cmp r0, #0
	beq _08017462
	b _08017536
_0801745C:
	cmp r0, #2
	beq _080174F0
	b _08017536
_08017462:
	mov r1, #128
	lsl r1, r1, #10
	add r0, r4, #0
	bl 0x08003594
	cmp r0, #0
	bne _08017536
	add r1, r4, #0
	add r1, r1, #67
	strb r0, [r1]
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	add r1, r1, #59
	mov r0, #240
	lsl r0, r0, #1
	strh r0, [r1]
	add r2, r4, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r2]
	add r1, r4, #0
	add r1, r1, #63
	mov r0, #68
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #2
	bl 0x08003870
	mov r0, #22
	bl 0x08003DFC
	b _08017536
_080174A8:
	add r0, r4, #0
	bl 0x08003828
	add r1, r4, #0
	add r1, r1, #126
	ldrh r0, [r1]
	sub r2, r0, #1
	strh r2, [r1]
	lsl r0, r2, #16
	lsr r0, r0, #16
	cmp r0, #0
	bne _080174D0
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	add r0, r4, #0
	mov r1, #3
	bl 0x08003870
	b _08017536
_080174D0:
	cmp r0, #59
	bhi _08017536
	ldr r0, _080174EC  @ =gUnknown_08139544
	mov r1, #3
	and r2, r2, r1
	add r0, r2, r0
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrh r1, [r4, #50]
	add r0, r0, r1
	strh r0, [r4, #50]
	b _08017536
	.byte 0x00
	.byte 0x00
_080174EC:
	.4byte gUnknown_08139544
_080174F0:
	add r0, r4, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r2, #128
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08017536
	mov r1, #0
	strb r1, [r5]
	mov r0, #1
	strb r0, [r4, #20]
	strb r0, [r4, #23]
	mov r0, #16
	strb r0, [r4, #24]
	str r2, [r4, #12]
	add r0, r4, #0
	add r0, r0, #42
	strb r1, [r0]
	add r1, r4, #0
	add r1, r1, #63
	mov r0, #6
	strb r0, [r1]
	add r0, r4, #0
	add r0, r0, #125
	ldrb r0, [r0]
	add r1, r1, #6
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
_08017536:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08017444

	THUMB_FUNC_START sub_0801753C
sub_0801753C: @ 0x0801753C
	push {r4,r5,lr}
	add r5, r0, #0
	ldr r0, _08017564  @ =gUnknown_03000208
	ldrh r0, [r0, #2]
	cmp r0, #1
	bls _0801754E
	add r0, r5, #0
	bl 0x080095A4
_0801754E:
	add r0, r5, #0
	bl 0x08009874
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	beq _08017568
	add r0, r5, #0
	bl 0x0800996C
	b _0801757E
_08017564:
	.4byte gUnknown_03000208
_08017568:
	ldr r4, _08017584  @ =gUnknown_0813952C
	add r0, r5, #0
	bl 0x080098DC
	lsl r0, r0, #24
	lsr r0, r0, #22
	add r0, r0, r4
	ldr r1, [r0]
	add r0, r5, #0
	bl _call_via_r1
_0801757E:
	pop {r4,r5}
	pop {r0}
	bx r0
_08017584:
	.4byte gUnknown_0813952C
	THUMB_FUNC_END sub_0801753C

	THUMB_FUNC_START sub_08017588
sub_08017588: @ 0x08017588
	push {r4,r5,lr}
	add r4, r0, #0
	bl 0x080095A4
	ldr r5, _080175C8  @ =gUnknown_08139548
	add r0, r4, #0
	bl 0x080098DC
	lsl r0, r0, #24
	lsr r0, r0, #22
	add r0, r0, r5
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
	add r0, r4, #0
	bl 0x08008D90
	ldrb r2, [r4, #31]
	mov r1, #63
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #64
	orr r0, r0, r2
	strb r0, [r4, #31]
	ldrb r0, [r4, #29]
	and r1, r1, r0
	orr r1, r1, r2
	strb r1, [r4, #29]
	pop {r4,r5}
	pop {r0}
	bx r0
_080175C8:
	.4byte gUnknown_08139548
	THUMB_FUNC_END sub_08017588

	THUMB_FUNC_START sub_080175CC
sub_080175CC: @ 0x080175CC
	push {lr}
	ldr r2, _080175E0  @ =gUnknown_08139560
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_080175E0:
	.4byte gUnknown_08139560
	THUMB_FUNC_END sub_080175CC

	THUMB_FUNC_START sub_080175E4
sub_080175E4: @ 0x080175E4
	push {lr}
	ldr r1, _080175F0  @ =gUnknown_08139548
	bl 0x080098A0
	pop {r0}
	bx r0
_080175F0:
	.4byte gUnknown_08139548
	THUMB_FUNC_END sub_080175E4

	THUMB_FUNC_START sub_080175F4
sub_080175F4: @ 0x080175F4
	push {r4,lr}
	add r4, r0, #0
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	add r1, r4, #0
	add r1, r1, #46
	mov r0, #0
	strb r0, [r1]
	ldr r0, _08017634  @ =gUnknown_08139594
	str r0, [r4, #72]
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	bl 0x0800099C
	mov r1, #31
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
	pop {r4}
	pop {r0}
	bx r0
_08017634:
	.4byte gUnknown_08139594
	THUMB_FUNC_END sub_080175F4

	THUMB_FUNC_START sub_08017638
sub_08017638: @ 0x08017638
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08017666
	bl 0x0800099C
	mov r1, #31
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
	b _0801766C
_08017666:
	add r0, r4, #0
	bl 0x08009694
_0801766C:
	ldr r0, _08017684  @ =gUnknown_08139568
	add r1, r4, #0
	add r1, r1, #41
	ldrb r1, [r1]
	add r1, r1, r0
	mov r0, #0
	ldrsb r0, [r1, r0]
	strh r0, [r4, #58]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08017684:
	.4byte gUnknown_08139568
	THUMB_FUNC_END sub_08017638

	THUMB_FUNC_START sub_08017688
sub_08017688: @ 0x08017688
	push {lr}
	ldr r1, _08017694  @ =gUnknown_0813959C
	bl 0x08009924
	pop {r0}
	bx r0
_08017694:
	.4byte gUnknown_0813959C
	THUMB_FUNC_END sub_08017688

	THUMB_FUNC_START sub_08017698
sub_08017698: @ 0x08017698
	push {lr}
	ldr r2, _080176AC  @ =gUnknown_081395B4
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_080176AC:
	.4byte gUnknown_081395B4
	THUMB_FUNC_END sub_08017698

	THUMB_FUNC_START sub_080176B0
sub_080176B0: @ 0x080176B0
	push {lr}
	add r2, r0, #0
	add r0, r0, #69
	ldrb r1, [r0]
	cmp r1, #0
	beq _080176CA
	add r0, r0, #55
	ldrb r0, [r0]
	cmp r0, r1
	beq _080176CA
	mov r0, #9
	strb r0, [r2, #20]
	b _080176D2
_080176CA:
	ldr r1, _080176D8  @ =gUnknown_0813959C
	add r0, r2, #0
	bl 0x080098A0
_080176D2:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080176D8:
	.4byte gUnknown_0813959C
	THUMB_FUNC_END sub_080176B0

	THUMB_FUNC_START sub_080176DC
sub_080176DC: @ 0x080176DC
	push {r4,lr}
	add r4, r0, #0
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	add r1, r4, #0
	add r1, r1, #46
	mov r0, #2
	strb r0, [r1]
	ldr r0, _08017730  @ =gUnknown_08139684
	str r0, [r4, #72]
	add r0, r4, #0
	add r0, r0, #69
	ldrb r1, [r0]
	add r0, r0, #55
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	ldr r0, _08017734  @ =gUnknown_03006A30
	ldr r0, [r0, #40]
	str r0, [r4, #88]
	bl sub_08044594
	add r1, r0, #0
	str r1, [r4, #100]
	add r0, r4, #0
	bl sub_0803CECC
	add r4, r4, #43
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
_08017730:
	.4byte gUnknown_08139684
_08017734:
	.4byte gUnknown_03006A30
	THUMB_FUNC_END sub_080176DC

	THUMB_FUNC_START sub_08017738
sub_08017738: @ 0x08017738
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	bl 0x0800099C
	mov r1, #48
	and r0, r0, r1
	add r0, r0, #32
	strb r0, [r4, #23]
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08017738

	THUMB_FUNC_START sub_0801775C
sub_0801775C: @ 0x0801775C
	push {r4,r5,lr}
	add r5, r0, #0
	bl 0x08003828
	ldrb r0, [r5, #23]
	sub r0, r0, #1
	strb r0, [r5, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _080177B0
	ldr r4, _08017790  @ =gUnknown_081395DC
	bl 0x0800099C
	mov r1, #7
	and r1, r1, r0
	add r1, r1, r4
	ldrb r0, [r1]
	cmp r0, #0
	beq _08017794
	cmp r0, #1
	beq _080177A2
	mov r0, #6
	strb r0, [r5, #20]
	add r0, r5, #0
	mov r1, #4
	b _080177AC
_08017790:
	.4byte gUnknown_081395DC
_08017794:
	bl 0x0800099C
	mov r1, #48
	and r0, r0, r1
	add r0, r0, #32
	strb r0, [r5, #23]
	b _080177B0
_080177A2:
	ldrb r0, [r5, #20]
	add r0, r0, #1
	strb r0, [r5, #20]
	add r0, r5, #0
	mov r1, #1
_080177AC:
	bl 0x08003870
_080177B0:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801775C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080177B8
sub_080177B8: @ 0x080177B8
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080177FA
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	mov r0, #144
	lsl r0, r0, #9
	str r0, [r4, #16]
	ldr r0, _08017800  @ =0x0000FFF8
	strh r0, [r4, #58]
	ldr r1, [r4, #100]
	add r0, r4, #0
	bl 0x08009EA4
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #2
	bl 0x08003870
	mov r0, #49
	bl 0x08003DFC
_080177FA:
	pop {r4}
	pop {r0}
	bx r0
_08017800:
	.4byte 0x0000FFF8
	THUMB_FUNC_END sub_080177B8

	THUMB_FUNC_START sub_08017804
sub_08017804: @ 0x08017804
	push {r4,lr}
	add r4, r0, #0
	bl 0x0800963C
	add r0, r4, #0
	bl 0x08003828
	mov r1, #192
	lsl r1, r1, #5
	add r0, r4, #0
	bl 0x08003594
	cmp r0, #0
	bne _0801782E
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	add r0, r4, #0
	mov r1, #3
	bl 0x08003870
_0801782E:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08017804

	THUMB_FUNC_START sub_08017834
sub_08017834: @ 0x08017834
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08017866
	bl 0x0800099C
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0801785A
	strb r1, [r4, #20]
	b _08017866
_0801785A:
	mov r0, #3
	strb r0, [r4, #20]
	add r0, r4, #0
	mov r1, #1
	bl 0x08003870
_08017866:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08017834

	THUMB_FUNC_START sub_0801786C
sub_0801786C: @ 0x0801786C
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r2, r4, #0
	add r2, r2, #41
	ldrb r1, [r2]
	cmp r1, #1
	bne _0801788E
	mov r0, #0
	strb r0, [r2]
	add r2, r2, #19
	ldrb r1, [r2]
	mov r0, #127
	and r0, r0, r1
	strb r0, [r2]
	b _080178B2
_0801788E:
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080178B2
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	bl 0x0800099C
	mov r1, #112
	and r0, r0, r1
	add r0, r0, #30
	strb r0, [r4, #23]
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	strb r0, [r4, #28]
_080178B2:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801786C

	THUMB_FUNC_START sub_080178B8
sub_080178B8: @ 0x080178B8
	push {lr}
	add r2, r0, #0
	ldrb r0, [r2, #23]
	sub r0, r0, #1
	strb r0, [r2, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _080178E4
	ldrb r0, [r2, #20]
	add r0, r0, #1
	strb r0, [r2, #20]
	ldrb r1, [r2, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r2, #28]
	add r0, r2, #0
	mov r1, #5
	bl 0x08003870
_080178E4:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080178B8

	THUMB_FUNC_START sub_080178E8
sub_080178E8: @ 0x080178E8
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r2, r4, #0
	add r2, r2, #41
	ldrb r1, [r2]
	cmp r1, #1
	bne _0801790A
	mov r0, #0
	strb r0, [r2]
	add r2, r2, #19
	ldrb r1, [r2]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r2]
	b _0801791E
_0801790A:
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0801791E
	mov r0, #1
	strb r0, [r4, #20]
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
_0801791E:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080178E8

	THUMB_FUNC_START sub_08017924
sub_08017924: @ 0x08017924
	push {r4-r7,lr}
	add r7, r0, #0
	mov r6, #0
	mov r0, #3
	bl sub_08012468
	add r5, r0, #0
	cmp r5, #0
	beq _08017942
	strh r6, [r5, #58]
	add r1, r5, #0
	add r1, r1, #61
	mov r0, #240
	strb r0, [r1]
	mov r6, #1
_08017942:
	mov r0, #3
	bl sub_08012468
	add r4, r0, #0
	cmp r4, #0
	beq _08017964
	mov r0, #0
	strh r0, [r4, #58]
	add r1, r4, #0
	add r1, r1, #61
	mov r0, #240
	strb r0, [r1]
	lsl r0, r6, #24
	mov r1, #128
	lsl r1, r1, #17
	add r0, r0, r1
	lsr r6, r0, #24
_08017964:
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_08044198
	lsl r0, r6, #24
	asr r2, r0, #24
	cmp r2, #2
	bne _08017980
	str r4, [r5, #84]
	mov r0, #1
	strb r0, [r5, #11]
	str r5, [r4, #84]
	strb r0, [r4, #11]
_08017980:
	ldr r1, [r7, #96]
	cmp r1, #0
	beq _0801798E
	add r1, r1, #98
	ldrh r0, [r1]
	add r0, r0, r2
	strh r0, [r1]
_0801798E:
	mov r0, #15
	mov r1, #2
	mov r2, #0
	bl sub_0804C8A8
	add r5, r0, #0
	cmp r5, #0
	beq _080179A6
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0803D3D0
_080179A6:
	add r0, r7, #0
	bl sub_08012540
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08017924

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080179B4
sub_080179B4: @ 0x080179B4
	push {lr}
	ldr r1, _080179C0  @ =gUnknown_0813968C
	bl 0x08009924
	pop {r0}
	bx r0
_080179C0:
	.4byte gUnknown_0813968C
	THUMB_FUNC_END sub_080179B4

	THUMB_FUNC_START sub_080179C4
sub_080179C4: @ 0x080179C4
	push {r4,lr}
	add r4, r0, #0
	ldr r0, _080179F8  @ =gUnknown_081396A4
	ldrb r1, [r4, #20]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r4, #0
	bl _call_via_r1
	add r2, r4, #0
	add r2, r2, #118
	ldrh r0, [r2]
	cmp r0, #0
	beq _08017A2A
	sub r1, r0, #1
	strh r1, [r2]
	lsl r0, r1, #16
	lsr r0, r0, #16
	cmp r0, #0
	bne _080179FC
	add r0, r4, #0
	bl sub_08017D50
	b _08017A2A
	.byte 0x00
	.byte 0x00
_080179F8:
	.4byte gUnknown_081396A4
_080179FC:
	cmp r0, #59
	bhi _08017A2A
	mov r0, #1
	and r1, r1, r0
	cmp r1, #0
	beq _08017A2A
	ldrb r1, [r4, #30]
	lsl r0, r1, #28
	lsr r0, r0, #28
	lsr r2, r1, #4
	cmp r0, r2
	bne _08017A20
	mov r0, #16
	neg r0, r0
	and r0, r0, r1
	mov r1, #14
	orr r0, r0, r1
	b _08017A28
_08017A20:
	mov r0, #16
	neg r0, r0
	and r0, r0, r1
	orr r0, r0, r2
_08017A28:
	strb r0, [r4, #30]
_08017A2A:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080179C4

	THUMB_FUNC_START sub_08017A30
sub_08017A30: @ 0x08017A30
	push {r4,lr}
	add r4, r0, #0
	add r0, r0, #65
	ldrb r0, [r0]
	mov r1, #127
	and r1, r1, r0
	cmp r1, #3
	bgt _08017A4A
	cmp r1, #1
	bge _08017A5C
	cmp r1, #0
	beq _08017ACA
	b _08017AAE
_08017A4A:
	cmp r1, #22
	beq _08017A54
	cmp r1, #54
	beq _08017AA6
	b _08017AAE
_08017A54:
	add r0, r4, #0
	bl sub_08017D50
	b _08017AD2
_08017A5C:
	add r0, r4, #0
	add r0, r0, #42
	ldrb r0, [r0]
	sub r0, r0, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _08017AD2
	add r0, r4, #0
	add r0, r0, #62
	ldrb r0, [r0]
	add r0, r0, #4
	mov r1, #24
	and r0, r0, r1
	ldr r1, _08017A98  @ =gUnknown_081396BC
	lsr r0, r0, #2
	add r0, r0, r1
	ldrh r1, [r0]
	add r0, r4, #0
	bl 0x080038E8
	ldrb r0, [r4, #20]
	cmp r0, #4
	bhi _08017A9C
	add r0, r4, #0
	mov r1, #0
	bl sub_08017D78
	b _08017AD2
	.byte 0x00
	.byte 0x00
_08017A98:
	.4byte gUnknown_081396BC
_08017A9C:
	add r0, r4, #0
	mov r1, #2
	bl sub_08017D78
	b _08017AD2
_08017AA6:
	add r0, r4, #0
	bl sub_08017DB8
	b _08017AD2
_08017AAE:
	ldrb r0, [r4, #20]
	cmp r0, #1
	bne _08017ACA
	mov r0, #176
	lsl r0, r0, #9
	str r0, [r4, #16]
	add r1, r4, #0
	add r1, r1, #116
	mov r0, #240
	lsl r0, r0, #1
	strh r0, [r1]
	add r0, r4, #0
	bl sub_08017F88
_08017ACA:
	ldr r1, _08017AD8  @ =gUnknown_0813968C
	add r0, r4, #0
	bl 0x080098A0
_08017AD2:
	pop {r4}
	pop {r0}
	bx r0
_08017AD8:
	.4byte gUnknown_0813968C
	THUMB_FUNC_END sub_08017A30

	THUMB_FUNC_START sub_08017ADC
sub_08017ADC: @ 0x08017ADC
	push {r4,lr}
	add r4, r0, #0
	bl sub_08017DFC
	add r0, r4, #0
	bl 0x08009624
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08017ADC

	THUMB_FUNC_START sub_08017AF0
sub_08017AF0: @ 0x08017AF0
	push {lr}
	add r2, r0, #0
	ldrb r1, [r2, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r2, #28]
	add r3, r2, #0
	add r3, r3, #46
	mov r1, #0
	mov r0, #2
	strb r0, [r3]
	ldr r0, _08017B30  @ =gUnknown_08139750
	str r0, [r2, #72]
	ldrb r0, [r2, #20]
	add r0, r0, #1
	strb r0, [r2, #20]
	mov r0, #1
	strb r0, [r2, #23]
	sub r3, r3, #4
	strb r1, [r3]
	add r3, r3, #73
	strb r0, [r3]
	strb r1, [r2, #26]
	add r0, r2, #0
	bl 0x08003870
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08017B30:
	.4byte gUnknown_08139750
	THUMB_FUNC_END sub_08017AF0

	THUMB_FUNC_START sub_08017B34
sub_08017B34: @ 0x08017B34
	push {r4,lr}
	add r4, r0, #0
	mov r1, #192
	lsl r1, r1, #5
	bl 0x08003594
	cmp r0, #0
	bne _08017B78
	add r0, r4, #0
	bl 0x08003828
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08017B72
	mov r0, #30
	strb r0, [r4, #23]
	bl 0x0800099C
	mov r1, #24
	and r0, r0, r1
	add r0, r0, #4
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0
	bl sub_08017D78
_08017B72:
	add r0, r4, #0
	bl 0x0800963C
_08017B78:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08017B34

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08017B80
sub_08017B80: @ 0x08017B80
	push {r4,lr}
	add r4, r0, #0
	ldr r1, _08017BA0  @ =gUnknown_081396C4
	ldrb r0, [r4, #21]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
	add r0, r4, #0
	bl sub_08017EE4
	pop {r4}
	pop {r0}
	bx r0
_08017BA0:
	.4byte gUnknown_081396C4
	THUMB_FUNC_END sub_08017B80

	THUMB_FUNC_START sub_08017BA4
sub_08017BA4: @ 0x08017BA4
	mov r12, r0
	mov r0, #1
	mov r1, r12
	strb r0, [r1, #21]
	add r1, r1, #92
	mov r3, #0
	mov r0, #196
	lsl r0, r0, #6
	strh r0, [r1]
	ldr r2, _08017BDC  @ =gUnknown_03006A30
	mov r0, r12
	ldrb r1, [r0, #11]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r2, r2, #40
	add r0, r0, r2
	ldr r0, [r0]
	add r0, r0, #42
	ldrb r0, [r0]
	mov r1, r12
	add r1, r1, #113
	strb r0, [r1]
	mov r0, r12
	add r0, r0, #114
	strb r3, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_08017BDC:
	.4byte gUnknown_03006A30
	THUMB_FUNC_END sub_08017BA4

	THUMB_FUNC_START sub_08017BE0
sub_08017BE0: @ 0x08017BE0
	push {lr}
	add r3, r0, #0
	mov r0, #113
	add r0, r0, r3
	mov r12, r0
	ldr r2, _08017C28  @ =gUnknown_03006A30
	ldrb r1, [r3, #11]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r2, r2, #40
	add r0, r0, r2
	ldr r0, [r0]
	add r0, r0, #42
	mov r2, r12
	ldrb r1, [r2]
	ldrb r2, [r0]
	eor r1, r1, r2
	mov r0, #4
	and r1, r1, r0
	cmp r1, #0
	beq _08017C24
	mov r0, r12
	strb r2, [r0]
	add r2, r3, #0
	add r2, r2, #42
	ldrb r0, [r2]
	mov r1, #1
	eor r0, r0, r1
	strb r0, [r2]
	ldrb r1, [r2]
	add r0, r3, #0
	bl 0x08003870
_08017C24:
	pop {r0}
	bx r0
_08017C28:
	.4byte gUnknown_03006A30
	THUMB_FUNC_END sub_08017BE0

	THUMB_FUNC_START sub_08017C2C
sub_08017C2C: @ 0x08017C2C
	push {r4,lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, r1, #114
	ldrb r0, [r1]
	cmp r0, #0
	bne _08017C5E
	mov r0, #1
	strb r0, [r1]
	ldr r3, _08017C6C  @ =gUnknown_081396D8
	ldr r2, _08017C70  @ =gUnknown_03006A30
	ldrb r1, [r4, #11]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r2, r2, #40
	add r0, r0, r2
	ldr r0, [r0]
	add r0, r0, #42
	ldrb r0, [r0]
	lsr r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r4, #44]
_08017C5E:
	add r0, r4, #0
	bl sub_08017DFC
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08017C6C:
	.4byte gUnknown_081396D8
_08017C70:
	.4byte gUnknown_03006A30
	THUMB_FUNC_END sub_08017C2C

	THUMB_FUNC_START sub_08017C74
sub_08017C74: @ 0x08017C74
	push {r4,lr}
	add r4, r0, #0
	bl sub_08017F88
	mov r0, #0
	strb r0, [r4, #26]
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08017C74

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08017C88
sub_08017C88: @ 0x08017C88
	push {r4,lr}
	add r4, r0, #0
	mov r1, #128
	lsl r1, r1, #6
	bl 0x08003F1C
	add r0, r4, #0
	bl sub_08017EE4
	lsl r0, r0, #24
	cmp r0, #0
	beq _08017CA6
	add r0, r4, #0
	bl 0x080077D0
_08017CA6:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08017C88

	THUMB_FUNC_START sub_08017CAC
sub_08017CAC: @ 0x08017CAC
	push {r4,r5,lr}
	add r4, r0, #0
	ldrb r1, [r4, #29]
	mov r5, #63
	add r0, r5, #0
	and r0, r0, r1
	mov r2, #64
	orr r0, r0, r2
	strb r0, [r4, #29]
	ldrb r1, [r4, #31]
	add r0, r5, #0
	and r0, r0, r1
	orr r0, r0, r2
	strb r0, [r4, #31]
	mov r1, #192
	lsl r1, r1, #5
	add r0, r4, #0
	bl 0x08003594
	cmp r0, #0
	bne _08017D0E
	mov r0, #5
	strb r0, [r4, #20]
	ldrb r1, [r4, #29]
	add r0, r5, #0
	and r0, r0, r1
	mov r2, #128
	orr r0, r0, r2
	strb r0, [r4, #29]
	ldrb r1, [r4, #31]
	add r0, r5, #0
	and r0, r0, r1
	orr r0, r0, r2
	strb r0, [r4, #31]
	mov r0, #128
	lsl r0, r0, #2
	str r0, [r4, #12]
	bl 0x0800099C
	mov r1, #24
	and r0, r0, r1
	add r0, r0, #4
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #2
	bl sub_08017D78
_08017D0E:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08017CAC

	THUMB_FUNC_START sub_08017D14
sub_08017D14: @ 0x08017D14
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	bl 0x0800964C
	lsl r0, r0, #16
	cmp r0, #0
	beq _08017D30
	add r0, r4, #0
	mov r1, #2
	bl sub_08017D78
_08017D30:
	add r1, r4, #0
	add r1, r1, #115
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08017D4A
	mov r0, #30
	strb r0, [r1]
	mov r0, #83
	bl 0x08003DFC
_08017D4A:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08017D14

	THUMB_FUNC_START sub_08017D50
sub_08017D50: @ 0x08017D50
	push {r4,lr}
	add r4, r0, #0
	mov r0, #32
	mov r1, #255
	mov r2, #0
	bl sub_0804C8A8
	add r1, r0, #0
	cmp r1, #0
	beq _08017D6A
	add r0, r4, #0
	bl sub_0803D3D0
_08017D6A:
	add r0, r4, #0
	bl sub_08012540
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08017D50

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08017D78
sub_08017D78: @ 0x08017D78
	push {lr}
	add r3, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r0, #43
	ldrb r0, [r0]
	cmp r0, #16
	bls _08017D9E
	add r2, r3, #0
	add r2, r2, #42
	ldrb r0, [r2]
	cmp r0, r1
	beq _08017DB4
	strb r1, [r2]
	ldrb r1, [r2]
	add r0, r3, #0
	bl 0x08003870
	b _08017DB4
_08017D9E:
	add r2, r3, #0
	add r2, r2, #42
	ldrb r0, [r2]
	add r1, r1, #1
	cmp r0, r1
	beq _08017DB4
	strb r1, [r2]
	ldrb r1, [r2]
	add r0, r3, #0
	bl 0x08003870
_08017DB4:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08017D78

	THUMB_FUNC_START sub_08017DB8
sub_08017DB8: @ 0x08017DB8
	push {lr}
	add r2, r0, #0
	mov r0, #4
	strb r0, [r2, #20]
	add r1, r2, #0
	add r1, r1, #61
	mov r0, #252
	strb r0, [r1]
	add r1, r1, #51
	mov r0, #1
	strb r0, [r1]
	sub r1, r1, #49
	mov r0, #17
	strb r0, [r1]
	mov r0, #128
	lsl r0, r0, #10
	str r0, [r2, #16]
	add r1, r1, #29
	ldr r0, _08017DF8  @ =0x000021FF
	strh r0, [r1]
	add r1, r1, #26
	mov r0, #240
	strh r0, [r1]
	add r0, r2, #0
	mov r1, #2
	bl sub_08017D78
	mov r0, #42
	bl 0x08003DFC
	pop {r0}
	bx r0
_08017DF8:
	.4byte 0x000021FF
	THUMB_FUNC_END sub_08017DB8

	THUMB_FUNC_START sub_08017DFC
sub_08017DFC: @ 0x08017DFC
	push {r4-r6,lr}
	add r5, r0, #0
	add r0, r0, #112
	ldrb r0, [r0]
	cmp r0, #0
	bne _08017EDC
	ldrh r1, [r5, #44]
	mov r0, #14
	and r0, r0, r1
	cmp r0, #0
	beq _08017E2E
	mov r4, #6
	neg r4, r4
	add r0, r5, #0
	mov r1, #2
	add r2, r4, #0
	bl 0x080092F8
	lsl r0, r0, #16
	lsr r6, r0, #16
	mov r1, #2
	neg r1, r1
	add r0, r5, #0
	add r2, r4, #0
	b _08017E4C
_08017E2E:
	mov r0, #224
	and r0, r0, r1
	cmp r0, #0
	beq _08017E60
	add r0, r5, #0
	mov r1, #2
	mov r2, #6
	bl 0x080092F8
	lsl r0, r0, #16
	lsr r6, r0, #16
	mov r1, #2
	neg r1, r1
	add r0, r5, #0
	mov r2, #6
_08017E4C:
	bl 0x080092F8
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, #135
	lsl r1, r1, #1
	cmp r6, r1
	beq _08017E96
	cmp r0, r1
	beq _08017E96
_08017E60:
	ldrh r1, [r5, #44]
	mov r0, #224
	lsl r0, r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _08017E9E
	add r0, r5, #0
	mov r1, #8
	mov r2, #2
	bl 0x080092F8
	lsl r0, r0, #16
	lsr r6, r0, #16
	mov r2, #2
	neg r2, r2
	add r0, r5, #0
	mov r1, #8
	bl 0x080092F8
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, #135
	lsl r1, r1, #1
	cmp r6, r1
	beq _08017E96
	cmp r0, r1
	bne _08017EDC
_08017E96:
	add r0, r5, #0
	bl sub_08017DB8
	b _08017EDC
_08017E9E:
	mov r0, #224
	lsl r0, r0, #4
	and r0, r0, r1
	cmp r0, #0
	beq _08017EDC
	mov r4, #8
	neg r4, r4
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl 0x080092F8
	lsl r0, r0, #16
	lsr r6, r0, #16
	mov r2, #2
	neg r2, r2
	add r0, r5, #0
	add r1, r4, #0
	bl 0x080092F8
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, #135
	lsl r1, r1, #1
	cmp r6, r1
	beq _08017ED6
	cmp r0, r1
	bne _08017EDC
_08017ED6:
	add r0, r5, #0
	bl sub_08017DB8
_08017EDC:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08017DFC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08017EE4
sub_08017EE4: @ 0x08017EE4
	push {r4,lr}
	add r3, r0, #0
	add r4, r3, #0
	add r4, r4, #116
	ldrh r0, [r4]
	sub r0, r0, #1
	strh r0, [r4]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #0
	bne _08017F50
	ldrb r0, [r3, #20]
	cmp r0, #2
	bne _08017F1C
	ldr r2, _08017F18  @ =gUnknown_03006A30
	ldrb r1, [r3, #11]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r2
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _08017F1C
	mov r0, #4
	strh r0, [r4]
	b _08017F7A
_08017F18:
	.4byte gUnknown_03006A30
_08017F1C:
	mov r1, #0
	mov r0, #1
	strb r0, [r3, #20]
	strb r0, [r3, #23]
	strb r1, [r3, #26]
	add r1, r3, #0
	add r1, r1, #61
	mov r0, #252
	strb r0, [r1]
	add r1, r1, #9
	mov r0, #12
	strb r0, [r1]
	sub r1, r1, #7
	mov r0, #16
	strb r0, [r1]
	add r1, r1, #29
	ldr r0, _08017F4C  @ =0x000031FF
	strh r0, [r1]
	add r0, r3, #0
	mov r1, #0
	bl sub_08017D78
	mov r0, #0
	b _08017F7C
_08017F4C:
	.4byte 0x000031FF
_08017F50:
	cmp r0, #60
	bne _08017F58
	mov r0, #2
	strb r0, [r3, #26]
_08017F58:
	ldrh r2, [r4]
	cmp r2, #59
	bhi _08017F7A
	mov r0, #1
	and r0, r0, r2
	cmp r0, #0
	beq _08017F7A
	ldr r0, _08017F84  @ =gUnknown_081396E0
	mov r1, #6
	and r1, r1, r2
	lsr r1, r1, #1
	add r1, r1, r0
	mov r0, #0
	ldrsb r0, [r1, r0]
	ldrh r1, [r3, #50]
	add r0, r0, r1
	strh r0, [r3, #50]
_08017F7A:
	mov r0, #1
_08017F7C:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08017F84:
	.4byte gUnknown_081396E0
	THUMB_FUNC_END sub_08017EE4

	THUMB_FUNC_START sub_08017F88
sub_08017F88: @ 0x08017F88
	push {lr}
	add r2, r0, #0
	mov r0, #3
	strb r0, [r2, #20]
	add r1, r2, #0
	add r1, r1, #70
	strb r0, [r1]
	sub r1, r1, #7
	mov r0, #71
	strb r0, [r1]
	add r1, r1, #29
	ldr r0, _08017FB0  @ =0x000031FF
	strh r0, [r1]
	add r0, r2, #0
	mov r1, #4
	bl sub_08017D78
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08017FB0:
	.4byte 0x000031FF
	THUMB_FUNC_END sub_08017F88

	THUMB_FUNC_START sub_08017FB4
sub_08017FB4: @ 0x08017FB4
	push {r4,r5,lr}
	add r5, r0, #0
	ldrb r0, [r5, #11]
	cmp r0, #0
	bne _08018004
	add r0, r5, #0
	bl 0x080095A4
	add r0, r5, #0
	bl 0x08009874
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #0
	beq _08017FE8
	ldrb r0, [r5, #20]
	cmp r0, #4
	bne _08017FDE
	add r0, r5, #0
	bl sub_08018528
_08017FDE:
	add r0, r5, #0
	add r1, r4, #0
	bl 0x0800996C
	b _0801800A
_08017FE8:
	ldr r4, _08018000  @ =gUnknown_08139758
	add r0, r5, #0
	bl 0x080098DC
	lsl r0, r0, #24
	lsr r0, r0, #22
	add r0, r0, r4
	ldr r1, [r0]
	add r0, r5, #0
	bl _call_via_r1
	b _0801800A
_08018000:
	.4byte gUnknown_08139758
_08018004:
	add r0, r5, #0
	bl sub_080181A0
_0801800A:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08017FB4

	THUMB_FUNC_START sub_08018010
sub_08018010: @ 0x08018010
	push {lr}
	ldr r2, _08018024  @ =gUnknown_08139770
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08018024:
	.4byte gUnknown_08139770
	THUMB_FUNC_END sub_08018010

	THUMB_FUNC_START sub_08018028
sub_08018028: @ 0x08018028
	push {r4,lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, r1, #63
	ldrb r0, [r1]
	cmp r0, #20
	bne _080180D4
	mov r0, #19
	strb r0, [r1]
	ldr r0, _080180C4  @ =gUnknown_08139864
	str r0, [r4, #72]
	add r2, r4, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #127
	and r0, r0, r1
	strb r0, [r2]
	add r0, r4, #0
	add r0, r0, #125
	ldrb r0, [r0]
	mov r1, #15
	and r1, r1, r0
	lsl r0, r0, #4
	orr r0, r0, r1
	strb r0, [r4, #30]
	add r2, r2, #66
	ldrh r1, [r2]
	add r0, r4, #0
	add r0, r0, #32
	strb r1, [r0]
	ldrh r1, [r2]
	lsr r1, r1, #8
	lsl r1, r1, #6
	ldrb r2, [r4, #28]
	mov r0, #63
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #28]
	mov r0, #44
	strb r0, [r4, #27]
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	add r0, r4, #0
	mov r1, #2
	bl 0x08003870
	ldr r2, [r4, #84]
	ldrb r1, [r2, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r2, #28]
	ldr r0, [r4, #84]
	mov r1, #5
	bl 0x08003870
	add r0, r4, #0
	bl sub_0804C9C8
	ldr r1, [r4, #76]
	ldrb r0, [r1, #8]
	cmp r0, #8
	beq _080180B0
	cmp r0, #1
	bne _080180CC
_080180B0:
	ldr r2, _080180C8  @ =gUnknown_03006A30
	ldrb r1, [r1, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r2, r2, #40
	add r0, r0, r2
	ldr r0, [r0]
	str r0, [r4, #88]
	b _0801818C
_080180C4:
	.4byte gUnknown_08139864
_080180C8:
	.4byte gUnknown_03006A30
_080180CC:
	bl sub_08044594
	str r0, [r4, #88]
	b _0801818C
_080180D4:
	ldrb r0, [r4, #20]
	cmp r0, #4
	bne _080180E0
	add r0, r4, #0
	bl sub_08018528
_080180E0:
	ldr r1, [r4, #76]
	ldrb r0, [r1, #8]
	cmp r0, #1
	bne _0801815C
	ldr r2, _08018154  @ =gUnknown_03006A30
	ldrb r1, [r1, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r2
	ldrh r1, [r0, #54]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	bne _08018178
	ldrb r0, [r4, #20]
	cmp r0, #2
	bne _08018114
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
	ldr r0, [r4, #84]
	mov r1, #3
	bl 0x08003870
_08018114:
	ldr r1, [r4, #76]
	str r1, [r4, #88]
	add r1, r1, #60
	ldrb r2, [r1]
	mov r0, #127
	and r0, r0, r2
	strb r0, [r1]
	ldr r0, [r4, #88]
	add r0, r0, #46
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, r0, #120
	strb r1, [r0]
	ldr r1, _08018158  @ =gUnknown_08139788
	ldr r0, [r4, #88]
	ldrb r0, [r0, #10]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, r0, #92
	mov r2, #0
	strh r1, [r0]
	mov r0, #4
	strb r0, [r4, #20]
	strb r2, [r4, #24]
	add r1, r4, #0
	add r1, r1, #124
	mov r0, #45
	strb r0, [r1]
	b _0801817E
	.byte 0x00
	.byte 0x00
_08018154:
	.4byte gUnknown_03006A30
_08018158:
	.4byte gUnknown_08139788
_0801815C:
	cmp r0, #8
	bne _08018178
	ldr r2, _08018174  @ =gUnknown_03006A30
	ldrb r1, [r1, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r2, r2, #40
	add r0, r0, r2
	ldr r0, [r0]
	b _0801817C
	.byte 0x00
	.byte 0x00
_08018174:
	.4byte gUnknown_03006A30
_08018178:
	bl sub_08044594
_0801817C:
	str r0, [r4, #88]
_0801817E:
	ldr r1, [r4, #88]
	add r0, r4, #0
	bl sub_0803CECC
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
_0801818C:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08018028

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08018194
sub_08018194: @ 0x08018194
	push {lr}
	bl 0x08009624
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08018194

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080181A0
sub_080181A0: @ 0x080181A0
	push {r4,r5,lr}
	ldr r4, [r0, #84]
	ldrh r1, [r4, #50]
	strh r1, [r0, #50]
	ldrh r1, [r4, #54]
	add r1, r1, #1
	strh r1, [r0, #54]
	ldrh r1, [r4, #58]
	sub r1, r1, #1
	strh r1, [r0, #58]
	ldrb r3, [r4, #31]
	lsr r3, r3, #6
	lsl r3, r3, #6
	ldrb r5, [r0, #31]
	mov r2, #63
	add r1, r2, #0
	and r1, r1, r5
	orr r1, r1, r3
	strb r1, [r0, #31]
	ldrb r1, [r4, #29]
	lsr r1, r1, #6
	lsl r1, r1, #6
	ldrb r3, [r0, #29]
	and r2, r2, r3
	orr r2, r2, r1
	strb r2, [r0, #29]
	ldr r2, _080181E8  @ =gUnknown_08139790
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r4,r5}
	pop {r1}
	bx r1
_080181E8:
	.4byte gUnknown_08139790
	THUMB_FUNC_END sub_080181A0

	THUMB_FUNC_START sub_080181EC
sub_080181EC: @ 0x080181EC
	push {r4,lr}
	add r4, r0, #0
	mov r0, #9
	bl sub_08012468
	add r1, r0, #0
	cmp r1, #0
	beq _0801827C
	str r1, [r4, #84]
	str r4, [r1, #84]
	ldrb r0, [r4, #10]
	strb r0, [r1, #10]
	mov r2, #1
	mov r0, #1
	strb r0, [r1, #11]
	ldrb r0, [r4, #30]
	lsl r0, r0, #28
	lsr r0, r0, #28
	add r1, r4, #0
	add r1, r1, #125
	strb r0, [r1]
	ldr r1, _08018284  @ =gUnknown_081397A0
	ldrb r0, [r4, #10]
	add r0, r0, r1
	ldrb r0, [r0]
	mov r1, #15
	and r1, r1, r0
	lsl r0, r0, #4
	orr r0, r0, r1
	strb r0, [r4, #30]
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	orr r0, r0, r2
	strb r0, [r4, #28]
	add r1, r4, #0
	add r1, r1, #46
	mov r0, #2
	strb r0, [r1]
	add r2, r4, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r2]
	ldr r0, _08018288  @ =gUnknown_0813986C
	str r0, [r4, #72]
	sub r2, r2, #28
	ldrb r1, [r2]
	ldrb r0, [r4, #28]
	lsr r0, r0, #6
	lsl r0, r0, #8
	orr r1, r1, r0
	add r0, r4, #0
	add r0, r0, #126
	strh r1, [r0]
	mov r0, #40
	strb r0, [r2]
	ldrb r0, [r4, #28]
	mov r1, #192
	orr r0, r0, r1
	strb r0, [r4, #28]
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	mov r0, #120
	strb r0, [r4, #23]
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
_0801827C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08018284:
	.4byte gUnknown_081397A0
_08018288:
	.4byte gUnknown_0813986C
	THUMB_FUNC_END sub_080181EC

	THUMB_FUNC_START sub_0801828C
sub_0801828C: @ 0x0801828C
	push {r4,lr}
	add r4, r0, #0
	bl sub_08018514
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080182C2
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
	ldr r0, [r4, #84]
	mov r1, #3
	bl 0x08003870
	bl 0x0800099C
	mov r1, #240
	and r0, r0, r1
	add r0, r0, #1
	add r1, r4, #0
	add r1, r1, #40
	strb r0, [r1]
_080182C2:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801828C

	THUMB_FUNC_START sub_080182C8
sub_080182C8: @ 0x080182C8
	push {r4,r5,lr}
	add r4, r0, #0
	bl sub_08018514
	add r3, r4, #0
	add r3, r3, #41
	ldrb r2, [r3]
	mov r0, #128
	and r0, r0, r2
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	beq _08018320
	ldrb r0, [r4, #20]
	add r0, r0, #1
	mov r1, #0
	strb r0, [r4, #20]
	mov r0, #8
	strb r0, [r4, #23]
	add r5, r4, #0
	add r5, r5, #42
	strb r1, [r5]
	ldr r1, [r4, #88]
	add r0, r4, #0
	bl 0x08009EA4
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #28
	strb r0, [r5]
	ldrb r1, [r5]
	add r0, r4, #0
	bl 0x08003870
	ldr r0, [r4, #84]
	ldrb r1, [r5]
	add r1, r1, #3
	lsl r1, r1, #24
	lsr r1, r1, #24
	bl 0x08003870
	b _08018336
_08018320:
	lsl r0, r2, #24
	lsr r0, r0, #24
	cmp r0, #1
	bne _08018336
	strb r1, [r3]
	add r0, r4, #0
	add r0, r0, #60
	ldrb r1, [r0]
	mov r2, #128
	orr r1, r1, r2
	strb r1, [r0]
_08018336:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080182C8

	THUMB_FUNC_START sub_0801833C
sub_0801833C: @ 0x0801833C
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08018364
	mov r0, #8
	strb r0, [r4, #23]
	ldr r1, [r4, #88]
	add r0, r4, #0
	bl 0x08009EA4
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	add r0, r4, #0
	bl sub_080184D8
_08018364:
	add r0, r4, #0
	bl 0x0800963C
	add r0, r4, #0
	bl sub_08018514
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801833C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08018378
sub_08018378: @ 0x08018378
	push {r4,lr}
	add r4, r0, #0
	bl sub_08018514
	add r0, r4, #0
	bl sub_08018514
	ldr r1, _080183C8  @ =gUnknown_03005E10
	ldr r0, [r4, #88]
	ldrb r0, [r0, #10]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801839C
	ldrb r0, [r4, #24]
	add r0, r0, #1
	strb r0, [r4, #24]
_0801839C:
	ldrb r0, [r4, #24]
	cmp r0, #55
	bhi _080183BE
	ldr r0, _080183CC  @ =gUnknown_03006C80
	ldr r2, [r4, #88]
	ldrb r1, [r2, #10]
	lsl r1, r1, #2
	add r0, r0, #12
	add r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _080183BE
	add r0, r2, #0
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #0
	bne _080183D0
_080183BE:
	add r0, r4, #0
	bl sub_08018528
	b _0801843E
	.byte 0x00
	.byte 0x00
_080183C8:
	.4byte gUnknown_03005E10
_080183CC:
	.4byte gUnknown_03006C80
_080183D0:
	add r0, r2, #0
	bl 0x080074C0
	ldr r2, _08018444  @ =gUnknown_03006A30
	ldr r0, [r4, #88]
	ldrb r0, [r0, #10]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #4
	add r1, r1, r2
	ldrb r2, [r1, #26]
	mov r0, #128
	orr r0, r0, r2
	strb r0, [r1, #26]
	ldr r1, [r4, #88]
	add r0, r4, #0
	mov r2, #0
	mov r3, #1
	bl sub_0803D4A4
	ldr r3, [r4, #88]
	ldr r2, _08018448  @ =gUnknown_0813979B
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #7
	and r0, r0, r1
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	mov r1, #0
	strh r0, [r3, #58]
	ldr r0, [r4, #88]
	add r0, r0, #46
	strb r1, [r0]
	add r1, r4, #0
	add r1, r1, #124
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801843E
	mov r0, #45
	strb r0, [r1]
	ldr r0, [r4, #88]
	ldr r2, _0801844C  @ =gUnknown_08139798
	ldrb r1, [r4, #10]
	add r1, r1, r2
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_0802C53C
_0801843E:
	pop {r4}
	pop {r0}
	bx r0
_08018444:
	.4byte gUnknown_03006A30
_08018448:
	.4byte gUnknown_0813979B
_0801844C:
	.4byte gUnknown_08139798
	THUMB_FUNC_END sub_08018378

	THUMB_FUNC_START sub_08018450
sub_08018450: @ 0x08018450
	push {lr}
	add r1, r0, #0
	ldrb r0, [r1, #24]
	sub r0, r0, #1
	strb r0, [r1, #24]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801846A
	ldrb r0, [r1, #20]
	sub r0, r0, #2
	strb r0, [r1, #20]
	mov r0, #1
	strb r0, [r1, #23]
_0801846A:
	add r0, r1, #0
	bl sub_08018514
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08018450

	THUMB_FUNC_START sub_08018474
sub_08018474: @ 0x08018474
	add r3, r0, #0
	ldr r1, _080184BC  @ =gUnknown_081397A0
	ldrb r0, [r3, #10]
	add r0, r0, r1
	ldrb r0, [r0]
	mov r1, #15
	and r1, r1, r0
	lsl r0, r0, #4
	orr r0, r0, r1
	strb r0, [r3, #30]
	add r1, r3, #0
	add r1, r1, #46
	mov r0, #0
	strb r0, [r1]
	ldr r0, [r3, #84]
	add r0, r0, #126
	ldrh r1, [r0]
	add r0, r3, #0
	add r0, r0, #32
	strb r1, [r0]
	ldr r0, [r3, #84]
	add r0, r0, #126
	ldrh r1, [r0]
	lsr r1, r1, #8
	lsl r1, r1, #6
	ldrb r2, [r3, #28]
	mov r0, #63
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r3, #28]
	mov r0, #44
	strb r0, [r3, #27]
	ldrb r0, [r3, #20]
	add r0, r0, #1
	strb r0, [r3, #20]
	bx lr
_080184BC:
	.4byte gUnknown_081397A0
	THUMB_FUNC_END sub_08018474

	THUMB_FUNC_START sub_080184C0
sub_080184C0: @ 0x080184C0
	push {lr}
	add r1, r0, #0
	ldr r0, [r1, #84]
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #0
	bne _080184D4
	add r0, r1, #0
	bl sub_08012540
_080184D4:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080184C0

	THUMB_FUNC_START sub_080184D8
sub_080184D8: @ 0x080184D8
	push {r4,r5,lr}
	add r5, r0, #0
	add r0, r0, #43
	ldrb r0, [r0]
	bl sub_08043EA4
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #255
	beq _0801850C
	add r0, r5, #0
	add r0, r0, #42
	ldrb r1, [r0]
	cmp r4, r1
	beq _0801850C
	strb r4, [r0]
	add r0, r5, #0
	add r1, r4, #0
	bl 0x08003870
	ldr r0, [r5, #84]
	add r1, r4, #3
	lsl r1, r1, #24
	lsr r1, r1, #24
	bl 0x08003870
_0801850C:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080184D8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08018514
sub_08018514: @ 0x08018514
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	ldr r0, [r4, #84]
	bl 0x08003828
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08018514

	THUMB_FUNC_START sub_08018528
sub_08018528: @ 0x08018528
	mov r12, r0
	ldr r2, _080185C4  @ =gUnknown_03006A30
	ldr r0, [r0, #88]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r2
	mov r3, #0
	mov r1, #65
	strb r1, [r0, #2]
	mov r1, r12
	ldr r0, [r1, #88]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r2
	strb r3, [r0, #10]
	mov r1, r12
	ldr r0, [r1, #88]
	ldrb r0, [r0, #10]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #4
	add r1, r1, r2
	ldrh r2, [r1, #54]
	ldr r0, _080185C8  @ =0x0000FFEF
	and r0, r0, r2
	strh r0, [r1, #54]
	mov r0, r12
	ldr r1, [r0, #88]
	mov r0, #192
	lsl r0, r0, #9
	str r0, [r1, #16]
	add r1, r1, #60
	ldrb r2, [r1]
	mov r0, #128
	orr r0, r0, r2
	strb r0, [r1]
	mov r1, r12
	ldr r0, [r1, #88]
	add r0, r0, #61
	mov r1, #220
	strb r1, [r0]
	mov r1, r12
	ldr r0, [r1, #88]
	strh r3, [r0, #58]
	ldr r0, [r1, #88]
	add r1, r1, #120
	ldrb r1, [r1]
	add r0, r0, #46
	strb r1, [r0]
	mov r0, r12
	ldr r1, [r0, #88]
	add r0, r1, #0
	add r0, r0, #42
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r1, r1, #43
	strb r0, [r1]
	mov r1, r12
	add r1, r1, #92
	ldr r0, _080185CC  @ =0x000021FF
	strh r0, [r1]
	mov r1, r12
	ldrb r0, [r1, #20]
	add r0, r0, #1
	strb r0, [r1, #20]
	mov r0, #60
	strb r0, [r1, #24]
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #0
	bne _080185C2
	mov r0, #244
	strb r0, [r1]
_080185C2:
	bx lr
_080185C4:
	.4byte gUnknown_03006A30
_080185C8:
	.4byte 0x0000FFEF
_080185CC:
	.4byte 0x000021FF
	THUMB_FUNC_END sub_08018528

	THUMB_FUNC_START sub_080185D0
sub_080185D0: @ 0x080185D0
	push {r4,r5,lr}
	add r5, r0, #0
	ldr r0, _08018600  @ =gUnknown_03000208
	ldrh r0, [r0, #2]
	cmp r0, #1
	bls _080185E2
	add r0, r5, #0
	bl 0x080095A4
_080185E2:
	ldr r4, _08018604  @ =gUnknown_08139874
	add r0, r5, #0
	bl 0x080098DC
	lsl r0, r0, #24
	lsr r0, r0, #22
	add r0, r0, r4
	ldr r1, [r0]
	add r0, r5, #0
	bl _call_via_r1
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08018600:
	.4byte gUnknown_03000208
_08018604:
	.4byte gUnknown_08139874
	THUMB_FUNC_END sub_080185D0

	THUMB_FUNC_START sub_08018608
sub_08018608: @ 0x08018608
	push {lr}
	ldr r2, _0801861C  @ =gUnknown_0813988C
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0801861C:
	.4byte gUnknown_0813988C
	THUMB_FUNC_END sub_08018608

	THUMB_FUNC_START sub_08018620
sub_08018620: @ 0x08018620
	push {r4,lr}
	add r4, r0, #0
	mov r0, #15
	mov r1, #5
	mov r2, #0
	bl sub_0804C8A8
	add r1, r0, #0
	cmp r1, #0
	beq _0801863A
	add r0, r4, #0
	bl sub_0803D3D0
_0801863A:
	add r0, r4, #0
	bl sub_08012540
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08018620

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08018648
sub_08018648: @ 0x08018648
	push {lr}
	ldrb r2, [r0, #28]
	mov r1, #4
	neg r1, r1
	and r1, r1, r2
	mov r2, #1
	orr r1, r1, r2
	strb r1, [r0, #28]
	add r3, r0, #0
	add r3, r3, #46
	mov r2, #0
	mov r1, #3
	strb r1, [r3]
	ldr r1, _08018680  @ =gUnknown_081398EC
	str r1, [r0, #72]
	ldrb r1, [r0, #20]
	add r1, r1, #1
	strb r1, [r0, #20]
	mov r1, #64
	strb r1, [r0, #23]
	mov r1, #16
	strb r1, [r0, #24]
	str r2, [r0, #88]
	mov r1, #0
	bl 0x08003870
	pop {r0}
	bx r0
_08018680:
	.4byte gUnknown_081398EC
	THUMB_FUNC_END sub_08018648

	THUMB_FUNC_START sub_08018684
sub_08018684: @ 0x08018684
	push {r4,r5,lr}
	add r4, r0, #0
	ldr r0, [r4, #88]
	cmp r0, #0
	bne _080186B0
	ldrb r1, [r4, #23]
	mov r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _0801869E
	ldrb r0, [r4, #24]
	add r0, r0, #16
	strb r0, [r4, #24]
_0801869E:
	ldrb r2, [r4, #24]
	add r0, r4, #0
	add r1, r2, #0
	bl 0x08009E6C
	add r1, r0, #0
	cmp r1, #0
	beq _080186B0
	str r1, [r4, #88]
_080186B0:
	ldrb r1, [r4, #23]
	sub r1, r1, #1
	strb r1, [r4, #23]
	ldr r2, _080186E8  @ =gUnknown_081398A0
	mov r0, #3
	and r0, r0, r1
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrh r2, [r4, #54]
	add r0, r0, r2
	strh r0, [r4, #54]
	lsl r1, r1, #24
	cmp r1, #0
	bne _08018792
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	mov r0, #128
	lsl r0, r0, #10
	str r0, [r4, #16]
	ldrb r0, [r4, #10]
	cmp r0, #0
	beq _080186EC
	cmp r0, #1
	beq _08018750
	b _0801877C
_080186E8:
	.4byte gUnknown_081398A0
_080186EC:
	add r3, r4, #0
	add r3, r3, #80
	ldrh r0, [r3]
	lsr r0, r0, #14
	cmp r0, #2
	beq _08018724
	mov r5, #50
	ldrsh r1, [r4, r5]
	ldr r2, _08018720  @ =gUnknown_03000450
	ldrh r0, [r2, #24]
	sub r1, r1, r0
	asr r1, r1, #4
	mov r5, #54
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #26]
	sub r0, r0, r2
	asr r0, r0, #4
	lsl r0, r0, #6
	orr r1, r1, r0
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r3]
	mov r0, #47
	bl sub_08014658
	b _0801877C
_08018720:
	.4byte gUnknown_03000450
_08018724:
	mov r0, #50
	ldrsh r1, [r4, r0]
	ldr r2, _0801874C  @ =gUnknown_03000450
	ldrh r0, [r2, #24]
	sub r1, r1, r0
	asr r1, r1, #4
	mov r5, #54
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #26]
	sub r0, r0, r2
	asr r0, r0, #4
	lsl r0, r0, #6
	orr r1, r1, r0
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r3]
	mov r0, #88
	bl sub_08014658
	b _0801877C
_0801874C:
	.4byte gUnknown_03000450
_08018750:
	mov r0, #173
	lsl r0, r0, #1
	mov r2, #50
	ldrsh r1, [r4, r2]
	ldr r3, _08018798  @ =gUnknown_03000450
	ldrh r2, [r3, #24]
	sub r1, r1, r2
	asr r1, r1, #4
	mov r5, #54
	ldrsh r2, [r4, r5]
	ldrh r3, [r3, #26]
	sub r2, r2, r3
	asr r2, r2, #4
	lsl r2, r2, #6
	orr r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	add r2, r4, #0
	add r2, r2, #80
	ldrh r2, [r2]
	bl sub_08014658
_0801877C:
	mov r0, #15
	mov r1, #4
	mov r2, #0
	bl sub_0804C8A8
	add r1, r0, #0
	cmp r1, #0
	beq _08018792
	add r0, r4, #0
	bl sub_0803D3D0
_08018792:
	pop {r4,r5}
	pop {r0}
	bx r0
_08018798:
	.4byte gUnknown_03000450
	THUMB_FUNC_END sub_08018684

	THUMB_FUNC_START sub_0801879C
sub_0801879C: @ 0x0801879C
	push {r4,lr}
	add r4, r0, #0
	mov r1, #160
	lsl r1, r1, #6
	bl 0x08003594
	ldr r0, [r4, #16]
	cmp r0, #0
	bge _080187D0
	mov r0, #58
	ldrsh r1, [r4, r0]
	mov r0, #8
	neg r0, r0
	cmp r1, r0
	ble _080187D0
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	mov r0, #30
	strb r0, [r4, #23]
	add r2, r4, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r2]
_080187D0:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801879C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080187D8
sub_080187D8: @ 0x080187D8
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	cmp r0, #0
	beq _080187EC
	sub r0, r0, #1
	strb r0, [r4, #23]
	mov r0, #12
	strb r0, [r4, #24]
	b _08018830
_080187EC:
	add r0, r4, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r0, [r0]
	mov r1, #1
	and r1, r1, r0
	ldrb r0, [r4, #24]
	sub r0, r0, r1
	strb r0, [r4, #24]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08018830
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	ldr r1, [r4, #88]
	cmp r1, #0
	beq _0801881C
	add r0, r4, #0
	bl sub_0803CECC
	b _08018824
_0801881C:
	bl 0x0800099C
	mov r1, #31
	and r0, r0, r1
_08018824:
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	add r0, r4, #0
	bl sub_0804C9C8
_08018830:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080187D8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08018838
sub_08018838: @ 0x08018838
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	bl 0x08009664
	ldrh r0, [r4, #44]
	cmp r0, #0
	beq _08018868
	mov r0, #15
	mov r1, #5
	mov r2, #0
	bl sub_0804C8A8
	add r1, r0, #0
	cmp r1, #0
	beq _08018862
	add r0, r4, #0
	bl sub_0803D3D0
_08018862:
	add r0, r4, #0
	bl sub_08012540
_08018868:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08018838

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08018870
sub_08018870: @ 0x08018870
	push {r4,lr}
	add r4, r0, #0
	ldr r0, _08018898  @ =gUnknown_03000208
	ldrh r0, [r0, #2]
	cmp r0, #1
	bls _08018882
	add r0, r4, #0
	bl 0x080095A4
_08018882:
	ldr r0, _0801889C  @ =gUnknown_081398F4
	ldrb r1, [r4, #20]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
_08018898:
	.4byte gUnknown_03000208
_0801889C:
	.4byte gUnknown_081398F4
	THUMB_FUNC_END sub_08018870

	THUMB_FUNC_START sub_080188A0
sub_080188A0: @ 0x080188A0
	push {lr}
	add r2, r0, #0
	ldrb r1, [r2, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r2, #28]
	add r1, r2, #0
	add r1, r1, #46
	mov r0, #0
	strb r0, [r1]
	ldr r0, _080188DC  @ =gUnknown_0813991C
	str r0, [r2, #72]
	ldrb r0, [r2, #20]
	add r0, r0, #1
	strb r0, [r2, #20]
	ldrb r0, [r2, #10]
	cmp r0, #0
	beq _080188D0
	mov r0, #128
	lsl r0, r0, #3
	str r0, [r2, #12]
_080188D0:
	add r0, r2, #0
	mov r1, #0
	bl 0x08003870
	pop {r0}
	bx r0
_080188DC:
	.4byte gUnknown_0813991C
	THUMB_FUNC_END sub_080188A0

	THUMB_FUNC_START sub_080188E0
sub_080188E0: @ 0x080188E0
	push {r4,r5,lr}
	add r4, r0, #0
	mov r1, #14
	bl 0x0800997C
	lsl r0, r0, #24
	lsr r1, r0, #24
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0801895A
	mov r0, #24
	and r0, r0, r1
	add r5, r4, #0
	add r5, r5, #43
	strb r0, [r5]
	add r0, r4, #0
	bl sub_08018A14
	cmp r0, #0
	bne _0801895A
	ldrb r0, [r5]
	lsr r0, r0, #3
	cmp r0, #1
	beq _0801892E
	cmp r0, #1
	bgt _0801891C
	cmp r0, #0
	beq _08018926
	b _08018954
_0801891C:
	cmp r0, #2
	beq _08018936
	cmp r0, #3
	beq _08018946
	b _08018954
_08018926:
	ldrb r0, [r4, #23]
	lsl r0, r0, #3
	ldrh r1, [r4, #54]
	b _0801894C
_0801892E:
	ldrb r0, [r4, #23]
	lsl r0, r0, #3
	ldrh r1, [r4, #50]
	b _0801893C
_08018936:
	ldrb r0, [r4, #23]
	lsl r0, r0, #3
	ldrh r1, [r4, #54]
_0801893C:
	add r0, r0, r1
	add r1, r4, #0
	add r1, r1, #124
	strh r0, [r1]
	b _08018954
_08018946:
	ldrb r0, [r4, #23]
	lsl r0, r0, #3
	ldrh r1, [r4, #50]
_0801894C:
	sub r1, r1, r0
	add r0, r4, #0
	add r0, r0, #124
	strh r1, [r0]
_08018954:
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
_0801895A:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080188E0

	THUMB_FUNC_START sub_08018960
sub_08018960: @ 0x08018960
	push {r4,r5,lr}
	add r4, r0, #0
	mov r5, #0
	bl 0x0800963C
	lsl r0, r0, #16
	cmp r0, #0
	beq _080189D0
	ldrb r0, [r4, #23]
	cmp r0, #0
	beq _080189CC
	add r0, r4, #0
	add r0, r0, #43
	ldrb r0, [r0]
	lsr r0, r0, #3
	cmp r0, #1
	beq _080189A6
	cmp r0, #1
	bgt _0801898C
	cmp r0, #0
	beq _08018996
	b _080189CC
_0801898C:
	cmp r0, #2
	beq _080189AC
	cmp r0, #3
	beq _080189BC
	b _080189CC
_08018996:
	mov r0, #54
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, r0, #124
	ldrh r0, [r0]
	cmp r1, r0
	bge _080189CC
	b _080189D0
_080189A6:
	mov r0, #50
	ldrsh r1, [r4, r0]
	b _080189B0
_080189AC:
	mov r0, #54
	ldrsh r1, [r4, r0]
_080189B0:
	add r0, r4, #0
	add r0, r0, #124
	ldrh r0, [r0]
	cmp r1, r0
	ble _080189CC
	b _080189D0
_080189BC:
	mov r0, #50
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, r0, #124
	ldrh r0, [r0]
	cmp r1, r0
	bge _080189CC
	mov r5, #1
_080189CC:
	cmp r5, #0
	beq _080189EE
_080189D0:
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	ldr r0, [r4, #12]
	asr r0, r0, #1
	str r0, [r4, #12]
	add r2, r4, #0
	add r2, r2, #43
	ldrb r0, [r2]
	mov r1, #16
	eor r0, r0, r1
	strb r0, [r2]
	mov r0, #29
	bl sub_0800D24C
_080189EE:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08018960

	THUMB_FUNC_START sub_080189F4
sub_080189F4: @ 0x080189F4
	push {r4,lr}
	add r4, r0, #0
	bl 0x0800963C
	lsl r0, r0, #16
	cmp r0, #0
	bne _08018A0E
	ldrb r0, [r4, #20]
	sub r0, r0, #2
	strb r0, [r4, #20]
	ldr r0, [r4, #12]
	lsl r0, r0, #1
	str r0, [r4, #12]
_08018A0E:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080189F4

	THUMB_FUNC_START sub_08018A14
sub_08018A14: @ 0x08018A14
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r6, r0, #0
	add r0, r0, #43
	ldrb r0, [r0]
	lsr r0, r0, #1
	add r7, r0, #0
	ldr r0, _08018A84  @ =gUnknown_08139904
	mov r8, r0
	add r0, r7, r0
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrh r1, [r6, #50]
	add r0, r0, r1
	lsl r0, r0, #16
	add r1, r7, #1
	add r1, r1, r8
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrh r2, [r6, #54]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r5, r0, #16
	asr r0, r0, #16
	lsr r4, r1, #16
	asr r1, r1, #16
	mov r3, #80
	add r3, r3, r6
	mov r9, r3
	ldrh r2, [r3]
	bl 0x080093AC
	lsl r1, r0, #24
	lsr r0, r1, #24
	mov r3, #8
	and r4, r4, r3
	cmp r4, #0
	bne _08018A6E
	lsr r0, r1, #26
_08018A6E:
	and r5, r5, r3
	cmp r5, #0
	bne _08018A76
	lsr r0, r0, #1
_08018A76:
	mov r1, #1
	mov r10, r1
	and r0, r0, r1
	cmp r0, #0
	beq _08018A88
	mov r0, #1
	b _08018AD4
_08018A84:
	.4byte gUnknown_08139904
_08018A88:
	add r0, r7, #2
	add r0, r0, r8
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrh r2, [r6, #50]
	add r0, r0, r2
	lsl r0, r0, #16
	add r1, r7, #3
	add r1, r1, r8
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrh r6, [r6, #54]
	add r1, r1, r6
	lsl r1, r1, #16
	lsr r5, r0, #16
	asr r0, r0, #16
	lsr r4, r1, #16
	asr r1, r1, #16
	mov r6, r9
	ldrh r2, [r6]
	str r3, [sp]
	bl 0x080093AC
	lsl r1, r0, #24
	lsr r0, r1, #24
	ldr r3, [sp]
	and r4, r4, r3
	cmp r4, #0
	bne _08018AC8
	lsr r0, r1, #26
_08018AC8:
	and r5, r5, r3
	cmp r5, #0
	bne _08018AD0
	lsr r0, r0, #1
_08018AD0:
	mov r1, r10
	and r0, r0, r1
_08018AD4:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08018A14

	THUMB_FUNC_START sub_08018AE4
sub_08018AE4: @ 0x08018AE4
	push {r4,lr}
	add r4, r0, #0
	ldr r0, _08018B0C  @ =gUnknown_03000208
	ldrh r0, [r0, #2]
	cmp r0, #1
	bls _08018AF6
	add r0, r4, #0
	bl 0x080095A4
_08018AF6:
	ldr r0, _08018B10  @ =gUnknown_08139924
	ldrb r1, [r4, #20]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
_08018B0C:
	.4byte gUnknown_03000208
_08018B10:
	.4byte gUnknown_08139924
	THUMB_FUNC_END sub_08018AE4

	THUMB_FUNC_START sub_08018B14
sub_08018B14: @ 0x08018B14
	push {r4-r6,lr}
	add r5, r0, #0
	ldrb r0, [r5, #10]
	bl sub_08013D20
	str r0, [r5, #120]
	ldrb r0, [r5, #11]
	bl sub_08013D20
	str r0, [r5, #116]
	ldrb r2, [r5, #23]
	lsr r0, r2, #4
	strb r0, [r5, #10]
	ldr r1, _08018BF8  @ =gUnknown_08139934
	mov r0, #15
	and r0, r0, r2
	add r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #23]
	ldrh r1, [r5, #50]
	mov r4, #63
	add r0, r4, #0
	and r0, r0, r1
	add r1, r5, #0
	add r1, r1, #43
	strb r0, [r1]
	add r6, r5, #0
	add r6, r6, #82
	ldrb r0, [r6]
	ldrh r1, [r5, #54]
	lsl r1, r1, #16
	asr r1, r1, #22
	mov r2, #63
	and r1, r1, r2
	bl sub_08012F84
	ldrh r1, [r5, #54]
	and r4, r4, r1
	lsl r1, r4, #1
	add r1, r1, r4
	lsl r1, r1, #1
	add r0, r0, r1
	ldrb r2, [r0]
	lsl r2, r2, #4
	ldr r3, _08018BFC  @ =gUnknown_0201EFF8
	ldrb r1, [r6]
	lsl r1, r1, #2
	add r1, r1, r3
	ldrh r1, [r1]
	add r1, r1, #8
	add r2, r2, r1
	strh r2, [r5, #50]
	add r0, r0, #1
	ldrb r2, [r0]
	lsl r2, r2, #4
	ldrb r1, [r6]
	lsl r1, r1, #2
	add r4, r3, #2
	add r1, r1, r4
	ldrh r1, [r1]
	add r1, r1, #8
	add r2, r2, r1
	strh r2, [r5, #54]
	add r0, r0, #1
	ldrb r2, [r0]
	ldrb r1, [r6]
	lsl r1, r1, #2
	add r1, r1, r3
	lsl r2, r2, #4
	ldrh r1, [r1]
	add r2, r2, r1
	add r1, r5, #0
	add r1, r1, #112
	strh r2, [r1]
	add r0, r0, #1
	ldrb r2, [r0]
	ldrb r1, [r6]
	lsl r1, r1, #2
	add r1, r1, r4
	lsl r2, r2, #4
	ldrh r1, [r1]
	add r2, r2, r1
	add r1, r5, #0
	add r1, r1, #114
	strh r2, [r1]
	add r0, r0, #1
	ldrb r1, [r0]
	lsl r1, r1, #4
	add r1, r1, #16
	add r2, r5, #0
	add r2, r2, #124
	strh r1, [r2]
	ldrb r0, [r0, #1]
	lsl r0, r0, #4
	add r0, r0, #16
	add r1, r5, #0
	add r1, r1, #126
	strh r0, [r1]
	ldrb r1, [r5, #10]
	mov r2, #1
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08018C00
	strb r2, [r5, #20]
	bl 0x0800099C
	mov r1, #3
	and r0, r0, r1
	ldrb r1, [r5, #23]
	add r0, r0, r1
	strb r0, [r5, #24]
	b _08018C04
	.byte 0x00
	.byte 0x00
_08018BF8:
	.4byte gUnknown_08139934
_08018BFC:
	.4byte gUnknown_0201EFF8
_08018C00:
	mov r0, #2
	strb r0, [r5, #20]
_08018C04:
	add r0, r5, #0
	add r0, r0, #43
	ldrb r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _08018C20
	bl 0x0800099C
	mov r1, #3
	and r0, r0, r1
	ldrb r1, [r5, #23]
	add r0, r0, r1
	b _08018C22
_08018C20:
	ldrb r0, [r5, #23]
_08018C22:
	strb r0, [r5, #24]
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08018B14

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08018C2C
sub_08018C2C: @ 0x08018C2C
	add r2, r0, #0
	ldr r1, _08018C48  @ =gUnknown_0201F000
	add r0, r0, #82
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r2, #116]
	and r0, r0, r1
	cmp r0, r1
	bne _08018C46
	mov r0, #2
	strb r0, [r2, #20]
_08018C46:
	bx lr
_08018C48:
	.4byte gUnknown_0201F000
	THUMB_FUNC_END sub_08018C2C

	THUMB_FUNC_START sub_08018C4C
sub_08018C4C: @ 0x08018C4C
	push {lr}
	add r2, r0, #0
	ldrb r0, [r2, #24]
	sub r0, r0, #1
	strb r0, [r2, #24]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08018C60
	mov r0, #3
	strb r0, [r2, #20]
_08018C60:
	ldrb r1, [r2, #10]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08018C8C
	ldr r1, _08018C88  @ =gUnknown_0201F000
	add r0, r2, #0
	add r0, r0, #82
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r2, #120]
	and r0, r0, r1
	cmp r0, r1
	bne _08018CAC
	add r0, r2, #0
	bl sub_08012540
	b _08018CAC
_08018C88:
	.4byte gUnknown_0201F000
_08018C8C:
	lsl r0, r1, #24
	lsr r3, r0, #24
	cmp r3, #1
	bne _08018CAC
	ldr r1, _08018CB0  @ =gUnknown_0201F000
	add r0, r2, #0
	add r0, r0, #82
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r2, #116]
	and r0, r0, r1
	cmp r0, r1
	beq _08018CAC
	strb r3, [r2, #20]
_08018CAC:
	pop {r0}
	bx r0
_08018CB0:
	.4byte gUnknown_0201F000
	THUMB_FUNC_END sub_08018C4C

	THUMB_FUNC_START sub_08018CB4
sub_08018CB4: @ 0x08018CB4
	push {r4-r6,lr}
	add r4, r0, #0
	ldr r2, _08018D44  @ =gUnknown_03006A30
	ldr r0, _08018D48  @ =gUnknown_03000E20
	ldrh r0, [r0]
	mov r1, #3
	and r1, r1, r0
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r2, r2, #40
	add r0, r0, r2
	ldr r6, [r0]
	cmp r6, #0
	beq _08018D5C
	mov r0, #50
	ldrsh r1, [r6, r0]
	add r0, r4, #0
	add r0, r0, #112
	ldrh r0, [r0]
	sub r1, r1, r0
	add r0, r4, #0
	add r0, r0, #124
	ldrh r0, [r0]
	cmp r1, r0
	bhi _08018D5C
	mov r0, #54
	ldrsh r1, [r6, r0]
	add r0, r4, #0
	add r0, r0, #114
	ldrh r0, [r0]
	sub r1, r1, r0
	add r0, r4, #0
	add r0, r0, #126
	ldrh r0, [r0]
	cmp r1, r0
	bhi _08018D5C
	add r0, r4, #0
	bl sub_08018D64
	lsl r0, r0, #24
	cmp r0, #0
	beq _08018D5C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl sub_0804411C
	add r5, r0, #0
	cmp r5, #0
	beq _08018D5C
	add r0, r4, #0
	add r0, r0, #43
	ldrb r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _08018D4C
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0803CECC
	add r1, r5, #0
	add r1, r1, #43
	strb r0, [r1]
	bl 0x0800099C
	mov r1, #3
	and r0, r0, r1
	ldrb r1, [r4, #23]
	add r0, r0, r1
	b _08018D54
_08018D44:
	.4byte gUnknown_03006A30
_08018D48:
	.4byte gUnknown_03000E20
_08018D4C:
	add r0, r5, #0
	add r0, r0, #43
	strb r1, [r0]
	ldrb r0, [r4, #23]
_08018D54:
	strb r0, [r4, #24]
	ldrb r0, [r4, #20]
	sub r0, r0, #1
	strb r0, [r4, #20]
_08018D5C:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08018CB4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08018D64
sub_08018D64: @ 0x08018D64
	push {r4,lr}
	add r3, r0, #0
	ldr r0, _08018E14  @ =gUnknown_03006A30
	mov r12, r0
	ldr r2, [r0, #40]
	mov r1, #50
	ldrsh r0, [r2, r1]
	mov r4, #50
	ldrsh r1, [r3, r4]
	sub r0, r0, r1
	add r0, r0, #24
	cmp r0, #48
	bhi _08018D8E
	mov r1, #54
	ldrsh r0, [r2, r1]
	mov r2, #54
	ldrsh r1, [r3, r2]
	sub r0, r0, r1
	add r0, r0, #18
	cmp r0, #36
	bls _08018E10
_08018D8E:
	mov r0, r12
	add r0, r0, #184
	ldr r2, [r0]
	cmp r2, #0
	beq _08018E18
	mov r4, #50
	ldrsh r0, [r2, r4]
	mov r4, #50
	ldrsh r1, [r3, r4]
	sub r0, r0, r1
	add r0, r0, #24
	cmp r0, #48
	bhi _08018DB8
	mov r1, #54
	ldrsh r0, [r2, r1]
	mov r2, #54
	ldrsh r1, [r3, r2]
	sub r0, r0, r1
	add r0, r0, #18
	cmp r0, #36
	bls _08018E10
_08018DB8:
	mov r0, #164
	lsl r0, r0, #1
	add r0, r0, r12
	ldr r2, [r0]
	cmp r2, #0
	beq _08018E18
	mov r4, #50
	ldrsh r0, [r2, r4]
	mov r4, #50
	ldrsh r1, [r3, r4]
	sub r0, r0, r1
	add r0, r0, #24
	cmp r0, #48
	bhi _08018DE4
	mov r1, #54
	ldrsh r0, [r2, r1]
	mov r2, #54
	ldrsh r1, [r3, r2]
	sub r0, r0, r1
	add r0, r0, #18
	cmp r0, #36
	bls _08018E10
_08018DE4:
	mov r0, #236
	lsl r0, r0, #1
	add r0, r0, r12
	ldr r2, [r0]
	cmp r2, #0
	beq _08018E18
	mov r4, #50
	ldrsh r0, [r2, r4]
	mov r4, #50
	ldrsh r1, [r3, r4]
	sub r0, r0, r1
	add r0, r0, #24
	cmp r0, #48
	bhi _08018E18
	mov r1, #54
	ldrsh r0, [r2, r1]
	mov r2, #54
	ldrsh r1, [r3, r2]
	sub r0, r0, r1
	add r0, r0, #18
	cmp r0, #36
	bhi _08018E18
_08018E10:
	mov r0, #0
	b _08018E1A
_08018E14:
	.4byte gUnknown_03006A30
_08018E18:
	mov r0, #1
_08018E1A:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08018D64

	THUMB_FUNC_START sub_08018E20
sub_08018E20: @ 0x08018E20
	push {lr}
	ldr r2, _08018E34  @ =gUnknown_08139938
	ldrb r1, [r0, #10]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08018E34:
	.4byte gUnknown_08139938
	THUMB_FUNC_END sub_08018E20

	THUMB_FUNC_START sub_08018E38
sub_08018E38: @ 0x08018E38
	push {lr}
	ldr r2, _08018E4C  @ =gUnknown_08139948
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08018E4C:
	.4byte gUnknown_08139948
	THUMB_FUNC_END sub_08018E38

	THUMB_FUNC_START sub_08018E50
sub_08018E50: @ 0x08018E50
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r7, r0, #0
	bl sub_080123E8
	add r5, r0, #0
	cmp r5, #0
	beq _08018F08
	bl sub_08012410
	add r6, r0, #0
	cmp r6, #0
	beq _08018F08
	bl sub_08012410
	add r4, r0, #0
	cmp r4, #0
	beq _08018F08
	mov r0, #0
	mov r9, r0
	mov r1, #3
	strb r1, [r5, #8]
	strb r1, [r6, #8]
	strb r1, [r4, #8]
	mov r0, #14
	strb r0, [r5, #9]
	strb r0, [r6, #9]
	strb r0, [r4, #9]
	mov r0, #1
	mov r8, r0
	mov r0, r8
	strb r0, [r5, #10]
	mov r0, #2
	strb r0, [r6, #10]
	strb r1, [r4, #10]
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0803D3D0
	add r0, r7, #0
	add r1, r6, #0
	bl sub_08044018
	str r7, [r6, #120]
	str r5, [r6, #124]
	str r4, [r6, #88]
	str r6, [r7, #84]
	str r6, [r5, #84]
	str r6, [r4, #84]
	mov r0, #4
	add r1, r5, #0
	bl sub_08012728
	mov r0, #4
	add r1, r6, #0
	bl sub_08012728
	mov r0, #4
	add r1, r4, #0
	bl sub_08012728
	ldrb r1, [r7, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	strb r0, [r7, #28]
	add r0, r7, #0
	add r0, r0, #46
	mov r1, r9
	strb r1, [r0]
	mov r0, #128
	str r0, [r7, #12]
	add r1, r7, #0
	add r1, r1, #43
	mov r0, #24
	strb r0, [r1]
	ldr r0, _08018F14  @ =gUnknown_08139AB0
	ldr r0, [r0, #8]
	str r0, [r7, #72]
	mov r0, r8
	strb r0, [r7, #26]
	mov r1, r9
	str r1, [r7, #96]
	ldrb r0, [r7, #20]
	add r0, r0, #1
	strb r0, [r7, #20]
	add r0, r7, #0
	mov r1, #3
	bl 0x08003870
_08018F08:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_08018F14:
	.4byte gUnknown_08139AB0
	THUMB_FUNC_END sub_08018E50

	THUMB_FUNC_START sub_08018F18
sub_08018F18: @ 0x08018F18
	bx lr
	THUMB_FUNC_END sub_08018F18

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08018F1C
sub_08018F1C: @ 0x08018F1C
	push {r4,lr}
	add r4, r0, #0
	bl sub_0803DB4C
	ldr r2, _08018F54  @ =gUnknown_03006A30
	ldrb r1, [r4, #11]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r2
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _08018F3A
	mov r0, #6
	strb r0, [r4, #21]
_08018F3A:
	ldr r0, _08018F58  @ =gUnknown_08139954
	ldrb r1, [r4, #21]
	sub r1, r1, #5
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08018F54:
	.4byte gUnknown_03006A30
_08018F58:
	.4byte gUnknown_08139954
	THUMB_FUNC_END sub_08018F1C

	THUMB_FUNC_START sub_08018F5C
sub_08018F5C: @ 0x08018F5C
	push {r4-r6,lr}
	add r5, r0, #0
	ldrb r2, [r5, #11]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #4
	ldr r1, _08018FCC  @ =gUnknown_03006A30
	add r4, r0, r1
	ldr r3, [r4, #40]
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _08018FE6
	ldr r1, [r5, #84]
	add r1, r1, #117
	add r0, r2, #4
	ldrb r2, [r1]
	orr r0, r0, r2
	strb r0, [r1]
	add r0, r3, #0
	add r0, r0, #41
	ldrb r0, [r0]
	cmp r0, #0
	beq _08018FEC
	add r2, r3, #0
	add r2, r2, #42
	ldrb r1, [r2]
	mov r6, #2
	add r0, r6, #0
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	bne _08018FD0
	strb r0, [r4, #5]
	add r1, r3, #0
	add r1, r1, #61
	mov r0, #254
	strb r0, [r1]
	add r0, r3, #0
	add r0, r0, #66
	strb r6, [r0]
	ldrb r0, [r2]
	mov r1, #4
	eor r0, r0, r1
	lsl r0, r0, #2
	add r1, r3, #0
	add r1, r1, #62
	strb r0, [r1]
	ldr r1, [r5, #84]
	add r1, r1, #117
	ldrb r2, [r1]
	mov r0, #240
	and r0, r0, r2
	strb r0, [r1]
	b _08018FEC
	.byte 0x00
	.byte 0x00
_08018FCC:
	.4byte gUnknown_03006A30
_08018FD0:
	lsl r0, r1, #24
	lsr r0, r0, #24
	cmp r0, #2
	bne _08018FEC
	ldr r0, [r5, #84]
	add r0, r0, #117
	ldrb r1, [r0]
	mov r2, #8
	orr r1, r1, r2
	strb r1, [r0]
	b _08018FEC
_08018FE6:
	ldrb r0, [r5, #20]
	sub r0, r0, #1
	strb r0, [r5, #20]
_08018FEC:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08018F5C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08018FF4
sub_08018FF4: @ 0x08018FF4
	ldrb r1, [r0, #20]
	sub r1, r1, #1
	strb r1, [r0, #20]
	bx lr
	THUMB_FUNC_END sub_08018FF4

	THUMB_FUNC_START sub_08018FFC
sub_08018FFC: @ 0x08018FFC
	push {lr}
	ldr r2, _08019010  @ =gUnknown_0813995C
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08019010:
	.4byte gUnknown_0813995C
	THUMB_FUNC_END sub_08018FFC

	THUMB_FUNC_START sub_08019014
sub_08019014: @ 0x08019014
	push {lr}
	ldrb r2, [r0, #28]
	mov r1, #4
	neg r1, r1
	and r1, r1, r2
	strb r1, [r0, #28]
	add r2, r0, #0
	add r2, r2, #46
	mov r1, #0
	strb r1, [r2]
	mov r1, #128
	str r1, [r0, #12]
	sub r2, r2, #3
	mov r1, #8
	strb r1, [r2]
	ldr r1, _0801904C  @ =gUnknown_08139AB0
	ldr r1, [r1, #12]
	str r1, [r0, #72]
	mov r1, #1
	strb r1, [r0, #26]
	ldrb r1, [r0, #20]
	add r1, r1, #1
	strb r1, [r0, #20]
	mov r1, #4
	bl 0x08003870
	pop {r0}
	bx r0
_0801904C:
	.4byte gUnknown_08139AB0
	THUMB_FUNC_END sub_08019014

	THUMB_FUNC_START sub_08019050
sub_08019050: @ 0x08019050
	bx lr
	THUMB_FUNC_END sub_08019050

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08019054
sub_08019054: @ 0x08019054
	push {r4,lr}
	add r4, r0, #0
	bl sub_0803DB4C
	ldr r1, _08019074  @ =gUnknown_08139968
	ldrb r0, [r4, #21]
	sub r0, r0, #5
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
_08019074:
	.4byte gUnknown_08139968
	THUMB_FUNC_END sub_08019054

	THUMB_FUNC_START sub_08019078
sub_08019078: @ 0x08019078
	push {r4,r5,lr}
	add r5, r0, #0
	ldrb r3, [r5, #11]
	lsl r0, r3, #3
	add r0, r0, r3
	lsl r0, r0, #4
	ldr r1, _080190EC  @ =gUnknown_03006A30
	add r4, r0, r1
	ldr r0, [r4, #40]
	mov r12, r0
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _08019106
	ldr r2, [r5, #84]
	add r2, r2, #117
	add r0, r3, #4
	lsl r0, r0, #4
	ldrb r1, [r2]
	orr r0, r0, r1
	strb r0, [r2]
	mov r0, r12
	add r0, r0, #41
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801910C
	mov r2, r12
	add r2, r2, #42
	ldrb r1, [r2]
	mov r3, #2
	add r0, r3, #0
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	bne _080190F0
	strb r0, [r4, #5]
	mov r1, r12
	add r1, r1, #61
	mov r0, #254
	strb r0, [r1]
	mov r0, r12
	add r0, r0, #66
	strb r3, [r0]
	ldrb r0, [r2]
	mov r1, #4
	eor r0, r0, r1
	lsl r0, r0, #2
	mov r1, r12
	add r1, r1, #62
	strb r0, [r1]
	ldr r1, [r5, #84]
	add r1, r1, #117
	ldrb r2, [r1]
	mov r0, #15
	and r0, r0, r2
	strb r0, [r1]
	b _0801910C
	.byte 0x00
	.byte 0x00
_080190EC:
	.4byte gUnknown_03006A30
_080190F0:
	lsl r0, r1, #24
	lsr r0, r0, #24
	cmp r0, #6
	bne _0801910C
	ldr r0, [r5, #84]
	add r0, r0, #117
	ldrb r1, [r0]
	mov r2, #128
	orr r1, r1, r2
	strb r1, [r0]
	b _0801910C
_08019106:
	ldrb r0, [r5, #20]
	sub r0, r0, #1
	strb r0, [r5, #20]
_0801910C:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08019078

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08019114
sub_08019114: @ 0x08019114
	ldrb r1, [r0, #20]
	sub r1, r1, #1
	strb r1, [r0, #20]
	bx lr
	THUMB_FUNC_END sub_08019114

	THUMB_FUNC_START sub_0801911C
sub_0801911C: @ 0x0801911C
	push {r4,r5,lr}
	add r5, r0, #0
	bl 0x080095A4
	add r0, r5, #0
	bl 0x08009874
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	beq _0801914E
	add r0, r5, #0
	bl 0x0800996C
	ldrb r0, [r5, #28]
	lsl r0, r0, #30
	cmp r0, #0
	bne _08019164
	ldr r0, [r5, #120]
	bl sub_08012540
	ldr r0, [r5, #124]
	bl sub_08012540
	b _08019164
_0801914E:
	ldr r4, _0801916C  @ =gUnknown_08139970
	add r0, r5, #0
	bl 0x080098DC
	lsl r0, r0, #24
	lsr r0, r0, #22
	add r0, r0, r4
	ldr r1, [r0]
	add r0, r5, #0
	bl _call_via_r1
_08019164:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801916C:
	.4byte gUnknown_08139970
	THUMB_FUNC_END sub_0801911C

	THUMB_FUNC_START sub_08019170
sub_08019170: @ 0x08019170
	push {r4,r5,lr}
	add r4, r0, #0
	ldr r1, _080191D0  @ =gUnknown_08139988
	ldrb r0, [r4, #20]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
	add r0, r4, #0
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #0
	beq _080191C8
	add r2, r4, #0
	add r2, r2, #117
	ldrb r1, [r2]
	mov r0, #68
	and r0, r0, r1
	add r5, r2, #0
	cmp r0, #68
	beq _080191C4
	ldr r2, [r4, #52]
	ldr r1, _080191D4  @ =0x0000FFFF
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, r1
	beq _080191AE
	add r0, r2, #1
	str r0, [r4, #52]
_080191AE:
	ldr r1, [r4, #120]
	add r0, r4, #0
	bl sub_0803D3D0
	ldr r1, [r4, #124]
	add r0, r4, #0
	bl sub_0803D3D0
	ldr r0, [r4, #52]
	sub r0, r0, #1
	str r0, [r4, #52]
_080191C4:
	mov r0, #0
	strb r0, [r5]
_080191C8:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080191D0:
	.4byte gUnknown_08139988
_080191D4:
	.4byte 0x0000FFFF
	THUMB_FUNC_END sub_08019170

	THUMB_FUNC_START sub_080191D8
sub_080191D8: @ 0x080191D8
	push {r4-r6,lr}
	add r4, r0, #0
	ldrb r1, [r4, #20]
	add r6, r1, #0
	cmp r6, #1
	bne _08019248
	add r5, r4, #0
	add r5, r5, #116
	add r3, r4, #0
	add r3, r3, #69
	ldrb r0, [r5]
	ldrb r2, [r3]
	cmp r0, r2
	beq _08019248
	add r0, r1, #1
	strb r0, [r4, #20]
	mov r1, #0
	ldr r0, _08019268  @ =0x0000FFF6
	strh r0, [r4, #58]
	mov r0, #144
	lsl r0, r0, #9
	str r0, [r4, #16]
	add r2, r4, #0
	add r2, r2, #63
	mov r0, #25
	strb r0, [r2]
	add r2, r2, #7
	mov r0, #2
	strb r0, [r2]
	sub r2, r2, #9
	ldrb r0, [r2]
	lsl r0, r0, #1
	strb r0, [r2]
	add r0, r4, #0
	add r0, r0, #66
	strb r1, [r0]
	ldr r0, _0801926C  @ =gUnknown_08139AB0
	ldr r0, [r0, #4]
	str r0, [r4, #72]
	add r1, r4, #0
	add r1, r1, #118
	mov r0, #150
	lsl r0, r0, #3
	strh r0, [r1]
	mov r0, #255
	strb r0, [r3]
	mov r0, #1
	neg r0, r0
	strb r0, [r5]
	add r0, r4, #0
	add r0, r0, #42
	strb r6, [r0]
	add r0, r4, #0
	mov r1, #1
	bl 0x08003870
_08019248:
	add r0, r4, #0
	add r0, r0, #117
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801925A
	add r1, r4, #0
	add r1, r1, #66
	mov r0, #0
	strb r0, [r1]
_0801925A:
	ldr r1, _08019270  @ =gUnknown_08139970
	add r0, r4, #0
	bl 0x080098A0
	pop {r4-r6}
	pop {r0}
	bx r0
_08019268:
	.4byte 0x0000FFF6
_0801926C:
	.4byte gUnknown_08139AB0
_08019270:
	.4byte gUnknown_08139970
	THUMB_FUNC_END sub_080191D8

	THUMB_FUNC_START sub_08019274
sub_08019274: @ 0x08019274
	push {r4,r5,lr}
	add r4, r0, #0
	bl 0x08009624
	add r0, r4, #0
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #0
	beq _080192C0
	add r2, r4, #0
	add r2, r2, #117
	ldrb r1, [r2]
	mov r0, #68
	and r0, r0, r1
	add r5, r2, #0
	cmp r0, #68
	beq _080192BC
	ldr r2, [r4, #52]
	ldr r1, _080192C8  @ =0x0000FFFF
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, r1
	beq _080192A6
	add r0, r2, #1
	str r0, [r4, #52]
_080192A6:
	ldr r1, [r4, #120]
	add r0, r4, #0
	bl sub_0803D3D0
	ldr r1, [r4, #124]
	add r0, r4, #0
	bl sub_0803D3D0
	ldr r0, [r4, #52]
	sub r0, r0, #1
	str r0, [r4, #52]
_080192BC:
	mov r0, #0
	strb r0, [r5]
_080192C0:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080192C8:
	.4byte 0x0000FFFF
	THUMB_FUNC_END sub_08019274

	THUMB_FUNC_START sub_080192CC
sub_080192CC: @ 0x080192CC
	push {r4-r6,lr}
	add r4, r0, #0
	bl 0x08003BCC
	ldr r0, [r4, #120]
	bl sub_08012540
	ldr r0, [r4, #124]
	bl sub_08012540
	ldr r6, _0801933C  @ =gUnknown_08139994
	bl 0x0800099C
	mov r5, #7
	and r0, r0, r5
	add r0, r0, r6
	ldrb r1, [r0]
	mov r0, #0
	mov r2, #1
	bl sub_0804C8A8
	add r1, r0, #0
	cmp r1, #0
	beq _0801930A
	add r2, r1, #0
	add r2, r2, #43
	mov r0, #136
	strb r0, [r2]
	add r0, r4, #0
	bl sub_0803D3D0
_0801930A:
	bl 0x0800099C
	and r0, r0, r5
	add r0, r0, r6
	ldrb r1, [r0]
	mov r0, #0
	mov r2, #1
	bl sub_0804C8A8
	add r1, r0, #0
	cmp r1, #0
	beq _08019330
	add r2, r1, #0
	add r2, r2, #43
	mov r0, #152
	strb r0, [r2]
	add r0, r4, #0
	bl sub_0803D3D0
_08019330:
	add r0, r4, #0
	bl sub_08043F20
	pop {r4-r6}
	pop {r0}
	bx r0
_0801933C:
	.4byte gUnknown_08139994
	THUMB_FUNC_END sub_080192CC

	THUMB_FUNC_START sub_08019340
sub_08019340: @ 0x08019340
	push {lr}
	add r3, r0, #0
	ldrb r1, [r3, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r3, #28]
	add r1, r3, #0
	add r1, r1, #46
	mov r0, #6
	strb r0, [r1]
	add r2, r3, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r2]
	ldr r0, _08019394  @ =gUnknown_08139AB0
	ldr r0, [r0]
	str r0, [r3, #72]
	add r0, r3, #0
	add r0, r0, #69
	ldrb r1, [r0]
	add r0, r0, #47
	strb r1, [r0]
	ldrb r0, [r3, #20]
	add r0, r0, #1
	strb r0, [r3, #20]
	mov r0, #1
	strb r0, [r3, #23]
	add r1, r3, #0
	add r1, r1, #113
	mov r0, #32
	strb r0, [r1]
	add r0, r3, #0
	mov r1, #0
	bl 0x08003870
	pop {r0}
	bx r0
_08019394:
	.4byte gUnknown_08139AB0
	THUMB_FUNC_END sub_08019340

	THUMB_FUNC_START sub_08019398
sub_08019398: @ 0x08019398
	push {r4,lr}
	add r4, r0, #0
	add r3, r4, #0
	add r3, r3, #42
	ldrb r0, [r3]
	cmp r0, #2
	bne _080193DA
	add r2, r4, #0
	add r2, r2, #63
	mov r1, #0
	mov r0, #24
	strb r0, [r2]
	ldr r0, _0801940C  @ =gUnknown_08139AB0
	ldr r0, [r0]
	str r0, [r4, #72]
	strb r1, [r3]
	add r0, r4, #0
	bl 0x08003870
	add r0, r4, #0
	bl 0x08003BCC
	ldr r3, [r4, #120]
	ldrb r2, [r3, #28]
	mov r1, #4
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	strb r0, [r3, #28]
	ldr r2, [r4, #124]
	ldrb r0, [r2, #28]
	and r1, r1, r0
	strb r1, [r2, #28]
_080193DA:
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _080193F8
	mov r0, #30
	strb r0, [r4, #23]
	bl 0x0800099C
	mov r1, #31
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
_080193F8:
	add r0, r4, #0
	bl 0x0800963C
	add r0, r4, #0
	bl 0x08003828
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801940C:
	.4byte gUnknown_08139AB0
	THUMB_FUNC_END sub_08019398

	THUMB_FUNC_START sub_08019410
sub_08019410: @ 0x08019410
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r5, r0, #0
	add r4, r5, #0
	add r4, r4, #42
	ldrb r0, [r4]
	cmp r0, #1
	bne _08019468
	add r0, r5, #0
	bl 0x08003828
	mov r1, #128
	lsl r1, r1, #6
	add r0, r5, #0
	bl 0x08003F1C
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _0801943C
	b _080195FC
_0801943C:
	cmp r0, #0
	bne _08019460
	mov r0, #2
	strb r0, [r4]
	ldr r3, [r5, #120]
	ldrb r2, [r3, #28]
	mov r1, #4
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	mov r4, #1
	orr r0, r0, r4
	strb r0, [r3, #28]
	ldr r2, [r5, #124]
	ldrb r0, [r2, #28]
	and r1, r1, r0
	orr r1, r1, r4
	strb r1, [r2, #28]
_08019460:
	mov r0, #84
	bl 0x08003DFC
	b _080195FC
_08019468:
	add r0, r5, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #1
	mov r8, r0
	and r0, r0, r1
	cmp r0, #0
	bne _08019498
	add r0, r5, #0
	mov r1, #2
	bl 0x08003870
	add r0, r5, #0
	bl 0x08003B94
	ldrb r2, [r5, #29]
	lsl r1, r2, #30
	lsr r1, r1, #30
	mov r0, #2
	orr r1, r1, r0
	sub r0, r0, #6
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r5, #29]
_08019498:
	add r4, r5, #0
	add r4, r4, #46
	mov r6, #0
	mov r0, #6
	strb r0, [r4]
	add r0, r5, #0
	add r0, r0, #117
	ldrb r1, [r0]
	add r7, r0, #0
	cmp r1, #0
	beq _080194E0
	add r0, r5, #0
	bl sub_08019690
	ldr r0, [r5, #124]
	ldr r1, [r5, #120]
	ldrh r0, [r0, #50]
	ldrh r1, [r1, #50]
	sub r0, r0, r1
	lsl r0, r0, #16
	asr r1, r0, #16
	cmp r1, #0
	beq _080194C8
	strb r6, [r4]
_080194C8:
	add r0, r5, #0
	add r0, r0, #113
	ldrb r0, [r0]
	add r4, r5, #0
	add r4, r4, #69
	cmp r0, r1
	bgt _0801952C
	strb r6, [r4]
	mov r0, #86
	bl 0x08003DFC
	b _0801952C
_080194E0:
	add r1, r5, #0
	add r1, r1, #118
	ldrh r0, [r1]
	sub r2, r0, #1
	strh r2, [r1]
	lsl r0, r2, #16
	lsr r0, r0, #16
	cmp r0, #0
	bne _08019510
	ldrb r0, [r5, #20]
	sub r0, r0, #1
	strb r0, [r5, #20]
	mov r1, r8
	strb r1, [r5, #23]
	add r1, r5, #0
	add r1, r1, #70
	mov r0, #12
	strb r0, [r1]
	mov r0, #150
	bl 0x08003DFC
	add r4, r5, #0
	add r4, r4, #69
	b _0801952C
_08019510:
	add r4, r5, #0
	add r4, r4, #69
	cmp r0, #60
	bhi _0801952C
	ldr r0, _08019558  @ =gUnknown_0813999C
	mov r1, #3
	and r2, r2, r1
	add r0, r2, r0
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrh r1, [r5, #50]
	add r0, r0, r1
	strh r0, [r5, #50]
_0801952C:
	ldrb r6, [r4]
	cmp r6, #0
	beq _080195B8
	ldr r0, [r5, #124]
	ldr r1, [r5, #120]
	ldrh r0, [r0, #50]
	ldrh r1, [r1, #50]
	sub r0, r0, r1
	lsl r0, r0, #16
	lsr r3, r0, #16
	cmp r0, #0
	beq _0801955C
	ldr r2, [r5, #88]
	ldrb r1, [r2, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r2, #28]
	strb r3, [r5, #23]
	b _08019568
_08019558:
	.4byte gUnknown_0813999C
_0801955C:
	ldr r2, [r5, #88]
	ldrb r1, [r2, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	strb r0, [r2, #28]
_08019568:
	ldr r0, _080195B0  @ =gUnknown_03000488
	ldr r4, _080195B4  @ =gUnknown_081399B0
	lsl r1, r3, #16
	asr r1, r1, #16
	lsl r2, r1, #1
	lsl r1, r1, #2
	add r1, r1, r4
	ldrh r1, [r1]
	mov r3, #0
	strh r1, [r0]
	add r2, r2, #1
	lsl r2, r2, #1
	add r2, r2, r4
	ldrh r1, [r2]
	strh r1, [r0, #2]
	strh r3, [r0, #4]
	add r1, r5, #0
	bl sub_0803D770
	ldrb r1, [r7]
	mov r0, #12
	and r0, r0, r1
	cmp r0, #0
	bne _0801959E
	ldr r0, [r5, #120]
	bl 0x080077D0
_0801959E:
	ldrb r1, [r7]
	mov r0, #192
	and r0, r0, r1
	cmp r0, #0
	bne _080195FC
	ldr r0, [r5, #124]
	bl 0x080077D0
	b _080195FC
_080195B0:
	.4byte gUnknown_03000488
_080195B4:
	.4byte gUnknown_081399B0
_080195B8:
	ldrb r1, [r7]
	mov r4, #3
	mov r0, #3
	and r0, r0, r1
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #4
	ldr r3, _08019608  @ =gUnknown_03006A30
	add r5, r1, r3
	strb r6, [r5, #5]
	ldr r0, [r5, #40]
	add r0, r0, #62
	mov r1, #24
	strb r1, [r0]
	ldr r0, [r5, #40]
	ldr r1, _0801960C  @ =gUnknown_081399A8
	ldrb r2, [r1, #1]
	add r0, r0, #66
	strb r2, [r0]
	ldrb r1, [r7]
	lsr r1, r1, #4
	and r1, r1, r4
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r5, r0, r3
	strb r6, [r5, #5]
	ldr r0, [r5, #40]
	add r0, r0, #62
	mov r1, #8
	strb r1, [r0]
	ldr r0, [r5, #40]
	add r0, r0, #66
	strb r2, [r0]
_080195FC:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08019608:
	.4byte gUnknown_03006A30
_0801960C:
	.4byte gUnknown_081399A8
	THUMB_FUNC_END sub_08019410

	THUMB_FUNC_START sub_08019610
sub_08019610: @ 0x08019610
	push {lr}
	ldr r2, _08019624  @ =gUnknown_081399A0
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08019624:
	.4byte gUnknown_081399A0
	THUMB_FUNC_END sub_08019610

	THUMB_FUNC_START sub_08019628
sub_08019628: @ 0x08019628
	push {lr}
	ldrb r2, [r0, #28]
	mov r1, #4
	neg r1, r1
	and r1, r1, r2
	strb r1, [r0, #28]
	ldrb r1, [r0, #20]
	add r1, r1, #1
	strb r1, [r0, #20]
	mov r1, #5
	bl 0x08003870
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08019628

	THUMB_FUNC_START sub_08019644
sub_08019644: @ 0x08019644
	push {r4,lr}
	add r4, r0, #0
	ldr r1, [r4, #84]
	add r0, r1, #0
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #0
	beq _08019684
	add r0, r1, #0
	add r1, r4, #0
	bl sub_0803D3D0
	ldr r0, [r4, #52]
	sub r0, r0, #1
	str r0, [r4, #52]
	ldr r1, _08019680  @ =gUnknown_0842764C
	ldrb r0, [r4, #23]
	lsr r0, r0, #1
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrh r1, [r4, #54]
	add r0, r0, r1
	strh r0, [r4, #54]
	add r0, r4, #0
	bl 0x08003828
	b _0801968A
	.byte 0x00
	.byte 0x00
_08019680:
	.4byte gUnknown_0842764C
_08019684:
	add r0, r4, #0
	bl sub_08012540
_0801968A:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08019644

	THUMB_FUNC_START sub_08019690
sub_08019690: @ 0x08019690
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r5, r0, #0
	ldr r0, [r5, #124]
	ldr r1, [r5, #120]
	mov r12, r1
	ldrh r0, [r0, #50]
	ldrh r1, [r1, #50]
	sub r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	add r0, r5, #0
	add r0, r0, #117
	ldrb r2, [r0]
	mov r3, #3
	mov r8, r3
	mov r0, r8
	and r0, r0, r2
	mov r8, r0
	mov r0, #48
	and r0, r0, r2
	lsr r3, r0, #4
	ldr r1, _080196FC  @ =gUnknown_03006A30
	mov r9, r1
	mov r1, r8
	lsl r0, r1, #3
	add r0, r0, r8
	lsl r0, r0, #4
	mov r1, r9
	add r1, r1, #40
	add r0, r0, r1
	ldr r6, [r0]
	lsl r0, r3, #3
	add r0, r0, r3
	lsl r0, r0, #4
	add r0, r0, r1
	ldr r7, [r0]
	mov r0, #204
	and r0, r0, r2
	mov r1, r9
	cmp r0, #68
	bne _080196EA
	b _080197EC
_080196EA:
	cmp r0, #68
	bgt _08019706
	cmp r0, #12
	beq _08019724
	cmp r0, #12
	bgt _08019700
	cmp r0, #4
	beq _0801974A
	b _08019998
_080196FC:
	.4byte gUnknown_03006A30
_08019700:
	cmp r0, #64
	beq _080197AE
	b _08019998
_08019706:
	cmp r0, #192
	beq _08019788
	cmp r0, #192
	bgt _08019716
	cmp r0, #76
	bne _08019714
	b _08019836
_08019714:
	b _08019998
_08019716:
	cmp r0, #196
	bne _0801971C
	b _0801989C
_0801971C:
	cmp r0, #204
	bne _08019722
	b _08019928
_08019722:
	b _08019998
_08019724:
	lsl r0, r4, #16
	add r2, r0, #0
	cmp r2, #0
	bne _08019754
	ldrh r4, [r6, #50]
	add r0, r6, #0
	mov r1, #64
	mov r2, #24
	bl 0x08002E70
	ldrh r0, [r6, #50]
	lsl r1, r4, #16
	asr r1, r1, #16
	sub r0, r0, r1
	lsl r0, r0, #16
	asr r0, r0, #16
	ldrh r2, [r5, #50]
	add r0, r0, r2
	b _08019910
_0801974A:
	lsl r0, r4, #16
	add r2, r0, #0
	cmp r2, #0
	bne _08019754
	b _08019998
_08019754:
	mov r3, r8
	lsl r0, r3, #3
	add r0, r0, r8
	lsl r0, r0, #4
	add r0, r0, r1
	mov r1, #0
	strb r1, [r0, #5]
	add r1, r6, #0
	add r1, r1, #62
	mov r0, #24
	strb r0, [r1]
	ldr r1, _08019784  @ =gUnknown_081399A8
	asr r0, r2, #18
	add r0, r0, r1
	ldrb r0, [r0]
	add r1, r6, #0
	add r1, r1, #66
	strb r0, [r1]
	neg r0, r0
	sub r1, r1, #5
	strb r0, [r1]
	ldr r0, [r5, #120]
	ldrh r0, [r0, #50]
	b _08019910
_08019784:
	.4byte gUnknown_081399A8
_08019788:
	lsl r0, r4, #16
	add r2, r0, #0
	cmp r2, #0
	bne _080197B8
	ldrh r4, [r7, #50]
	add r0, r7, #0
	mov r1, #64
	mov r2, #8
	bl 0x08002E70
	ldrh r0, [r7, #50]
	lsl r1, r4, #16
	asr r1, r1, #16
	sub r0, r0, r1
	lsl r0, r0, #16
	asr r0, r0, #16
	ldrh r1, [r5, #50]
	add r0, r0, r1
	b _08019910
_080197AE:
	lsl r0, r4, #16
	add r2, r0, #0
	cmp r2, #0
	bne _080197B8
	b _08019998
_080197B8:
	lsl r0, r3, #3
	add r0, r0, r3
	lsl r0, r0, #4
	add r0, r0, r1
	mov r1, #0
	strb r1, [r0, #5]
	add r1, r7, #0
	add r1, r1, #62
	mov r0, #8
	strb r0, [r1]
	ldr r1, _080197E8  @ =gUnknown_081399A8
	asr r0, r2, #18
	add r0, r0, r1
	ldrb r0, [r0]
	add r1, r7, #0
	add r1, r1, #66
	strb r0, [r1]
	neg r0, r0
	sub r1, r1, #5
	strb r0, [r1]
	ldr r0, [r5, #124]
	ldrh r0, [r0, #50]
	b _08019910
	.byte 0x00
	.byte 0x00
_080197E8:
	.4byte gUnknown_081399A8
_080197EC:
	cmp r4, #0
	bne _080197F2
	b _08019998
_080197F2:
	mov r2, r12
	ldrh r4, [r2, #50]
	mov r0, r12
	mov r1, #32
	mov r2, #8
	bl 0x08002E70
	ldr r0, [r5, #120]
	ldrh r0, [r0, #50]
	lsl r1, r4, #16
	asr r1, r1, #16
	sub r0, r0, r1
	lsl r0, r0, #16
	asr r0, r0, #16
	ldrh r3, [r6, #50]
	add r0, r0, r3
	strh r0, [r6, #50]
	ldr r0, [r5, #124]
	ldrh r4, [r0, #50]
	mov r1, #32
	mov r2, #24
	bl 0x08002E70
	ldr r0, [r5, #124]
	ldrh r0, [r0, #50]
	lsl r1, r4, #16
	asr r1, r1, #16
	sub r0, r0, r1
	lsl r0, r0, #16
	asr r0, r0, #16
	ldrh r1, [r7, #50]
	add r0, r0, r1
	strh r0, [r7, #50]
	b _08019912
_08019836:
	ldrh r4, [r6, #50]
	add r0, r6, #0
	mov r1, #64
	mov r2, #24
	bl 0x08002E70
	ldrh r1, [r6, #50]
	lsl r0, r4, #16
	asr r0, r0, #16
	sub r1, r1, r0
	ldrh r0, [r7, #50]
	lsl r1, r1, #16
	asr r1, r1, #16
	add r0, r1, r0
	strh r0, [r7, #50]
	ldrh r0, [r5, #50]
	add r0, r1, r0
	strh r0, [r5, #50]
	ldr r2, [r5, #120]
	ldrh r0, [r2, #50]
	add r0, r1, r0
	strh r0, [r2, #50]
	ldr r2, [r5, #124]
	ldrh r0, [r2, #50]
	add r1, r1, r0
	strh r1, [r2, #50]
	ldr r2, [r5, #124]
	ldr r0, [r5, #120]
	mov r3, #50
	ldrsh r1, [r2, r3]
	mov r3, #50
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _08019912
	ldrh r4, [r2, #50]
	add r0, r2, #0
	mov r1, #32
	mov r2, #24
	bl 0x08002E70
	ldr r0, [r5, #124]
	ldrh r0, [r0, #50]
	lsl r1, r4, #16
	asr r1, r1, #16
	sub r0, r0, r1
	lsl r0, r0, #16
	asr r0, r0, #16
	ldrh r1, [r7, #50]
	add r0, r0, r1
	strh r0, [r7, #50]
	b _08019900
_0801989C:
	ldrh r4, [r7, #50]
	add r0, r7, #0
	mov r1, #64
	mov r2, #8
	bl 0x08002E70
	ldrh r1, [r7, #50]
	lsl r0, r4, #16
	asr r0, r0, #16
	sub r1, r1, r0
	ldrh r0, [r6, #50]
	lsl r1, r1, #16
	asr r1, r1, #16
	add r0, r1, r0
	strh r0, [r6, #50]
	ldrh r0, [r5, #50]
	add r0, r1, r0
	strh r0, [r5, #50]
	ldr r2, [r5, #120]
	ldrh r0, [r2, #50]
	add r0, r1, r0
	strh r0, [r2, #50]
	ldr r2, [r5, #124]
	ldrh r0, [r2, #50]
	add r1, r1, r0
	strh r1, [r2, #50]
	ldr r0, [r5, #124]
	ldr r2, [r5, #120]
	mov r3, #50
	ldrsh r1, [r0, r3]
	mov r3, #50
	ldrsh r0, [r2, r3]
	cmp r1, r0
	beq _08019912
	ldrh r4, [r2, #50]
	add r0, r2, #0
	mov r1, #32
	mov r2, #8
	bl 0x08002E70
	ldr r0, [r5, #120]
	ldrh r0, [r0, #50]
	lsl r1, r4, #16
	asr r1, r1, #16
	sub r0, r0, r1
	lsl r0, r0, #16
	asr r0, r0, #16
	ldrh r1, [r6, #50]
	add r0, r0, r1
	strh r0, [r6, #50]
_08019900:
	ldr r0, [r5, #124]
	mov r2, #50
	ldrsh r0, [r0, r2]
	ldr r1, [r5, #120]
	mov r3, #50
	ldrsh r1, [r1, r3]
	add r0, r0, r1
	asr r0, r0, #1
_08019910:
	strh r0, [r5, #50]
_08019912:
	add r1, r5, #0
	add r1, r1, #112
	ldrb r0, [r1]
	cmp r0, #0
	beq _08019998
	mov r0, #0
	strb r0, [r1]
	mov r0, #150
	bl 0x08003DFC
	b _08019998
_08019928:
	ldrh r4, [r6, #50]
	add r0, r6, #0
	mov r1, #64
	mov r2, #24
	bl 0x08002E70
	ldrh r1, [r6, #50]
	lsl r0, r4, #16
	asr r0, r0, #16
	sub r1, r1, r0
	ldr r0, [r5, #120]
	lsl r1, r1, #16
	asr r1, r1, #16
	ldrh r2, [r0, #50]
	add r1, r1, r2
	strh r1, [r0, #50]
	ldrh r4, [r7, #50]
	add r0, r7, #0
	mov r1, #64
	mov r2, #8
	bl 0x08002E70
	ldrh r1, [r7, #50]
	lsl r0, r4, #16
	asr r0, r0, #16
	sub r1, r1, r0
	ldr r0, [r5, #124]
	lsl r1, r1, #16
	asr r1, r1, #16
	ldrh r3, [r0, #50]
	add r1, r1, r3
	strh r1, [r0, #50]
	ldr r0, [r5, #120]
	mov r1, #50
	ldrsh r0, [r0, r1]
	ldr r1, [r5, #124]
	mov r2, #50
	ldrsh r1, [r1, r2]
	add r0, r0, r1
	lsr r1, r0, #31
	add r0, r0, r1
	asr r0, r0, #1
	strh r0, [r5, #50]
	add r2, r5, #0
	add r2, r2, #112
	ldrb r1, [r2]
	mov r0, #4
	and r0, r0, r1
	cmp r0, #0
	bne _08019998
	mov r0, #4
	orr r0, r0, r1
	strb r0, [r2]
	mov r0, #85
	bl 0x08003DFC
_08019998:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08019690

	THUMB_FUNC_START sub_080199A4
sub_080199A4: @ 0x080199A4
	push {r4,r5,lr}
	add r4, r0, #0
	ldr r5, _080199C4  @ =gUnknown_08139AC0
	bl 0x08002E18
	lsl r0, r0, #24
	lsr r0, r0, #22
	add r0, r0, r5
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080199C4:
	.4byte gUnknown_08139AC0
	THUMB_FUNC_END sub_080199A4

	THUMB_FUNC_START sub_080199C8
sub_080199C8: @ 0x080199C8
	push {lr}
	add r2, r0, #0
	add r0, r0, #127
	ldrb r0, [r0]
	cmp r0, #0
	beq _080199DC
	add r0, r2, #0
	bl sub_0801A254
	b _080199EC
_080199DC:
	ldr r0, _080199F0  @ =gUnknown_08139AD8
	ldrb r1, [r2, #20]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r2, #0
	bl _call_via_r1
_080199EC:
	pop {r0}
	bx r0
_080199F0:
	.4byte gUnknown_08139AD8
	THUMB_FUNC_END sub_080199C8

	THUMB_FUNC_START sub_080199F4
sub_080199F4: @ 0x080199F4
	push {r4,lr}
	add r4, r0, #0
	add r3, r4, #0
	add r3, r3, #124
	ldrb r0, [r3]
	cmp r0, #0
	beq _08019A3A
	add r0, r4, #0
	add r0, r0, #65
	ldrb r0, [r0]
	cmp r0, #150
	bne _08019A3A
	add r2, r4, #0
	add r2, r2, #61
	mov r1, #0
	mov r0, #60
	strb r0, [r2]
	ldrb r0, [r3]
	sub r0, r0, #1
	strb r0, [r3]
	add r2, r2, #66
	mov r0, #7
	strb r0, [r2]
	mov r0, #128
	lsl r0, r0, #8
	str r0, [r4, #16]
	add r0, r4, #0
	add r0, r0, #125
	strb r1, [r0]
	add r0, r4, #0
	bl 0x08003870
	mov r0, #128
	bl 0x08003DFC
_08019A3A:
	ldr r1, _08019A48  @ =gUnknown_08139AC0
	add r0, r4, #0
	bl 0x080098A0
	pop {r4}
	pop {r0}
	bx r0
_08019A48:
	.4byte gUnknown_08139AC0
	THUMB_FUNC_END sub_080199F4

	THUMB_FUNC_START sub_08019A4C
sub_08019A4C: @ 0x08019A4C
	push {r4,lr}
	add r4, r0, #0
	mov r2, #1
	mov r3, #1
	strb r3, [r4, #20]
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	orr r0, r0, r2
	strb r0, [r4, #28]
	add r1, r4, #0
	add r1, r1, #46
	mov r0, #8
	strb r0, [r1]
	ldrb r1, [r4, #28]
	sub r0, r0, #57
	and r0, r0, r1
	mov r1, #32
	orr r0, r0, r1
	strb r0, [r4, #28]
	ldr r0, _08019ACC  @ =0x0000FFE0
	strh r0, [r4, #58]
	add r2, r4, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #16
	orr r0, r0, r1
	strb r0, [r2]
	ldr r0, _08019AD0  @ =gUnknown_08139D10
	str r0, [r4, #72]
	ldrb r2, [r4, #29]
	mov r1, #63
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #64
	orr r0, r0, r2
	strb r0, [r4, #29]
	ldrb r0, [r4, #31]
	and r1, r1, r0
	orr r1, r1, r2
	strb r1, [r4, #31]
	add r2, r4, #0
	add r2, r2, #94
	ldrb r0, [r2]
	mov r1, #3
	orr r0, r0, r1
	strb r0, [r2]
	add r0, r4, #0
	add r0, r0, #106
	strb r3, [r0]
	bl sub_08044594
	str r0, [r4, #100]
	add r0, r4, #0
	mov r1, #5
	bl 0x08003870
	bl sub_0803DF84
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08019ACC:
	.4byte 0x0000FFE0
_08019AD0:
	.4byte gUnknown_08139D10
	THUMB_FUNC_END sub_08019A4C

	THUMB_FUNC_START sub_08019AD4
sub_08019AD4: @ 0x08019AD4
	push {r4-r7,lr}
	add r5, r0, #0
	mov r4, #0
	ldr r0, _08019B48  @ =gUnknown_03006C80
	mov r12, r0
	ldrb r0, [r0]
	cmp r4, r0
	bcs _08019B16
	ldr r6, _08019B4C  @ =gUnknown_03006A30
_08019AE6:
	lsl r0, r4, #3
	add r0, r0, r4
	lsl r2, r0, #4
	add r0, r6, #0
	add r0, r0, #40
	add r3, r2, r0
	ldr r0, [r3]
	mov r7, #58
	ldrsh r1, [r0, r7]
	cmp r1, #0
	bne _08019B08
	add r0, r2, r6
	strh r1, [r0, #8]
	ldr r0, [r3]
	add r0, r0, #43
	mov r1, #255
	strb r1, [r0]
_08019B08:
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	mov r0, r12
	ldrb r0, [r0]
	cmp r4, r0
	bcc _08019AE6
_08019B16:
	bl sub_0803DF84
	add r0, r5, #0
	bl 0x08003828
	add r0, r5, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08019B40
	mov r1, #0
	mov r0, #2
	strb r0, [r5, #20]
	strb r1, [r5, #21]
	mov r0, #5
	strb r0, [r5, #23]
	ldr r0, _08019B50  @ =0x00000903
	bl sub_0800D67C
_08019B40:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08019B48:
	.4byte gUnknown_03006C80
_08019B4C:
	.4byte gUnknown_03006A30
_08019B50:
	.4byte 0x00000903
	THUMB_FUNC_END sub_08019AD4

	THUMB_FUNC_START sub_08019B54
sub_08019B54: @ 0x08019B54
	push {r4-r6,lr}
	add r4, r0, #0
	bl sub_0803DF84
	ldrb r0, [r4, #23]
	cmp r0, #0
	beq _08019B68
	sub r0, r0, #1
	strb r0, [r4, #23]
	b _08019BB6
_08019B68:
	ldrb r0, [r4, #21]
	cmp r0, #0
	bne _08019B88
	ldr r0, _08019B84  @ =gUnknown_02000010
	ldrb r1, [r0]
	mov r0, #127
	and r0, r0, r1
	cmp r0, #6
	bne _08019BB6
	bl sub_0800D644
	mov r0, #1
	strb r0, [r4, #21]
	b _08019BB6
_08019B84:
	.4byte gUnknown_02000010
_08019B88:
	mov r2, #0
	ldr r0, _08019BBC  @ =gUnknown_03006C80
	ldrb r0, [r0]
	cmp r2, r0
	bcs _08019BB2
	ldr r5, _08019BC0  @ =gUnknown_03000940
	mov r6, #128
	lsl r6, r6, #3
	add r3, r0, #0
_08019B9A:
	lsl r0, r2, #1
	add r0, r0, r5
	ldrh r1, [r0]
	add r0, r6, #0
	and r0, r0, r1
	cmp r0, #0
	bne _08019BB6
	add r0, r2, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	cmp r2, r3
	bcc _08019B9A
_08019BB2:
	mov r0, #3
	strb r0, [r4, #20]
_08019BB6:
	pop {r4-r6}
	pop {r0}
	bx r0
_08019BBC:
	.4byte gUnknown_03006C80
_08019BC0:
	.4byte gUnknown_03000940
	THUMB_FUNC_END sub_08019B54

	THUMB_FUNC_START sub_08019BC4
sub_08019BC4: @ 0x08019BC4
	push {r4,lr}
	add r4, r0, #0
	ldr r3, _08019C18  @ =gUnknown_03000450
	ldr r2, _08019C1C  @ =gUnknown_03006A30
	ldr r0, _08019C20  @ =gUnknown_03000414
	ldrb r1, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r2, r2, #40
	add r0, r0, r2
	ldr r1, [r3]
	ldr r0, [r0]
	cmp r1, r0
	beq _08019BE6
	bl sub_0803DF84
_08019BE6:
	ldr r0, [r4, #56]
	ldr r1, _08019C24  @ =0xFFFF8000
	add r0, r0, r1
	str r0, [r4, #56]
	mov r0, #58
	ldrsh r1, [r4, r0]
	mov r0, #64
	neg r0, r0
	cmp r1, r0
	bne _08019C12
	mov r0, #4
	strb r0, [r4, #20]
	mov r0, #50
	strb r0, [r4, #23]
	add r1, r4, #0
	add r1, r1, #63
	mov r0, #1
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
_08019C12:
	pop {r4}
	pop {r0}
	bx r0
_08019C18:
	.4byte gUnknown_03000450
_08019C1C:
	.4byte gUnknown_03006A30
_08019C20:
	.4byte gUnknown_03000414
_08019C24:
	.4byte 0xFFFF8000
	THUMB_FUNC_END sub_08019BC4

	THUMB_FUNC_START sub_08019C28
sub_08019C28: @ 0x08019C28
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r5, r0, #0
	ldr r6, _08019C68  @ =gUnknown_03000450
	ldr r2, _08019C6C  @ =gUnknown_03006A30
	ldr r0, _08019C70  @ =gUnknown_03000414
	mov r8, r0
	ldrb r1, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r7, r2, #0
	add r7, r7, #40
	add r0, r0, r7
	ldr r1, [r6]
	ldr r0, [r0]
	cmp r1, r0
	beq _08019C52
	bl sub_0803DF84
_08019C52:
	ldrb r0, [r5, #23]
	sub r0, r0, #1
	strb r0, [r5, #23]
	ldrb r0, [r5, #23]
	cmp r0, #24
	beq _08019C96
	cmp r0, #24
	bgt _08019C74
	cmp r0, #0
	beq _08019CC2
	b _08019D32
_08019C68:
	.4byte gUnknown_03000450
_08019C6C:
	.4byte gUnknown_03006A30
_08019C70:
	.4byte gUnknown_03000414
_08019C74:
	cmp r0, #48
	bne _08019D32
	mov r0, #41
	bl sub_08012468
	add r4, r0, #0
	cmp r4, #0
	beq _08019D32
	mov r0, #1
	strb r0, [r4, #11]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0803D3D0
	str r5, [r4, #84]
	str r4, [r5, #84]
	b _08019CB4
_08019C96:
	mov r0, #41
	bl sub_08012468
	add r4, r0, #0
	cmp r4, #0
	beq _08019D32
	mov r0, #1
	strb r0, [r4, #10]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0803D3D0
	str r5, [r4, #84]
	ldr r0, [r5, #88]
	str r4, [r0, #88]
_08019CB4:
	str r4, [r5, #88]
	add r1, r5, #0
	add r1, r1, #124
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _08019D32
_08019CC2:
	mov r0, #41
	bl sub_08012468
	add r4, r0, #0
	cmp r4, #0
	beq _08019CEA
	mov r0, #2
	strb r0, [r4, #10]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0803D3D0
	str r5, [r4, #84]
	ldr r0, [r5, #88]
	str r4, [r0, #88]
	add r1, r5, #0
	add r1, r1, #124
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_08019CEA:
	mov r0, #5
	strb r0, [r5, #20]
	mov r0, #60
	strb r0, [r5, #23]
	mov r0, r8
	ldrb r1, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r7
	ldr r1, [r6]
	ldr r0, [r0]
	cmp r1, r0
	beq _08019D32
	str r0, [r6]
	ldr r0, _08019D44  @ =gUnknown_03000420
	mov r1, #1
	strb r1, [r0]
	bl sub_0802D97C
	bl sub_0802C8F8
	mov r0, #206
	lsl r0, r0, #1
	bl sub_0800D24C
	mov r0, #16
	mov r1, #0
	mov r2, #0
	bl sub_0804C8A8
	mov r0, #46
	mov r1, #0
	mov r2, #240
	bl sub_0804C938
_08019D32:
	add r0, r5, #0
	bl 0x08003828
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08019D44:
	.4byte gUnknown_03000420
	THUMB_FUNC_END sub_08019C28

	THUMB_FUNC_START sub_08019D48
sub_08019D48: @ 0x08019D48
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	bne _08019D66
	add r1, r4, #0
	add r1, r1, #46
	strb r0, [r1]
	add r0, r4, #0
	bl sub_0801A210
_08019D66:
	add r0, r4, #0
	bl 0x08003828
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08019D48

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08019D74
sub_08019D74: @ 0x08019D74
	push {r4,lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, r1, #112
	ldrh r0, [r1]
	sub r0, r0, #1
	strh r0, [r1]
	lsl r0, r0, #16
	cmp r0, #0
	beq _08019DBA
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08019DAC
	mov r0, #4
	strb r0, [r4, #23]
	ldr r1, [r4, #100]
	add r0, r4, #0
	bl sub_0803CECC
	add r1, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x080040C4
_08019DAC:
	add r0, r4, #0
	bl sub_0801A11C
	add r0, r4, #0
	bl 0x08009694
	b _08019DC2
_08019DBA:
	mov r0, #7
	strb r0, [r4, #20]
	mov r0, #60
	strb r0, [r4, #23]
_08019DC2:
	add r0, r4, #0
	bl 0x08003828
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08019D74

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08019DD0
sub_08019DD0: @ 0x08019DD0
	push {lr}
	add r2, r0, #0
	ldrb r0, [r2, #23]
	sub r0, r0, #1
	strb r0, [r2, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08019DF6
	mov r0, #8
	strb r0, [r2, #20]
	mov r0, #192
	str r0, [r2, #12]
	add r3, r2, #0
	add r3, r3, #118
	ldrb r1, [r3]
	mov r0, #15
	and r0, r0, r1
	add r0, r0, #16
	strb r0, [r3]
_08019DF6:
	add r0, r2, #0
	bl 0x08003828
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08019DD0

	THUMB_FUNC_START sub_08019E00
sub_08019E00: @ 0x08019E00
	push {r4,lr}
	add r4, r0, #0
	mov r1, #50
	ldrsh r0, [r4, r1]
	mov r2, #54
	ldrsh r1, [r4, r2]
	mov r3, #252
	lsl r3, r3, #1
	add r2, r3, #0
	bl 0x08003F54
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	add r0, r4, #0
	bl 0x08009694
	ldr r0, _08019E54  @ =0xFFFFFE09
	add r1, r0, #0
	ldrh r2, [r4, #50]
	add r0, r1, r2
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #2
	bhi _08019E46
	ldrh r2, [r4, #54]
	add r0, r1, r2
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #2
	bhi _08019E46
	mov r0, #9
	strb r0, [r4, #20]
	mov r0, #60
	strb r0, [r4, #23]
_08019E46:
	add r0, r4, #0
	bl 0x08003828
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08019E54:
	.4byte 0xFFFFFE09
	THUMB_FUNC_END sub_08019E00

	THUMB_FUNC_START sub_08019E58
sub_08019E58: @ 0x08019E58
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08019E82
	bl 0x0800099C
	mov r1, #1
	and r1, r1, r0
	cmp r1, #0
	beq _08019E7C
	add r0, r4, #0
	bl sub_0801A1B8
	b _08019E82
_08019E7C:
	add r0, r4, #0
	bl sub_0801A1E0
_08019E82:
	add r0, r4, #0
	bl 0x08003828
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08019E58

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08019E90
sub_08019E90: @ 0x08019E90
	push {lr}
	add r2, r0, #0
	ldr r0, [r2, #56]
	ldr r1, _08019EC0  @ =0xFFFF5000
	add r0, r0, r1
	str r0, [r2, #56]
	mov r0, #58
	ldrsh r1, [r2, r0]
	mov r0, #88
	neg r0, r0
	cmp r1, r0
	bne _08019EB6
	mov r0, #11
	strb r0, [r2, #20]
	add r1, r2, #0
	add r1, r1, #112
	mov r0, #240
	lsl r0, r0, #1
	strh r0, [r1]
_08019EB6:
	add r0, r2, #0
	bl 0x08003828
	pop {r0}
	bx r0
_08019EC0:
	.4byte 0xFFFF5000
	THUMB_FUNC_END sub_08019E90

	THUMB_FUNC_START sub_08019EC4
sub_08019EC4: @ 0x08019EC4
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r1, r4, #0
	add r1, r1, #112
	ldrh r0, [r1]
	cmp r0, #0
	beq _08019EDC
	sub r0, r0, #1
	strh r0, [r1]
	b _08019EF8
_08019EDC:
	add r0, r4, #0
	add r0, r0, #126
	ldrb r1, [r0]
	cmp r1, #0
	bne _08019EF8
	mov r0, #12
	strb r0, [r4, #20]
	add r0, r4, #0
	add r0, r0, #125
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
_08019EF8:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08019EC4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08019F00
sub_08019F00: @ 0x08019F00
	push {lr}
	add r2, r0, #0
	ldr r0, [r2, #56]
	mov r1, #176
	lsl r1, r1, #8
	add r0, r0, r1
	str r0, [r2, #56]
	mov r0, #58
	ldrsh r1, [r2, r0]
	mov r0, #64
	neg r0, r0
	cmp r1, r0
	bne _08019F22
	mov r0, #13
	strb r0, [r2, #20]
	mov r0, #240
	strb r0, [r2, #23]
_08019F22:
	add r0, r2, #0
	bl 0x08003828
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08019F00

	THUMB_FUNC_START sub_08019F2C
sub_08019F2C: @ 0x08019F2C
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08019F90
	add r2, r4, #0
	add r2, r2, #118
	ldrb r1, [r2]
	mov r0, #15
	and r0, r0, r1
	cmp r0, #0
	bne _08019F68
	mov r0, #1
	orr r0, r0, r1
	strb r0, [r2]
	add r0, r4, #0
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #40
	bls _08019F76
	bl 0x0800099C
	mov r1, #7
	and r1, r1, r0
	cmp r1, #2
	bhi _08019F6E
	b _08019F82
_08019F68:
	mov r0, #240
	and r0, r0, r1
	strb r0, [r2]
_08019F6E:
	add r0, r4, #0
	bl sub_0801A210
	b _08019F90
_08019F76:
	bl 0x0800099C
	mov r1, #7
	and r1, r1, r0
	cmp r1, #4
	bhi _08019F8A
_08019F82:
	add r0, r4, #0
	bl sub_0801A1E0
	b _08019F90
_08019F8A:
	add r0, r4, #0
	bl sub_0801A210
_08019F90:
	add r0, r4, #0
	bl 0x08003828
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08019F2C

	THUMB_FUNC_START sub_08019F9C
sub_08019F9C: @ 0x08019F9C
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08019FC2
	mov r0, #15
	strb r0, [r4, #20]
	mov r0, #240
	strb r0, [r4, #23]
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
_08019FC2:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08019F9C

	THUMB_FUNC_START sub_08019FC8
sub_08019FC8: @ 0x08019FC8
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801A02C
	add r2, r4, #0
	add r2, r2, #118
	ldrb r1, [r2]
	mov r0, #15
	and r0, r0, r1
	cmp r0, #0
	bne _0801A004
	mov r0, #1
	orr r0, r0, r1
	strb r0, [r2]
	add r0, r4, #0
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #40
	bls _0801A012
	bl 0x0800099C
	mov r1, #7
	and r1, r1, r0
	cmp r1, #2
	bhi _0801A00A
	b _0801A01E
_0801A004:
	mov r0, #240
	and r0, r0, r1
	strb r0, [r2]
_0801A00A:
	add r0, r4, #0
	bl sub_0801A210
	b _0801A02C
_0801A012:
	bl 0x0800099C
	mov r1, #7
	and r1, r1, r0
	cmp r1, #4
	bhi _0801A026
_0801A01E:
	add r0, r4, #0
	bl sub_0801A1B8
	b _0801A02C
_0801A026:
	add r0, r4, #0
	bl sub_0801A210
_0801A02C:
	add r0, r4, #0
	bl 0x08003828
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08019FC8

	THUMB_FUNC_START sub_0801A038
sub_0801A038: @ 0x0801A038
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r1, r4, #0
	add r1, r1, #112
	ldrh r0, [r1]
	sub r0, r0, #1
	strh r0, [r1]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0801A084
	mov r3, #3
	mov r0, #3
	strb r0, [r4, #20]
	sub r1, r1, #66
	mov r0, #8
	strb r0, [r1]
	ldrb r2, [r4, #31]
	mov r1, #63
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #64
	orr r0, r0, r2
	strb r0, [r4, #31]
	ldrb r0, [r4, #29]
	and r1, r1, r0
	orr r1, r1, r2
	strb r1, [r4, #29]
	add r1, r4, #0
	add r1, r1, #94
	ldrb r0, [r1]
	orr r0, r0, r3
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #2
	bl 0x08003870
_0801A084:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801A038

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801A08C
sub_0801A08C: @ 0x0801A08C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r7, r0, #0
	ldr r6, _0801A0A4  @ =gUnknown_03006C80
	ldrb r0, [r6]
	cmp r0, #1
	bne _0801A0AC
	ldr r0, _0801A0A8  @ =gUnknown_03006A30
	ldr r0, [r0, #40]
	b _0801A0E0
	.byte 0x00
	.byte 0x00
_0801A0A4:
	.4byte gUnknown_03006C80
_0801A0A8:
	.4byte gUnknown_03006A30
_0801A0AC:
	cmp r0, #1
	blt _0801A0E2
	cmp r0, #4
	bgt _0801A0E2
	bl 0x0800099C
	ldr r5, _0801A110  @ =gUnknown_03006A30
	ldr r1, _0801A114  @ =gUnknown_08139B20
	mov r8, r1
	ldr r1, [r7, #100]
	ldrb r1, [r1, #10]
	lsl r4, r1, #1
	add r4, r4, r1
	ldrb r1, [r6]
	sub r1, r1, #1
	bl __umodsi3
	add r4, r4, r0
	add r4, r4, r8
	ldrb r1, [r4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r5, r5, #40
	add r0, r0, r5
	ldr r0, [r0]
_0801A0E0:
	str r0, [r7, #100]
_0801A0E2:
	ldr r1, [r7, #100]
	add r0, r7, #0
	bl sub_0803CECC
	add r1, r7, #0
	add r1, r1, #43
	strb r0, [r1]
	bl 0x0800099C
	ldr r2, _0801A118  @ =gUnknown_08139B1C
	mov r1, #3
	and r1, r1, r0
	add r1, r1, r2
	ldrb r1, [r1]
	add r0, r7, #0
	add r0, r0, #114
	strb r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801A110:
	.4byte gUnknown_03006A30
_0801A114:
	.4byte gUnknown_08139B20
_0801A118:
	.4byte gUnknown_08139B1C
	THUMB_FUNC_END sub_0801A08C

	THUMB_FUNC_START sub_0801A11C
sub_0801A11C: @ 0x0801A11C
	push {r4,r5,lr}
	add r3, r0, #0
	add r0, r0, #112
	ldrh r0, [r0]
	mov r5, #7
	and r5, r5, r0
	cmp r5, #0
	bne _0801A1AE
	add r2, r3, #0
	add r2, r2, #116
	mov r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, [r3, #12]
	add r1, r1, r0
	str r1, [r3, #12]
	add r0, r3, #0
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #40
	bls _0801A17C
	ldrh r4, [r2]
	mov r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, _0801A178  @ =0xFFFFFF00
	cmp r1, r0
	blt _0801A154
	sub r0, r4, #7
	strh r0, [r2]
_0801A154:
	ldr r0, [r3, #12]
	cmp r0, #0
	bgt _0801A1AE
	str r5, [r3, #12]
	mov r0, #63
	strh r0, [r2]
	add r1, r3, #0
	add r1, r1, #114
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801A1AE
	add r0, r3, #0
	bl sub_0801A08C
	b _0801A1AE
_0801A178:
	.4byte 0xFFFFFF00
_0801A17C:
	ldrh r4, [r2]
	mov r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, _0801A1B4  @ =0xFFFFFF00
	cmp r1, r0
	blt _0801A18C
	sub r0, r4, #7
	strh r0, [r2]
_0801A18C:
	ldr r0, [r3, #12]
	cmp r0, #0
	bgt _0801A1AE
	str r5, [r3, #12]
	mov r0, #63
	strh r0, [r2]
	add r1, r3, #0
	add r1, r1, #114
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801A1AE
	add r0, r3, #0
	bl sub_0801A08C
_0801A1AE:
	pop {r4,r5}
	pop {r0}
	bx r0
_0801A1B4:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_0801A11C

	THUMB_FUNC_START sub_0801A1B8
sub_0801A1B8: @ 0x0801A1B8
	push {lr}
	mov r1, #10
	strb r1, [r0, #20]
	add r2, r0, #0
	add r2, r2, #125
	mov r1, #1
	strb r1, [r2]
	add r3, r0, #0
	add r3, r3, #118
	ldrb r2, [r3]
	mov r1, #15
	and r1, r1, r2
	add r1, r1, #32
	strb r1, [r3]
	mov r1, #1
	bl 0x08003870
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801A1B8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801A1E0
sub_0801A1E0: @ 0x0801A1E0
	push {r4,lr}
	add r4, r0, #0
	mov r0, #14
	strb r0, [r4, #20]
	add r2, r4, #0
	add r2, r2, #118
	ldrb r1, [r2]
	mov r0, #15
	and r0, r0, r1
	add r0, r0, #48
	strb r0, [r2]
	mov r0, #10
	bl sub_08012494
	cmp r0, #0
	beq _0801A202
	str r4, [r0, #84]
_0801A202:
	add r0, r4, #0
	mov r1, #4
	bl 0x08003870
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801A1E0

	THUMB_FUNC_START sub_0801A210
sub_0801A210: @ 0x0801A210
	push {r4,lr}
	add r4, r0, #0
	mov r1, #0
	mov r0, #6
	strb r0, [r4, #20]
	mov r0, #4
	strb r0, [r4, #23]
	str r1, [r4, #12]
	add r2, r4, #0
	add r2, r2, #118
	ldrb r1, [r2]
	mov r0, #15
	and r0, r0, r1
	strb r0, [r2]
	bl 0x0800099C
	ldr r2, _0801A250  @ =gUnknown_08139B2C
	mov r1, #3
	and r1, r1, r0
	lsl r1, r1, #1
	add r1, r1, r2
	ldrh r1, [r1]
	add r0, r4, #0
	add r0, r0, #112
	strh r1, [r0]
	add r0, r4, #0
	bl sub_0801A08C
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801A250:
	.4byte gUnknown_08139B2C
	THUMB_FUNC_END sub_0801A210

	THUMB_FUNC_START sub_0801A254
sub_0801A254: @ 0x0801A254
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r5, r0, #0
	add r4, r5, #0
	add r4, r4, #127
	ldrb r1, [r4]
	mov r7, #128
	mov r0, #128
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	bne _0801A2F6
	mov r1, #192
	lsl r1, r1, #5
	add r0, r5, #0
	bl 0x08003594
	ldr r1, _0801A2AC  @ =gUnknown_08139B44
	add r0, r5, #0
	add r0, r0, #124
	ldrb r0, [r0]
	add r0, r0, r1
	mov r1, #0
	ldrsb r1, [r0, r1]
	mov r2, #58
	ldrsh r0, [r5, r2]
	cmp r1, r0
	ble _0801A292
	b _0801A3F8
_0801A292:
	cmp r0, #0
	beq _0801A2B0
	strh r1, [r5, #58]
	strh r6, [r5, #56]
	ldrb r0, [r4]
	orr r0, r0, r7
	strb r0, [r4]
	add r1, r5, #0
	add r1, r1, #119
	mov r0, #180
	strb r0, [r1]
	b _0801A3F8
	.byte 0x00
	.byte 0x00
_0801A2AC:
	.4byte gUnknown_08139B44
_0801A2B0:
	mov r0, #16
	strb r0, [r5, #20]
	add r1, r5, #0
	add r1, r1, #63
	mov r0, #26
	strb r0, [r1]
	add r1, r1, #49
	mov r2, #0
	mov r0, #240
	strh r0, [r1]
	strb r2, [r4]
	ldrb r2, [r5, #31]
	mov r1, #63
	add r0, r1, #0
	and r0, r0, r2
	orr r0, r0, r7
	strb r0, [r5, #31]
	ldrb r0, [r5, #29]
	and r1, r1, r0
	orr r1, r1, r7
	strb r1, [r5, #29]
	add r2, r5, #0
	add r2, r2, #94
	ldrb r1, [r2]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #2
	orr r0, r0, r1
	strb r0, [r2]
	add r0, r5, #0
	mov r1, #2
	bl 0x08003870
	b _0801A3F8
_0801A2F6:
	ldr r2, [r5, #56]
	ldr r0, _0801A330  @ =0xFFC00000
	cmp r2, r0
	bne _0801A338
	add r1, r5, #0
	add r1, r1, #119
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	bne _0801A3F8
	strb r0, [r4]
	mov r0, #1
	strb r0, [r5, #23]
	ldr r1, _0801A334  @ =gUnknown_08139B34
	add r0, r5, #0
	add r0, r0, #118
	ldrb r0, [r0]
	lsr r0, r0, #4
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r5, #0
	bl _call_via_r1
	b _0801A3F8
	.byte 0x00
	.byte 0x00
_0801A330:
	.4byte 0xFFC00000
_0801A334:
	.4byte gUnknown_08139B34
_0801A338:
	add r0, r5, #0
	add r0, r0, #119
	ldrb r1, [r0]
	add r3, r0, #0
	cmp r1, #0
	beq _0801A348
	sub r0, r1, #1
	b _0801A3F6
_0801A348:
	ldr r1, _0801A3A0  @ =0xFFFF8000
	add r0, r2, r1
	str r0, [r5, #56]
	mov r0, #56
	ldrsh r2, [r5, r0]
	mov r8, r2
	cmp r2, #0
	bne _0801A3F8
	mov r2, #58
	ldrsh r1, [r5, r2]
	mov r0, #33
	neg r0, r0
	ldrh r2, [r5, #58]
	cmp r1, r0
	bne _0801A3A4
	add r7, r5, #0
	add r7, r7, #124
	ldrb r6, [r7]
	cmp r6, #1
	bne _0801A3A4
	mov r0, #41
	bl sub_08012468
	add r4, r0, #0
	cmp r4, #0
	beq _0801A3F8
	ldr r0, [r5, #84]
	mov r1, r8
	strb r1, [r0, #11]
	strb r6, [r4, #10]
	strb r6, [r4, #11]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0803D3D0
	str r5, [r4, #84]
	ldr r0, [r5, #84]
	str r0, [r4, #88]
	str r4, [r5, #84]
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	b _0801A3F8
	.byte 0x00
	.byte 0x00
_0801A3A0:
	.4byte 0xFFFF8000
_0801A3A4:
	lsl r0, r2, #16
	asr r0, r0, #16
	mov r1, #49
	neg r1, r1
	cmp r0, r1
	bne _0801A3E8
	add r6, r5, #0
	add r6, r6, #124
	ldrb r0, [r6]
	cmp r0, #2
	bne _0801A3E8
	mov r0, #41
	bl sub_08012468
	add r4, r0, #0
	cmp r4, #0
	beq _0801A3F8
	ldr r1, [r5, #84]
	mov r0, #0
	strb r0, [r1, #11]
	mov r0, #1
	strb r0, [r4, #11]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0803D3D0
	str r5, [r4, #84]
	ldr r0, [r5, #84]
	str r0, [r4, #88]
	str r4, [r5, #84]
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	b _0801A3F8
_0801A3E8:
	lsl r0, r2, #16
	asr r0, r0, #16
	mov r1, #64
	neg r1, r1
	cmp r0, r1
	bne _0801A3F8
	mov r0, #90
_0801A3F6:
	strb r0, [r3]
_0801A3F8:
	add r0, r5, #0
	bl 0x08003828
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801A254

	THUMB_FUNC_START sub_0801A408
sub_0801A408: @ 0x0801A408
	push {lr}
	ldr r1, _0801A414  @ =gUnknown_08139D1C
	bl 0x08009924
	pop {r0}
	bx r0
_0801A414:
	.4byte gUnknown_08139D1C
	THUMB_FUNC_END sub_0801A408

	THUMB_FUNC_START sub_0801A418
sub_0801A418: @ 0x0801A418
	push {lr}
	ldr r2, _0801A42C  @ =gUnknown_08139D34
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0801A42C:
	.4byte gUnknown_08139D34
	THUMB_FUNC_END sub_0801A418

	THUMB_FUNC_START sub_0801A430
sub_0801A430: @ 0x0801A430
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #20]
	cmp r0, #1
	bne _0801A48A
	mov r0, #2
	strb r0, [r4, #20]
	ldr r3, [r4, #76]
	ldrb r0, [r3, #8]
	cmp r0, #1
	bne _0801A44A
	str r3, [r4, #100]
	b _0801A476
_0801A44A:
	ldr r1, _0801A468  @ =gUnknown_03006C80
	ldrb r0, [r3, #10]
	ldrb r1, [r1]
	cmp r0, r1
	bcs _0801A470
	ldr r2, _0801A46C  @ =gUnknown_03006A30
	add r1, r0, #0
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r2, r2, #40
	add r0, r0, r2
	ldr r0, [r0]
	b _0801A474
	.byte 0x00
	.byte 0x00
_0801A468:
	.4byte gUnknown_03006C80
_0801A46C:
	.4byte gUnknown_03006A30
_0801A470:
	bl sub_08044594
_0801A474:
	str r0, [r4, #100]
_0801A476:
	ldr r1, [r4, #76]
	add r0, r4, #0
	bl sub_0803CECC
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	mov r0, #48
	bl 0x08003DFC
_0801A48A:
	ldr r1, _0801A498  @ =gUnknown_08139D1C
	add r0, r4, #0
	bl 0x080098A0
	pop {r4}
	pop {r0}
	bx r0
_0801A498:
	.4byte gUnknown_08139D1C
	THUMB_FUNC_END sub_0801A430

	THUMB_FUNC_START sub_0801A49C
sub_0801A49C: @ 0x0801A49C
	push {r4,lr}
	add r4, r0, #0
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	add r1, r4, #0
	add r1, r1, #46
	mov r0, #2
	strb r0, [r1]
	ldr r0, _0801A4DC  @ =gUnknown_08139E58
	str r0, [r4, #72]
	add r0, r4, #0
	mov r1, #4
	bl 0x08003870
	mov r0, #1
	strb r0, [r4, #20]
	add r1, r4, #0
	add r1, r1, #42
	mov r0, #255
	strb r0, [r1]
	add r0, r4, #0
	bl sub_0801A70C
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801A4DC:
	.4byte gUnknown_08139E58
	THUMB_FUNC_END sub_0801A49C

	THUMB_FUNC_START sub_0801A4E0
sub_0801A4E0: @ 0x0801A4E0
	bx lr
	THUMB_FUNC_END sub_0801A4E0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801A4E4
sub_0801A4E4: @ 0x0801A4E4
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r3, r4, #0
	add r3, r3, #41
	ldrb r2, [r3]
	add r1, r2, #0
	cmp r1, #1
	bne _0801A520
	ldrb r0, [r4, #23]
	add r2, r0, #1
	strb r2, [r4, #23]
	and r1, r1, r2
	cmp r1, #0
	beq _0801A588
	ldr r1, _0801A51C  @ =gUnknown_08139D50
	mov r0, #6
	and r2, r2, r0
	lsr r0, r2, #1
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrh r1, [r4, #50]
	add r0, r0, r1
	strh r0, [r4, #50]
	b _0801A588
_0801A51C:
	.4byte gUnknown_08139D50
_0801A520:
	cmp r1, #2
	bne _0801A54C
	mov r0, #0
	strb r0, [r3]
	add r1, r4, #0
	add r1, r1, #92
	ldr r0, _0801A544  @ =0x000021FF
	strh r0, [r1]
	sub r1, r1, #29
	mov r0, #28
	strb r0, [r1]
	ldr r0, _0801A548  @ =gUnknown_08139E50
	str r0, [r4, #72]
	add r0, r4, #0
	bl sub_0801A754
	b _0801A588
	.byte 0x00
	.byte 0x00
_0801A544:
	.4byte 0x000021FF
_0801A548:
	.4byte gUnknown_08139E50
_0801A54C:
	mov r0, #128
	and r0, r0, r2
	cmp r0, #0
	beq _0801A588
	mov r0, #3
	strb r0, [r4, #20]
	mov r0, #16
	strb r0, [r4, #24]
	add r1, r4, #0
	add r1, r1, #124
	mov r0, #150
	lsl r0, r0, #2
	strh r0, [r1]
	ldr r1, [r4, #100]
	add r0, r4, #0
	bl 0x08009EA4
	add r0, r0, #4
	mov r1, #24
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	lsr r0, r0, #3
	sub r1, r1, #1
	strb r0, [r1]
	ldrb r1, [r1]
	add r0, r4, #0
	bl 0x08003870
_0801A588:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801A4E4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801A590
sub_0801A590: @ 0x0801A590
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	bl 0x0800963C
	ldrb r0, [r4, #24]
	sub r0, r0, #1
	strb r0, [r4, #24]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801A5CE
	mov r0, #16
	strb r0, [r4, #24]
	add r0, r4, #0
	bl sub_0801A868
	add r0, r4, #0
	add r0, r0, #43
	ldrb r0, [r0]
	lsr r1, r0, #3
	add r0, r4, #0
	add r0, r0, #42
	ldrb r2, [r0]
	cmp r1, r2
	beq _0801A5CE
	strb r1, [r0]
	add r0, r4, #0
	bl 0x08003870
_0801A5CE:
	add r1, r4, #0
	add r1, r1, #124
	ldrh r0, [r1]
	sub r0, r0, #1
	strh r0, [r1]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0801A5E2
	mov r0, #4
	strb r0, [r4, #20]
_0801A5E2:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801A590

	THUMB_FUNC_START sub_0801A5E8
sub_0801A5E8: @ 0x0801A5E8
	push {r4,r5,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	bl sub_0801A798
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801A604
	add r0, r4, #0
	bl sub_0801A7F0
	b _0801A63C
_0801A604:
	add r0, r4, #0
	bl 0x0800963C
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, #0
	bne _0801A63C
	add r0, r4, #0
	bl 0x080093A4
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #15
	bne _0801A628
	add r0, r4, #0
	add r0, r0, #69
	strb r5, [r0]
	b _0801A63C
_0801A628:
	add r2, r4, #0
	add r2, r2, #43
	ldrb r1, [r2]
	mov r0, #16
	eor r1, r1, r0
	strb r1, [r2]
	lsr r1, r1, #3
	add r0, r4, #0
	bl 0x08003870
_0801A63C:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801A5E8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801A644
sub_0801A644: @ 0x0801A644
	push {r4,r5,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	bl sub_0801A798
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801A660
	add r0, r4, #0
	bl sub_0801A850
	b _0801A698
_0801A660:
	add r0, r4, #0
	bl 0x0800963C
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, #0
	bne _0801A698
	add r0, r4, #0
	bl 0x080093A4
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #15
	bne _0801A684
	add r0, r4, #0
	add r0, r0, #69
	strb r5, [r0]
	b _0801A698
_0801A684:
	add r2, r4, #0
	add r2, r2, #43
	ldrb r1, [r2]
	mov r0, #16
	eor r1, r1, r0
	strb r1, [r2]
	lsr r1, r1, #3
	add r0, r4, #0
	bl 0x08003870
_0801A698:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801A644

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801A6A0
sub_0801A6A0: @ 0x0801A6A0
	push {r4-r6,lr}
	add r4, r0, #0
	bl 0x08003828
	add r5, r4, #0
	add r5, r5, #41
	ldrb r1, [r5]
	add r6, r1, #0
	cmp r6, #1
	bne _0801A6F2
	add r0, r4, #0
	bl 0x080093A4
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #15
	beq _0801A6E8
	mov r0, #0
	strb r0, [r5]
	add r1, r4, #0
	add r1, r1, #92
	ldr r0, _0801A6E0  @ =0x00002055
	strh r0, [r1]
	add r0, r4, #0
	add r0, r0, #63
	strb r6, [r0]
	ldr r0, _0801A6E4  @ =gUnknown_08139E58
	str r0, [r4, #72]
	add r0, r4, #0
	bl sub_0801A70C
	b _0801A706
_0801A6E0:
	.4byte 0x00002055
_0801A6E4:
	.4byte gUnknown_08139E58
_0801A6E8:
	add r1, r4, #0
	add r1, r1, #69
	mov r0, #0
	strb r0, [r1]
	b _0801A706
_0801A6F2:
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0801A706
	mov r0, #1
	strb r0, [r4, #20]
	add r0, r4, #0
	mov r1, #4
	bl 0x08003870
_0801A706:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801A6A0

	THUMB_FUNC_START sub_0801A70C
sub_0801A70C: @ 0x0801A70C
	push {r4,r5,lr}
	add r4, r0, #0
	add r0, r0, #80
	ldrh r0, [r0]
	bl sub_08015DC0
	mov r1, #50
	ldrsh r2, [r4, r1]
	ldr r3, _0801A74C  @ =gUnknown_03000450
	ldrh r1, [r3, #24]
	sub r2, r2, r1
	asr r2, r2, #4
	mov r5, #54
	ldrsh r1, [r4, r5]
	ldrh r3, [r3, #26]
	sub r1, r1, r3
	asr r1, r1, #4
	lsl r1, r1, #6
	orr r2, r2, r1
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r1, _0801A750  @ =0x00002004
	add r0, r0, r1
	add r0, r0, r2
	ldrb r1, [r0]
	add r4, r4, #122
	strb r1, [r4]
	mov r1, #15
	strb r1, [r0]
	pop {r4,r5}
	pop {r0}
	bx r0
_0801A74C:
	.4byte gUnknown_03000450
_0801A750:
	.4byte 0x00002004
	THUMB_FUNC_END sub_0801A70C

	THUMB_FUNC_START sub_0801A754
sub_0801A754: @ 0x0801A754
	push {r4,r5,lr}
	add r4, r0, #0
	add r0, r0, #80
	ldrh r0, [r0]
	bl sub_08015DC0
	mov r1, #50
	ldrsh r2, [r4, r1]
	ldr r3, _0801A790  @ =gUnknown_03000450
	ldrh r1, [r3, #24]
	sub r2, r2, r1
	asr r2, r2, #4
	mov r5, #54
	ldrsh r1, [r4, r5]
	ldrh r3, [r3, #26]
	sub r1, r1, r3
	asr r1, r1, #4
	lsl r1, r1, #6
	orr r2, r2, r1
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r1, _0801A794  @ =0x00002004
	add r0, r0, r1
	add r0, r0, r2
	add r4, r4, #122
	ldrb r1, [r4]
	strb r1, [r0]
	pop {r4,r5}
	pop {r0}
	bx r0
_0801A790:
	.4byte gUnknown_03000450
_0801A794:
	.4byte 0x00002004
	THUMB_FUNC_END sub_0801A754

	THUMB_FUNC_START sub_0801A798
sub_0801A798: @ 0x0801A798
	push {r4,lr}
	add r3, r0, #0
	add r0, r0, #43
	ldrb r1, [r0]
	mov r0, #8
	and r0, r0, r1
	mov r1, #54
	add r1, r1, r3
	mov r12, r1
	cmp r0, #0
	beq _0801A7B4
	mov r0, #50
	add r0, r0, r3
	mov r12, r0
_0801A7B4:
	mov r1, r12
	ldrh r4, [r1]
	mov r2, #15
	and r2, r2, r4
	ldr r1, [r3, #12]
	mov r0, #128
	lsl r0, r0, #1
	cmp r1, r0
	bgt _0801A7CE
	cmp r2, #8
	bne _0801A7E8
	mov r0, #1
	b _0801A7EA
_0801A7CE:
	sub r0, r2, #7
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #2
	bhi _0801A7E8
	mov r0, #252
	lsl r0, r0, #2
	and r0, r0, r4
	add r0, r0, #8
	mov r1, r12
	strh r0, [r1]
	mov r0, #1
	b _0801A7EA
_0801A7E8:
	mov r0, #0
_0801A7EA:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0801A798

	THUMB_FUNC_START sub_0801A7F0
sub_0801A7F0: @ 0x0801A7F0
	push {r4,lr}
	add r2, r0, #0
	add r3, r2, #0
	add r3, r3, #43
	ldrb r1, [r3]
	mov r4, #8
	add r0, r4, #0
	and r0, r0, r1
	cmp r0, #0
	beq _0801A81A
	ldrh r0, [r2, #54]
	mov r1, #15
	and r1, r1, r0
	cmp r1, #8
	beq _0801A824
	cmp r1, #7
	bhi _0801A816
	mov r0, #16
	b _0801A836
_0801A816:
	mov r0, #0
	b _0801A836
_0801A81A:
	ldrh r0, [r2, #50]
	mov r1, #15
	and r1, r1, r0
	cmp r1, #8
	bne _0801A82C
_0801A824:
	add r0, r2, #0
	bl sub_0801A850
	b _0801A84A
_0801A82C:
	cmp r1, #7
	bhi _0801A834
	strb r4, [r3]
	b _0801A838
_0801A834:
	mov r0, #24
_0801A836:
	strb r0, [r3]
_0801A838:
	mov r0, #4
	strb r0, [r2, #20]
	add r0, r2, #0
	add r0, r0, #43
	ldrb r1, [r0]
	lsr r1, r1, #3
	add r0, r2, #0
	bl 0x08003870
_0801A84A:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801A7F0

	THUMB_FUNC_START sub_0801A850
sub_0801A850: @ 0x0801A850
	push {lr}
	mov r1, #6
	strb r1, [r0, #20]
	mov r1, #5
	bl 0x08003870
	mov r0, #48
	bl 0x08003DFC
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801A850

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801A868
sub_0801A868: @ 0x0801A868
	push {r4,lr}
	add r4, r0, #0
	ldr r1, [r4, #100]
	bl 0x08009EA4
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r1, _0801A8B4  @ =gUnknown_08139D54
	add r3, r4, #0
	add r3, r3, #43
	ldrb r0, [r3]
	lsr r0, r0, #3
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r1, [r0]
	ldrh r0, [r4, #44]
	and r0, r0, r1
	cmp r0, #0
	beq _0801A8F4
	add r1, r2, #4
	mov r0, #24
	and r1, r1, r0
	ldrb r3, [r3]
	cmp r1, r3
	bne _0801A8F4
	mov r0, #8
	and r1, r1, r0
	cmp r1, #0
	beq _0801A8CE
	ldr r0, [r4, #100]
	mov r2, #54
	ldrsh r1, [r0, r2]
	mov r2, #54
	ldrsh r0, [r4, r2]
	cmp r1, r0
	ble _0801A8B8
	mov r2, #16
	b _0801A8F4
_0801A8B4:
	.4byte gUnknown_08139D54
_0801A8B8:
	cmp r1, r0
	bge _0801A8C0
	mov r2, #0
	b _0801A8F4
_0801A8C0:
	bl 0x0800099C
	mov r1, #16
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r2, r0, #24
	b _0801A8F4
_0801A8CE:
	ldr r0, [r4, #100]
	mov r2, #50
	ldrsh r1, [r0, r2]
	mov r2, #50
	ldrsh r0, [r4, r2]
	cmp r1, r0
	ble _0801A8E0
	mov r2, #8
	b _0801A8F4
_0801A8E0:
	cmp r1, r0
	bge _0801A8E8
	mov r2, #24
	b _0801A8F4
_0801A8E8:
	bl 0x0800099C
	mov r1, #16
	and r0, r0, r1
	add r0, r0, #8
	add r2, r0, #0
_0801A8F4:
	add r0, r2, #4
	mov r1, #24
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801A868

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801A908
sub_0801A908: @ 0x0801A908
	push {lr}
	ldr r1, _0801A914  @ =gUnknown_08139E60
	bl 0x08009924
	pop {r0}
	bx r0
_0801A914:
	.4byte gUnknown_08139E60
	THUMB_FUNC_END sub_0801A908

	THUMB_FUNC_START sub_0801A918
sub_0801A918: @ 0x0801A918
	push {lr}
	ldr r2, _0801A92C  @ =gUnknown_08139E78
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0801A92C:
	.4byte gUnknown_08139E78
	THUMB_FUNC_END sub_0801A918

	THUMB_FUNC_START sub_0801A930
sub_0801A930: @ 0x0801A930
	push {lr}
	ldr r1, _0801A93C  @ =gUnknown_08139E60
	bl 0x080098A0
	pop {r0}
	bx r0
_0801A93C:
	.4byte gUnknown_08139E60
	THUMB_FUNC_END sub_0801A930

	THUMB_FUNC_START sub_0801A940
sub_0801A940: @ 0x0801A940
	push {lr}
	ldrb r2, [r0, #28]
	mov r1, #4
	neg r1, r1
	and r1, r1, r2
	mov r2, #1
	orr r1, r1, r2
	strb r1, [r0, #28]
	add r2, r0, #0
	add r2, r2, #46
	mov r1, #2
	strb r1, [r2]
	ldr r1, _0801A964  @ =gUnknown_08139EEC
	str r1, [r0, #72]
	bl sub_0801AA60
	pop {r0}
	bx r0
_0801A964:
	.4byte gUnknown_08139EEC
	THUMB_FUNC_END sub_0801A940

	THUMB_FUNC_START sub_0801A968
sub_0801A968: @ 0x0801A968
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801A988
	mov r0, #2
	strb r0, [r4, #20]
	add r0, r4, #0
	mov r1, #1
	bl 0x08003870
_0801A988:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801A968

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801A990
sub_0801A990: @ 0x0801A990
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0801A9B2
	mov r0, #3
	strb r0, [r4, #20]
	add r0, r4, #0
	mov r1, #2
	bl 0x08003870
_0801A9B2:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801A990

	THUMB_FUNC_START sub_0801A9B8
sub_0801A9B8: @ 0x0801A9B8
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0801A9F8
	mov r0, #4
	strb r0, [r4, #20]
	mov r0, #176
	lsl r0, r0, #9
	str r0, [r4, #16]
	bl sub_08044594
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0803CECC
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #3
	bl 0x08003870
	mov r0, #49
	bl 0x08003DFC
_0801A9F8:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801A9B8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801AA00
sub_0801AA00: @ 0x0801AA00
	push {r4,lr}
	add r4, r0, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _0801AA16
	add r0, r4, #0
	bl 0x08003828
_0801AA16:
	add r0, r4, #0
	bl 0x0800963C
	mov r1, #144
	lsl r1, r1, #5
	add r0, r4, #0
	bl 0x08003594
	cmp r0, #0
	bne _0801AA36
	mov r0, #5
	strb r0, [r4, #20]
	add r0, r4, #0
	mov r1, #4
	bl 0x08003870
_0801AA36:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801AA00

	THUMB_FUNC_START sub_0801AA3C
sub_0801AA3C: @ 0x0801AA3C
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0801AA58
	add r0, r4, #0
	bl sub_0801AA60
_0801AA58:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801AA3C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801AA60
sub_0801AA60: @ 0x0801AA60
	push {r4,lr}
	add r4, r0, #0
	mov r0, #1
	strb r0, [r4, #20]
	bl 0x0800099C
	ldr r2, _0801AA88  @ =gUnknown_08139E90
	mov r1, #3
	and r1, r1, r0
	add r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #23]
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801AA88:
	.4byte gUnknown_08139E90
	THUMB_FUNC_END sub_0801AA60

	THUMB_FUNC_START sub_0801AA8C
sub_0801AA8C: @ 0x0801AA8C
	push {lr}
	ldr r1, _0801AA98  @ =gUnknown_08139EF4
	bl 0x08009924
	pop {r0}
	bx r0
_0801AA98:
	.4byte gUnknown_08139EF4
	THUMB_FUNC_END sub_0801AA8C

	THUMB_FUNC_START sub_0801AA9C
sub_0801AA9C: @ 0x0801AA9C
	push {lr}
	ldr r2, _0801AAB0  @ =gUnknown_08139F0C
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0801AAB0:
	.4byte gUnknown_08139F0C
	THUMB_FUNC_END sub_0801AA9C

	THUMB_FUNC_START sub_0801AAB4
sub_0801AAB4: @ 0x0801AAB4
	push {r4,lr}
	add r4, r0, #0
	add r0, r0, #65
	ldrb r0, [r0]
	cmp r0, #149
	bne _0801AB40
	ldr r2, [r4, #76]
	add r0, r2, #0
	add r0, r0, #43
	ldrb r0, [r0]
	add r0, r0, #4
	mov r1, #24
	and r0, r0, r1
	mov r1, #16
	eor r0, r0, r1
	asr r1, r0, #3
	add r0, r4, #0
	add r0, r0, #42
	ldrb r0, [r0]
	cmp r1, r0
	bne _0801AB40
	mov r0, #1
	and r1, r1, r0
	cmp r1, #0
	beq _0801AB1A
	mov r1, #54
	ldrsh r0, [r2, r1]
	mov r3, #58
	ldrsh r1, [r2, r3]
	add r0, r0, r1
	mov r2, #54
	ldrsh r1, [r4, r2]
	sub r0, r0, r1
	mov r3, #58
	ldrsh r1, [r4, r3]
	sub r0, r0, r1
	add r0, r0, #8
	cmp r0, #16
	bhi _0801AB40
	add r1, r4, #0
	add r1, r1, #69
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	sub r1, r1, #8
	mov r0, #15
	strb r0, [r1]
	mov r0, #4
	bl 0x08003DFC
	b _0801AB40
_0801AB1A:
	mov r1, #50
	ldrsh r0, [r2, r1]
	mov r2, #50
	ldrsh r1, [r4, r2]
	sub r0, r0, r1
	add r0, r0, #8
	cmp r0, #16
	bhi _0801AB40
	add r1, r4, #0
	add r1, r1, #69
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	sub r1, r1, #8
	mov r0, #15
	strb r0, [r1]
	mov r0, #4
	bl 0x08003DFC
_0801AB40:
	ldr r1, _0801AB50  @ =gUnknown_08139EF4
	add r0, r4, #0
	bl 0x080098A0
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801AB50:
	.4byte gUnknown_08139EF4
	THUMB_FUNC_END sub_0801AAB4

	THUMB_FUNC_START sub_0801AB54
sub_0801AB54: @ 0x0801AB54
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r7, r0, #0
	mov r0, #1
	strb r0, [r7, #20]
	add r1, r7, #0
	add r1, r1, #46
	mov r0, #14
	strb r0, [r1]
	ldr r0, _0801AC3C  @ =gUnknown_0813A09C
	str r0, [r7, #72]
	ldrb r0, [r7, #10]
	bl sub_08013D20
	str r0, [r7, #112]
	ldrh r0, [r7, #50]
	mov r3, #252
	lsl r3, r3, #4
	add r1, r3, #0
	and r1, r1, r0
	lsr r1, r1, #2
	ldr r4, _0801AC40  @ =gUnknown_03000450
	ldrh r5, [r4, #24]
	ldr r6, _0801AC44  @ =gUnknown_0201EFF8
	mov r0, #82
	add r0, r0, r7
	mov r12, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r6
	add r1, r5, r1
	ldrh r0, [r0]
	add r1, r1, r0
	add r0, r7, #0
	add r0, r0, #120
	strh r1, [r0]
	ldrh r1, [r7, #50]
	mov r2, #63
	add r0, r2, #0
	and r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, #32
	add r1, r7, #0
	add r1, r1, #124
	strh r0, [r1]
	ldrh r0, [r7, #54]
	and r3, r3, r0
	lsr r3, r3, #2
	ldrh r4, [r4, #26]
	mov r1, r12
	ldrb r0, [r1]
	lsl r0, r0, #2
	add r1, r6, #2
	mov r8, r1
	add r0, r0, r8
	add r3, r4, r3
	ldrh r0, [r0]
	add r3, r3, r0
	add r0, r7, #0
	add r0, r0, #122
	strh r3, [r0]
	ldrh r0, [r7, #54]
	and r2, r2, r0
	lsl r2, r2, #4
	add r2, r2, #32
	add r0, r7, #0
	add r0, r0, #126
	strh r2, [r0]
	ldrb r1, [r7, #11]
	lsl r1, r1, #4
	mov r2, r12
	ldrb r0, [r2]
	lsl r0, r0, #2
	add r0, r0, r6
	add r5, r5, r1
	ldrh r0, [r0]
	add r5, r5, r0
	strh r5, [r7, #50]
	add r0, r7, #0
	add r0, r0, #116
	strh r5, [r0]
	ldrb r1, [r7, #23]
	lsl r1, r1, #4
	ldrb r0, [r2]
	lsl r0, r0, #2
	add r0, r0, r8
	add r4, r4, r1
	ldrh r0, [r0]
	add r4, r4, r0
	strh r4, [r7, #54]
	add r0, r7, #0
	add r0, r0, #118
	strh r4, [r0]
	add r0, r7, #0
	bl 0x08008D90
	ldr r1, _0801AC48  @ =gUnknown_08427658
	ldr r0, _0801AC4C  @ =gUnknown_03006C80
	ldrb r0, [r0, #1]
	add r0, r0, r1
	ldrb r0, [r0]
	bl sub_0802C2DC
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #15
	and r1, r1, r0
	lsl r0, r0, #4
	orr r0, r0, r1
	strb r0, [r7, #30]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_0801AC3C:
	.4byte gUnknown_0813A09C
_0801AC40:
	.4byte gUnknown_03000450
_0801AC44:
	.4byte gUnknown_0201EFF8
_0801AC48:
	.4byte gUnknown_08427658
_0801AC4C:
	.4byte gUnknown_03006C80
	THUMB_FUNC_END sub_0801AB54

	THUMB_FUNC_START sub_0801AC50
sub_0801AC50: @ 0x0801AC50
	add r2, r0, #0
	ldr r1, _0801AC6C  @ =gUnknown_0201F000
	add r0, r0, #82
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r2, #112]
	and r0, r0, r1
	cmp r0, r1
	bne _0801AC6A
	mov r0, #2
	strb r0, [r2, #20]
_0801AC6A:
	bx lr
_0801AC6C:
	.4byte gUnknown_0201F000
	THUMB_FUNC_END sub_0801AC50

	THUMB_FUNC_START sub_0801AC70
sub_0801AC70: @ 0x0801AC70
	push {r4-r7,lr}
	add r4, r0, #0
	ldr r2, _0801ACE0  @ =gUnknown_03006A30
	ldr r7, _0801ACE4  @ =gUnknown_03000E20
	ldrh r0, [r7]
	mov r6, #3
	add r1, r6, #0
	and r1, r1, r0
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r5, r2, #0
	add r5, r5, #40
	add r0, r0, r5
	ldr r1, [r0]
	add r0, r4, #0
	bl sub_0801B1A0
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801ACD8
	mov r0, #3
	strb r0, [r4, #20]
	ldrh r0, [r7]
	add r1, r6, #0
	and r1, r1, r0
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r5
	ldr r1, [r0]
	str r1, [r4, #88]
	add r0, r4, #0
	bl sub_0803CECC
	add r0, r0, #4
	mov r1, #24
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	add r0, r4, #0
	mov r1, #10
	bl 0x08003870
_0801ACD8:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801ACE0:
	.4byte gUnknown_03006A30
_0801ACE4:
	.4byte gUnknown_03000E20
	THUMB_FUNC_END sub_0801AC70

	THUMB_FUNC_START sub_0801ACE8
sub_0801ACE8: @ 0x0801ACE8
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0801AD34
	mov r3, #0
	mov r0, #4
	strb r0, [r4, #20]
	add r2, r4, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r2]
	add r0, r4, #0
	add r0, r0, #113
	strb r3, [r0]
	sub r0, r0, #1
	strb r3, [r0]
	add r0, r0, #2
	strb r3, [r0]
	add r1, r4, #0
	add r1, r1, #42
	mov r0, #2
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #2
	bl 0x08003870
	add r0, r4, #0
	bl sub_0801B4F4
_0801AD34:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801ACE8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801AD3C
sub_0801AD3C: @ 0x0801AD3C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r5, #7
	and r5, r5, r1
	cmp r5, #1
	beq _0801AD84
	cmp r5, #2
	beq _0801AE3C
	mov r5, #128
	add r0, r5, #0
	and r0, r0, r1
	cmp r0, #0
	bne _0801AD66
	b _0801AE96
_0801AD66:
	add r0, r4, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r0, r4, #0
	bl 0x08003870
	add r0, r4, #0
	add r0, r0, #113
	ldrb r1, [r0]
	add r0, r5, #0
	and r0, r0, r1
	cmp r0, #0
	bne _0801AD82
	b _0801AE96
_0801AD82:
	b _0801AE82
_0801AD84:
	mov r1, #0
	mov r8, r1
	mov r2, r8
	strb r2, [r0]
	mov r0, #140
	lsl r0, r0, #9
	str r0, [r4, #16]
	add r0, r4, #0
	bl sub_0801B200
	add r2, r4, #0
	add r2, r2, #43
	ldrb r0, [r2]
	add r0, r0, #4
	mov r1, #24
	and r0, r0, r1
	asr r0, r0, #3
	add r1, r4, #0
	add r1, r1, #42
	add r6, r1, #0
	add r7, r2, #0
	ldrb r3, [r6]
	cmp r0, r3
	bne _0801ADBC
	add r0, r4, #0
	add r0, r0, #112
	strb r5, [r0]
	b _0801AE24
_0801ADBC:
	add r0, r4, #0
	add r0, r0, #112
	mov r5, r8
	strb r5, [r0]
	ldrb r0, [r6]
	lsl r0, r0, #3
	ldrb r1, [r7]
	sub r1, r1, r0
	mov r0, #31
	and r1, r1, r0
	cmp r1, #16
	bne _0801AE10
	add r0, r4, #0
	add r0, r0, #113
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801ADFC
	mov r1, #50
	ldrsh r0, [r4, r1]
	mov r2, #54
	ldrsh r1, [r4, r2]
	add r2, r4, #0
	add r2, r2, #116
	mov r3, #0
	ldrsh r2, [r2, r3]
	add r3, r4, #0
	add r3, r3, #118
	mov r5, #0
	ldrsh r3, [r3, r5]
	bl 0x08003F54
	b _0801AE04
_0801ADFC:
	ldr r1, [r4, #88]
	add r0, r4, #0
	bl 0x08009EA4
_0801AE04:
	lsl r0, r0, #24
	lsr r1, r0, #24
	ldrb r0, [r7]
	sub r1, r0, r1
	mov r0, #31
	and r1, r1, r0
_0801AE10:
	cmp r1, #16
	bls _0801AE1A
	ldrb r0, [r6]
	sub r0, r0, #1
	b _0801AE1E
_0801AE1A:
	ldrb r0, [r6]
	add r0, r0, #1
_0801AE1E:
	mov r1, #3
	and r0, r0, r1
	strb r0, [r6]
_0801AE24:
	ldrb r0, [r7]
	add r0, r0, #4
	mov r1, #24
	and r0, r0, r1
	mov r1, #0
	strb r0, [r7]
	strh r1, [r4, #48]
	strh r1, [r4, #52]
	mov r0, #93
	bl 0x08003DFC
	b _0801AE96
_0801AE3C:
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0801AE56
	add r0, r4, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r1, r1, #4
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x08003870
_0801AE56:
	add r0, r4, #0
	add r0, r0, #112
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801AE66
	add r0, r4, #0
	bl sub_0801B0BC
_0801AE66:
	mov r1, #224
	lsl r1, r1, #5
	add r0, r4, #0
	bl 0x08003594
	cmp r0, #0
	bne _0801AE96
	add r0, r4, #0
	bl sub_0801B024
	mov r0, #94
	bl 0x08003DFC
	b _0801AE96
_0801AE82:
	mov r1, #0
	mov r0, #5
	strb r0, [r4, #20]
	add r2, r4, #0
	add r2, r2, #43
	mov r0, #16
	strb r0, [r2]
	add r0, r4, #0
	add r0, r0, #112
	strb r1, [r0]
_0801AE96:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801AD3C

	THUMB_FUNC_START sub_0801AEA0
sub_0801AEA0: @ 0x0801AEA0
	push {r4-r6,lr}
	add r4, r0, #0
	bl 0x08003828
	ldr r2, _0801AEF4  @ =gUnknown_03006A30
	ldr r0, _0801AEF8  @ =gUnknown_03000E20
	ldrh r0, [r0]
	mov r1, #3
	and r1, r1, r0
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r2, r2, #40
	add r0, r0, r2
	ldr r2, [r0]
	mov r0, #50
	ldrsh r1, [r2, r0]
	add r0, r4, #0
	add r0, r0, #120
	ldrh r0, [r0]
	sub r1, r1, r0
	add r0, r4, #0
	add r0, r0, #124
	ldrh r0, [r0]
	cmp r1, r0
	bhi _0801AEFC
	mov r0, #54
	ldrsh r1, [r2, r0]
	add r0, r4, #0
	add r0, r0, #122
	ldrh r0, [r0]
	sub r1, r1, r0
	add r0, r4, #0
	add r0, r0, #126
	ldrh r0, [r0]
	cmp r1, r0
	bhi _0801AEFC
	str r2, [r4, #88]
	add r1, r4, #0
	add r1, r1, #113
	mov r0, #255
	b _0801AF02
_0801AEF4:
	.4byte gUnknown_03006A30
_0801AEF8:
	.4byte gUnknown_03000E20
_0801AEFC:
	add r1, r4, #0
	add r1, r1, #113
	mov r0, #0
_0801AF02:
	strb r0, [r1]
	add r6, r1, #0
	add r2, r4, #0
	add r2, r2, #41
	ldrb r1, [r2]
	mov r0, #7
	and r0, r0, r1
	cmp r0, #1
	beq _0801AF36
	cmp r0, #2
	beq _0801AF78
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0801AFF4
	add r5, r4, #0
	add r5, r5, #42
	ldrb r1, [r5]
	add r0, r4, #0
	bl 0x08003870
	add r2, r6, #0
	ldrb r0, [r2]
	cmp r0, #255
	bne _0801AFC2
	b _0801AFAE
_0801AF36:
	mov r0, #0
	strb r0, [r2]
	mov r0, #140
	lsl r0, r0, #9
	str r0, [r4, #16]
	add r0, r4, #0
	add r0, r0, #43
	ldrb r5, [r0]
	add r0, r5, #4
	mov r1, #24
	and r0, r0, r1
	asr r0, r0, #3
	add r2, r4, #0
	add r2, r2, #42
	ldrb r3, [r2]
	cmp r0, r3
	beq _0801AF70
	lsl r0, r3, #3
	sub r0, r5, r0
	mov r1, #31
	and r0, r0, r1
	cmp r0, #16
	ble _0801AF68
	sub r0, r3, #1
	b _0801AF6A
_0801AF68:
	add r0, r3, #1
_0801AF6A:
	mov r1, #3
	and r0, r0, r1
	strb r0, [r2]
_0801AF70:
	mov r0, #93
	bl 0x08003DFC
	b _0801AFF4
_0801AF78:
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0801AF92
	add r0, r4, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r1, r1, #4
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x08003870
_0801AF92:
	mov r1, #224
	lsl r1, r1, #5
	add r0, r4, #0
	bl 0x08003594
	cmp r0, #0
	bne _0801AFF4
	add r0, r4, #0
	bl sub_0801B024
	mov r0, #94
	bl 0x08003DFC
	b _0801AFF4
_0801AFAE:
	mov r1, #0
	mov r0, #4
	strb r0, [r4, #20]
	strb r1, [r2]
	add r0, r4, #0
	add r0, r0, #112
	strb r1, [r0]
	add r0, r0, #2
	strb r1, [r0]
	b _0801AFF4
_0801AFC2:
	add r0, r4, #0
	add r0, r0, #43
	ldrb r0, [r0]
	add r0, r0, #4
	mov r1, #24
	and r0, r0, r1
	asr r0, r0, #3
	ldrb r5, [r5]
	cmp r0, r5
	bne _0801AFF4
	mov r0, #6
	strb r0, [r4, #20]
	add r2, r4, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #127
	and r0, r0, r1
	strb r0, [r2]
	add r0, r4, #0
	mov r1, #14
	bl 0x08003870
	add r0, r4, #0
	bl sub_0801B5A8
_0801AFF4:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801AEA0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801AFFC
sub_0801AFFC: @ 0x0801AFFC
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0801B01E
	mov r0, #2
	strb r0, [r4, #20]
	ldrb r1, [r4, #28]
	sub r0, r0, #6
	and r0, r0, r1
	strb r0, [r4, #28]
_0801B01E:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801AFFC

	THUMB_FUNC_START sub_0801B024
sub_0801B024: @ 0x0801B024
	push {r4,r5,lr}
	add r5, r0, #0
	mov r0, #15
	mov r1, #2
	mov r2, #0
	bl sub_0804C8A8
	add r4, r0, #0
	cmp r4, #0
	beq _0801B06C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0803D3D0
	ldr r1, _0801B0B8  @ =gUnknown_08139F28
	add r2, r5, #0
	add r2, r2, #42
	ldrb r0, [r2]
	lsl r0, r0, #2
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrh r3, [r4, #50]
	add r0, r0, r3
	strh r0, [r4, #50]
	ldrb r0, [r2]
	lsl r0, r0, #2
	add r0, r0, #1
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrh r1, [r4, #54]
	add r0, r0, r1
	strh r0, [r4, #54]
_0801B06C:
	mov r0, #15
	mov r1, #2
	mov r2, #0
	bl sub_0804C8A8
	add r4, r0, #0
	cmp r4, #0
	beq _0801B0B2
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0803D3D0
	ldr r2, _0801B0B8  @ =gUnknown_08139F28
	add r1, r5, #0
	add r1, r1, #42
	ldrb r0, [r1]
	lsl r0, r0, #2
	add r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrh r3, [r4, #50]
	add r0, r0, r3
	strh r0, [r4, #50]
	ldrb r0, [r1]
	lsl r0, r0, #2
	add r0, r0, #3
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrh r1, [r4, #54]
	add r0, r0, r1
	strh r0, [r4, #54]
_0801B0B2:
	pop {r4,r5}
	pop {r0}
	bx r0
_0801B0B8:
	.4byte gUnknown_08139F28
	THUMB_FUNC_END sub_0801B024

	THUMB_FUNC_START sub_0801B0BC
sub_0801B0BC: @ 0x0801B0BC
	push {r4-r6,lr}
	add r5, r0, #0
	ldr r4, _0801B190  @ =gUnknown_08139F38
	add r6, r5, #0
	add r6, r6, #42
	ldrb r0, [r6]
	lsl r0, r0, #2
	add r1, r0, r4
	mov r2, #0
	ldrsb r2, [r1, r2]
	ldrh r1, [r5, #50]
	add r2, r2, r1
	lsl r2, r2, #16
	lsr r2, r2, #16
	add r0, r0, #1
	add r0, r0, r4
	mov r3, #0
	ldrsb r3, [r0, r3]
	ldrh r0, [r5, #54]
	add r3, r3, r0
	lsl r3, r3, #16
	lsr r3, r3, #16
	add r0, r5, #0
	mov r1, #9
	bl 0x080017EC
	ldrb r1, [r6]
	lsl r1, r1, #2
	add r0, r1, #2
	add r0, r0, r4
	mov r2, #0
	ldrsb r2, [r0, r2]
	ldrh r0, [r5, #50]
	add r2, r2, r0
	lsl r2, r2, #16
	lsr r2, r2, #16
	add r1, r1, #3
	add r1, r1, r4
	mov r3, #0
	ldrsb r3, [r1, r3]
	ldrh r1, [r5, #54]
	add r3, r3, r1
	lsl r3, r3, #16
	lsr r3, r3, #16
	add r0, r5, #0
	mov r1, #9
	bl 0x080017EC
	add r2, r5, #0
	add r2, r2, #113
	ldrb r0, [r2]
	cmp r0, #0
	beq _0801B194
	mov r3, #0
	mov r1, #50
	ldrsh r0, [r5, r1]
	add r1, r5, #0
	add r1, r1, #116
	ldrh r1, [r1]
	sub r0, r0, r1
	add r0, r0, #2
	cmp r0, #4
	bhi _0801B13E
	strh r1, [r5, #50]
	mov r3, #128
_0801B13E:
	mov r1, #54
	ldrsh r0, [r5, r1]
	add r1, r5, #0
	add r1, r1, #118
	ldrh r1, [r1]
	sub r0, r0, r1
	add r0, r0, #2
	cmp r0, #4
	bhi _0801B158
	strh r1, [r5, #54]
	ldrb r0, [r2]
	orr r3, r3, r0
	strb r3, [r2]
_0801B158:
	ldrb r1, [r2]
	mov r4, #128
	add r0, r4, #0
	and r0, r0, r1
	cmp r0, #0
	bne _0801B19A
	add r0, r5, #0
	bl 0x0800963C
	lsl r0, r0, #16
	cmp r0, #0
	bne _0801B19A
	add r2, r5, #0
	add r2, r2, #114
	ldrb r1, [r2]
	add r0, r4, #0
	and r0, r0, r1
	cmp r0, #0
	beq _0801B184
	mov r0, #2
	orr r0, r0, r1
	strb r0, [r2]
_0801B184:
	ldrb r1, [r2]
	mov r0, #1
	orr r0, r0, r1
	strb r0, [r2]
	b _0801B19A
	.byte 0x00
	.byte 0x00
_0801B190:
	.4byte gUnknown_08139F38
_0801B194:
	add r0, r5, #0
	bl 0x0800963C
_0801B19A:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801B0BC

	THUMB_FUNC_START sub_0801B1A0
sub_0801B1A0: @ 0x0801B1A0
	add r3, r0, #0
	add r2, r1, #0
	cmp r2, #0
	beq _0801B1FC
	ldr r1, _0801B1F8  @ =gUnknown_03000940
	ldrb r0, [r2, #10]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r1, [r0]
	mov r0, #128
	lsl r0, r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _0801B1FC
	add r0, r2, #0
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801B1FC
	mov r0, #50
	ldrsh r1, [r2, r0]
	add r0, r3, #0
	add r0, r0, #120
	ldrh r0, [r0]
	sub r1, r1, r0
	add r0, r3, #0
	add r0, r0, #124
	ldrh r0, [r0]
	cmp r1, r0
	bhi _0801B1FC
	mov r1, #54
	ldrsh r0, [r2, r1]
	add r1, r3, #0
	add r1, r1, #122
	ldrh r1, [r1]
	sub r0, r0, r1
	add r1, r3, #0
	add r1, r1, #126
	ldrh r1, [r1]
	cmp r0, r1
	bhi _0801B1FC
	mov r0, #1
	b _0801B1FE
	.byte 0x00
	.byte 0x00
_0801B1F8:
	.4byte gUnknown_03000940
_0801B1FC:
	mov r0, #0
_0801B1FE:
	bx lr
	THUMB_FUNC_END sub_0801B1A0

	THUMB_FUNC_START sub_0801B200
sub_0801B200: @ 0x0801B200
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r7, r0, #0
	add r0, r0, #113
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801B2B6
	ldr r1, [r7, #88]
	add r0, r7, #0
	bl sub_0801B1A0
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801B22E
	ldr r1, [r7, #88]
	add r0, r7, #0
	bl sub_0803CECC
	b _0801B4DC
_0801B22E:
	ldr r0, _0801B290  @ =gUnknown_03000E20
	ldrh r0, [r0]
	mov r3, #3
	and r3, r3, r0
	add r6, r3, #0
	add r5, r7, #0
	add r5, r5, #43
	ldr r0, _0801B294  @ =gUnknown_03006A58
	mov r8, r0
	mov r1, #0
	mov r9, r1
_0801B244:
	ldr r0, _0801B298  @ =gUnknown_03006C80
	ldrb r0, [r0]
	cmp r0, r6
	bls _0801B26A
	lsl r0, r6, #3
	add r0, r0, r6
	lsl r0, r0, #4
	mov r2, r8
	add r4, r0, r2
	ldr r1, [r4]
	add r0, r7, #0
	str r3, [sp]
	bl sub_0801B1A0
	lsl r0, r0, #24
	ldr r3, [sp]
	cmp r0, #0
	beq _0801B26A
	b _0801B4B2
_0801B26A:
	add r6, r6, #1
	mov r0, #3
	and r6, r6, r0
	cmp r3, r6
	bne _0801B244
	add r1, r7, #0
	add r1, r1, #113
	mov r0, #1
	strb r0, [r1]
	add r0, r7, #0
	add r0, r0, #114
	mov r3, r9
	strb r3, [r0]
	mov r4, #50
	ldrsh r0, [r7, r4]
	mov r2, #54
	ldrsh r1, [r7, r2]
	b _0801B49A
	.byte 0x00
	.byte 0x00
_0801B290:
	.4byte gUnknown_03000E20
_0801B294:
	.4byte gUnknown_03006A58
_0801B298:
	.4byte gUnknown_03006C80
_0801B29C:
	add r1, r7, #0
	add r1, r1, #113
	mov r0, #0
	strb r0, [r1]
	ldr r1, [r4]
	str r1, [r7, #88]
	add r0, r7, #0
	bl sub_0803CECC
	add r1, r7, #0
	add r1, r1, #43
	strb r0, [r1]
	b _0801B2EC
_0801B2B6:
	mov r6, #4
	ldr r0, _0801B340  @ =gUnknown_03000E20
	ldrh r0, [r0]
	mov r3, #3
	and r3, r3, r0
	ldr r5, _0801B344  @ =gUnknown_03006A58
_0801B2C2:
	lsl r0, r3, #3
	add r0, r0, r3
	lsl r0, r0, #4
	add r4, r0, r5
	ldr r1, [r4]
	add r0, r7, #0
	str r3, [sp]
	bl sub_0801B1A0
	lsl r0, r0, #24
	ldr r3, [sp]
	cmp r0, #0
	bne _0801B29C
	sub r0, r6, #1
	lsl r0, r0, #16
	lsr r6, r0, #16
	add r3, r3, #1
	mov r0, #3
	and r3, r3, r0
	cmp r6, #0
	bne _0801B2C2
_0801B2EC:
	cmp r6, #0
	beq _0801B2F2
	b _0801B4E2
_0801B2F2:
	add r0, r7, #0
	add r0, r0, #114
	ldrb r2, [r0]
	add r1, r2, #0
	mov r8, r0
	cmp r1, #0
	bne _0801B302
	b _0801B4C0
_0801B302:
	cmp r1, #1
	bne _0801B358
	mov r1, #50
	ldrsh r0, [r7, r1]
	mov r2, #54
	ldrsh r1, [r7, r2]
	add r2, r7, #0
	add r2, r2, #116
	mov r3, #0
	ldrsh r2, [r2, r3]
	add r3, r7, #0
	add r3, r3, #118
	mov r4, #0
	ldrsh r3, [r3, r4]
	bl 0x08003F54
	add r2, r7, #0
	add r2, r2, #43
	strb r0, [r2]
	add r0, r0, #4
	mov r3, #24
	and r0, r0, r3
	add r1, r7, #0
	add r1, r1, #115
	strb r0, [r1]
	add r5, r2, #0
	ldrb r1, [r5]
	cmp r0, r1
	bcs _0801B348
	add r0, r0, #8
	b _0801B34A
_0801B340:
	.4byte gUnknown_03000E20
_0801B344:
	.4byte gUnknown_03006A58
_0801B348:
	sub r0, r0, #8
_0801B34A:
	and r0, r0, r3
	strb r0, [r5]
	mov r2, r8
	ldrb r1, [r2]
	mov r0, #128
	orr r0, r0, r1
	b _0801B36A
_0801B358:
	mov r0, #2
	and r0, r0, r2
	cmp r0, #0
	beq _0801B36C
	add r2, r7, #0
	add r2, r2, #43
	ldrb r0, [r2]
	mov r1, #16
	eor r0, r0, r1
_0801B36A:
	strb r0, [r2]
_0801B36C:
	mov r3, r8
	ldrb r2, [r3]
	mov r0, #112
	and r0, r0, r2
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801B3AC
	lsr r1, r0, #25
	mov r0, #135
	and r0, r0, r2
	orr r1, r1, r0
	strb r1, [r3]
	mov r0, #16
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #0
	beq _0801B39C
	add r0, r7, #0
	add r0, r0, #115
	ldrb r1, [r0]
	sub r0, r0, #72
	strb r1, [r0]
	b _0801B4E2
_0801B39C:
	mov r0, #8
	and r1, r1, r0
	cmp r1, #0
	bne _0801B3A6
	b _0801B4E2
_0801B3A6:
	mov r4, r8
	strb r2, [r4]
	b _0801B4E2
_0801B3AC:
	add r0, r7, #0
	add r0, r0, #115
	ldrb r0, [r0]
	lsr r6, r0, #1
	mov r3, #1
	ldr r0, _0801B440  @ =gUnknown_08139F48
	mov r10, r0
	ldr r4, _0801B444  @ =gUnknown_08139F38
	add r0, r6, r4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrh r1, [r7, #50]
	add r0, r0, r1
	lsl r0, r0, #16
	asr r0, r0, #16
	add r1, r6, #1
	add r1, r1, r4
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrh r2, [r7, #54]
	add r1, r1, r2
	lsl r1, r1, #16
	asr r1, r1, #16
	add r5, r7, #0
	add r5, r5, #80
	ldrh r2, [r5]
	str r3, [sp]
	bl 0x08009310
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r9, r0
	add r0, r6, #2
	add r0, r0, r4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrh r1, [r7, #50]
	add r0, r0, r1
	lsl r0, r0, #16
	asr r0, r0, #16
	add r1, r6, #3
	add r1, r1, r4
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrh r2, [r7, #54]
	add r1, r1, r2
	lsl r1, r1, #16
	asr r1, r1, #16
	ldrh r2, [r5]
	bl 0x08009310
	lsl r0, r0, #16
	lsr r2, r0, #16
	ldr r1, _0801B448  @ =gUnknown_0814AB24
	mov r4, r9
	add r0, r4, r1
	ldrb r0, [r0]
	ldr r3, [sp]
	cmp r0, #0
	bne _0801B436
	add r0, r2, r1
	ldrb r1, [r0]
	neg r0, r1
	orr r0, r0, r1
	lsr r3, r0, #31
_0801B436:
	mov r0, #11
	add r5, r7, #0
	add r5, r5, #43
	b _0801B45A
	.byte 0x00
	.byte 0x00
_0801B440:
	.4byte gUnknown_08139F48
_0801B444:
	.4byte gUnknown_08139F38
_0801B448:
	.4byte gUnknown_0814AB24
_0801B44C:
	sub r0, r0, #1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, #2
	add r10, r10, r1
	cmp r0, #0
	beq _0801B468
_0801B45A:
	mov r4, r10
	ldrh r1, [r4]
	cmp r1, r9
	beq _0801B466
	cmp r1, r2
	bne _0801B44C
_0801B466:
	mov r3, #1
_0801B468:
	cmp r3, #0
	beq _0801B492
	ldrb r0, [r5]
	add r1, r7, #0
	add r1, r1, #42
	lsr r0, r0, #3
	ldrb r1, [r1]
	cmp r0, r1
	bne _0801B486
	mov r0, r8
	ldrb r1, [r0]
	mov r0, #32
	orr r0, r0, r1
	mov r1, r8
	b _0801B4E0
_0801B486:
	mov r2, r8
	ldrb r1, [r2]
	mov r0, #64
	orr r0, r0, r1
	strb r0, [r2]
	b _0801B4E2
_0801B492:
	mov r3, #50
	ldrsh r0, [r7, r3]
	mov r4, #54
	ldrsh r1, [r7, r4]
_0801B49A:
	add r2, r7, #0
	add r2, r2, #116
	mov r3, #0
	ldrsh r2, [r2, r3]
	add r3, r7, #0
	add r3, r3, #118
	mov r4, #0
	ldrsh r3, [r3, r4]
	bl 0x08003F54
	strb r0, [r5]
	b _0801B4E2
_0801B4B2:
	ldr r1, [r4]
	str r1, [r7, #88]
	add r0, r7, #0
	bl sub_0803CECC
	strb r0, [r5]
	b _0801B4E2
_0801B4C0:
	mov r1, #50
	ldrsh r0, [r7, r1]
	mov r2, #54
	ldrsh r1, [r7, r2]
	add r2, r7, #0
	add r2, r2, #116
	mov r3, #0
	ldrsh r2, [r2, r3]
	add r3, r7, #0
	add r3, r3, #118
	mov r4, #0
	ldrsh r3, [r3, r4]
	bl 0x08003F54
_0801B4DC:
	add r1, r7, #0
	add r1, r1, #43
_0801B4E0:
	strb r0, [r1]
_0801B4E2:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801B200

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801B4F4
sub_0801B4F4: @ 0x0801B4F4
	push {r4,r5,lr}
	mov r1, #50
	ldrsh r3, [r0, r1]
	ldr r2, _0801B560  @ =gUnknown_03000450
	ldrh r1, [r2, #24]
	add r1, r1, #8
	sub r3, r3, r1
	asr r3, r3, #4
	mov r4, #54
	ldrsh r1, [r0, r4]
	ldrh r2, [r2, #26]
	add r2, r2, #8
	sub r1, r1, r2
	asr r1, r1, #4
	lsl r1, r1, #6
	orr r3, r3, r1
	lsl r3, r3, #16
	lsr r5, r3, #16
	add r0, r0, #80
	ldrh r0, [r0]
	lsr r0, r0, #14
	cmp r0, #2
	beq _0801B564
	mov r4, #128
	lsl r4, r4, #7
	mov r0, #82
	add r1, r5, #0
	add r2, r4, #0
	bl sub_08014658
	add r1, r5, #1
	lsl r1, r1, #16
	lsr r1, r1, #16
	mov r0, #83
	add r2, r4, #0
	bl sub_08014658
	add r1, r5, #0
	add r1, r1, #64
	lsl r1, r1, #16
	lsr r1, r1, #16
	mov r0, #84
	add r2, r4, #0
	bl sub_08014658
	add r1, r5, #0
	add r1, r1, #65
	lsl r1, r1, #16
	lsr r1, r1, #16
	mov r0, #85
	add r2, r4, #0
	bl sub_08014658
	b _0801B5A0
_0801B560:
	.4byte gUnknown_03000450
_0801B564:
	mov r4, #128
	lsl r4, r4, #8
	mov r0, #123
	add r1, r5, #0
	add r2, r4, #0
	bl sub_08014658
	add r1, r5, #1
	lsl r1, r1, #16
	lsr r1, r1, #16
	mov r0, #124
	add r2, r4, #0
	bl sub_08014658
	add r1, r5, #0
	add r1, r1, #64
	lsl r1, r1, #16
	lsr r1, r1, #16
	mov r0, #125
	add r2, r4, #0
	bl sub_08014658
	add r1, r5, #0
	add r1, r1, #65
	lsl r1, r1, #16
	lsr r1, r1, #16
	mov r0, #126
	add r2, r4, #0
	bl sub_08014658
_0801B5A0:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801B4F4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801B5A8
sub_0801B5A8: @ 0x0801B5A8
	push {r4,r5,lr}
	add r5, r0, #0
	mov r0, #50
	ldrsh r4, [r5, r0]
	ldr r1, _0801B614  @ =gUnknown_03000450
	ldrh r0, [r1, #24]
	add r0, r0, #8
	sub r4, r4, r0
	asr r4, r4, #4
	mov r2, #54
	ldrsh r0, [r5, r2]
	ldrh r1, [r1, #26]
	add r1, r1, #8
	sub r0, r0, r1
	asr r0, r0, #4
	lsl r0, r0, #6
	orr r4, r4, r0
	lsl r4, r4, #16
	lsr r4, r4, #16
	mov r0, #169
	lsl r0, r0, #1
	add r5, r5, #80
	ldrh r2, [r5]
	add r1, r4, #0
	bl sub_08014658
	ldr r0, _0801B618  @ =0x00000153
	add r1, r4, #1
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	bl sub_08014658
	mov r0, #170
	lsl r0, r0, #1
	add r1, r4, #0
	add r1, r1, #64
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	bl sub_08014658
	ldr r0, _0801B61C  @ =0x00000155
	add r4, r4, #65
	lsl r4, r4, #16
	lsr r4, r4, #16
	ldrh r2, [r5]
	add r1, r4, #0
	bl sub_08014658
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801B614:
	.4byte gUnknown_03000450
_0801B618:
	.4byte 0x00000153
_0801B61C:
	.4byte 0x00000155
	THUMB_FUNC_END sub_0801B5A8

	THUMB_FUNC_START sub_0801B620
sub_0801B620: @ 0x0801B620
	push {lr}
	add r2, r0, #0
	add r0, r0, #108
	ldrh r0, [r0]
	cmp r0, #1
	bne _0801B634
	add r1, r2, #0
	add r1, r1, #107
	mov r0, #0
	strb r0, [r1]
_0801B634:
	ldr r1, _0801B640  @ =gUnknown_0813A0A4
	add r0, r2, #0
	bl 0x08009924
	pop {r0}
	bx r0
_0801B640:
	.4byte gUnknown_0813A0A4
	THUMB_FUNC_END sub_0801B620

	THUMB_FUNC_START sub_0801B644
sub_0801B644: @ 0x0801B644
	push {lr}
	ldr r2, _0801B658  @ =gUnknown_0813A0BC
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0801B658:
	.4byte gUnknown_0813A0BC
	THUMB_FUNC_END sub_0801B644

	THUMB_FUNC_START sub_0801B65C
sub_0801B65C: @ 0x0801B65C
	push {lr}
	ldr r1, _0801B668  @ =gUnknown_0813A0A4
	bl 0x080098A0
	pop {r0}
	bx r0
_0801B668:
	.4byte gUnknown_0813A0A4
	THUMB_FUNC_END sub_0801B65C

	THUMB_FUNC_START sub_0801B66C
sub_0801B66C: @ 0x0801B66C
	push {r4,lr}
	add r4, r0, #0
	bl 0x08009E44
	add r0, r4, #0
	add r0, r0, #67
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801B682
	ldr r0, _0801B688  @ =0x0000FFFE
	strh r0, [r4, #58]
_0801B682:
	pop {r4}
	pop {r0}
	bx r0
_0801B688:
	.4byte 0x0000FFFE
	THUMB_FUNC_END sub_0801B66C

	THUMB_FUNC_START sub_0801B68C
sub_0801B68C: @ 0x0801B68C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	mov r12, r0
	mov r1, #50
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0801B6AC
	mov r2, r12
	mov r3, #54
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bne _0801B6AC
	mov r0, #2
	strb r0, [r2, #11]
	b _0801B72E
_0801B6AC:
	mov r5, r12
	ldrh r0, [r5, #50]
	mov r2, #252
	lsl r2, r2, #4
	add r1, r2, #0
	and r1, r1, r0
	ldr r5, _0801B760  @ =gUnknown_03000450
	lsr r1, r1, #2
	ldrh r7, [r5, #24]
	add r1, r1, r7
	ldr r4, _0801B764  @ =gUnknown_0201EFF8
	mov r0, #82
	add r0, r0, r12
	mov r8, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r4
	ldrh r0, [r0]
	add r0, r0, r1
	mov r6, r12
	add r6, r6, #120
	strh r0, [r6]
	mov r1, r12
	ldrh r3, [r1, #50]
	mov r1, #63
	add r0, r1, #0
	and r0, r0, r3
	lsl r0, r0, #4
	add r0, r0, #16
	mov r3, r12
	add r3, r3, #124
	strh r0, [r3]
	mov r7, r12
	ldrh r0, [r7, #54]
	and r2, r2, r0
	lsr r2, r2, #2
	ldrh r5, [r5, #26]
	add r2, r2, r5
	mov r5, r8
	ldrb r0, [r5]
	lsl r0, r0, #2
	add r4, r4, #2
	add r0, r0, r4
	ldrh r0, [r0]
	add r0, r0, r2
	mov r4, r12
	add r4, r4, #122
	strh r0, [r4]
	ldrh r0, [r7, #54]
	and r1, r1, r0
	lsl r1, r1, #4
	add r1, r1, #16
	mov r2, r12
	add r2, r2, #126
	strh r1, [r2]
	ldrh r0, [r3]
	lsr r0, r0, #1
	ldrh r6, [r6]
	add r0, r0, r6
	strh r0, [r7, #50]
	ldrh r0, [r2]
	lsr r0, r0, #1
	ldrh r4, [r4]
	add r0, r0, r4
	strh r0, [r7, #54]
_0801B72E:
	ldr r0, _0801B768  @ =0x0000FFFE
	mov r7, r12
	strh r0, [r7, #58]
	ldrb r1, [r7, #11]
	lsl r0, r1, #4
	sub r0, r0, r1
	lsl r0, r0, #1
	add r0, r0, #30
	mov r1, r12
	add r1, r1, #116
	strh r0, [r1]
	sub r1, r1, #70
	mov r0, #5
	strb r0, [r1]
	ldr r0, _0801B76C  @ =gUnknown_0813A184
	str r0, [r7, #72]
	mov r0, r12
	bl sub_0801BAD8
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801B760:
	.4byte gUnknown_03000450
_0801B764:
	.4byte gUnknown_0201EFF8
_0801B768:
	.4byte 0x0000FFFE
_0801B76C:
	.4byte gUnknown_0813A184
	THUMB_FUNC_END sub_0801B68C

	THUMB_FUNC_START sub_0801B770
sub_0801B770: @ 0x0801B770
	push {r4,lr}
	add r4, r0, #0
	bl sub_0801B8F4
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801B79C
	mov r0, #2
	strb r0, [r4, #20]
	mov r0, #17
	strb r0, [r4, #23]
	add r0, r4, #0
	add r0, r0, #112
	ldrh r0, [r0]
	strh r0, [r4, #50]
	add r0, r4, #0
	add r0, r0, #114
	ldrh r0, [r0]
	strh r0, [r4, #54]
	add r0, r4, #0
	bl 0x08008D90
_0801B79C:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801B770

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801B7A4
sub_0801B7A4: @ 0x0801B7A4
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801B7F6
	add r0, r4, #0
	mov r1, #96
	mov r2, #64
	bl 0x08009E6C
	add r1, r0, #0
	cmp r1, #0
	beq _0801B7FA
	add r0, r4, #0
	bl sub_0803CECC
	add r0, r0, #4
	mov r1, #24
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	lsr r0, r0, #3
	sub r1, r1, #1
	strb r0, [r1]
	mov r0, #3
	strb r0, [r4, #20]
	mov r0, #16
	strb r0, [r4, #23]
	ldrb r1, [r1]
	add r0, r4, #0
	bl 0x08003870
	add r0, r4, #0
	mov r1, #92
	bl 0x08003E10
	b _0801B7FA
_0801B7F6:
	mov r0, #1
	strb r0, [r4, #20]
_0801B7FA:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801B7A4

	THUMB_FUNC_START sub_0801B800
sub_0801B800: @ 0x0801B800
	push {r4,lr}
	add r4, r0, #0
	bl sub_0801BA38
	ldrb r0, [r4, #23]
	cmp r0, #0
	bne _0801B822
	mov r0, #4
	strb r0, [r4, #20]
	mov r0, #16
	strb r0, [r4, #23]
	add r2, r4, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r2]
_0801B822:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801B800

	THUMB_FUNC_START sub_0801B828
sub_0801B828: @ 0x0801B828
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801B87A
	mov r0, #5
	bl sub_08012494
	add r1, r0, #0
	cmp r1, #0
	beq _0801B874
	ldrb r0, [r4, #10]
	strb r0, [r1, #10]
	add r0, r4, #0
	add r0, r0, #43
	ldrb r0, [r0]
	add r2, r1, #0
	add r2, r2, #43
	strb r0, [r2]
	str r4, [r1, #84]
	str r1, [r4, #88]
	mov r0, #5
	strb r0, [r4, #20]
	mov r0, #60
	strb r0, [r4, #23]
	add r0, r4, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r1, r1, #4
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x08003870
	b _0801B87A
_0801B874:
	ldrb r0, [r4, #23]
	add r0, r0, #1
	strb r0, [r4, #23]
_0801B87A:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801B828

	THUMB_FUNC_START sub_0801B880
sub_0801B880: @ 0x0801B880
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801B89E
	mov r0, #6
	strb r0, [r4, #20]
	add r0, r4, #0
	bl sub_0801BAAC
_0801B89E:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801B880

	THUMB_FUNC_START sub_0801B8A4
sub_0801B8A4: @ 0x0801B8A4
	push {r4,lr}
	add r4, r0, #0
	bl sub_0801B9D8
	ldrb r0, [r4, #23]
	cmp r0, #0
	bne _0801B8CC
	mov r0, #7
	strb r0, [r4, #20]
	add r0, r4, #0
	add r0, r0, #116
	ldrh r0, [r0]
	add r1, r4, #0
	add r1, r1, #118
	strh r0, [r1]
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	strb r0, [r4, #28]
_0801B8CC:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801B8A4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801B8D4
sub_0801B8D4: @ 0x0801B8D4
	push {lr}
	add r2, r0, #0
	add r1, r2, #0
	add r1, r1, #118
	ldrh r0, [r1]
	sub r0, r0, #1
	strh r0, [r1]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0801B8EE
	add r0, r2, #0
	bl sub_0801BAD8
_0801B8EE:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801B8D4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801B8F4
sub_0801B8F4: @ 0x0801B8F4
	push {r4-r7,lr}
	add r5, r0, #0
	mov r0, #50
	ldrsh r4, [r5, r0]
	ldr r6, _0801B988  @ =gUnknown_03000450
	ldrh r0, [r6, #24]
	sub r4, r4, r0
	asr r4, r4, #4
	mov r1, #54
	ldrsh r0, [r5, r1]
	ldrh r1, [r6, #26]
	sub r0, r0, r1
	asr r0, r0, #4
	lsl r0, r0, #6
	orr r4, r4, r0
	lsl r4, r4, #16
	lsr r4, r4, #16
	bl 0x0800099C
	ldr r2, _0801B98C  @ =gUnknown_0813A0DC
	mov r1, #31
	and r1, r1, r0
	lsl r1, r1, #1
	add r1, r1, r2
	ldrh r0, [r1]
	add r4, r4, r0
	lsl r4, r4, #16
	lsr r4, r4, #16
	mov r1, #128
	lsl r1, r1, #7
	add r0, r4, #0
	bl 0x080093C8
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801B9CA
	mov r1, #128
	lsl r1, r1, #8
	add r0, r4, #0
	bl 0x080093C8
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801B9CA
	mov r0, #63
	and r0, r0, r4
	lsl r0, r0, #4
	add r0, r0, #8
	ldrh r1, [r6, #24]
	add r1, r1, r0
	lsl r1, r1, #16
	lsr r2, r1, #16
	add r7, r2, #0
	mov r0, #252
	lsl r0, r0, #4
	and r0, r0, r4
	lsr r0, r0, #2
	ldrh r1, [r6, #26]
	add r1, r1, #8
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r1, r0, #16
	add r3, r1, #0
	ldr r0, [r5, #124]
	cmp r0, #0
	bne _0801B990
	add r0, r5, #0
	add r0, r0, #112
	strh r2, [r0]
	add r0, r0, #2
	strh r1, [r0]
	mov r0, #1
	b _0801B9D2
	.byte 0x00
	.byte 0x00
_0801B988:
	.4byte gUnknown_03000450
_0801B98C:
	.4byte gUnknown_0813A0DC
_0801B990:
	add r0, r5, #0
	add r0, r0, #120
	ldrh r0, [r0]
	sub r0, r7, r0
	add r1, r5, #0
	add r1, r1, #124
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldrh r1, [r1]
	cmp r0, r1
	bhi _0801B9D0
	add r0, r5, #0
	add r0, r0, #122
	ldrh r0, [r0]
	sub r0, r3, r0
	add r1, r5, #0
	add r1, r1, #126
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldrh r1, [r1]
	cmp r0, r1
	bhi _0801B9D0
	add r0, r5, #0
	add r0, r0, #112
	strh r7, [r0]
	add r0, r0, #2
	strh r3, [r0]
	mov r0, #1
	b _0801B9D2
_0801B9CA:
	add r0, r5, #0
	bl sub_0801BAD8
_0801B9D0:
	mov r0, #0
_0801B9D2:
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0801B8F4

	THUMB_FUNC_START sub_0801B9D8
sub_0801B9D8: @ 0x0801B9D8
	mov r12, r0
	ldrb r0, [r0, #23]
	sub r0, r0, #1
	mov r1, r12
	strb r0, [r1, #23]
	mov r0, r12
	add r0, r0, #42
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0801BA14
	mov r3, r12
	add r3, r3, #114
	ldr r2, _0801BA10  @ =gUnknown_0813A11C
	mov r0, r12
	ldrb r1, [r0, #23]
	mov r0, #15
	sub r0, r0, r1
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrh r3, [r3]
	add r0, r0, r3
	mov r1, r12
	strh r0, [r1, #54]
	b _0801BA32
_0801BA10:
	.4byte gUnknown_0813A11C
_0801BA14:
	mov r3, r12
	add r3, r3, #112
	ldr r2, _0801BA34  @ =gUnknown_0813A11C
	mov r0, r12
	ldrb r1, [r0, #23]
	mov r0, #15
	sub r0, r0, r1
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrh r3, [r3]
	add r0, r0, r3
	mov r1, r12
	strh r0, [r1, #50]
_0801BA32:
	bx lr
_0801BA34:
	.4byte gUnknown_0813A11C
	THUMB_FUNC_END sub_0801B9D8

	THUMB_FUNC_START sub_0801BA38
sub_0801BA38: @ 0x0801BA38
	add r3, r0, #0
	ldrb r0, [r3, #23]
	sub r0, r0, #1
	strb r0, [r3, #23]
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801BA98
	ldrb r1, [r3, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r3, #28]
	add r0, r3, #0
	add r0, r0, #42
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0801BA7C
	add r2, r3, #0
	add r2, r2, #114
	ldr r0, _0801BA78  @ =gUnknown_0813A11C
	ldrb r1, [r3, #23]
	add r1, r1, r0
	mov r0, #0
	ldrsb r0, [r1, r0]
	ldrh r2, [r2]
	add r0, r0, r2
	b _0801BAA6
	.byte 0x00
	.byte 0x00
_0801BA78:
	.4byte gUnknown_0813A11C
_0801BA7C:
	add r2, r3, #0
	add r2, r2, #112
	ldr r1, _0801BA94  @ =gUnknown_0813A11C
	ldrb r0, [r3, #23]
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrh r2, [r2]
	add r0, r0, r2
	strh r0, [r3, #50]
	b _0801BAA8
_0801BA94:
	.4byte gUnknown_0813A11C
_0801BA98:
	add r0, r3, #0
	add r0, r0, #112
	ldrh r0, [r0]
	strh r0, [r3, #50]
	add r0, r3, #0
	add r0, r0, #114
	ldrh r0, [r0]
_0801BAA6:
	strh r0, [r3, #54]
_0801BAA8:
	bx lr
	THUMB_FUNC_END sub_0801BA38

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801BAAC
sub_0801BAAC: @ 0x0801BAAC
	push {lr}
	add r3, r0, #0
	mov r0, #16
	strb r0, [r3, #23]
	add r2, r3, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #127
	and r0, r0, r1
	strb r0, [r2]
	ldrh r1, [r3, #50]
	add r0, r3, #0
	add r0, r0, #112
	strh r1, [r0]
	ldrh r1, [r3, #54]
	add r0, r0, #2
	strh r1, [r0]
	mov r0, #92
	bl 0x08003DFC
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801BAAC

	THUMB_FUNC_START sub_0801BAD8
sub_0801BAD8: @ 0x0801BAD8
	push {r4,r5,lr}
	add r5, r0, #0
	ldr r0, [r5, #124]
	cmp r0, #0
	bne _0801BB04
	ldr r4, _0801BB10  @ =gUnknown_03006A30
	bl 0x0800099C
	ldr r1, _0801BB14  @ =gUnknown_03006C80
	ldrb r1, [r1]
	bl __umodsi3
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #4
	add r4, r4, #40
	add r1, r1, r4
	ldr r1, [r1]
	ldrh r0, [r1, #50]
	strh r0, [r5, #50]
	ldrh r0, [r1, #54]
	strh r0, [r5, #54]
_0801BB04:
	mov r0, #1
	strb r0, [r5, #20]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801BB10:
	.4byte gUnknown_03006A30
_0801BB14:
	.4byte gUnknown_03006C80
	THUMB_FUNC_END sub_0801BAD8

	THUMB_FUNC_START sub_0801BB18
sub_0801BB18: @ 0x0801BB18
	push {lr}
	add r2, r0, #0
	add r0, r0, #108
	ldrh r0, [r0]
	cmp r0, #1
	bne _0801BB2C
	add r1, r2, #0
	add r1, r1, #107
	mov r0, #0
	strb r0, [r1]
_0801BB2C:
	ldr r1, _0801BB38  @ =gUnknown_0813A18C
	add r0, r2, #0
	bl 0x08009924
	pop {r0}
	bx r0
_0801BB38:
	.4byte gUnknown_0813A18C
	THUMB_FUNC_END sub_0801BB18

	THUMB_FUNC_START sub_0801BB3C
sub_0801BB3C: @ 0x0801BB3C
	push {lr}
	ldr r2, _0801BB50  @ =gUnknown_0813A1A4
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0801BB50:
	.4byte gUnknown_0813A1A4
	THUMB_FUNC_END sub_0801BB3C

	THUMB_FUNC_START sub_0801BB54
sub_0801BB54: @ 0x0801BB54
	push {lr}
	ldr r1, _0801BB60  @ =gUnknown_0813A18C
	bl 0x080098A0
	pop {r0}
	bx r0
_0801BB60:
	.4byte gUnknown_0813A18C
	THUMB_FUNC_END sub_0801BB54

	THUMB_FUNC_START sub_0801BB64
sub_0801BB64: @ 0x0801BB64
	push {r4,lr}
	add r4, r0, #0
	bl 0x08009E44
	add r0, r4, #0
	add r0, r0, #67
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801BB7A
	ldr r0, _0801BB80  @ =0x0000FFFE
	strh r0, [r4, #58]
_0801BB7A:
	pop {r4}
	pop {r0}
	bx r0
_0801BB80:
	.4byte 0x0000FFFE
	THUMB_FUNC_END sub_0801BB64

	THUMB_FUNC_START sub_0801BB84
sub_0801BB84: @ 0x0801BB84
	add r2, r0, #0
	mov r0, #1
	strb r0, [r2, #20]
	ldr r0, _0801BBAC  @ =0x0000FFFE
	strh r0, [r2, #58]
	ldrb r1, [r2, #23]
	lsl r0, r1, #4
	sub r0, r0, r1
	lsl r0, r0, #1
	add r0, r0, #30
	add r1, r2, #0
	add r1, r1, #116
	strh r0, [r1]
	sub r1, r1, #70
	mov r0, #5
	strb r0, [r1]
	ldr r0, _0801BBB0  @ =gUnknown_0813A2C4
	str r0, [r2, #72]
	bx lr
	.byte 0x00
	.byte 0x00
_0801BBAC:
	.4byte 0x0000FFFE
_0801BBB0:
	.4byte gUnknown_0813A2C4
	THUMB_FUNC_END sub_0801BB84

	THUMB_FUNC_START sub_0801BBB4
sub_0801BBB4: @ 0x0801BBB4
	push {lr}
	mov r1, #2
	strb r1, [r0, #20]
	bl sub_0801BCE4
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801BBB4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801BBC4
sub_0801BBC4: @ 0x0801BBC4
	push {r4,lr}
	add r4, r0, #0
	bl sub_0801BE44
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801BBE2
	mov r0, #3
	strb r0, [r4, #20]
	mov r0, #16
	strb r0, [r4, #23]
	add r0, r4, #0
	mov r1, #92
	bl 0x08003E10
_0801BBE2:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801BBC4

	THUMB_FUNC_START sub_0801BBE8
sub_0801BBE8: @ 0x0801BBE8
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	bl sub_0801BA38
	ldrb r0, [r4, #23]
	cmp r0, #0
	bne _0801BC10
	mov r0, #4
	strb r0, [r4, #20]
	mov r0, #16
	strb r0, [r4, #23]
	add r2, r4, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r2]
_0801BC10:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801BBE8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801BC18
sub_0801BC18: @ 0x0801BC18
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801BC6C
	mov r0, #5
	bl sub_08012494
	add r1, r0, #0
	cmp r1, #0
	beq _0801BC66
	mov r0, #2
	strb r0, [r1, #10]
	add r0, r4, #0
	add r0, r0, #43
	ldrb r0, [r0]
	add r2, r1, #0
	add r2, r2, #43
	strb r0, [r2]
	str r4, [r1, #84]
	mov r0, #5
	strb r0, [r4, #20]
	mov r0, #60
	strb r0, [r4, #23]
	add r0, r4, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r1, r1, #4
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x08003870
	b _0801BC6C
_0801BC66:
	ldrb r0, [r4, #23]
	add r0, r0, #1
	strb r0, [r4, #23]
_0801BC6C:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801BC18

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801BC74
sub_0801BC74: @ 0x0801BC74
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801BC92
	mov r0, #6
	strb r0, [r4, #20]
	add r0, r4, #0
	bl sub_0801BAAC
_0801BC92:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801BC74

	THUMB_FUNC_START sub_0801BC98
sub_0801BC98: @ 0x0801BC98
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	bl sub_0801B9D8
	ldrb r0, [r4, #23]
	cmp r0, #0
	bne _0801BCC6
	mov r0, #7
	strb r0, [r4, #20]
	add r0, r4, #0
	add r0, r0, #116
	ldrh r0, [r0]
	add r1, r4, #0
	add r1, r1, #118
	strh r0, [r1]
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	strb r0, [r4, #28]
_0801BCC6:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801BC98

	THUMB_FUNC_START sub_0801BCCC
sub_0801BCCC: @ 0x0801BCCC
	add r2, r0, #0
	add r1, r2, #0
	add r1, r1, #118
	ldrh r0, [r1]
	sub r0, r0, #1
	strh r0, [r1]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0801BCE2
	mov r0, #1
	strb r0, [r2, #20]
_0801BCE2:
	bx lr
	THUMB_FUNC_END sub_0801BCCC

	THUMB_FUNC_START sub_0801BCE4
sub_0801BCE4: @ 0x0801BCE4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	mov r8, r0
	ldr r1, _0801BD18  @ =gUnknown_03006A30
	ldr r7, [r1, #40]
	add r0, r1, #0
	add r0, r0, #184
	ldr r5, [r0]
	mov r2, #164
	lsl r2, r2, #1
	add r0, r1, r2
	ldr r6, [r0]
	add r2, r2, #144
	add r0, r1, r2
	ldr r3, [r0]
	ldr r0, _0801BD1C  @ =gUnknown_03006C80
	ldrb r0, [r0]
	cmp r0, #3
	beq _0801BD66
	cmp r0, #3
	bgt _0801BD20
	cmp r0, #2
	beq _0801BD92
	b _0801BDA8
_0801BD18:
	.4byte gUnknown_03006A30
_0801BD1C:
	.4byte gUnknown_03006C80
_0801BD20:
	cmp r0, #4
	bne _0801BDA8
	add r0, r7, #0
	add r0, r0, #69
	add r1, r5, #0
	add r1, r1, #69
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bls _0801BD3A
	add r0, r7, #0
	add r7, r5, #0
	add r5, r0, #0
_0801BD3A:
	add r0, r5, #0
	add r0, r0, #69
	add r1, r6, #0
	add r1, r1, #69
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bls _0801BD50
	add r0, r5, #0
	add r5, r6, #0
	add r6, r0, #0
_0801BD50:
	add r0, r6, #0
	add r0, r0, #69
	add r1, r3, #0
	add r1, r1, #69
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bls _0801BD66
	add r0, r6, #0
	add r6, r3, #0
	add r3, r0, #0
_0801BD66:
	add r0, r7, #0
	add r0, r0, #69
	add r1, r5, #0
	add r1, r1, #69
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bls _0801BD7C
	add r0, r7, #0
	add r7, r5, #0
	add r5, r0, #0
_0801BD7C:
	add r0, r5, #0
	add r0, r0, #69
	add r1, r6, #0
	add r1, r1, #69
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bls _0801BD92
	add r0, r5, #0
	add r5, r6, #0
	add r6, r0, #0
_0801BD92:
	add r0, r7, #0
	add r0, r0, #69
	add r1, r5, #0
	add r1, r1, #69
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bls _0801BDA8
	add r0, r7, #0
	add r7, r5, #0
	add r5, r0, #0
_0801BDA8:
	ldr r4, _0801BDD4  @ =gUnknown_0813A1C4
	str r3, [sp]
	bl 0x0800099C
	ldr r1, _0801BDD8  @ =gUnknown_03006C80
	ldrb r1, [r1]
	sub r1, r1, #1
	lsl r1, r1, #3
	mov r2, #7
	and r2, r2, r0
	add r1, r1, r2
	add r1, r1, r4
	ldrb r0, [r1]
	ldr r3, [sp]
	cmp r0, #2
	beq _0801BDEC
	cmp r0, #2
	bgt _0801BDDC
	cmp r0, #1
	beq _0801BDE6
	b _0801BDE0
	.byte 0x00
	.byte 0x00
_0801BDD4:
	.4byte gUnknown_0813A1C4
_0801BDD8:
	.4byte gUnknown_03006C80
_0801BDDC:
	cmp r0, #3
	beq _0801BDF2
_0801BDE0:
	mov r0, r8
	str r7, [r0, #88]
	b _0801BDF6
_0801BDE6:
	mov r1, r8
	str r5, [r1, #88]
	b _0801BDF6
_0801BDEC:
	mov r2, r8
	str r6, [r2, #88]
	b _0801BDF6
_0801BDF2:
	mov r0, r8
	str r3, [r0, #88]
_0801BDF6:
	mov r1, r8
	ldr r2, [r1, #88]
	add r0, r2, #0
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801BE18
	ldr r1, _0801BE40  @ =gUnknown_03000940
	ldrb r0, [r2, #10]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r1, [r0]
	mov r0, #128
	lsl r0, r0, #3
	and r0, r0, r1
	cmp r0, #0
	beq _0801BE20
_0801BE18:
	bl sub_08044594
	mov r2, r8
	str r0, [r2, #88]
_0801BE20:
	mov r0, r8
	ldr r1, [r0, #88]
	bl sub_0803CECC
	add r0, r0, #4
	mov r1, #24
	and r0, r0, r1
	mov r1, r8
	add r1, r1, #43
	strb r0, [r1]
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_0801BE40:
	.4byte gUnknown_03000940
	THUMB_FUNC_END sub_0801BCE4

	THUMB_FUNC_START sub_0801BE44
sub_0801BE44: @ 0x0801BE44
	push {r4-r6,lr}
	add r5, r0, #0
	bl 0x0800099C
	ldr r4, [r5, #88]
	add r4, r4, #42
	mov r1, #3
	bl __umodsi3
	sub r0, r0, #1
	lsl r0, r0, #1
	ldrb r4, [r4]
	add r0, r0, r4
	mov r1, #6
	and r0, r0, r1
	lsl r1, r0, #2
	add r4, r5, #0
	add r4, r4, #43
	strb r1, [r4]
	lsr r0, r0, #1
	add r6, r5, #0
	add r6, r6, #42
	strb r0, [r6]
	bl 0x0800099C
	ldrb r2, [r4]
	lsr r2, r2, #1
	mov r1, #2
	and r1, r1, r0
	add r2, r2, r1
	lsl r2, r2, #1
	ldr r0, _0801BED8  @ =gUnknown_0813A1E4
	add r2, r2, r0
	ldr r1, [r5, #88]
	ldrh r0, [r2]
	ldrh r3, [r1, #50]
	add r0, r0, r3
	strh r0, [r5, #50]
	ldrh r0, [r2, #2]
	ldrh r2, [r1, #54]
	add r0, r0, r2
	strh r0, [r5, #54]
	add r1, r1, #80
	ldrh r1, [r1]
	add r0, r5, #0
	add r0, r0, #80
	strh r1, [r0]
	add r0, r5, #0
	bl 0x08008D90
	add r0, r5, #0
	bl 0x080093A4
	lsl r0, r0, #24
	mov r3, #255
	lsl r3, r3, #24
	add r0, r0, r3
	lsr r0, r0, #24
	cmp r0, #30
	bls _0801BEDC
	ldrh r1, [r5, #50]
	add r0, r5, #0
	add r0, r0, #112
	strh r1, [r0]
	ldrh r0, [r5, #54]
	add r1, r5, #0
	add r1, r1, #114
	strh r0, [r1]
	ldrb r1, [r6]
	add r0, r5, #0
	bl 0x08003870
	mov r0, #1
	b _0801BEDE
_0801BED8:
	.4byte gUnknown_0813A1E4
_0801BEDC:
	mov r0, #0
_0801BEDE:
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0801BE44

	THUMB_FUNC_START sub_0801BEE4
sub_0801BEE4: @ 0x0801BEE4
	push {lr}
	add r2, r0, #0
	add r0, r0, #108
	ldrh r0, [r0]
	cmp r0, #1
	bne _0801BEF8
	add r1, r2, #0
	add r1, r1, #107
	mov r0, #0
	strb r0, [r1]
_0801BEF8:
	ldr r1, _0801BF04  @ =gUnknown_0813A2CC
	add r0, r2, #0
	bl 0x08009924
	pop {r0}
	bx r0
_0801BF04:
	.4byte gUnknown_0813A2CC
	THUMB_FUNC_END sub_0801BEE4

	THUMB_FUNC_START sub_0801BF08
sub_0801BF08: @ 0x0801BF08
	push {lr}
	ldr r2, _0801BF1C  @ =gUnknown_0813A2E4
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0801BF1C:
	.4byte gUnknown_0813A2E4
	THUMB_FUNC_END sub_0801BF08

	THUMB_FUNC_START sub_0801BF20
sub_0801BF20: @ 0x0801BF20
	push {lr}
	ldr r1, _0801BF2C  @ =gUnknown_0813A2CC
	bl 0x080098A0
	pop {r0}
	bx r0
_0801BF2C:
	.4byte gUnknown_0813A2CC
	THUMB_FUNC_END sub_0801BF20

	THUMB_FUNC_START sub_0801BF30
sub_0801BF30: @ 0x0801BF30
	push {r4,lr}
	add r4, r0, #0
	bl 0x08009E44
	add r0, r4, #0
	add r0, r0, #67
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801BF46
	ldr r0, _0801BF4C  @ =0x0000FFFE
	strh r0, [r4, #58]
_0801BF46:
	pop {r4}
	pop {r0}
	bx r0
_0801BF4C:
	.4byte 0x0000FFFE
	THUMB_FUNC_END sub_0801BF30

	THUMB_FUNC_START sub_0801BF50
sub_0801BF50: @ 0x0801BF50
	add r2, r0, #0
	mov r0, #1
	strb r0, [r2, #20]
	ldr r0, _0801BF78  @ =0x0000FFFE
	strh r0, [r2, #58]
	ldrb r1, [r2, #23]
	lsl r0, r1, #4
	sub r0, r0, r1
	lsl r0, r0, #1
	add r0, r0, #30
	add r1, r2, #0
	add r1, r1, #116
	strh r0, [r1]
	sub r1, r1, #70
	mov r0, #5
	strb r0, [r1]
	ldr r0, _0801BF7C  @ =gUnknown_0813A404
	str r0, [r2, #72]
	bx lr
	.byte 0x00
	.byte 0x00
_0801BF78:
	.4byte 0x0000FFFE
_0801BF7C:
	.4byte gUnknown_0813A404
	THUMB_FUNC_END sub_0801BF50

	THUMB_FUNC_START sub_0801BF80
sub_0801BF80: @ 0x0801BF80
	push {lr}
	mov r1, #2
	strb r1, [r0, #20]
	bl sub_0801BCE4
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801BF80

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801BF90
sub_0801BF90: @ 0x0801BF90
	push {r4,lr}
	add r4, r0, #0
	bl sub_0801C0B4
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801BFAE
	mov r0, #3
	strb r0, [r4, #20]
	mov r0, #16
	strb r0, [r4, #23]
	add r0, r4, #0
	mov r1, #92
	bl 0x08003E10
_0801BFAE:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801BF90

	THUMB_FUNC_START sub_0801BFB4
sub_0801BFB4: @ 0x0801BFB4
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	bl sub_0801BA38
	ldrb r0, [r4, #23]
	cmp r0, #0
	bne _0801BFDC
	mov r0, #4
	strb r0, [r4, #20]
	mov r0, #16
	strb r0, [r4, #23]
	add r2, r4, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r2]
_0801BFDC:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801BFB4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801BFE4
sub_0801BFE4: @ 0x0801BFE4
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801C03E
	mov r0, #5
	bl sub_08012494
	add r2, r0, #0
	cmp r2, #0
	beq _0801C038
	mov r0, #3
	strb r0, [r2, #10]
	add r0, r4, #0
	add r0, r0, #43
	ldrb r0, [r0]
	sub r0, r0, #3
	mov r1, #31
	and r0, r0, r1
	add r1, r2, #0
	add r1, r1, #43
	strb r0, [r1]
	str r4, [r2, #84]
	mov r0, #5
	strb r0, [r4, #20]
	mov r0, #105
	strb r0, [r4, #23]
	add r0, r4, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r1, r1, #4
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x08003870
	b _0801C03E
_0801C038:
	ldrb r0, [r4, #23]
	add r0, r0, #1
	strb r0, [r4, #23]
_0801C03E:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801BFE4

	THUMB_FUNC_START sub_0801C044
sub_0801C044: @ 0x0801C044
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801C062
	mov r0, #6
	strb r0, [r4, #20]
	add r0, r4, #0
	bl sub_0801BAAC
_0801C062:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801C044

	THUMB_FUNC_START sub_0801C068
sub_0801C068: @ 0x0801C068
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	bl sub_0801B9D8
	ldrb r0, [r4, #23]
	cmp r0, #0
	bne _0801C096
	mov r0, #7
	strb r0, [r4, #20]
	add r0, r4, #0
	add r0, r0, #116
	ldrh r0, [r0]
	add r1, r4, #0
	add r1, r1, #118
	strh r0, [r1]
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	strb r0, [r4, #28]
_0801C096:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801C068

	THUMB_FUNC_START sub_0801C09C
sub_0801C09C: @ 0x0801C09C
	add r2, r0, #0
	add r1, r2, #0
	add r1, r1, #118
	ldrh r0, [r1]
	sub r0, r0, #1
	strh r0, [r1]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0801C0B2
	mov r0, #1
	strb r0, [r2, #20]
_0801C0B2:
	bx lr
	THUMB_FUNC_END sub_0801C09C

	THUMB_FUNC_START sub_0801C0B4
sub_0801C0B4: @ 0x0801C0B4
	push {r4,lr}
	add r4, r0, #0
	bl 0x0800099C
	mov r1, #30
	and r1, r1, r0
	lsl r1, r1, #1
	ldr r0, _0801C134  @ =gUnknown_0813A304
	add r1, r1, r0
	ldr r2, [r4, #88]
	ldrh r0, [r1]
	ldrh r3, [r2, #50]
	add r0, r0, r3
	strh r0, [r4, #50]
	ldrh r0, [r1, #2]
	ldrh r1, [r2, #54]
	add r0, r0, r1
	strh r0, [r4, #54]
	add r2, r2, #80
	ldrh r1, [r2]
	add r0, r4, #0
	add r0, r0, #80
	strh r1, [r0]
	add r0, r4, #0
	bl 0x08008D90
	add r0, r4, #0
	bl 0x080093A4
	lsl r0, r0, #24
	mov r3, #255
	lsl r3, r3, #24
	add r0, r0, r3
	lsr r0, r0, #24
	cmp r0, #30
	bls _0801C138
	ldrh r1, [r4, #50]
	add r0, r4, #0
	add r0, r0, #112
	strh r1, [r0]
	ldrh r0, [r4, #54]
	add r1, r4, #0
	add r1, r1, #114
	strh r0, [r1]
	ldr r1, [r4, #88]
	add r0, r4, #0
	bl 0x08009EA4
	add r0, r0, #4
	mov r1, #24
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	lsr r0, r0, #3
	sub r1, r1, #1
	strb r0, [r1]
	ldrb r1, [r1]
	add r0, r4, #0
	bl 0x08003870
	mov r0, #1
	b _0801C13A
	.byte 0x00
	.byte 0x00
_0801C134:
	.4byte gUnknown_0813A304
_0801C138:
	mov r0, #0
_0801C13A:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0801C0B4

	THUMB_FUNC_START sub_0801C140
sub_0801C140: @ 0x0801C140
	push {lr}
	ldr r1, _0801C14C  @ =gUnknown_0813A40C
	bl 0x08009924
	pop {r0}
	bx r0
_0801C14C:
	.4byte gUnknown_0813A40C
	THUMB_FUNC_END sub_0801C140

	THUMB_FUNC_START sub_0801C150
sub_0801C150: @ 0x0801C150
	push {lr}
	ldr r2, _0801C164  @ =gUnknown_0813A424
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0801C164:
	.4byte gUnknown_0813A424
	THUMB_FUNC_END sub_0801C150

	THUMB_FUNC_START sub_0801C168
sub_0801C168: @ 0x0801C168
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #20]
	sub r0, r0, #1
	cmp r0, #1
	bgt _0801C1BC
	add r0, r4, #0
	add r0, r0, #65
	ldrb r0, [r0]
	cmp r0, #131
	bls _0801C1BC
	mov r0, #5
	strb r0, [r4, #20]
	mov r0, #16
	strb r0, [r4, #23]
	ldr r1, [r4, #88]
	cmp r1, #0
	beq _0801C190
	mov r0, #0
	str r0, [r1, #84]
_0801C190:
	add r0, r4, #0
	add r0, r0, #62
	ldrb r0, [r0]
	mov r1, #16
	eor r0, r0, r1
	add r0, r0, #4
	mov r1, #24
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	lsr r0, r0, #3
	add r2, r4, #0
	add r2, r2, #42
	strb r0, [r2]
	ldr r1, _0801C1CC  @ =gUnknown_0813A44C
	ldrb r0, [r2]
	add r0, r0, r1
	ldrb r1, [r0]
	add r0, r4, #0
	bl 0x08003870
_0801C1BC:
	ldr r1, _0801C1D0  @ =gUnknown_0813A40C
	add r0, r4, #0
	bl 0x080098A0
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801C1CC:
	.4byte gUnknown_0813A44C
_0801C1D0:
	.4byte gUnknown_0813A40C
	THUMB_FUNC_END sub_0801C168

	THUMB_FUNC_START sub_0801C1D4
sub_0801C1D4: @ 0x0801C1D4
	push {r4,lr}
	add r4, r0, #0
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	add r1, r4, #0
	add r1, r1, #46
	mov r0, #5
	strb r0, [r1]
	ldr r0, _0801C20C  @ =gUnknown_0813A618
	str r0, [r4, #72]
	bl 0x0800099C
	mov r1, #24
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	add r0, r4, #0
	bl sub_0801C4C4
	pop {r4}
	pop {r0}
	bx r0
_0801C20C:
	.4byte gUnknown_0813A618
	THUMB_FUNC_END sub_0801C1D4

	THUMB_FUNC_START sub_0801C210
sub_0801C210: @ 0x0801C210
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	bl sub_0801C4E8
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801C2A8
	add r0, r4, #0
	mov r1, #64
	mov r2, #64
	bl 0x08009E6C
	add r2, r0, #0
	cmp r2, #0
	beq _0801C286
	add r0, r4, #0
	add r0, r0, #42
	ldrb r0, [r0]
	cmp r0, #1
	beq _0801C25C
	cmp r0, #1
	bgt _0801C248
	cmp r0, #0
	beq _0801C252
	b _0801C286
_0801C248:
	cmp r0, #2
	beq _0801C26A
	cmp r0, #3
	beq _0801C278
	b _0801C286
_0801C252:
	mov r0, #54
	ldrsh r1, [r2, r0]
	mov r3, #54
	ldrsh r0, [r4, r3]
	b _0801C280
_0801C25C:
	mov r0, #50
	ldrsh r1, [r2, r0]
	mov r3, #50
	ldrsh r0, [r4, r3]
	cmp r1, r0
	ble _0801C286
	b _0801C284
_0801C26A:
	mov r0, #54
	ldrsh r1, [r2, r0]
	mov r3, #54
	ldrsh r0, [r4, r3]
	cmp r1, r0
	ble _0801C286
	b _0801C284
_0801C278:
	mov r0, #50
	ldrsh r1, [r2, r0]
	mov r3, #50
	ldrsh r0, [r4, r3]
_0801C280:
	cmp r1, r0
	bge _0801C286
_0801C284:
	str r2, [r4, #100]
_0801C286:
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0801C2A8
	mov r0, #2
	strb r0, [r4, #20]
	mov r0, #30
	strb r0, [r4, #23]
	add r0, r4, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r0, r4, #0
	bl 0x08003870
_0801C2A8:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801C210

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801C2B0
sub_0801C2B0: @ 0x0801C2B0
	add r1, r0, #0
	ldrb r0, [r1, #23]
	sub r0, r0, #1
	strb r0, [r1, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801C2C2
	mov r0, #3
	strb r0, [r1, #20]
_0801C2C2:
	bx lr
	THUMB_FUNC_END sub_0801C2B0

	THUMB_FUNC_START sub_0801C2C4
sub_0801C2C4: @ 0x0801C2C4
	push {r4,lr}
	add r4, r0, #0
	mov r0, #4
	strb r0, [r4, #20]
	bl 0x0800099C
	ldr r2, _0801C2E8  @ =gUnknown_0813A448
	mov r1, #3
	and r1, r1, r0
	add r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #23]
	ldr r1, [r4, #100]
	cmp r1, #0
	bne _0801C2EC
	bl 0x0800099C
	b _0801C2F4
_0801C2E8:
	.4byte gUnknown_0813A448
_0801C2EC:
	add r0, r4, #0
	bl sub_0803CECC
	add r0, r0, #4
_0801C2F4:
	mov r1, #24
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	ldrb r1, [r1]
	lsr r1, r1, #3
	add r0, r4, #0
	add r0, r0, #42
	strb r1, [r0]
	add r1, r1, #8
	add r0, r4, #0
	bl 0x08003870
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801C2C4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801C318
sub_0801C318: @ 0x0801C318
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	bl sub_0801C4E8
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801C372
	add r0, r4, #0
	bl 0x0800963C
	lsl r0, r0, #16
	cmp r0, #0
	bne _0801C360
	bl 0x0800099C
	mov r1, #24
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r3, r0, #24
	add r2, r4, #0
	add r2, r2, #43
	ldrb r1, [r2]
	cmp r3, r1
	beq _0801C372
	strb r3, [r2]
	lsr r1, r0, #27
	sub r2, r2, #1
	strb r1, [r2]
	add r1, r1, #8
	add r0, r4, #0
	bl 0x08003870
	b _0801C372
_0801C360:
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801C372
	add r0, r4, #0
	bl sub_0801C4C4
_0801C372:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801C318

	THUMB_FUNC_START sub_0801C378
sub_0801C378: @ 0x0801C378
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801C3D0
	ldr r1, [r4, #100]
	cmp r1, #0
	beq _0801C3B8
	mov r0, #8
	strb r0, [r4, #20]
	mov r0, #128
	lsl r0, r0, #2
	str r0, [r4, #12]
	add r1, r4, #0
	add r1, r1, #70
	mov r0, #20
	strb r0, [r1]
	add r0, r4, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r1, r1, #8
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x08003870
	b _0801C3D0
_0801C3B8:
	mov r0, #6
	strb r0, [r4, #20]
	str r1, [r4, #88]
	add r0, r4, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r1, r1, #12
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x08003870
_0801C3D0:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801C378

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801C3D8
sub_0801C3D8: @ 0x0801C3D8
	push {r4-r6,lr}
	add r4, r0, #0
	bl 0x08003828
	add r6, r4, #0
	add r6, r6, #41
	ldrb r1, [r6]
	mov r0, #128
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #0
	beq _0801C412
	ldr r0, [r4, #88]
	cmp r0, #0
	beq _0801C40A
	mov r0, #7
	strb r0, [r4, #20]
	add r0, r4, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r0, r4, #0
	bl 0x08003870
	b _0801C444
_0801C40A:
	add r0, r4, #0
	bl sub_0801C4C4
	b _0801C444
_0801C412:
	lsl r0, r1, #24
	cmp r0, #0
	beq _0801C444
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	bl sub_0804411C
	add r1, r0, #0
	cmp r1, #0
	beq _0801C444
	add r0, r4, #0
	add r0, r0, #43
	ldrb r0, [r0]
	add r2, r1, #0
	add r2, r2, #43
	strb r0, [r2]
	str r4, [r1, #84]
	strb r5, [r6]
	str r1, [r4, #88]
	str r5, [r4, #100]
	add r1, r4, #0
	add r1, r1, #112
	mov r0, #60
	strh r0, [r1]
_0801C444:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801C3D8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801C44C
sub_0801C44C: @ 0x0801C44C
	push {lr}
	add r2, r0, #0
	ldr r0, [r2, #88]
	cmp r0, #0
	beq _0801C482
	ldr r0, [r2, #100]
	cmp r0, #0
	beq _0801C488
	mov r0, #8
	strb r0, [r2, #20]
	mov r0, #128
	lsl r0, r0, #2
	str r0, [r2, #12]
	add r1, r2, #0
	add r1, r1, #70
	mov r0, #20
	strb r0, [r1]
	add r0, r2, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r1, r1, #8
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r2, #0
	bl 0x08003870
	b _0801C488
_0801C482:
	add r0, r2, #0
	bl sub_0801C4C4
_0801C488:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801C44C

	THUMB_FUNC_START sub_0801C48C
sub_0801C48C: @ 0x0801C48C
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003834
	add r0, r4, #0
	bl 0x0800963C
	lsl r0, r0, #16
	cmp r0, #0
	bne _0801C4BE
	mov r0, #128
	str r0, [r4, #12]
	add r1, r4, #0
	add r1, r1, #70
	mov r0, #12
	strb r0, [r1]
	add r2, r4, #0
	add r2, r2, #43
	ldrb r0, [r2]
	mov r1, #16
	eor r0, r0, r1
	strb r0, [r2]
	add r0, r4, #0
	bl sub_0801C4C4
_0801C4BE:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801C48C

	THUMB_FUNC_START sub_0801C4C4
sub_0801C4C4: @ 0x0801C4C4
	push {lr}
	mov r2, #0
	mov r1, #1
	strb r1, [r0, #20]
	str r2, [r0, #100]
	add r1, r0, #0
	add r1, r1, #43
	ldrb r1, [r1]
	lsr r1, r1, #3
	add r2, r0, #0
	add r2, r2, #42
	strb r1, [r2]
	add r1, r1, #4
	bl 0x08003870
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801C4C4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801C4E8
sub_0801C4E8: @ 0x0801C4E8
	push {r4,r5,lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, r1, #112
	ldrh r0, [r1]
	cmp r0, #0
	bne _0801C548
	add r0, r5, #0
	add r0, r0, #43
	ldrb r4, [r0]
	mov r0, #128
	orr r4, r4, r0
	add r0, r5, #0
	mov r1, #12
	bl 0x0800997C
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r4, r0
	bne _0801C54C
	add r0, r5, #0
	mov r1, #56
	mov r2, #56
	bl 0x08009E6C
	cmp r0, #0
	beq _0801C524
	str r0, [r5, #100]
	mov r0, #30
	b _0801C528
_0801C524:
	str r0, [r5, #100]
	mov r0, #16
_0801C528:
	strb r0, [r5, #23]
	mov r0, #5
	strb r0, [r5, #20]
	ldr r1, _0801C544  @ =gUnknown_0813A44C
	add r0, r5, #0
	add r0, r0, #42
	ldrb r0, [r0]
	add r0, r0, r1
	ldrb r1, [r0]
	add r0, r5, #0
	bl 0x08003870
	mov r0, #0
	b _0801C54E
_0801C544:
	.4byte gUnknown_0813A44C
_0801C548:
	sub r0, r0, #1
	strh r0, [r1]
_0801C54C:
	mov r0, #1
_0801C54E:
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0801C4E8

	THUMB_FUNC_START sub_0801C554
sub_0801C554: @ 0x0801C554
	push {lr}
	ldr r1, _0801C560  @ =gUnknown_0813A620
	bl 0x08009924
	pop {r0}
	bx r0
_0801C560:
	.4byte gUnknown_0813A620
	THUMB_FUNC_END sub_0801C554

	THUMB_FUNC_START sub_0801C564
sub_0801C564: @ 0x0801C564
	push {lr}
	ldr r2, _0801C578  @ =gUnknown_0813A638
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0801C578:
	.4byte gUnknown_0813A638
	THUMB_FUNC_END sub_0801C564

	THUMB_FUNC_START sub_0801C57C
sub_0801C57C: @ 0x0801C57C
	push {r4,lr}
	add r4, r0, #0
	add r0, r0, #65
	ldrb r2, [r0]
	cmp r2, #147
	beq _0801C5E8
	sub r0, r0, #2
	ldrb r1, [r0]
	add r3, r0, #0
	cmp r1, #37
	bne _0801C5C4
	cmp r2, #131
	bls _0801C5C4
	mov r1, #4
	strb r1, [r4, #20]
	mov r0, #128
	lsl r0, r0, #9
	str r0, [r4, #16]
	mov r0, #38
	strb r0, [r3]
	add r0, r4, #0
	add r0, r0, #70
	strb r1, [r0]
	ldr r0, _0801C5C0  @ =gUnknown_0813A724
	str r0, [r4, #72]
	add r1, r4, #0
	add r1, r1, #42
	mov r0, #1
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #1
	bl 0x08003870
	b _0801C5E8
_0801C5C0:
	.4byte gUnknown_0813A724
_0801C5C4:
	ldrb r0, [r3]
	cmp r0, #38
	bne _0801C5E8
	add r0, r4, #0
	add r0, r0, #65
	ldrb r0, [r0]
	cmp r0, #128
	beq _0801C5E8
	add r1, r4, #0
	add r1, r1, #61
	mov r0, #250
	strb r0, [r1]
	add r1, r1, #5
	mov r0, #32
	strb r0, [r1]
	mov r0, #96
	bl 0x08003DFC
_0801C5E8:
	ldr r1, _0801C5F8  @ =gUnknown_0813A620
	add r0, r4, #0
	bl 0x080098A0
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801C5F8:
	.4byte gUnknown_0813A620
	THUMB_FUNC_END sub_0801C57C

	THUMB_FUNC_START sub_0801C5FC
sub_0801C5FC: @ 0x0801C5FC
	push {r4-r6,lr}
	add r4, r0, #0
	bl 0x08009624
	add r0, r4, #0
	add r0, r0, #63
	ldrb r0, [r0]
	cmp r0, #38
	bne _0801C626
	add r6, r4, #0
	add r6, r6, #62
	ldrb r0, [r6]
	add r5, r4, #0
	add r5, r5, #43
	strb r0, [r5]
	ldrh r1, [r4, #44]
	add r0, r4, #0
	bl 0x080038E8
	ldrb r0, [r5]
	strb r0, [r6]
_0801C626:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801C5FC

	THUMB_FUNC_START sub_0801C62C
sub_0801C62C: @ 0x0801C62C
	push {lr}
	mov r12, r0
	mov r3, #0
	mov r2, #1
	mov r0, #1
	mov r1, r12
	strb r0, [r1, #20]
	strb r0, [r1, #23]
	ldrb r1, [r1, #28]
	sub r0, r0, #5
	and r0, r0, r1
	orr r0, r0, r2
	mov r1, r12
	strb r0, [r1, #28]
	add r1, r1, #46
	mov r0, #5
	strb r0, [r1]
	ldr r0, _0801C674  @ =gUnknown_0813A718
	mov r1, r12
	str r0, [r1, #72]
	strb r3, [r1, #26]
	mov r2, r12
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #16
	orr r0, r0, r1
	strb r0, [r2]
	mov r0, r12
	add r0, r0, #42
	strb r3, [r0]
	mov r0, r12
	mov r1, #0
	bl 0x08003870
	pop {r0}
	bx r0
_0801C674:
	.4byte gUnknown_0813A718
	THUMB_FUNC_END sub_0801C62C

	THUMB_FUNC_START sub_0801C678
sub_0801C678: @ 0x0801C678
	push {r4-r6,lr}
	add r4, r0, #0
	mov r1, #192
	lsl r1, r1, #5
	bl 0x08003594
	add r5, r0, #0
	cmp r5, #0
	bne _0801C74C
	add r0, r4, #0
	mov r1, #56
	mov r2, #56
	bl 0x08009E6C
	add r3, r0, #0
	cmp r3, #0
	beq _0801C6C0
	add r0, r4, #0
	add r0, r0, #114
	mov r1, #1
	strb r1, [r0]
	add r2, r4, #0
	add r2, r2, #115
	mov r1, #4
	strb r1, [r2]
	ldr r1, [r4, #100]
	add r2, r0, #0
	cmp r1, #0
	beq _0801C6B4
	str r1, [r4, #88]
_0801C6B4:
	ldr r0, [r4, #100]
	cmp r3, r0
	bne _0801C6BC
	str r5, [r4, #88]
_0801C6BC:
	str r3, [r4, #100]
	b _0801C6E4
_0801C6C0:
	add r1, r4, #0
	add r1, r1, #115
	ldrb r0, [r1]
	add r2, r4, #0
	add r2, r2, #114
	cmp r0, #0
	beq _0801C6E4
	sub r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	bne _0801C6E4
	str r0, [r4, #100]
	str r0, [r4, #88]
	strb r0, [r2]
	mov r0, #1
	strb r0, [r4, #23]
_0801C6E4:
	ldrb r0, [r2]
	cmp r0, #0
	beq _0801C720
	ldr r0, [r4, #100]
	add r1, r4, #0
	bl sub_0803CECC
	add r0, r0, #4
	mov r6, #31
	and r0, r0, r6
	add r5, r4, #0
	add r5, r5, #43
	strb r0, [r5]
	ldr r0, [r4, #88]
	cmp r0, #0
	beq _0801C740
	add r1, r4, #0
	bl sub_0803CECC
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldrb r1, [r5]
	add r0, r0, r1
	sub r0, r0, #4
	lsr r1, r0, #31
	add r0, r0, r1
	asr r0, r0, #1
	and r0, r0, r6
	strb r0, [r5]
	b _0801C740
_0801C720:
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801C740
	mov r0, #30
	strb r0, [r4, #23]
	bl 0x0800099C
	mov r1, #24
	and r0, r0, r1
	add r0, r0, #4
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
_0801C740:
	add r0, r4, #0
	bl 0x0800963C
	add r0, r4, #0
	bl 0x08003828
_0801C74C:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801C678

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801C754
sub_0801C754: @ 0x0801C754
	push {r4,lr}
	add r4, r0, #0
	ldr r1, _0801C77C  @ =gUnknown_0813A658
	ldrb r0, [r4, #21]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #21]
	cmp r0, #1
	bhi _0801C774
	add r0, r4, #0
	bl sub_0801CA04
_0801C774:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801C77C:
	.4byte gUnknown_0813A658
	THUMB_FUNC_END sub_0801C754

	THUMB_FUNC_START sub_0801C780
sub_0801C780: @ 0x0801C780
	push {lr}
	mov r1, #1
	strb r1, [r0, #21]
	mov r1, #4
	strb r1, [r0, #23]
	add r3, r0, #0
	add r3, r3, #60
	ldrb r2, [r3]
	mov r1, #127
	and r1, r1, r2
	strb r1, [r3]
	add r2, r0, #0
	add r2, r2, #42
	mov r1, #6
	strb r1, [r2]
	bl 0x08003870
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801C780

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801C7A8
sub_0801C7A8: @ 0x0801C7A8
	bx lr
	THUMB_FUNC_END sub_0801C7A8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801C7AC
sub_0801C7AC: @ 0x0801C7AC
	push {r4,lr}
	add r3, r0, #0
	add r0, r0, #43
	ldrb r0, [r0]
	cmp r0, #255
	beq _0801C80A
	ldrb r0, [r3, #23]
	sub r0, r0, #1
	strb r0, [r3, #23]
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #0
	bne _0801C80A
	mov r0, #3
	strb r0, [r3, #20]
	mov r0, #192
	lsl r0, r0, #1
	str r0, [r3, #12]
	str r4, [r3, #16]
	add r2, r3, #0
	add r2, r2, #60
	ldrb r0, [r2]
	mov r1, #128
	orr r0, r0, r1
	strb r0, [r2]
	add r1, r3, #0
	add r1, r1, #63
	mov r0, #7
	strb r0, [r1]
	add r1, r1, #7
	mov r0, #12
	strb r0, [r1]
	sub r1, r1, #9
	mov r0, #248
	strb r0, [r1]
	ldr r0, _0801C810  @ =gUnknown_0813A730
	str r0, [r3, #72]
	add r0, r3, #0
	add r0, r0, #112
	strb r4, [r0]
	sub r1, r1, #19
	mov r0, #8
	strb r0, [r1]
	add r0, r3, #0
	mov r1, #8
	bl 0x08003870
_0801C80A:
	pop {r4}
	pop {r0}
	bx r0
_0801C810:
	.4byte gUnknown_0813A730
	THUMB_FUNC_END sub_0801C7AC

	THUMB_FUNC_START sub_0801C814
sub_0801C814: @ 0x0801C814
	push {lr}
	mov r2, #0
	mov r1, #6
	strb r1, [r0, #20]
	strb r2, [r0, #26]
	add r3, r0, #0
	add r3, r3, #60
	ldrb r2, [r3]
	mov r1, #128
	orr r1, r1, r2
	strb r1, [r3]
	ldr r1, _0801C840  @ =gUnknown_0813A724
	str r1, [r0, #72]
	add r2, r0, #0
	add r2, r2, #42
	mov r1, #5
	strb r1, [r2]
	bl 0x08003870
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801C840:
	.4byte gUnknown_0813A724
	THUMB_FUNC_END sub_0801C814

	THUMB_FUNC_START sub_0801C844
sub_0801C844: @ 0x0801C844
	push {r4,lr}
	add r4, r0, #0
	bl 0x08009664
	add r0, r4, #0
	bl 0x08003828
	ldr r1, _0801C8A4  @ =gUnknown_0813A66C
	add r0, r4, #0
	add r0, r0, #43
	ldrb r0, [r0]
	lsr r0, r0, #3
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r1, [r0]
	ldrh r0, [r4, #44]
	and r0, r0, r1
	cmp r0, #0
	beq _0801C88C
	add r1, r4, #0
	add r1, r1, #112
	mov r0, #1
	strb r0, [r1]
	sub r1, r1, #49
	mov r0, #38
	strb r0, [r1]
	add r1, r1, #7
	mov r0, #4
	strb r0, [r1]
	sub r1, r1, #28
	mov r0, #5
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #5
	bl 0x08003870
_0801C88C:
	add r0, r4, #0
	add r0, r0, #112
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801C8A8
	mov r1, #192
	lsl r1, r1, #5
	add r0, r4, #0
	bl 0x08003594
	b _0801C8B2
	.byte 0x00
	.byte 0x00
_0801C8A4:
	.4byte gUnknown_0813A66C
_0801C8A8:
	ldr r0, [r4, #56]
	mov r1, #128
	lsl r1, r1, #7
	add r0, r0, r1
	str r0, [r4, #56]
_0801C8B2:
	mov r0, #58
	ldrsh r2, [r4, r0]
	cmp r2, #0
	bne _0801C8E4
	mov r0, #1
	strb r0, [r4, #20]
	strb r0, [r4, #23]
	add r0, r0, #255
	str r0, [r4, #12]
	add r1, r4, #0
	add r1, r1, #63
	mov r0, #37
	strb r0, [r1]
	add r1, r1, #7
	mov r0, #12
	strb r0, [r1]
	ldr r0, _0801C8EC  @ =gUnknown_0813A718
	str r0, [r4, #72]
	add r0, r4, #0
	add r0, r0, #42
	strb r2, [r0]
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
_0801C8E4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801C8EC:
	.4byte gUnknown_0813A718
	THUMB_FUNC_END sub_0801C844

	THUMB_FUNC_START sub_0801C8F0
sub_0801C8F0: @ 0x0801C8F0
	push {r4,r5,lr}
	add r4, r0, #0
	bl 0x08003828
	add r5, r4, #0
	add r5, r5, #42
	ldrb r0, [r5]
	cmp r0, #2
	beq _0801C912
	ldr r0, _0801C938  @ =0x0000FFFC
	strh r0, [r4, #58]
	mov r0, #2
	strb r0, [r5]
	add r0, r4, #0
	mov r1, #2
	bl 0x08003870
_0801C912:
	mov r1, #192
	lsl r1, r1, #5
	add r0, r4, #0
	bl 0x08003594
	ldr r0, [r4, #16]
	cmp r0, #0
	bge _0801C932
	mov r0, #5
	strb r0, [r4, #20]
	mov r0, #3
	strb r0, [r5]
	add r0, r4, #0
	mov r1, #3
	bl 0x08003870
_0801C932:
	pop {r4,r5}
	pop {r0}
	bx r0
_0801C938:
	.4byte 0x0000FFFC
	THUMB_FUNC_END sub_0801C8F0

	THUMB_FUNC_START sub_0801C93C
sub_0801C93C: @ 0x0801C93C
	push {r4,r5,lr}
	add r5, r0, #0
	mov r1, #192
	lsl r1, r1, #5
	bl 0x08003F1C
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	beq _0801C95A
	cmp r0, #1
	beq _0801C980
	add r4, r5, #0
	add r4, r4, #42
	b _0801C996
_0801C95A:
	mov r0, #6
	strb r0, [r5, #20]
	add r1, r5, #0
	add r1, r1, #112
	mov r0, #150
	lsl r0, r0, #2
	strh r0, [r1]
	add r4, r5, #0
	add r4, r4, #42
	mov r0, #5
	strb r0, [r4]
	add r0, r5, #0
	mov r1, #5
	bl 0x08003870
	mov r0, #49
	bl 0x08003DFC
	b _0801C996
_0801C980:
	add r4, r5, #0
	add r4, r4, #42
	mov r0, #4
	strb r0, [r4]
	add r0, r5, #0
	mov r1, #4
	bl 0x08003870
	mov r0, #49
	bl 0x08003DFC
_0801C996:
	ldrb r0, [r4]
	cmp r0, #4
	bne _0801C9AE
	ldr r0, [r5, #16]
	cmp r0, #0
	bge _0801C9AE
	mov r0, #3
	strb r0, [r4]
	add r0, r5, #0
	mov r1, #3
	bl 0x08003870
_0801C9AE:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801C93C

	THUMB_FUNC_START sub_0801C9B4
sub_0801C9B4: @ 0x0801C9B4
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	bl sub_0801CA04
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801C9CE
	add r0, r4, #0
	bl 0x080077D0
_0801C9CE:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801C9B4

	THUMB_FUNC_START sub_0801C9D4
sub_0801C9D4: @ 0x0801C9D4
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0801C9FE
	mov r1, #0
	mov r0, #1
	strb r0, [r4, #20]
	strb r0, [r4, #23]
	add r0, r4, #0
	add r0, r0, #42
	strb r1, [r0]
	add r0, r4, #0
	bl 0x08003870
_0801C9FE:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801C9D4

	THUMB_FUNC_START sub_0801CA04
sub_0801CA04: @ 0x0801CA04
	push {lr}
	mov r12, r0
	mov r3, r12
	add r3, r3, #112
	ldrh r0, [r3]
	sub r0, r0, #1
	strh r0, [r3]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #0
	bne _0801CA80
	mov r1, r12
	ldrb r0, [r1, #20]
	cmp r0, #2
	bne _0801CA40
	ldr r2, _0801CA3C  @ =gUnknown_03006A30
	ldrb r1, [r1, #11]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r2
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _0801CA40
	mov r0, #4
	strh r0, [r3]
	b _0801CAB0
	.byte 0x00
	.byte 0x00
_0801CA3C:
	.4byte gUnknown_03006A30
_0801CA40:
	mov r0, #0
	mov r3, #7
	mov r2, r12
	strb r3, [r2, #20]
	strb r0, [r2, #26]
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r2]
	mov r1, r12
	add r1, r1, #63
	mov r0, #37
	strb r0, [r1]
	add r1, r1, #7
	mov r0, #12
	strb r0, [r1]
	ldr r0, _0801CA7C  @ =gUnknown_0813A724
	mov r1, r12
	str r0, [r1, #72]
	mov r0, r12
	add r0, r0, #42
	strb r3, [r0]
	mov r0, r12
	mov r1, #7
	bl 0x08003870
	mov r0, #0
	b _0801CAB2
	.byte 0x00
	.byte 0x00
_0801CA7C:
	.4byte gUnknown_0813A724
_0801CA80:
	cmp r0, #60
	bne _0801CA8A
	mov r0, #2
	mov r2, r12
	strb r0, [r2, #26]
_0801CA8A:
	ldrh r2, [r3]
	cmp r2, #59
	bhi _0801CAB0
	mov r0, #1
	and r0, r0, r2
	cmp r0, #0
	beq _0801CAB0
	ldr r0, _0801CAB8  @ =gUnknown_0813A674
	mov r1, #6
	and r1, r1, r2
	lsr r1, r1, #1
	add r1, r1, r0
	mov r0, #0
	ldrsb r0, [r1, r0]
	mov r1, r12
	ldrh r1, [r1, #50]
	add r0, r0, r1
	mov r2, r12
	strh r0, [r2, #50]
_0801CAB0:
	mov r0, #1
_0801CAB2:
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0801CAB8:
	.4byte gUnknown_0813A674
	THUMB_FUNC_END sub_0801CA04

	THUMB_FUNC_START sub_0801CABC
sub_0801CABC: @ 0x0801CABC
	push {r4,r5,lr}
	add r5, r0, #0
	ldrb r0, [r5, #10]
	cmp r0, #0
	beq _0801CB04
	add r0, r5, #0
	bl 0x080095A4
	ldr r4, _0801CB00  @ =gUnknown_0813A73C
	add r0, r5, #0
	bl 0x080098DC
	lsl r0, r0, #24
	lsr r0, r0, #22
	add r0, r0, r4
	ldr r1, [r0]
	add r0, r5, #0
	bl _call_via_r1
	add r0, r5, #0
	bl 0x08008D90
	ldrb r2, [r5, #31]
	mov r1, #63
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #64
	orr r0, r0, r2
	strb r0, [r5, #31]
	ldrb r0, [r5, #29]
	and r1, r1, r0
	orr r1, r1, r2
	strb r1, [r5, #29]
	b _0801CB0A
_0801CB00:
	.4byte gUnknown_0813A73C
_0801CB04:
	add r0, r5, #0
	bl sub_0801CB60
_0801CB0A:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801CABC

	THUMB_FUNC_START sub_0801CB10
sub_0801CB10: @ 0x0801CB10
	push {lr}
	ldr r2, _0801CB24  @ =gUnknown_0813A754
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0801CB24:
	.4byte gUnknown_0813A754
	THUMB_FUNC_END sub_0801CB10

	THUMB_FUNC_START sub_0801CB28
sub_0801CB28: @ 0x0801CB28
	push {lr}
	ldr r1, _0801CB34  @ =gUnknown_0813A73C
	bl 0x080098A0
	pop {r0}
	bx r0
_0801CB34:
	.4byte gUnknown_0813A73C
	THUMB_FUNC_END sub_0801CB28

	THUMB_FUNC_START sub_0801CB38
sub_0801CB38: @ 0x0801CB38
	push {r4,lr}
	add r4, r0, #0
	bl sub_0801CD88
	add r0, r4, #0
	bl sub_08043F20
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801CB38

	THUMB_FUNC_START sub_0801CB4C
sub_0801CB4C: @ 0x0801CB4C
	push {r4,lr}
	add r4, r0, #0
	bl sub_0801CD88
	add r0, r4, #0
	bl 0x080098CC
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801CB4C

	THUMB_FUNC_START sub_0801CB60
sub_0801CB60: @ 0x0801CB60
	push {lr}
	ldr r2, _0801CB74  @ =gUnknown_0813A75C
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0801CB74:
	.4byte gUnknown_0813A75C
	THUMB_FUNC_END sub_0801CB60

	THUMB_FUNC_START sub_0801CB78
sub_0801CB78: @ 0x0801CB78
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r4, r0, #0
	bl sub_080123E8
	add r7, r0, #0
	cmp r7, #0
	beq _0801CC3C
	bl sub_08012410
	add r6, r0, #0
	cmp r6, #0
	beq _0801CC3C
	bl sub_08012410
	add r5, r0, #0
	cmp r5, #0
	beq _0801CC3C
	bl sub_08012410
	mov r8, r0
	cmp r0, #0
	beq _0801CC3C
	mov r0, #15
	strb r0, [r4, #11]
	add r2, r4, #0
	add r2, r2, #80
	ldrh r1, [r2]
	mov r3, #192
	lsl r3, r3, #8
	add r0, r3, #0
	mov r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	ldr r0, _0801CC48  @ =gUnknown_08139594
	str r0, [r4, #72]
	mov r1, #3
	strb r1, [r7, #8]
	strb r1, [r6, #8]
	strb r1, [r5, #8]
	mov r0, r8
	strb r1, [r0, #8]
	mov r0, #24
	strb r0, [r7, #9]
	strb r0, [r6, #9]
	strb r0, [r5, #9]
	mov r2, r8
	strb r0, [r2, #9]
	mov r0, #1
	strb r0, [r7, #10]
	strb r0, [r6, #10]
	strb r0, [r5, #10]
	strb r0, [r2, #10]
	strb r3, [r7, #11]
	strb r0, [r6, #11]
	mov r0, #2
	strb r0, [r5, #11]
	strb r1, [r2, #11]
	str r4, [r7, #84]
	str r4, [r6, #84]
	str r4, [r5, #84]
	str r4, [r2, #84]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_08044018
	add r0, r4, #0
	add r1, r6, #0
	bl sub_08044018
	add r0, r4, #0
	add r1, r5, #0
	bl sub_08044018
	add r0, r4, #0
	mov r1, r8
	bl sub_08044018
	mov r0, #4
	add r1, r7, #0
	bl sub_08012728
	mov r0, #4
	add r1, r6, #0
	bl sub_08012728
	mov r0, #4
	add r1, r5, #0
	bl sub_08012728
	mov r0, #4
	mov r1, r8
	bl sub_08012728
	add r0, r4, #0
	bl sub_0801CE00
_0801CC3C:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801CC48:
	.4byte gUnknown_08139594
	THUMB_FUNC_END sub_0801CB78

	THUMB_FUNC_START sub_0801CC4C
sub_0801CC4C: @ 0x0801CC4C
	push {r4,r5,lr}
	add r5, r0, #0
	mov r1, #80
	mov r2, #64
	bl 0x08009E6C
	add r1, r0, #0
	str r1, [r5, #88]
	ldrb r0, [r5, #23]
	sub r0, r0, #1
	strb r0, [r5, #23]
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801CC6C
	cmp r1, #0
	beq _0801CCA6
_0801CC6C:
	cmp r1, #0
	bne _0801CC8C
	bl 0x0800099C
	ldr r4, _0801CCAC  @ =gUnknown_03006A30
	ldr r1, _0801CCB0  @ =gUnknown_03006C80
	ldrb r1, [r1]
	bl __umodsi3
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #4
	add r4, r4, #40
	add r1, r1, r4
	ldr r0, [r1]
	str r0, [r5, #88]
_0801CC8C:
	mov r0, #2
	strb r0, [r5, #20]
	mov r0, #15
	strb r0, [r5, #23]
	mov r0, #60
	strb r0, [r5, #24]
	ldr r1, [r5, #88]
	add r0, r5, #0
	bl sub_0803CECC
	add r1, r5, #0
	add r1, r1, #43
	strb r0, [r1]
_0801CCA6:
	pop {r4,r5}
	pop {r0}
	bx r0
_0801CCAC:
	.4byte gUnknown_03006A30
_0801CCB0:
	.4byte gUnknown_03006C80
	THUMB_FUNC_END sub_0801CC4C

	THUMB_FUNC_START sub_0801CCB4
sub_0801CCB4: @ 0x0801CCB4
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #24]
	sub r0, r0, #1
	strb r0, [r4, #24]
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801CCF8
	ldrb r0, [r4, #11]
	cmp r0, #0
	beq _0801CCF0
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801CCE8
	mov r0, #15
	strb r0, [r4, #23]
	ldr r1, [r4, #88]
	add r0, r4, #0
	bl 0x08009EA4
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
_0801CCE8:
	add r0, r4, #0
	bl 0x08009694
	b _0801CCFE
_0801CCF0:
	add r0, r4, #0
	bl sub_08012540
	b _0801CCFE
_0801CCF8:
	add r0, r4, #0
	bl sub_0801CE00
_0801CCFE:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801CCB4

	THUMB_FUNC_START sub_0801CD04
sub_0801CD04: @ 0x0801CD04
	push {r4,lr}
	add r4, r0, #0
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	add r1, r4, #0
	add r1, r1, #46
	mov r0, #0
	strb r0, [r1]
	ldr r0, _0801CD3C  @ =gUnknown_08139594
	str r0, [r4, #72]
	mov r0, #1
	strb r0, [r4, #20]
	add r0, r4, #0
	bl sub_0801CDA0
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801CD3C:
	.4byte gUnknown_08139594
	THUMB_FUNC_END sub_0801CD04

	THUMB_FUNC_START sub_0801CD40
sub_0801CD40: @ 0x0801CD40
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0801CD66
	add r0, r4, #0
	bl sub_0801CDA0
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
	b _0801CD6C
_0801CD66:
	add r0, r4, #0
	bl 0x08009694
_0801CD6C:
	ldr r0, _0801CD84  @ =gUnknown_0813A768
	add r1, r4, #0
	add r1, r1, #41
	ldrb r1, [r1]
	add r1, r1, r0
	mov r0, #0
	ldrsb r0, [r1, r0]
	strh r0, [r4, #58]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801CD84:
	.4byte gUnknown_0813A768
	THUMB_FUNC_END sub_0801CD40

	THUMB_FUNC_START sub_0801CD88
sub_0801CD88: @ 0x0801CD88
	ldr r2, [r0, #84]
	ldr r1, _0801CD9C  @ =gUnknown_08137B10
	ldrb r0, [r0, #11]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldrb r1, [r2, #11]
	eor r0, r0, r1
	strb r0, [r2, #11]
	bx lr
_0801CD9C:
	.4byte gUnknown_08137B10
	THUMB_FUNC_END sub_0801CD88

	THUMB_FUNC_START sub_0801CDA0
sub_0801CDA0: @ 0x0801CDA0
	push {r4,r5,lr}
	add r5, r0, #0
	add r0, r0, #112
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801CDC4
	ldr r1, [r5, #84]
	add r0, r5, #0
	bl sub_0803CECC
	add r4, r0, #0
	bl 0x0800099C
	ldr r2, _0801CDC0  @ =gUnknown_0813A76D
	mov r1, #15
	b _0801CDD6
_0801CDC0:
	.4byte gUnknown_0813A76D
_0801CDC4:
	ldr r1, [r5, #84]
	add r0, r5, #0
	bl sub_0803CECC
	add r4, r0, #0
	bl 0x0800099C
	ldr r2, _0801CDFC  @ =gUnknown_0813A76D
	mov r1, #3
_0801CDD6:
	and r1, r1, r0
	add r1, r1, r2
	ldrb r0, [r1]
	add r4, r4, r0
	mov r0, #31
	and r4, r4, r0
	add r0, r5, #0
	add r0, r0, #43
	strb r4, [r0]
	add r0, r5, #0
	add r0, r0, #112
	ldrb r1, [r0]
	mov r2, #1
	eor r1, r1, r2
	strb r1, [r0]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801CDFC:
	.4byte gUnknown_0813A76D
	THUMB_FUNC_END sub_0801CDA0

	THUMB_FUNC_START sub_0801CE00
sub_0801CE00: @ 0x0801CE00
	mov r2, #0
	mov r1, #1
	strb r1, [r0, #20]
	ldr r1, _0801CE10  @ =gUnknown_03006C80
	ldrb r1, [r1]
	strb r1, [r0, #23]
	str r2, [r0, #88]
	bx lr
_0801CE10:
	.4byte gUnknown_03006C80
	THUMB_FUNC_END sub_0801CE00

	THUMB_FUNC_START sub_0801CE14
sub_0801CE14: @ 0x0801CE14
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #10]
	cmp r0, #2
	bne _0801CE38
	ldr r1, _0801CE34  @ =gUnknown_0813A780
	add r0, r4, #0
	bl 0x08009924
	ldr r0, [r4, #84]
	cmp r0, #0
	beq _0801CE48
	add r0, r4, #0
	bl sub_0801D330
	b _0801CE48
_0801CE34:
	.4byte gUnknown_0813A780
_0801CE38:
	ldr r0, _0801CE50  @ =gUnknown_0813A798
	ldrb r1, [r4, #20]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r4, #0
	bl _call_via_r1
_0801CE48:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801CE50:
	.4byte gUnknown_0813A798
	THUMB_FUNC_END sub_0801CE14

	THUMB_FUNC_START sub_0801CE54
sub_0801CE54: @ 0x0801CE54
	push {lr}
	ldr r2, _0801CE68  @ =gUnknown_0813A7A4
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0801CE68:
	.4byte gUnknown_0813A7A4
	THUMB_FUNC_END sub_0801CE54

	THUMB_FUNC_START sub_0801CE6C
sub_0801CE6C: @ 0x0801CE6C
	push {r4-r6,lr}
	add r4, r0, #0
	add r0, r0, #66
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801CEA6
	ldrb r0, [r4, #20]
	cmp r0, #3
	beq _0801CEA6
	cmp r0, #6
	bhi _0801CEA6
	mov r1, #0
	mov r0, #3
	strb r0, [r4, #20]
	strb r1, [r4, #23]
	ldrb r1, [r4, #28]
	sub r0, r0, #7
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	add r1, r4, #0
	add r1, r1, #42
	mov r0, #2
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #2
	bl 0x08003870
_0801CEA6:
	add r0, r4, #0
	add r0, r0, #114
	add r1, r4, #0
	add r1, r1, #69
	ldrb r2, [r0]
	add r6, r0, #0
	add r5, r1, #0
	ldrb r0, [r5]
	cmp r2, r0
	bne _0801CEC4
	add r0, r4, #0
	add r0, r0, #67
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801CF0E
_0801CEC4:
	ldr r0, [r4, #84]
	cmp r0, #0
	beq _0801CF00
	bl sub_0801D3F0
	ldr r0, [r4, #84]
	add r0, r0, #69
	mov r1, #0
	strb r1, [r0]
	str r1, [r4, #84]
	add r0, r4, #0
	add r0, r0, #67
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801CF00
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	add r1, r4, #0
	add r1, r1, #42
	mov r0, #2
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #2
	bl 0x08003870
_0801CF00:
	ldrb r0, [r4, #20]
	cmp r0, #6
	bhi _0801CF0A
	mov r0, #7
	strb r0, [r4, #20]
_0801CF0A:
	ldrb r0, [r5]
	strb r0, [r6]
_0801CF0E:
	ldr r1, [r4, #16]
	mov r0, #192
	lsl r0, r0, #9
	cmp r1, r0
	bne _0801CF26
	add r0, r4, #0
	add r0, r0, #65
	ldrb r0, [r0]
	cmp r0, #128
	bne _0801CF26
	mov r0, #0
	str r0, [r4, #16]
_0801CF26:
	ldr r1, _0801CF34  @ =gUnknown_0813A780
	add r0, r4, #0
	bl 0x080098A0
	pop {r4-r6}
	pop {r0}
	bx r0
_0801CF34:
	.4byte gUnknown_0813A780
	THUMB_FUNC_END sub_0801CE6C

	THUMB_FUNC_START sub_0801CF38
sub_0801CF38: @ 0x0801CF38
	push {r4,lr}
	add r4, r0, #0
	mov r0, #1
	strb r0, [r4, #20]
	add r1, r4, #0
	add r1, r1, #46
	mov r0, #2
	strb r0, [r1]
	ldr r0, _0801CF80  @ =gUnknown_0813A86C
	str r0, [r4, #72]
	ldr r1, _0801CF84  @ =gUnknown_0813A7CC
	ldr r0, [r4, #84]
	ldrb r0, [r0, #10]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	add r1, r4, #0
	add r1, r1, #63
	strb r0, [r1]
	add r0, r4, #0
	add r0, r0, #69
	ldrb r0, [r0]
	add r1, r1, #51
	strb r0, [r1]
	bl 0x0800099C
	mov r1, #31
	and r0, r0, r1
	add r0, r0, #30
	add r1, r4, #0
	add r1, r1, #115
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801CF80:
	.4byte gUnknown_0813A86C
_0801CF84:
	.4byte gUnknown_0813A7CC
	THUMB_FUNC_END sub_0801CF38

	THUMB_FUNC_START sub_0801CF88
sub_0801CF88: @ 0x0801CF88
	push {r4,lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, r1, #112
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801CF9C
	sub r0, r0, #1
	strh r0, [r1]
	b _0801D016
_0801CF9C:
	add r0, r4, #0
	mov r1, #104
	mov r2, #72
	bl 0x08009E6C
	cmp r0, #0
	bne _0801CFEC
	add r1, r4, #0
	add r1, r1, #115
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801CFBA
	sub r0, r0, #1
	strb r0, [r1]
	b _0801D016
_0801CFBA:
	mov r0, #60
	strb r0, [r1]
	bl 0x0800099C
	add r2, r0, #0
	mov r0, #31
	and r2, r2, r0
	cmp r2, #0
	bne _0801D016
	mov r0, #2
	strb r0, [r4, #20]
	ldrb r1, [r4, #28]
	sub r0, r0, #6
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	add r0, r4, #0
	add r0, r0, #42
	strb r2, [r0]
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
	b _0801D016
_0801CFEC:
	add r0, r4, #0
	mov r1, #14
	bl 0x0800997C
	lsl r1, r0, #24
	lsr r2, r1, #24
	mov r1, #128
	and r1, r1, r0
	cmp r1, #0
	beq _0801D016
	ldrb r0, [r4, #28]
	mov r1, #4
	neg r1, r1
	and r1, r1, r0
	mov r0, #1
	orr r1, r1, r0
	strb r1, [r4, #28]
	add r0, r4, #0
	add r1, r2, #0
	bl sub_0801D380
_0801D016:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801CF88

	THUMB_FUNC_START sub_0801D01C
sub_0801D01C: @ 0x0801D01C
	push {r4,r5,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r5, #128
	add r0, r5, #0
	and r0, r0, r1
	cmp r0, #0
	bne _0801D054
	ldr r2, [r4, #88]
	add r0, r4, #0
	mov r1, #14
	bl 0x08009998
	lsl r1, r0, #24
	lsr r2, r1, #24
	add r1, r5, #0
	and r1, r1, r0
	cmp r1, #0
	beq _0801D05A
	add r0, r4, #0
	add r1, r2, #0
	bl sub_0801D380
	b _0801D05A
_0801D054:
	add r0, r4, #0
	bl sub_0801D3C0
_0801D05A:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801D01C

	THUMB_FUNC_START sub_0801D060
sub_0801D060: @ 0x0801D060
	push {r4-r6,lr}
	add r4, r0, #0
	bl 0x0800963C
	add r0, r4, #0
	bl 0x08003828
	ldrb r0, [r4, #23]
	add r6, r0, #0
	cmp r6, #0
	beq _0801D07C
	sub r0, r0, #1
	strb r0, [r4, #23]
	b _0801D0F4
_0801D07C:
	add r3, r4, #0
	add r3, r3, #43
	ldrb r5, [r3]
	mov r0, #8
	and r0, r0, r5
	cmp r0, #0
	beq _0801D0B8
	ldrh r1, [r4, #50]
	mov r2, #15
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, #8
	bne _0801D0B0
	ldrh r0, [r4, #54]
	add r1, r2, #0
	and r1, r1, r0
	cmp r1, #8
	beq _0801D0CC
	mov r0, #4
	strb r0, [r4, #20]
	cmp r1, #7
	bgt _0801D0AC
	mov r0, #16
	b _0801D0F2
_0801D0AC:
	strb r6, [r3]
	b _0801D0F4
_0801D0B0:
	ldrh r1, [r4, #44]
	mov r0, #238
	lsl r0, r0, #8
	b _0801D0E8
_0801D0B8:
	ldrh r0, [r4, #54]
	mov r1, #15
	add r2, r1, #0
	and r2, r2, r0
	cmp r2, #8
	bne _0801D0E4
	ldrh r0, [r4, #50]
	and r1, r1, r0
	cmp r1, #8
	bne _0801D0D4
_0801D0CC:
	add r0, r4, #0
	bl sub_0801D3D8
	b _0801D0F4
_0801D0D4:
	mov r0, #4
	strb r0, [r4, #20]
	cmp r1, #7
	bgt _0801D0E0
	strb r2, [r3]
	b _0801D0F4
_0801D0E0:
	mov r0, #24
	b _0801D0F2
_0801D0E4:
	ldrh r1, [r4, #44]
	mov r0, #238
_0801D0E8:
	and r0, r0, r1
	cmp r0, #0
	beq _0801D0F4
	mov r0, #16
	eor r0, r0, r5
_0801D0F2:
	strb r0, [r3]
_0801D0F4:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801D060

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801D0FC
sub_0801D0FC: @ 0x0801D0FC
	push {r4,lr}
	add r4, r0, #0
	bl 0x0800963C
	add r0, r4, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #43
	ldrb r1, [r0]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _0801D12A
	ldrh r1, [r4, #50]
	mov r0, #15
	and r0, r0, r1
	cmp r0, #8
	bne _0801D13A
	add r0, r4, #0
	bl sub_0801D3D8
	b _0801D13A
_0801D12A:
	ldrh r1, [r4, #54]
	mov r0, #15
	and r0, r0, r1
	cmp r0, #8
	bne _0801D13A
	add r0, r4, #0
	bl sub_0801D3D8
_0801D13A:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801D0FC

	THUMB_FUNC_START sub_0801D140
sub_0801D140: @ 0x0801D140
	push {r4,r5,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r5, #128
	add r0, r5, #0
	and r0, r0, r1
	cmp r0, #0
	beq _0801D16E
	mov r0, #6
	strb r0, [r4, #20]
	add r1, r4, #0
	add r1, r1, #42
	mov r0, #4
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #4
	bl 0x08003870
	b _0801D18A
_0801D16E:
	add r0, r4, #0
	mov r1, #14
	bl 0x0800997C
	lsl r1, r0, #24
	lsr r2, r1, #24
	add r1, r5, #0
	and r1, r1, r0
	cmp r1, #0
	beq _0801D18A
	add r0, r4, #0
	add r1, r2, #0
	bl sub_0801D380
_0801D18A:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801D140

	THUMB_FUNC_START sub_0801D190
sub_0801D190: @ 0x0801D190
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0801D1AC
	add r0, r4, #0
	bl sub_0801D3C0
_0801D1AC:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801D190

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801D1B4
sub_0801D1B4: @ 0x0801D1B4
	push {lr}
	mov r1, #8
	strb r1, [r0, #20]
	mov r1, #15
	strb r1, [r0, #23]
	ldrb r2, [r0, #28]
	sub r1, r1, #19
	and r1, r1, r2
	mov r2, #1
	orr r1, r1, r2
	strb r1, [r0, #28]
	add r2, r0, #0
	add r2, r2, #63
	mov r1, #6
	strb r1, [r2]
	sub r2, r2, #21
	mov r1, #2
	strb r1, [r2]
	bl 0x08003870
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801D1B4

	THUMB_FUNC_START sub_0801D1E0
sub_0801D1E0: @ 0x0801D1E0
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	cmp r0, #0
	beq _0801D1EE
	sub r0, r0, #1
	b _0801D202
_0801D1EE:
	mov r1, #128
	lsl r1, r1, #6
	add r0, r4, #0
	bl 0x08003594
	cmp r0, #0
	bne _0801D204
	mov r0, #9
	strb r0, [r4, #20]
	mov r0, #1
_0801D202:
	strb r0, [r4, #23]
_0801D204:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801D1E0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801D20C
sub_0801D20C: @ 0x0801D20C
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801D22C
	bl 0x0800099C
	mov r1, #24
	and r0, r0, r1
	add r0, r0, #4
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
_0801D22C:
	add r0, r4, #0
	bl 0x0800964C
	add r0, r4, #0
	bl 0x08003834
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801D20C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801D240
sub_0801D240: @ 0x0801D240
	push {r4,r5,lr}
	add r4, r0, #0
	mov r0, #25
	bl sub_08012468
	add r5, r0, #0
	cmp r5, #0
	beq _0801D292
	add r0, r4, #0
	add r1, r5, #0
	bl sub_08044018
	mov r1, #0
	str r1, [r4, #96]
	add r0, r4, #0
	add r0, r0, #104
	strb r1, [r0]
	add r0, r0, #1
	strb r1, [r0]
	add r0, r0, #2
	strb r1, [r0]
	add r0, r0, #1
	mov r3, #0
	strh r1, [r0]
	mov r0, #2
	strb r0, [r5, #10]
	str r4, [r5, #84]
	str r5, [r4, #84]
	mov r2, #1
	mov r0, #1
	strb r0, [r4, #20]
	ldrb r1, [r4, #28]
	sub r0, r0, #5
	and r0, r0, r1
	orr r0, r0, r2
	strb r0, [r4, #28]
	strb r3, [r4, #26]
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
_0801D292:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801D240

	THUMB_FUNC_START sub_0801D298
sub_0801D298: @ 0x0801D298
	push {lr}
	add r1, r0, #0
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801D2B6
	ldr r0, [r1, #84]
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801D2B6
	add r0, r1, #0
	bl 0x080077D0
	b _0801D2BC
_0801D2B6:
	add r0, r1, #0
	bl sub_08012540
_0801D2BC:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801D298

	THUMB_FUNC_START sub_0801D2C0
sub_0801D2C0: @ 0x0801D2C0
	push {lr}
	ldr r2, _0801D2D4  @ =gUnknown_0813A7D0
	ldrb r1, [r0, #21]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0801D2D4:
	.4byte gUnknown_0813A7D0
	THUMB_FUNC_END sub_0801D2C0

	THUMB_FUNC_START sub_0801D2D8
sub_0801D2D8: @ 0x0801D2D8
	add r2, r0, #0
	mov r0, #1
	strb r0, [r2, #21]
	add r1, r2, #0
	add r1, r1, #46
	mov r0, #2
	strb r0, [r1]
	ldr r1, [r2, #84]
	add r0, r1, #0
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801D304
	mov r0, #7
	strb r0, [r1, #20]
	ldr r1, [r2, #84]
	mov r0, #0
	str r0, [r1, #84]
	ldr r1, [r2, #84]
	mov r0, #192
	lsl r0, r0, #9
	str r0, [r1, #16]
_0801D304:
	bx lr
	THUMB_FUNC_END sub_0801D2D8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801D308
sub_0801D308: @ 0x0801D308
	bx lr
	THUMB_FUNC_END sub_0801D308

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801D30C
sub_0801D30C: @ 0x0801D30C
	push {r4,lr}
	add r4, r0, #0
	mov r1, #58
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0801D324
	add r0, r4, #0
	bl sub_0801D3F0
	add r0, r4, #0
	bl sub_08012540
_0801D324:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801D30C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801D32C
sub_0801D32C: @ 0x0801D32C
	bx lr
	THUMB_FUNC_END sub_0801D32C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801D330
sub_0801D330: @ 0x0801D330
	push {r4,r5,lr}
	add r5, r0, #0
	ldrb r0, [r5, #28]
	lsl r0, r0, #30
	cmp r0, #0
	beq _0801D370
	ldr r1, [r5, #84]
	mov r3, #128
	lsl r3, r3, #9
	add r0, r5, #0
	mov r2, #0
	bl sub_0803D4A4
	ldr r4, [r5, #84]
	ldr r3, _0801D36C  @ =gUnknown_0813A7E4
	add r0, r5, #0
	add r0, r0, #42
	ldrb r1, [r0]
	lsl r1, r1, #1
	sub r0, r0, #1
	ldrb r2, [r0]
	mov r0, #1
	and r0, r0, r2
	add r1, r1, r0
	add r1, r1, r3
	mov r0, #0
	ldrsb r0, [r1, r0]
	strh r0, [r4, #58]
	b _0801D378
	.byte 0x00
	.byte 0x00
_0801D36C:
	.4byte gUnknown_0813A7E4
_0801D370:
	ldr r1, [r5, #84]
	add r0, r5, #0
	bl sub_0803D3D0
_0801D378:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801D330

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801D380
sub_0801D380: @ 0x0801D380
	push {r4,r5,lr}
	add r4, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r5, #3
	strb r5, [r4, #20]
	mov r0, #31
	and r1, r1, r0
	add r0, r4, #0
	add r0, r0, #43
	strb r1, [r0]
	bl 0x0800099C
	ldr r1, _0801D3BC  @ =gUnknown_0813A7EE
	and r0, r0, r5
	add r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #23]
	add r1, r4, #0
	add r1, r1, #42
	mov r0, #2
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #2
	bl 0x08003870
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801D3BC:
	.4byte gUnknown_0813A7EE
	THUMB_FUNC_END sub_0801D380

	THUMB_FUNC_START sub_0801D3C0
sub_0801D3C0: @ 0x0801D3C0
	mov r1, #1
	strb r1, [r0, #20]
	add r2, r0, #0
	add r2, r2, #112
	mov r1, #60
	strh r1, [r2]
	ldrb r2, [r0, #28]
	sub r1, r1, #64
	and r1, r1, r2
	strb r1, [r0, #28]
	bx lr
	THUMB_FUNC_END sub_0801D3C0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801D3D8
sub_0801D3D8: @ 0x0801D3D8
	push {lr}
	mov r1, #5
	strb r1, [r0, #20]
	add r2, r0, #0
	add r2, r2, #42
	mov r1, #3
	strb r1, [r2]
	bl 0x08003870
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801D3D8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801D3F0
sub_0801D3F0: @ 0x0801D3F0
	push {r4,lr}
	add r4, r0, #0
	ldr r0, _0801D418  @ =gUnknown_0813A7F2
	ldrb r1, [r4, #10]
	add r1, r1, r0
	ldrb r1, [r1]
	mov r0, #15
	mov r2, #0
	bl sub_0804C8A8
	add r1, r0, #0
	cmp r1, #0
	beq _0801D410
	add r0, r4, #0
	bl sub_0803D3D0
_0801D410:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801D418:
	.4byte gUnknown_0813A7F2
	THUMB_FUNC_END sub_0801D3F0

	THUMB_FUNC_START sub_0801D41C
sub_0801D41C: @ 0x0801D41C
	push {r4,r5,lr}
	add r5, r0, #0
	ldr r0, _0801D44C  @ =gUnknown_03000208
	ldrh r0, [r0, #2]
	cmp r0, #1
	bls _0801D42E
	add r0, r5, #0
	bl 0x080095A4
_0801D42E:
	ldr r4, _0801D450  @ =gUnknown_0813A874
	add r0, r5, #0
	bl 0x080098DC
	lsl r0, r0, #24
	lsr r0, r0, #22
	add r0, r0, r4
	ldr r1, [r0]
	add r0, r5, #0
	bl _call_via_r1
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801D44C:
	.4byte gUnknown_03000208
_0801D450:
	.4byte gUnknown_0813A874
	THUMB_FUNC_END sub_0801D41C

	THUMB_FUNC_START sub_0801D454
sub_0801D454: @ 0x0801D454
	push {lr}
	ldr r2, _0801D468  @ =gUnknown_0813A88C
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0801D468:
	.4byte gUnknown_0813A88C
	THUMB_FUNC_END sub_0801D454

	THUMB_FUNC_START sub_0801D46C
sub_0801D46C: @ 0x0801D46C
	push {r4,r5,lr}
	add r5, r0, #0
	mov r0, #32
	mov r1, #255
	mov r2, #0
	bl sub_0804C8A8
	add r4, r0, #0
	cmp r4, #0
	beq _0801D488
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0803D3D0
_0801D488:
	mov r0, #26
	bl sub_08012468
	add r4, r0, #0
	cmp r4, #0
	beq _0801D4BA
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0803D3D0
	add r0, r5, #0
	add r0, r0, #124
	ldrh r0, [r0]
	strh r0, [r4, #50]
	add r0, r5, #0
	add r0, r0, #126
	ldrh r0, [r0]
	strh r0, [r4, #54]
	ldrb r0, [r5, #11]
	strb r0, [r4, #11]
	add r1, r4, #0
	add r1, r1, #110
	mov r0, #180
	lsl r0, r0, #2
	strh r0, [r1]
_0801D4BA:
	add r0, r5, #0
	bl sub_08012540
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801D46C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801D4C8
sub_0801D4C8: @ 0x0801D4C8
	push {r4,lr}
	add r4, r0, #0
	bl 0x0800099C
	strb r0, [r4, #24]
	add r1, r4, #0
	add r1, r1, #46
	mov r0, #6
	strb r0, [r1]
	ldr r0, _0801D528  @ =gUnknown_0813A8D0
	str r0, [r4, #72]
	ldrh r1, [r4, #50]
	add r0, r4, #0
	add r0, r0, #124
	strh r1, [r0]
	ldrh r0, [r4, #54]
	add r1, r4, #0
	add r1, r1, #126
	strh r0, [r1]
	add r0, r4, #0
	add r0, r0, #82
	ldrb r0, [r0]
	ldrb r1, [r4, #11]
	bl sub_08012F84
	str r0, [r4, #112]
	str r0, [r4, #116]
	add r0, r4, #0
	bl sub_0801D764
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
	add r0, r4, #0
	add r0, r0, #110
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801D52C
	mov r0, #1
	strb r0, [r4, #20]
	add r2, r4, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #127
	and r0, r0, r1
	strb r0, [r2]
	b _0801D53C
_0801D528:
	.4byte gUnknown_0813A8D0
_0801D52C:
	mov r0, #2
	strb r0, [r4, #20]
	ldrb r1, [r4, #28]
	sub r0, r0, #6
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
_0801D53C:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801D4C8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801D544
sub_0801D544: @ 0x0801D544
	add r3, r0, #0
	add r1, r3, #0
	add r1, r1, #110
	ldrh r0, [r1]
	sub r0, r0, #1
	strh r0, [r1]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #0
	bne _0801D576
	mov r0, #2
	strb r0, [r3, #20]
	ldrb r1, [r3, #28]
	sub r0, r0, #6
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r3, #28]
	add r2, r3, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r2]
	b _0801D58C
_0801D576:
	cmp r0, #119
	bhi _0801D58C
	ldrb r2, [r3, #28]
	lsl r1, r2, #30
	lsr r1, r1, #30
	mov r0, #1
	eor r1, r1, r0
	sub r0, r0, #5
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r3, #28]
_0801D58C:
	bx lr
	THUMB_FUNC_END sub_0801D544

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801D590
sub_0801D590: @ 0x0801D590
	push {r4,lr}
	add r4, r0, #0
	ldr r2, _0801D5CC  @ =gUnknown_0813A8BC
	ldr r0, _0801D5D0  @ =gUnknown_03000E20
	ldrh r0, [r0]
	ldrb r1, [r4, #24]
	add r0, r0, r1
	mov r1, #48
	and r0, r0, r1
	asr r0, r0, #4
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	strh r0, [r4, #58]
	add r0, r4, #0
	bl 0x08003828
	ldr r1, _0801D5D4  @ =gUnknown_0813A898
	ldrb r0, [r4, #21]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801D5CC:
	.4byte gUnknown_0813A8BC
_0801D5D0:
	.4byte gUnknown_03000E20
_0801D5D4:
	.4byte gUnknown_0813A898
	THUMB_FUNC_END sub_0801D590

	THUMB_FUNC_START sub_0801D5D8
sub_0801D5D8: @ 0x0801D5D8
	push {r4,lr}
	add r4, r0, #0
	bl sub_0803CC20
	add r0, r4, #0
	add r0, r0, #122
	ldrh r1, [r0]
	mov r2, #54
	ldrsh r0, [r4, r2]
	cmp r1, r0
	blt _0801D5F6
	strh r1, [r4, #54]
	add r0, r4, #0
	bl sub_0801D764
_0801D5F6:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801D5D8

	THUMB_FUNC_START sub_0801D5FC
sub_0801D5FC: @ 0x0801D5FC
	push {r4,lr}
	add r4, r0, #0
	bl sub_0803CC20
	add r2, r4, #0
	add r2, r2, #122
	ldrh r1, [r2]
	mov r3, #54
	ldrsh r0, [r4, r3]
	cmp r1, r0
	blt _0801D62C
	add r0, r4, #0
	add r0, r0, #120
	ldrh r1, [r0]
	mov r3, #50
	ldrsh r0, [r4, r3]
	cmp r1, r0
	bgt _0801D62C
	strh r1, [r4, #50]
	ldrh r0, [r2]
	strh r0, [r4, #54]
	add r0, r4, #0
	bl sub_0801D764
_0801D62C:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801D5FC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801D634
sub_0801D634: @ 0x0801D634
	push {r4,lr}
	add r4, r0, #0
	bl sub_0803CC20
	add r0, r4, #0
	add r0, r0, #120
	ldrh r1, [r0]
	mov r2, #50
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bgt _0801D652
	strh r1, [r4, #50]
	add r0, r4, #0
	bl sub_0801D764
_0801D652:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801D634

	THUMB_FUNC_START sub_0801D658
sub_0801D658: @ 0x0801D658
	push {r4,lr}
	add r4, r0, #0
	bl sub_0803CC20
	add r2, r4, #0
	add r2, r2, #122
	ldrh r1, [r2]
	mov r3, #54
	ldrsh r0, [r4, r3]
	cmp r1, r0
	bgt _0801D688
	add r0, r4, #0
	add r0, r0, #120
	ldrh r1, [r0]
	mov r3, #50
	ldrsh r0, [r4, r3]
	cmp r1, r0
	bgt _0801D688
	strh r1, [r4, #50]
	ldrh r0, [r2]
	strh r0, [r4, #54]
	add r0, r4, #0
	bl sub_0801D764
_0801D688:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801D658

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801D690
sub_0801D690: @ 0x0801D690
	push {r4,lr}
	add r4, r0, #0
	bl sub_0803CC20
	add r0, r4, #0
	add r0, r0, #122
	ldrh r1, [r0]
	mov r2, #54
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bgt _0801D6AE
	strh r1, [r4, #54]
	add r0, r4, #0
	bl sub_0801D764
_0801D6AE:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801D690

	THUMB_FUNC_START sub_0801D6B4
sub_0801D6B4: @ 0x0801D6B4
	push {r4,lr}
	add r4, r0, #0
	bl sub_0803CC20
	add r2, r4, #0
	add r2, r2, #122
	ldrh r1, [r2]
	mov r3, #54
	ldrsh r0, [r4, r3]
	cmp r1, r0
	bgt _0801D6E4
	add r0, r4, #0
	add r0, r0, #120
	ldrh r1, [r0]
	mov r3, #50
	ldrsh r0, [r4, r3]
	cmp r1, r0
	blt _0801D6E4
	strh r1, [r4, #50]
	ldrh r0, [r2]
	strh r0, [r4, #54]
	add r0, r4, #0
	bl sub_0801D764
_0801D6E4:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801D6B4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801D6EC
sub_0801D6EC: @ 0x0801D6EC
	push {r4,lr}
	add r4, r0, #0
	bl sub_0803CC20
	add r0, r4, #0
	add r0, r0, #120
	ldrh r1, [r0]
	mov r2, #50
	ldrsh r0, [r4, r2]
	cmp r1, r0
	blt _0801D70A
	strh r1, [r4, #50]
	add r0, r4, #0
	bl sub_0801D764
_0801D70A:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801D6EC

	THUMB_FUNC_START sub_0801D710
sub_0801D710: @ 0x0801D710
	push {r4,lr}
	add r4, r0, #0
	bl sub_0803CC20
	add r2, r4, #0
	add r2, r2, #122
	ldrh r1, [r2]
	mov r3, #54
	ldrsh r0, [r4, r3]
	cmp r1, r0
	blt _0801D740
	add r0, r4, #0
	add r0, r0, #120
	ldrh r1, [r0]
	mov r3, #50
	ldrsh r0, [r4, r3]
	cmp r1, r0
	blt _0801D740
	strh r1, [r4, #50]
	ldrh r0, [r2]
	strh r0, [r4, #54]
	add r0, r4, #0
	bl sub_0801D764
_0801D740:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801D710

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801D748
sub_0801D748: @ 0x0801D748
	push {lr}
	add r1, r0, #0
	ldrb r0, [r1, #23]
	sub r0, r0, #1
	strb r0, [r1, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801D75E
	add r0, r1, #0
	bl sub_0801D764
_0801D75E:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801D748

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801D764
sub_0801D764: @ 0x0801D764
	push {r4,lr}
	add r2, r0, #0
	ldr r0, [r2, #112]
	ldrh r1, [r0]
	ldr r0, _0801D790  @ =0x0000FFFF
	cmp r1, r0
	bne _0801D776
	ldr r0, [r2, #116]
	str r0, [r2, #112]
_0801D776:
	ldr r3, [r2, #112]
	ldrh r1, [r3]
	mov r0, #128
	lsl r0, r0, #8
	and r0, r0, r1
	add r4, r3, #0
	cmp r0, #0
	beq _0801D794
	mov r0, #8
	strb r0, [r2, #21]
	ldrh r0, [r4, #2]
	strb r0, [r2, #23]
	b _0801D840
_0801D790:
	.4byte 0x0000FFFF
_0801D794:
	add r0, r2, #0
	add r0, r0, #43
	strb r1, [r0]
	add r3, r4, #2
	lsl r0, r1, #24
	lsr r0, r0, #26
	strb r0, [r2, #21]
	ldrb r0, [r2, #21]
	cmp r0, #7
	bhi _0801D834
	lsl r0, r0, #2
	ldr r1, _0801D7B4  @ =0x0801D7B8
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_0801D7B4:
	.4byte 0x0801D7B8
	.4byte _0801D7E4
	.4byte _0801D7D8
	.4byte _0801D7FC
	.4byte _0801D7F0
	.4byte _0801D810
	.4byte _0801D804
	.4byte _0801D828
	.4byte _0801D81C
_0801D7D8:
	ldrh r0, [r3]
	ldrh r1, [r2, #50]
	add r0, r0, r1
	add r1, r2, #0
	add r1, r1, #120
	strh r0, [r1]
_0801D7E4:
	ldrh r0, [r2, #54]
	ldrh r1, [r3]
	sub r0, r0, r1
	add r1, r2, #0
	add r1, r1, #122
	b _0801D832
_0801D7F0:
	ldrh r0, [r3]
	ldrh r1, [r2, #54]
	add r0, r0, r1
	add r1, r2, #0
	add r1, r1, #122
	strh r0, [r1]
_0801D7FC:
	ldrh r0, [r3]
	ldrh r1, [r2, #50]
	add r0, r0, r1
	b _0801D82E
_0801D804:
	ldrh r0, [r2, #50]
	ldrh r1, [r3]
	sub r0, r0, r1
	add r1, r2, #0
	add r1, r1, #120
	strh r0, [r1]
_0801D810:
	ldrh r0, [r3]
	ldrh r1, [r2, #54]
	add r0, r0, r1
	add r1, r2, #0
	add r1, r1, #122
	b _0801D832
_0801D81C:
	ldrh r0, [r2, #54]
	ldrh r1, [r3]
	sub r0, r0, r1
	add r1, r2, #0
	add r1, r1, #122
	strh r0, [r1]
_0801D828:
	ldrh r0, [r2, #50]
	ldrh r1, [r3]
	sub r0, r0, r1
_0801D82E:
	add r1, r2, #0
	add r1, r1, #120
_0801D832:
	strh r0, [r1]
_0801D834:
	add r3, r3, #2
	ldrh r0, [r3]
	ldr r4, [r2, #112]
	cmp r0, #0
	beq _0801D840
	str r0, [r2, #12]
_0801D840:
	add r0, r4, #0
	add r0, r0, #8
	str r0, [r2, #112]
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801D764

	THUMB_FUNC_START sub_0801D84C
sub_0801D84C: @ 0x0801D84C
	push {lr}
	ldr r2, _0801D860  @ =gUnknown_0813A8D8
	ldrb r1, [r0, #10]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0801D860:
	.4byte gUnknown_0813A8D8
	THUMB_FUNC_END sub_0801D84C

	THUMB_FUNC_START sub_0801D864
sub_0801D864: @ 0x0801D864
	push {r4,lr}
	add r4, r0, #0
	ldrh r1, [r4, #50]
	add r0, r0, #112
	strh r1, [r0]
	ldrh r0, [r4, #54]
	add r1, r4, #0
	add r1, r1, #114
	strh r0, [r1]
	ldr r1, _0801D88C  @ =gUnknown_0813A8E8
	add r0, r4, #0
	bl 0x08009924
	add r0, r4, #0
	bl sub_0801DC14
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801D88C:
	.4byte gUnknown_0813A8E8
	THUMB_FUNC_END sub_0801D864

	THUMB_FUNC_START sub_0801D890
sub_0801D890: @ 0x0801D890
	push {lr}
	ldr r2, _0801D8A4  @ =gUnknown_0813A900
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0801D8A4:
	.4byte gUnknown_0813A900
	THUMB_FUNC_END sub_0801D890

	THUMB_FUNC_START sub_0801D8A8
sub_0801D8A8: @ 0x0801D8A8
	push {lr}
	ldr r1, [r0, #88]
	add r3, r0, #0
	add r3, r3, #61
	ldrb r2, [r3]
	add r1, r1, #61
	strb r2, [r1]
	ldr r1, [r0, #116]
	ldrb r2, [r3]
	add r1, r1, #61
	strb r2, [r1]
	ldr r1, [r0, #120]
	ldrb r2, [r3]
	add r1, r1, #61
	strb r2, [r1]
	ldr r1, _0801D8D0  @ =gUnknown_0813A8E8
	bl 0x080098A0
	pop {r0}
	bx r0
_0801D8D0:
	.4byte gUnknown_0813A8E8
	THUMB_FUNC_END sub_0801D8A8

	THUMB_FUNC_START sub_0801D8D4
sub_0801D8D4: @ 0x0801D8D4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r0, #60
	add r0, r0, r6
	mov r9, r0
	ldrb r1, [r0]
	mov r0, #127
	and r0, r0, r1
	mov r1, r9
	strb r0, [r1]
	bl sub_080123E8
	add r4, r0, #0
	cmp r4, #0
	beq _0801D9D6
	bl sub_08012410
	add r7, r0, #0
	cmp r7, #0
	beq _0801D9D6
	bl sub_08012410
	add r5, r0, #0
	cmp r5, #0
	beq _0801D9D6
	mov r1, #3
	mov r0, #3
	strh r0, [r6, #52]
	strb r1, [r4, #8]
	strb r1, [r7, #8]
	strb r1, [r5, #8]
	mov r0, #27
	strb r0, [r4, #9]
	strb r0, [r7, #9]
	strb r0, [r5, #9]
	mov r0, #1
	mov r10, r0
	mov r0, #1
	mov r8, r0
	mov r0, r8
	strb r0, [r4, #10]
	mov r0, #2
	strb r0, [r7, #10]
	strb r1, [r5, #10]
	str r6, [r4, #84]
	str r6, [r7, #84]
	str r6, [r5, #84]
	str r7, [r4, #88]
	str r5, [r7, #88]
	mov r0, #0
	str r0, [r5, #88]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	mov r3, #2
	bl sub_0803D4A4
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0
	mov r3, #1
	bl sub_0803D4A4
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0
	mov r3, #0
	bl sub_0803D4A4
	mov r0, #4
	add r1, r4, #0
	bl sub_08012728
	mov r0, #4
	add r1, r7, #0
	bl sub_08012728
	mov r0, #4
	add r1, r5, #0
	bl sub_08012728
	mov r1, r8
	strb r1, [r6, #20]
	strb r1, [r6, #23]
	strb r1, [r6, #24]
	str r4, [r6, #88]
	str r7, [r6, #116]
	str r5, [r6, #120]
	ldr r0, [r6, #52]
	add r0, r0, #3
	str r0, [r6, #52]
	ldrb r1, [r6, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, r10
	orr r0, r0, r1
	strb r0, [r6, #28]
	mov r1, r9
	ldrb r0, [r1]
	mov r1, #128
	orr r0, r0, r1
	mov r1, r9
	strb r0, [r1]
	ldr r0, _0801D9E4  @ =gUnknown_0813AAB4
	str r0, [r6, #72]
	bl 0x0800099C
	mov r1, #31
	and r0, r0, r1
	add r1, r6, #0
	add r1, r1, #43
	strb r0, [r1]
	ldrb r0, [r1]
	add r0, r0, #4
	mov r1, #28
	and r0, r0, r1
	asr r0, r0, #2
	add r1, r6, #0
	add r1, r1, #42
	strb r0, [r1]
	ldrb r1, [r1]
	add r0, r6, #0
	bl 0x08003870
_0801D9D6:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0801D9E4:
	.4byte gUnknown_0813AAB4
	THUMB_FUNC_END sub_0801D8D4

	THUMB_FUNC_START sub_0801D9E8
sub_0801D9E8: @ 0x0801D9E8
	push {r4,r5,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801DA4C
	mov r0, #4
	strb r0, [r4, #23]
	ldrb r0, [r4, #24]
	sub r0, r0, #1
	strb r0, [r4, #24]
	lsl r0, r0, #24
	add r5, r4, #0
	add r5, r5, #125
	cmp r0, #0
	bne _0801DA20
	mov r0, #8
	strb r0, [r4, #24]
	bl 0x0800099C
	ldr r2, _0801DA80  @ =gUnknown_0813A908
	mov r1, #1
	and r1, r1, r0
	add r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r5]
_0801DA20:
	add r2, r4, #0
	add r2, r2, #43
	ldrb r0, [r5]
	ldrb r1, [r2]
	add r0, r0, r1
	mov r1, #31
	and r0, r0, r1
	strb r0, [r2]
	ldrb r0, [r2]
	add r0, r0, #4
	mov r1, #28
	and r0, r0, r1
	lsr r1, r0, #2
	add r0, r4, #0
	add r0, r0, #42
	ldrb r2, [r0]
	cmp r1, r2
	beq _0801DA4C
	strb r1, [r0]
	add r0, r4, #0
	bl 0x08003870
_0801DA4C:
	add r0, r4, #0
	bl 0x0800964C
	lsl r0, r0, #16
	cmp r0, #0
	beq _0801DA74
	add r0, r4, #0
	add r0, r0, #43
	ldrb r0, [r0]
	add r0, r0, #4
	mov r1, #28
	and r0, r0, r1
	asr r0, r0, #2
	add r1, r4, #0
	add r1, r1, #42
	strb r0, [r1]
	ldrb r1, [r1]
	add r0, r4, #0
	bl 0x08003870
_0801DA74:
	add r0, r4, #0
	bl 0x08003828
	pop {r4,r5}
	pop {r0}
	bx r0
_0801DA80:
	.4byte gUnknown_0813A908
	THUMB_FUNC_END sub_0801D9E8

	THUMB_FUNC_START sub_0801DA84
sub_0801DA84: @ 0x0801DA84
	push {r4,r5,lr}
	add r5, r0, #0
	ldr r0, [r5, #84]
	bl 0x08002E18
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #3
	beq _0801DAD8
	ldr r1, _0801DAD4  @ =gUnknown_0813A90C
	ldrb r0, [r5, #20]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r5, #0
	bl _call_via_r1
	ldr r4, [r5, #84]
	ldrb r2, [r4, #31]
	lsr r2, r2, #6
	lsl r2, r2, #6
	ldrb r3, [r5, #31]
	mov r1, #63
	add r0, r1, #0
	and r0, r0, r3
	orr r0, r0, r2
	strb r0, [r5, #31]
	ldrb r0, [r4, #29]
	lsr r0, r0, #6
	lsl r0, r0, #6
	ldrb r2, [r5, #29]
	and r1, r1, r2
	orr r1, r1, r0
	strb r1, [r5, #29]
	add r4, r4, #80
	ldrh r1, [r4]
	add r0, r5, #0
	add r0, r0, #80
	strh r1, [r0]
	b _0801DADE
_0801DAD4:
	.4byte gUnknown_0813A90C
_0801DAD8:
	add r0, r5, #0
	bl sub_08012540
_0801DADE:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801DA84

	THUMB_FUNC_START sub_0801DAE4
sub_0801DAE4: @ 0x0801DAE4
	push {lr}
	add r3, r0, #0
	mov r2, #1
	mov r0, #1
	strb r0, [r3, #20]
	ldrb r1, [r3, #28]
	sub r0, r0, #5
	and r0, r0, r1
	orr r0, r0, r2
	strb r0, [r3, #28]
	ldrb r0, [r3, #10]
	cmp r0, #1
	bne _0801DB08
	ldr r0, _0801DB04  @ =gUnknown_0813AABC
	b _0801DB0A
	.byte 0x00
	.byte 0x00
_0801DB04:
	.4byte gUnknown_0813AABC
_0801DB08:
	ldr r0, _0801DB8C  @ =gUnknown_0813AAC4
_0801DB0A:
	str r0, [r3, #72]
	add r0, r3, #0
	add r0, r0, #116
	mov r1, #136
	strb r1, [r0]
	add r0, r0, #1
	strb r1, [r0]
	add r0, r0, #1
	strb r1, [r0]
	add r0, r0, #1
	strb r1, [r0]
	add r0, r0, #1
	strb r1, [r0]
	add r0, r0, #1
	strb r1, [r0]
	add r0, r0, #1
	strb r1, [r0]
	add r0, r0, #1
	strb r1, [r0]
	ldr r0, [r3, #84]
	add r0, r0, #42
	ldrb r0, [r0]
	mov r1, #42
	add r1, r1, r3
	mov r12, r1
	strb r0, [r1]
	add r2, r3, #0
	add r2, r2, #94
	ldrb r1, [r2]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r2]
	mov r2, r12
	ldrb r1, [r2]
	lsl r0, r1, #4
	orr r0, r0, r1
	lsl r2, r1, #8
	orr r0, r0, r2
	lsl r2, r1, #12
	orr r0, r0, r2
	lsl r2, r1, #16
	orr r0, r0, r2
	lsl r2, r1, #20
	orr r0, r0, r2
	lsl r2, r1, #24
	orr r0, r0, r2
	lsl r1, r1, #28
	orr r0, r0, r1
	str r0, [r3, #124]
	ldrb r0, [r3, #10]
	lsl r0, r0, #3
	mov r1, r12
	ldrb r1, [r1]
	add r0, r0, r1
	mov r2, r12
	strb r0, [r2]
	ldrb r1, [r2]
	add r0, r3, #0
	bl 0x08003870
	pop {r0}
	bx r0
_0801DB8C:
	.4byte gUnknown_0813AAC4
	THUMB_FUNC_END sub_0801DAE4

	THUMB_FUNC_START sub_0801DB90
sub_0801DB90: @ 0x0801DB90
	push {r4,r5,lr}
	add r4, r0, #0
	ldrh r1, [r4, #50]
	add r0, r0, #112
	strh r1, [r0]
	ldrh r0, [r4, #54]
	add r1, r4, #0
	add r1, r1, #114
	strh r0, [r1]
	ldr r3, _0801DC10  @ =gUnknown_03000E20
	ldrh r0, [r3]
	add r0, r0, #1
	mov r2, #7
	and r0, r0, r2
	add r0, r0, #116
	add r0, r4, r0
	ldrb r1, [r0]
	mov r0, #15
	and r0, r0, r1
	sub r0, r0, #8
	lsr r1, r1, #4
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrh r5, [r4, #50]
	add r0, r0, r5
	strh r0, [r4, #50]
	sub r1, r1, #8
	ldrh r0, [r4, #54]
	add r1, r1, r0
	strh r1, [r4, #54]
	ldrh r0, [r3]
	add r0, r0, #1
	and r0, r0, r2
	lsl r0, r0, #2
	ldr r1, [r4, #124]
	lsr r1, r1, r0
	mov r0, #7
	and r1, r1, r0
	ldrb r0, [r4, #10]
	lsl r0, r0, #3
	add r1, r1, r0
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	add r0, r0, #42
	ldrb r2, [r0]
	cmp r1, r2
	beq _0801DBF8
	strb r1, [r0]
	add r0, r4, #0
	bl 0x08003870
_0801DBF8:
	ldrb r0, [r4, #10]
	cmp r0, #3
	beq _0801DC04
	add r0, r4, #0
	bl sub_0801DC14
_0801DC04:
	add r0, r4, #0
	bl 0x08003828
	pop {r4,r5}
	pop {r0}
	bx r0
_0801DC10:
	.4byte gUnknown_03000E20
	THUMB_FUNC_END sub_0801DB90

	THUMB_FUNC_START sub_0801DC14
sub_0801DC14: @ 0x0801DC14
	push {r4-r6,lr}
	mov r12, r0
	ldr r1, [r0, #88]
	cmp r1, #0
	beq _0801DC72
	ldr r6, _0801DC78  @ =gUnknown_03000E20
	ldrh r0, [r6]
	mov r4, #7
	add r3, r4, #0
	and r3, r3, r0
	add r3, r3, r1
	add r3, r3, #116
	mov r0, r12
	ldrh r1, [r0, #50]
	add r0, r0, #112
	ldrb r0, [r0]
	sub r1, r1, r0
	add r1, r1, #8
	mov r5, #15
	and r1, r1, r5
	mov r2, r12
	ldrh r0, [r2, #54]
	add r2, r2, #114
	ldrb r2, [r2]
	sub r0, r0, r2
	add r0, r0, #8
	and r0, r0, r5
	lsl r0, r0, #4
	add r1, r1, r0
	strb r1, [r3]
	ldrb r1, [r6]
	add r0, r4, #0
	and r0, r0, r1
	lsl r0, r0, #2
	mov r1, r12
	add r1, r1, #42
	ldrb r1, [r1]
	and r4, r4, r1
	lsl r4, r4, r0
	mov r1, #15
	lsl r1, r1, r0
	mov r0, r12
	ldr r2, [r0, #88]
	ldr r0, [r2, #124]
	bic r0, r0, r1
	orr r4, r4, r0
	str r4, [r2, #124]
_0801DC72:
	pop {r4-r6}
	pop {r0}
	bx r0
_0801DC78:
	.4byte gUnknown_03000E20
	THUMB_FUNC_END sub_0801DC14

	THUMB_FUNC_START sub_0801DC7C
sub_0801DC7C: @ 0x0801DC7C
	push {lr}
	ldr r1, _0801DC88  @ =gUnknown_0813AACC
	bl 0x08009924
	pop {r0}
	bx r0
_0801DC88:
	.4byte gUnknown_0813AACC
	THUMB_FUNC_END sub_0801DC7C

	THUMB_FUNC_START sub_0801DC8C
sub_0801DC8C: @ 0x0801DC8C
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #20]
	cmp r0, #0
	beq _0801DC9E
	add r0, r4, #0
	mov r1, #128
	bl sub_08044240
_0801DC9E:
	ldr r0, _0801DCB4  @ =gUnknown_0813AAE4
	ldrb r1, [r4, #20]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
_0801DCB4:
	.4byte gUnknown_0813AAE4
	THUMB_FUNC_END sub_0801DC8C

	THUMB_FUNC_START sub_0801DCB8
sub_0801DCB8: @ 0x0801DCB8
	push {lr}
	ldr r1, _0801DCC4  @ =gUnknown_0813AACC
	bl 0x080098A0
	pop {r0}
	bx r0
_0801DCC4:
	.4byte gUnknown_0813AACC
	THUMB_FUNC_END sub_0801DCB8

	THUMB_FUNC_START sub_0801DCC8
sub_0801DCC8: @ 0x0801DCC8
	push {r4,lr}
	add r4, r0, #0
	mov r1, #6
	mov r2, #0
	bl sub_0804411C
	cmp r0, #0
	beq _0801DD1E
	str r4, [r0, #84]
	str r0, [r4, #88]
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	add r1, r4, #0
	add r1, r1, #46
	mov r0, #5
	strb r0, [r1]
	add r2, r4, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r2]
	ldr r0, _0801DD24  @ =gUnknown_0813AC70
	str r0, [r4, #72]
	add r0, r4, #0
	bl sub_0801DF24
	add r1, r4, #0
	add r1, r1, #42
	mov r0, #255
	strb r0, [r1]
	bl 0x0800099C
	mov r1, #24
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
_0801DD1E:
	pop {r4}
	pop {r0}
	bx r0
_0801DD24:
	.4byte gUnknown_0813AC70
	THUMB_FUNC_END sub_0801DCC8

	THUMB_FUNC_START sub_0801DD28
sub_0801DD28: @ 0x0801DD28
	push {r4,lr}
	add r4, r0, #0
	mov r1, #0
	bl sub_0801DEC0
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r2, r0, #24
	cmp r2, #0
	bne _0801DD6A
	mov r0, #2
	strb r0, [r4, #20]
	bl 0x0800099C
	ldr r2, _0801DD60  @ =gUnknown_0813AAFC
	mov r1, #3
	and r1, r1, r0
	add r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #23]
	ldr r1, [r4, #100]
	cmp r1, #0
	beq _0801DD64
	add r0, r4, #0
	bl 0x08009EA4
	b _0801DD8A
_0801DD60:
	.4byte gUnknown_0813AAFC
_0801DD64:
	bl 0x0800099C
	b _0801DD8C
_0801DD6A:
	ldr r0, [r4, #100]
	cmp r0, #0
	bne _0801DD96
	ldr r1, _0801DD9C  @ =gUnknown_0813AB00
	lsr r0, r2, #28
	add r0, r0, r1
	ldrb r2, [r0]
	add r0, r4, #0
	add r1, r2, #0
	bl 0x08009E6C
	add r1, r0, #0
	str r1, [r4, #100]
	add r0, r4, #0
	bl sub_0803CECC
_0801DD8A:
	add r0, r0, #4
_0801DD8C:
	mov r1, #24
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
_0801DD96:
	pop {r4}
	pop {r0}
	bx r0
_0801DD9C:
	.4byte gUnknown_0813AB00
	THUMB_FUNC_END sub_0801DD28

	THUMB_FUNC_START sub_0801DDA0
sub_0801DDA0: @ 0x0801DDA0
	push {r4,r5,lr}
	add r4, r0, #0
	mov r1, #16
	bl sub_0801DEC0
	add r5, r4, #0
	add r5, r5, #113
	ldrb r0, [r5]
	cmp r0, #0
	beq _0801DDB8
	sub r0, r0, #1
	strb r0, [r5]
_0801DDB8:
	add r0, r4, #0
	bl 0x0800963C
	lsl r0, r0, #16
	cmp r0, #0
	bne _0801DDC8
	mov r0, #1
	strb r0, [r4, #23]
_0801DDC8:
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	ldrb r0, [r5]
	cmp r0, #0
	bne _0801DE00
	add r0, r4, #0
	mov r1, #16
	bl 0x0800997C
	lsl r1, r0, #24
	lsr r2, r1, #24
	mov r1, #128
	and r1, r1, r0
	cmp r1, #0
	beq _0801DE00
	mov r0, #3
	strb r0, [r4, #20]
	mov r0, #16
	strb r0, [r4, #23]
	mov r0, #1
	strb r0, [r4, #24]
	mov r0, #24
	and r0, r0, r2
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	b _0801DE0C
_0801DE00:
	ldrb r0, [r4, #23]
	cmp r0, #0
	bne _0801DE0C
	add r0, r4, #0
	bl sub_0801DF24
_0801DE0C:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801DDA0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801DE14
sub_0801DE14: @ 0x0801DE14
	push {r4,lr}
	add r4, r0, #0
	mov r1, #0
	bl sub_0801DEC0
	ldrb r1, [r4, #24]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0801DE3E
	mov r0, #4
	strb r0, [r4, #20]
	add r0, r4, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r1, r1, #32
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x08003870
_0801DE3E:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801DE14

	THUMB_FUNC_START sub_0801DE44
sub_0801DE44: @ 0x0801DE44
	push {r4,lr}
	add r4, r0, #0
	ldrb r1, [r4, #24]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0801DE76
	add r0, r4, #0
	bl 0x08003828
	add r2, r4, #0
	add r2, r2, #41
	ldrb r1, [r2]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _0801DE76
	ldrb r1, [r4, #24]
	mov r0, #253
	and r0, r0, r1
	strb r0, [r4, #24]
	ldrb r1, [r2]
	mov r0, #15
	and r0, r0, r1
	strb r0, [r2]
_0801DE76:
	ldrb r1, [r4, #24]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0801DE94
	mov r0, #5
	strb r0, [r4, #20]
	add r1, r4, #0
	add r1, r1, #42
	mov r0, #255
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0
	bl sub_0801DEC0
_0801DE94:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801DE44

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801DE9C
sub_0801DE9C: @ 0x0801DE9C
	push {r4,lr}
	add r4, r0, #0
	mov r1, #0
	bl sub_0801DEC0
	ldrb r0, [r4, #24]
	cmp r0, #0
	bne _0801DEBA
	add r0, r4, #0
	bl sub_0801DF24
	add r1, r4, #0
	add r1, r1, #113
	mov r0, #120
	strb r0, [r1]
_0801DEBA:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801DE9C

	THUMB_FUNC_START sub_0801DEC0
sub_0801DEC0: @ 0x0801DEC0
	push {r4,r5,lr}
	add r3, r0, #0
	lsl r1, r1, #24
	lsr r5, r1, #24
	ldr r2, _0801DF20  @ =gUnknown_0813AB04
	ldr r0, [r3, #88]
	add r0, r0, #43
	ldrb r0, [r0]
	add r0, r0, #4
	mov r1, #24
	and r0, r0, r1
	asr r0, r0, #3
	add r0, r0, r2
	ldrb r0, [r0]
	add r4, r0, #0
	add r2, r3, #0
	add r2, r2, #112
	ldrb r0, [r2]
	cmp r4, r0
	bne _0801DEFA
	add r0, r3, #0
	add r0, r0, #43
	ldrb r0, [r0]
	add r1, r3, #0
	add r1, r1, #42
	lsr r0, r0, #3
	ldrb r1, [r1]
	cmp r0, r1
	beq _0801DF1A
_0801DEFA:
	strb r4, [r2]
	add r0, r3, #0
	add r0, r0, #43
	ldrb r1, [r0]
	lsr r1, r1, #3
	sub r0, r0, #1
	strb r1, [r0]
	lsl r1, r1, #2
	add r1, r5, r1
	ldrb r2, [r2]
	add r1, r1, r2
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r3, #0
	bl 0x08003870
_0801DF1A:
	pop {r4,r5}
	pop {r0}
	bx r0
_0801DF20:
	.4byte gUnknown_0813AB04
	THUMB_FUNC_END sub_0801DEC0

	THUMB_FUNC_START sub_0801DF24
sub_0801DF24: @ 0x0801DF24
	mov r2, #0
	mov r1, #1
	strb r1, [r0, #20]
	mov r1, #60
	strb r1, [r0, #23]
	strb r2, [r0, #24]
	str r2, [r0, #100]
	bx lr
	THUMB_FUNC_END sub_0801DF24

	THUMB_FUNC_START sub_0801DF34
sub_0801DF34: @ 0x0801DF34
	push {r4,r5,lr}
	add r4, r0, #0
	bl 0x080095A4
	ldr r5, _0801DF74  @ =gUnknown_0813AC78
	add r0, r4, #0
	bl 0x080098DC
	lsl r0, r0, #24
	lsr r0, r0, #22
	add r0, r0, r5
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
	add r0, r4, #0
	bl 0x08008D90
	ldrb r2, [r4, #31]
	mov r1, #63
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #64
	orr r0, r0, r2
	strb r0, [r4, #31]
	ldrb r0, [r4, #29]
	and r1, r1, r0
	orr r1, r1, r2
	strb r1, [r4, #29]
	pop {r4,r5}
	pop {r0}
	bx r0
_0801DF74:
	.4byte gUnknown_0813AC78
	THUMB_FUNC_END sub_0801DF34

	THUMB_FUNC_START sub_0801DF78
sub_0801DF78: @ 0x0801DF78
	push {lr}
	ldr r2, _0801DF8C  @ =gUnknown_0813AC90
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0801DF8C:
	.4byte gUnknown_0813AC90
	THUMB_FUNC_END sub_0801DF78

	THUMB_FUNC_START sub_0801DF90
sub_0801DF90: @ 0x0801DF90
	push {r4,lr}
	add r4, r0, #0
	add r0, r0, #65
	ldrb r0, [r0]
	cmp r0, #128
	bne _0801DFFC
	ldr r2, [r4, #76]
	ldrb r1, [r2, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	ldr r1, _0801DFF8  @ =gUnknown_03006A30
	add r1, r0, r1
	add r0, r1, #0
	add r0, r0, #38
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801E03C
	ldrh r1, [r1, #54]
	mov r0, #200
	lsl r0, r0, #4
	and r0, r0, r1
	cmp r0, #0
	bne _0801E03C
	str r2, [r4, #88]
	ldrb r0, [r2, #10]
	lsl r0, r0, #1
	add r0, r0, #1
	mov r1, #1
	lsl r1, r1, r0
	mov r2, #213
	lsl r2, r2, #1
	add r0, r2, #0
	eor r1, r1, r0
	add r0, r4, #0
	add r0, r0, #92
	strh r1, [r0]
	mov r0, #4
	strb r0, [r4, #20]
	add r1, r4, #0
	add r1, r1, #112
	mov r0, #30
	strh r0, [r1]
	add r1, r1, #2
	mov r0, #120
	strh r0, [r1]
	add r0, r4, #0
	mov r1, #6
	bl 0x08003870
	b _0801E03C
	.byte 0x00
	.byte 0x00
_0801DFF8:
	.4byte gUnknown_03006A30
_0801DFFC:
	ldrb r0, [r4, #20]
	cmp r0, #4
	bne _0801E024
	mov r0, #1
	strb r0, [r4, #20]
	add r1, r4, #0
	add r1, r1, #92
	ldr r0, _0801E04C  @ =0x000021FF
	strh r0, [r1]
	add r2, r4, #0
	add r2, r2, #80
	ldrh r1, [r2]
	mov r3, #192
	lsl r3, r3, #8
	add r0, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	add r0, r4, #0
	bl 0x08008DD8
_0801E024:
	add r1, r4, #0
	add r1, r1, #66
	mov r0, #24
	strb r0, [r1]
	add r0, r4, #0
	add r0, r0, #43
	ldrb r1, [r0]
	lsr r1, r1, #4
	add r1, r1, #4
	add r0, r4, #0
	bl 0x08003870
_0801E03C:
	ldr r1, _0801E050  @ =gUnknown_0813AC78
	add r0, r4, #0
	bl 0x080098A0
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801E04C:
	.4byte 0x000021FF
_0801E050:
	.4byte gUnknown_0813AC78
	THUMB_FUNC_END sub_0801DF90

	THUMB_FUNC_START sub_0801E054
sub_0801E054: @ 0x0801E054
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	bl 0x08009630
	add r0, r4, #0
	add r0, r0, #66
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801E07E
	ldrb r0, [r4, #20]
	cmp r0, #4
	beq _0801E07E
	add r0, r4, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r0, r4, #0
	bl 0x08003870
_0801E07E:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801E054

	THUMB_FUNC_START sub_0801E084
sub_0801E084: @ 0x0801E084
	push {r4,lr}
	mov r4, #1
	mov r1, #1
	strb r1, [r0, #20]
	ldrb r2, [r0, #28]
	mov r3, #4
	neg r3, r3
	add r1, r3, #0
	and r1, r1, r2
	orr r1, r1, r4
	strb r1, [r0, #28]
	add r2, r0, #0
	add r2, r2, #46
	mov r1, #4
	strb r1, [r2]
	ldr r1, _0801E0B4  @ =gUnknown_0813AD74
	str r1, [r0, #72]
	strh r3, [r0, #58]
	mov r1, #0
	bl 0x08003870
	pop {r4}
	pop {r0}
	bx r0
_0801E0B4:
	.4byte gUnknown_0813AD74
	THUMB_FUNC_END sub_0801E084

	THUMB_FUNC_START sub_0801E0B8
sub_0801E0B8: @ 0x0801E0B8
	push {r4,lr}
	add r4, r0, #0
	bl 0x08009694
	mov r0, #180
	strb r0, [r4, #23]
	bl 0x0800099C
	mov r1, #15
	and r1, r1, r0
	cmp r1, #6
	bhi _0801E0F6
	mov r0, #2
	strb r0, [r4, #20]
	add r0, r0, #254
	str r0, [r4, #12]
	bl sub_0801E3B4
	add r1, r0, #0
	str r1, [r4, #88]
	add r0, r4, #0
	bl sub_0803CECC
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #2
	bl sub_0801E360
	b _0801E10A
_0801E0F6:
	mov r0, #3
	strb r0, [r4, #20]
	mov r0, #45
	strb r0, [r4, #24]
	mov r0, #96
	str r0, [r4, #12]
	add r0, r4, #0
	mov r1, #0
	bl sub_0801E360
_0801E10A:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801E0B8

	THUMB_FUNC_START sub_0801E110
sub_0801E110: @ 0x0801E110
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	sub r1, r0, #1
	strb r1, [r4, #23]
	lsl r0, r1, #24
	cmp r0, #0
	beq _0801E146
	mov r0, #7
	and r1, r1, r0
	cmp r1, #0
	bne _0801E13C
	ldr r1, [r4, #88]
	add r0, r4, #0
	bl 0x08009EA4
	add r1, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x080040C4
_0801E13C:
	add r0, r4, #0
	mov r1, #2
	bl sub_0801E360
	b _0801E14A
_0801E146:
	mov r0, #1
	strb r0, [r4, #20]
_0801E14A:
	add r0, r4, #0
	bl 0x08009694
	lsl r0, r0, #16
	cmp r0, #0
	beq _0801E15E
	add r0, r4, #0
	mov r1, #2
	bl sub_0801E360
_0801E15E:
	add r0, r4, #0
	bl 0x08003828
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801E110

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801E16C
sub_0801E16C: @ 0x0801E16C
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801E1A4
	ldrb r0, [r4, #24]
	sub r0, r0, #1
	strb r0, [r4, #24]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801E1A8
	mov r0, #45
	strb r0, [r4, #24]
	bl 0x0800099C
	mov r1, #31
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0
	bl sub_0801E360
	b _0801E1A8
_0801E1A4:
	mov r0, #1
	strb r0, [r4, #20]
_0801E1A8:
	add r0, r4, #0
	bl 0x08009694
	lsl r0, r0, #16
	cmp r0, #0
	beq _0801E1BC
	add r0, r4, #0
	mov r1, #0
	bl sub_0801E360
_0801E1BC:
	add r0, r4, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0801E1E8
	bl 0x0800099C
	mov r1, #3
	and r1, r1, r0
	cmp r1, #0
	beq _0801E1E8
	add r0, r4, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r0, r4, #0
	bl 0x08003870
_0801E1E8:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801E16C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801E1F0
sub_0801E1F0: @ 0x0801E1F0
	push {r4-r6,lr}
	add r4, r0, #0
	bl 0x08003828
	ldr r0, [r4, #88]
	add r1, r4, #0
	add r1, r1, #41
	ldrb r1, [r1]
	mov r3, #3
	and r3, r3, r1
	sub r3, r3, #1
	lsl r3, r3, #16
	add r1, r4, #0
	mov r2, #0
	bl sub_0803D4A4
	ldrh r0, [r4, #58]
	sub r0, r0, #4
	strh r0, [r4, #58]
	ldr r1, _0801E24C  @ =gUnknown_03000940
	ldr r0, [r4, #88]
	ldrb r2, [r0, #10]
	lsl r3, r2, #1
	add r1, r3, r1
	ldrh r1, [r1]
	mov r0, #128
	lsl r0, r0, #3
	and r0, r0, r1
	cmp r0, #0
	beq _0801E22E
	b _0801E35A
_0801E22E:
	ldr r5, _0801E250  @ =gUnknown_03006A30
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #4
	add r1, r0, r5
	add r0, r1, #0
	add r0, r0, #60
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801E254
	add r0, r4, #0
	bl 0x080098CC
	b _0801E35A
	.byte 0x00
	.byte 0x00
_0801E24C:
	.4byte gUnknown_03000940
_0801E250:
	.4byte gUnknown_03006A30
_0801E254:
	ldrh r1, [r1, #54]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0801E260
	b _0801E35A
_0801E260:
	mov r6, #0
	ldr r0, _0801E2E0  @ =gUnknown_03005E10
	add r0, r3, r0
	ldrh r0, [r0]
	add r2, r4, #0
	add r2, r2, #112
	cmp r0, #0
	beq _0801E276
	ldrh r0, [r2]
	sub r0, r0, #1
	strh r0, [r2]
_0801E276:
	ldr r1, [r4, #88]
	ldrb r0, [r1, #20]
	sub r0, r0, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _0801E2A4
	ldrb r0, [r1, #10]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #4
	add r1, r1, r5
	add r0, r1, #0
	add r0, r0, #38
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801E2A4
	ldrh r1, [r1, #54]
	mov r0, #200
	lsl r0, r0, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0801E2AA
_0801E2A4:
	mov r0, #0
	strh r0, [r2]
	mov r6, #1
_0801E2AA:
	ldrh r0, [r2]
	cmp r0, #0
	beq _0801E2E4
	add r1, r4, #0
	add r1, r1, #114
	ldrh r0, [r1]
	sub r0, r0, #1
	strh r0, [r1]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0801E35A
	mov r0, #120
	strh r0, [r1]
	ldr r0, [r4, #88]
	mov r1, #4
	neg r1, r1
	bl sub_0802C3F0
	ldr r0, [r4, #88]
	add r0, r0, #61
	mov r1, #16
	strb r1, [r0]
	ldr r0, [r4, #88]
	add r0, r0, #65
	mov r1, #164
	strb r1, [r0]
	b _0801E35A
_0801E2E0:
	.4byte gUnknown_03005E10
_0801E2E4:
	mov r0, #3
	strb r0, [r4, #20]
	mov r0, #45
	strb r0, [r4, #24]
	mov r0, #96
	str r0, [r4, #12]
	add r1, r4, #0
	add r1, r1, #92
	ldr r0, _0801E33C  @ =0x000021FF
	strh r0, [r1]
	add r2, r4, #0
	add r2, r2, #80
	ldrh r1, [r2]
	mov r3, #192
	lsl r3, r3, #8
	add r0, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	add r0, r4, #0
	bl 0x08008DD8
	bl 0x0800099C
	mov r1, #31
	and r0, r0, r1
	add r2, r4, #0
	add r2, r2, #62
	mov r1, #16
	eor r0, r0, r1
	strb r0, [r2]
	sub r2, r2, #19
	strb r0, [r2]
	lsr r0, r0, #4
	add r1, r4, #0
	add r1, r1, #42
	strb r0, [r1]
	cmp r6, #0
	beq _0801E340
	ldrb r1, [r1]
	add r0, r4, #0
	bl 0x08003870
	b _0801E35A
	.byte 0x00
	.byte 0x00
_0801E33C:
	.4byte 0x000021FF
_0801E340:
	add r1, r4, #0
	add r1, r1, #61
	mov r0, #244
	strb r0, [r1]
	add r1, r1, #5
	mov r0, #16
	strb r0, [r1]
	ldrb r1, [r2]
	lsr r1, r1, #4
	add r1, r1, #4
	add r0, r4, #0
	bl 0x08003870
_0801E35A:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801E1F0

	THUMB_FUNC_START sub_0801E360
sub_0801E360: @ 0x0801E360
	push {r4,r5,lr}
	add r5, r0, #0
	lsl r1, r1, #24
	lsr r4, r1, #24
	add r3, r5, #0
	add r3, r3, #42
	ldrb r2, [r3]
	mov r0, #14
	and r0, r0, r2
	cmp r0, r4
	bne _0801E39C
	add r0, r5, #0
	add r0, r0, #43
	ldrb r1, [r0]
	mov r0, #15
	and r0, r0, r1
	cmp r0, #0
	beq _0801E3AC
	mov r0, #1
	lsr r1, r1, #4
	and r0, r0, r2
	cmp r0, r1
	beq _0801E3AC
	add r0, r4, r1
	strb r0, [r3]
	ldrb r1, [r3]
	add r0, r5, #0
	bl 0x08003870
	b _0801E3AC
_0801E39C:
	mov r0, #1
	and r0, r0, r2
	add r0, r4, r0
	strb r0, [r3]
	ldrb r1, [r3]
	add r0, r5, #0
	bl 0x08003870
_0801E3AC:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801E360

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801E3B4
sub_0801E3B4: @ 0x0801E3B4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	bl 0x0800099C
	ldr r5, _0801E438  @ =gUnknown_03006C80
	ldrb r1, [r5]
	bl __umodsi3
	lsl r0, r0, #24
	lsr r4, r0, #24
	bl 0x0800099C
	mov r1, #1
	and r1, r1, r0
	mov r0, #255
	cmp r1, #0
	beq _0801E3DA
	mov r0, #1
_0801E3DA:
	mov r3, #0
	ldr r6, _0801E43C  @ =gUnknown_03006A30
	ldrb r5, [r5]
	cmp r3, r5
	bge _0801E474
	mov r1, #128
	lsl r1, r1, #3
	mov r8, r1
	mov r2, #200
	lsl r2, r2, #4
	mov r12, r2
	mov r7, #1
	neg r7, r7
	lsl r0, r0, #24
	asr r5, r0, #24
_0801E3F8:
	lsl r1, r4, #24
	asr r1, r1, #24
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r2, r0, r6
	ldr r0, _0801E440  @ =gUnknown_03000940
	lsl r1, r1, #1
	add r1, r1, r0
	ldrh r1, [r1]
	mov r0, r8
	and r0, r0, r1
	cmp r0, #0
	bne _0801E444
	add r0, r2, #0
	add r0, r0, #38
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801E444
	ldrh r1, [r2, #54]
	mov r0, r12
	and r0, r0, r1
	cmp r0, #0
	bne _0801E444
	ldr r1, [r2, #40]
	add r0, r1, #0
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801E444
	add r0, r1, #0
	b _0801E476
_0801E438:
	.4byte gUnknown_03006C80
_0801E43C:
	.4byte gUnknown_03006A30
_0801E440:
	.4byte gUnknown_03000940
_0801E444:
	lsl r0, r4, #24
	asr r0, r0, #24
	add r0, r0, r5
	lsl r0, r0, #24
	lsr r4, r0, #24
	asr r0, r0, #24
	ldr r1, _0801E480  @ =gUnknown_03006C80
	ldrb r1, [r1]
	cmp r0, r1
	bne _0801E45A
	mov r4, #0
_0801E45A:
	lsl r0, r4, #24
	asr r0, r0, #24
	cmp r0, r7
	bne _0801E464
	add r4, r1, #0
_0801E464:
	lsl r0, r3, #24
	mov r2, #128
	lsl r2, r2, #17
	add r0, r0, r2
	lsr r3, r0, #24
	asr r0, r0, #24
	cmp r0, r1
	blt _0801E3F8
_0801E474:
	ldr r0, [r6, #40]
_0801E476:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
_0801E480:
	.4byte gUnknown_03006C80
	THUMB_FUNC_END sub_0801E3B4

	THUMB_FUNC_START sub_0801E484
sub_0801E484: @ 0x0801E484
	push {lr}
	ldr r1, _0801E490  @ =gUnknown_0813AD7C
	bl 0x08009924
	pop {r0}
	bx r0
_0801E490:
	.4byte gUnknown_0813AD7C
	THUMB_FUNC_END sub_0801E484

	THUMB_FUNC_START sub_0801E494
sub_0801E494: @ 0x0801E494
	push {lr}
	ldr r2, _0801E4A8  @ =gUnknown_0813AD94
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0801E4A8:
	.4byte gUnknown_0813AD94
	THUMB_FUNC_END sub_0801E494

	THUMB_FUNC_START sub_0801E4AC
sub_0801E4AC: @ 0x0801E4AC
	push {r4,lr}
	add r4, r0, #0
	add r0, r0, #65
	ldrb r0, [r0]
	mov r1, #127
	and r1, r1, r0
	cmp r1, #26
	bhi _0801E57C
	lsl r0, r1, #2
	ldr r1, _0801E4C8  @ =0x0801E4CC
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_0801E4C8:
	.4byte 0x0801E4CC
	.4byte _0801E538
	.4byte _0801E544
	.4byte _0801E544
	.4byte _0801E544
	.4byte _0801E57C
	.4byte _0801E57C
	.4byte _0801E57C
	.4byte _0801E57C
	.4byte _0801E57C
	.4byte _0801E57C
	.4byte _0801E57C
	.4byte _0801E57C
	.4byte _0801E57C
	.4byte _0801E57C
	.4byte _0801E57C
	.4byte _0801E57C
	.4byte _0801E57C
	.4byte _0801E57C
	.4byte _0801E57C
	.4byte _0801E57C
	.4byte _0801E57C
	.4byte _0801E57C
	.4byte _0801E544
	.4byte _0801E57C
	.4byte _0801E544
	.4byte _0801E544
	.4byte _0801E544
_0801E538:
	ldrb r0, [r4, #20]
	cmp r0, #3
	bne _0801E57C
	mov r0, #1
	strb r0, [r4, #23]
	b _0801E57C
_0801E544:
	ldrb r0, [r4, #20]
	cmp r0, #5
	bhi _0801E57C
	mov r1, #0
	mov r0, #6
	strb r0, [r4, #20]
	mov r0, #192
	lsl r0, r0, #9
	str r0, [r4, #16]
	mov r0, #192
	str r0, [r4, #12]
	add r0, r4, #0
	add r0, r0, #62
	ldrb r0, [r0]
	add r2, r4, #0
	add r2, r2, #43
	strb r0, [r2]
	add r0, r4, #0
	add r0, r0, #66
	strb r1, [r0]
	add r1, r4, #0
	add r1, r1, #63
	mov r0, #47
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #9
	bl 0x08003870
_0801E57C:
	ldr r1, _0801E58C  @ =gUnknown_0813AD7C
	add r0, r4, #0
	bl 0x080098A0
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801E58C:
	.4byte gUnknown_0813AD7C
	THUMB_FUNC_END sub_0801E4AC

	THUMB_FUNC_START sub_0801E590
sub_0801E590: @ 0x0801E590
	push {r4,lr}
	add r4, r0, #0
	mov r2, #1
	mov r0, #1
	strb r0, [r4, #20]
	strb r0, [r4, #23]
	ldrb r1, [r4, #28]
	sub r0, r0, #5
	and r0, r0, r1
	orr r0, r0, r2
	strb r0, [r4, #28]
	add r1, r4, #0
	add r1, r1, #46
	mov r0, #5
	strb r0, [r1]
	ldr r0, _0801E5D4  @ =gUnknown_0813AE64
	str r0, [r4, #72]
	bl 0x0800099C
	mov r1, #24
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	lsr r0, r0, #3
	sub r1, r1, #1
	strb r0, [r1]
	ldrb r1, [r1]
	add r0, r4, #0
	bl 0x08003870
	pop {r4}
	pop {r0}
	bx r0
_0801E5D4:
	.4byte gUnknown_0813AE64
	THUMB_FUNC_END sub_0801E590

	THUMB_FUNC_START sub_0801E5D8
sub_0801E5D8: @ 0x0801E5D8
	push {r4,lr}
	add r4, r0, #0
	mov r1, #12
	bl 0x0800997C
	mov r1, #128
	and r1, r1, r0
	cmp r1, #0
	beq _0801E610
	mov r0, #2
	strb r0, [r4, #20]
	mov r0, #30
	strb r0, [r4, #23]
	bl 0x08009E0C
	add r1, r0, #0
	str r1, [r4, #88]
	add r0, r4, #0
	bl sub_0803CECC
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #8
	bl 0x08003870
	b _0801E684
_0801E610:
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801E674
	bl 0x0800099C
	ldr r2, _0801E640  @ =gUnknown_0813ADB4
	mov r1, #3
	and r1, r1, r0
	add r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #23]
	bl 0x0800099C
	mov r1, #31
	and r1, r1, r0
	cmp r1, #0
	beq _0801E644
	bl 0x0800099C
	b _0801E652
	.byte 0x00
	.byte 0x00
_0801E640:
	.4byte gUnknown_0813ADB4
_0801E644:
	bl sub_08044594
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0803CECC
	add r0, r0, #4
_0801E652:
	mov r1, #24
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	ldrb r0, [r1]
	lsr r0, r0, #3
	add r2, r4, #0
	add r2, r2, #42
	ldrb r1, [r2]
	cmp r0, r1
	beq _0801E674
	strb r0, [r2]
	ldrb r1, [r2]
	add r0, r4, #0
	bl 0x08003870
_0801E674:
	add r0, r4, #0
	bl 0x0800963C
	lsl r0, r0, #16
	cmp r0, #0
	bne _0801E684
	mov r0, #1
	strb r0, [r4, #23]
_0801E684:
	add r0, r4, #0
	bl 0x08003828
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801E5D8

	THUMB_FUNC_START sub_0801E690
sub_0801E690: @ 0x0801E690
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801E6BA
	mov r0, #3
	strb r0, [r4, #20]
	mov r0, #120
	strb r0, [r4, #23]
	mov r0, #224
	lsl r0, r0, #1
	str r0, [r4, #12]
	add r0, r4, #0
	mov r1, #8
	bl 0x08003870
_0801E6BA:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801E690

	THUMB_FUNC_START sub_0801E6C0
sub_0801E6C0: @ 0x0801E6C0
	push {r4,lr}
	add r4, r0, #0
	bl 0x08009664
	lsl r0, r0, #16
	cmp r0, #0
	bne _0801E6D2
	mov r0, #1
	strb r0, [r4, #23]
_0801E6D2:
	add r0, r4, #0
	bl 0x08003828
	ldrb r0, [r4, #23]
	sub r1, r0, #1
	strb r1, [r4, #23]
	lsl r0, r1, #24
	cmp r0, #0
	beq _0801E702
	mov r0, #7
	and r1, r1, r0
	cmp r1, #0
	bne _0801E71C
	ldr r1, [r4, #88]
	add r0, r4, #0
	bl sub_0803CECC
	add r1, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x080040C4
	b _0801E71C
_0801E702:
	mov r0, #4
	strb r0, [r4, #20]
	mov r0, #16
	strb r0, [r4, #23]
	add r0, r4, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r1, r1, #4
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x08003870
_0801E71C:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801E6C0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801E724
sub_0801E724: @ 0x0801E724
	push {lr}
	add r2, r0, #0
	ldrb r0, [r2, #23]
	sub r0, r0, #1
	strb r0, [r2, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801E74A
	mov r0, #1
	strb r0, [r2, #20]
	strb r0, [r2, #23]
	mov r0, #128
	str r0, [r2, #12]
	add r0, r2, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r0, r2, #0
	bl 0x08003870
_0801E74A:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801E724

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801E750
sub_0801E750: @ 0x0801E750
	push {r4,lr}
	add r4, r0, #0
	mov r1, #192
	lsl r1, r1, #5
	bl 0x08003594
	cmp r0, #0
	bne _0801E766
	mov r0, #1
	strb r0, [r4, #20]
	strb r0, [r4, #23]
_0801E766:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801E750

	THUMB_FUNC_START sub_0801E76C
sub_0801E76C: @ 0x0801E76C
	push {r4,lr}
	add r4, r0, #0
	bl 0x08009664
	mov r1, #192
	lsl r1, r1, #5
	add r0, r4, #0
	bl 0x08003F1C
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	beq _0801E78C
	cmp r0, #1
	beq _0801E794
	b _0801E79A
_0801E78C:
	mov r0, #7
	strb r0, [r4, #20]
	mov r0, #150
	strb r0, [r4, #23]
_0801E794:
	mov r0, #49
	bl 0x08003DFC
_0801E79A:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801E76C

	THUMB_FUNC_START sub_0801E7A0
sub_0801E7A0: @ 0x0801E7A0
	push {r4,lr}
	add r3, r0, #0
	ldrb r0, [r3, #23]
	sub r1, r0, #1
	strb r1, [r3, #23]
	lsl r4, r1, #24
	lsr r0, r4, #24
	cmp r0, #0
	beq _0801E7DC
	cmp r0, #59
	bhi _0801E804
	mov r0, #1
	and r1, r1, r0
	cmp r1, #0
	beq _0801E804
	ldr r2, _0801E7D8  @ =gUnknown_0813ADB8
	lsr r0, r4, #25
	mov r1, #3
	and r0, r0, r1
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrh r1, [r3, #50]
	add r0, r0, r1
	strh r0, [r3, #50]
	b _0801E804
	.byte 0x00
	.byte 0x00
_0801E7D8:
	.4byte gUnknown_0813ADB8
_0801E7DC:
	mov r0, #5
	strb r0, [r3, #20]
	mov r0, #128
	lsl r0, r0, #9
	str r0, [r3, #16]
	mov r0, #128
	str r0, [r3, #12]
	add r1, r3, #0
	add r1, r1, #63
	mov r0, #46
	strb r0, [r1]
	add r0, r3, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r0, r3, #0
	bl 0x08003870
	mov r0, #49
	bl 0x08003DFC
_0801E804:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801E7A0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801E80C
sub_0801E80C: @ 0x0801E80C
	push {r4,lr}
	add r4, r0, #0
	ldr r0, _0801E834  @ =gUnknown_03000208
	ldrh r0, [r0, #2]
	cmp r0, #1
	bls _0801E81E
	add r0, r4, #0
	bl 0x080095A4
_0801E81E:
	ldr r0, _0801E838  @ =gUnknown_0813AE6C
	ldrb r1, [r4, #20]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
_0801E834:
	.4byte gUnknown_03000208
_0801E838:
	.4byte gUnknown_0813AE6C
	THUMB_FUNC_END sub_0801E80C

	THUMB_FUNC_START sub_0801E83C
sub_0801E83C: @ 0x0801E83C
	push {lr}
	mov r3, #1
	mov r1, #1
	strb r1, [r0, #20]
	ldrb r2, [r0, #28]
	sub r1, r1, #5
	and r1, r1, r2
	orr r1, r1, r3
	strb r1, [r0, #28]
	add r2, r0, #0
	add r2, r2, #46
	mov r1, #5
	strb r1, [r2]
	ldr r1, _0801E864  @ =gUnknown_0813AEA8
	str r1, [r0, #72]
	mov r1, #0
	bl 0x08003870
	pop {r0}
	bx r0
_0801E864:
	.4byte gUnknown_0813AEA8
	THUMB_FUNC_END sub_0801E83C

	THUMB_FUNC_START sub_0801E868
sub_0801E868: @ 0x0801E868
	push {r4,lr}
	add r4, r0, #0
	mov r1, #12
	bl 0x0800997C
	lsl r1, r0, #24
	lsr r2, r1, #24
	mov r1, #128
	and r1, r1, r0
	cmp r1, #0
	beq _0801E898
	mov r0, #2
	strb r0, [r4, #20]
	mov r0, #64
	str r0, [r4, #12]
	mov r0, #24
	and r0, r0, r2
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #1
	bl 0x08003870
_0801E898:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801E868

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801E8A0
sub_0801E8A0: @ 0x0801E8A0
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	bl 0x0800963C
	lsl r0, r0, #16
	cmp r0, #0
	beq _0801E8C8
	ldr r1, [r4, #12]
	ldr r0, _0801E8C4  @ =0x0000010F
	cmp r1, r0
	bgt _0801E8D4
	add r0, r1, #0
	add r0, r0, #8
	str r0, [r4, #12]
	b _0801E8D4
_0801E8C4:
	.4byte 0x0000010F
_0801E8C8:
	mov r0, #3
	strb r0, [r4, #20]
	add r0, r4, #0
	mov r1, #2
	bl 0x08003870
_0801E8D4:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801E8A0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801E8DC
sub_0801E8DC: @ 0x0801E8DC
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0801E8F6
	mov r0, #1
	strb r0, [r4, #20]
_0801E8F6:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801E8DC

	THUMB_FUNC_START sub_0801E8FC
sub_0801E8FC: @ 0x0801E8FC
	push {lr}
	add r2, r0, #0
	ldrb r0, [r2, #10]
	cmp r0, #0
	bne _0801E914
	ldr r1, _0801E910  @ =gUnknown_0813AEB0
	add r0, r2, #0
	bl 0x08009924
	b _0801E924
_0801E910:
	.4byte gUnknown_0813AEB0
_0801E914:
	ldr r0, _0801E928  @ =gUnknown_0813AEC8
	ldrb r1, [r2, #20]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r2, #0
	bl _call_via_r1
_0801E924:
	pop {r0}
	bx r0
_0801E928:
	.4byte gUnknown_0813AEC8
	THUMB_FUNC_END sub_0801E8FC

	THUMB_FUNC_START sub_0801E92C
sub_0801E92C: @ 0x0801E92C
	push {r4,lr}
	add r4, r0, #0
	bl sub_0801EE68
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801E94A
	ldr r0, _0801E950  @ =gUnknown_0813AED4
	ldrb r1, [r4, #20]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r4, #0
	bl _call_via_r1
_0801E94A:
	pop {r4}
	pop {r0}
	bx r0
_0801E950:
	.4byte gUnknown_0813AED4
	THUMB_FUNC_END sub_0801E92C

	THUMB_FUNC_START sub_0801E954
sub_0801E954: @ 0x0801E954
	push {lr}
	ldr r1, _0801E960  @ =gUnknown_0813AEB0
	bl 0x080098A0
	pop {r0}
	bx r0
_0801E960:
	.4byte gUnknown_0813AEB0
	THUMB_FUNC_END sub_0801E954

	THUMB_FUNC_START sub_0801E964
sub_0801E964: @ 0x0801E964
	push {r4,lr}
	add r4, r0, #0
	mov r2, #1
	mov r0, #1
	strb r0, [r4, #20]
	ldrb r1, [r4, #28]
	sub r0, r0, #5
	and r0, r0, r1
	orr r0, r0, r2
	strb r0, [r4, #28]
	add r1, r4, #0
	add r1, r1, #46
	mov r0, #5
	strb r0, [r1]
	ldr r0, _0801E9B8  @ =gUnknown_0813AFDC
	str r0, [r4, #72]
	bl 0x0800099C
	add r1, r4, #0
	add r1, r1, #112
	strb r0, [r1]
	add r1, r1, #2
	mov r0, #255
	strb r0, [r1]
	bl 0x0800099C
	mov r1, #24
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	lsr r0, r0, #3
	sub r1, r1, #1
	strb r0, [r1]
	ldrb r1, [r1]
	add r0, r4, #0
	bl 0x08003870
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801E9B8:
	.4byte gUnknown_0813AFDC
	THUMB_FUNC_END sub_0801E964

	THUMB_FUNC_START sub_0801E9BC
sub_0801E9BC: @ 0x0801E9BC
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	cmp r0, #0
	bne _0801EA1E
	add r0, r4, #0
	mov r1, #16
	bl 0x0800997C
	lsl r1, r0, #24
	lsr r2, r1, #24
	mov r1, #128
	and r1, r1, r0
	cmp r1, #0
	beq _0801E9F2
	mov r0, #2
	strb r0, [r4, #20]
	mov r0, #24
	and r0, r0, r2
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	lsr r0, r0, #3
	sub r1, r1, #1
	strb r0, [r1]
	ldrb r1, [r1]
	b _0801EA16
_0801E9F2:
	bl 0x0800099C
	add r2, r0, #0
	mov r0, #24
	and r2, r2, r0
	add r1, r4, #0
	add r1, r1, #43
	ldrb r0, [r1]
	cmp r2, r0
	beq _0801EA22
	mov r0, #2
	strb r0, [r4, #20]
	strb r2, [r1]
	lsr r0, r2, #3
	add r2, r4, #0
	add r2, r2, #42
	strb r0, [r2]
	ldrb r1, [r2]
_0801EA16:
	add r0, r4, #0
	bl 0x08003870
	b _0801EA22
_0801EA1E:
	sub r0, r0, #1
	strb r0, [r4, #23]
_0801EA22:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801E9BC

	THUMB_FUNC_START sub_0801EA28
sub_0801EA28: @ 0x0801EA28
	push {r4,lr}
	add r4, r0, #0
	bl sub_0801ED3C
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801EA3E
	mov r0, #3
	strb r0, [r4, #20]
	mov r0, #30
	b _0801EA4C
_0801EA3E:
	mov r0, #1
	strb r0, [r4, #20]
	bl 0x0800099C
	mov r1, #15
	and r0, r0, r1
	add r0, r0, #15
_0801EA4C:
	strb r0, [r4, #23]
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801EA28

	THUMB_FUNC_START sub_0801EA54
sub_0801EA54: @ 0x0801EA54
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	bl 0x08003828
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801EA7A
	mov r0, #4
	strb r0, [r4, #20]
	mov r0, #192
	lsl r0, r0, #2
	str r0, [r4, #12]
	b _0801EA80
_0801EA7A:
	add r0, r4, #0
	bl sub_0801EE30
_0801EA80:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801EA54

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801EA88
sub_0801EA88: @ 0x0801EA88
	push {r4-r6,lr}
	add r5, r0, #0
	bl 0x08009664
	lsl r0, r0, #16
	cmp r0, #0
	bne _0801EABA
	mov r0, #6
	strb r0, [r5, #20]
	mov r0, #224
	str r0, [r5, #12]
	add r2, r5, #0
	add r2, r2, #43
	ldrb r0, [r2]
	mov r1, #16
	eor r0, r0, r1
	strb r0, [r2]
	mov r0, #192
	lsl r0, r0, #9
	str r0, [r5, #16]
	mov r0, #8
	mov r1, #0
	bl sub_080161F8
	b _0801EB2C
_0801EABA:
	add r0, r5, #0
	bl 0x08003828
	ldr r4, _0801EB34  @ =gUnknown_0813AEF8
	add r6, r5, #0
	add r6, r6, #42
	ldrb r0, [r6]
	lsl r0, r0, #2
	add r1, r0, r4
	mov r2, #0
	ldrsb r2, [r1, r2]
	ldrh r1, [r5, #50]
	add r2, r2, r1
	lsl r2, r2, #16
	lsr r2, r2, #16
	add r0, r0, #1
	add r0, r0, r4
	mov r3, #0
	ldrsb r3, [r0, r3]
	ldrh r0, [r5, #54]
	add r3, r3, r0
	lsl r3, r3, #16
	lsr r3, r3, #16
	add r0, r5, #0
	mov r1, #9
	bl 0x080017EC
	ldrb r1, [r6]
	lsl r1, r1, #2
	add r0, r1, #2
	add r0, r0, r4
	mov r2, #0
	ldrsb r2, [r0, r2]
	ldrh r0, [r5, #50]
	add r2, r2, r0
	lsl r2, r2, #16
	lsr r2, r2, #16
	add r1, r1, #3
	add r1, r1, r4
	mov r3, #0
	ldrsb r3, [r1, r3]
	ldrh r1, [r5, #54]
	add r3, r3, r1
	lsl r3, r3, #16
	lsr r3, r3, #16
	add r0, r5, #0
	mov r1, #9
	bl 0x080017EC
	add r0, r5, #0
	bl sub_0801EDB4
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801EB2C
	mov r0, #5
	strb r0, [r5, #20]
_0801EB2C:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801EB34:
	.4byte gUnknown_0813AEF8
	THUMB_FUNC_END sub_0801EA88

	THUMB_FUNC_START sub_0801EB38
sub_0801EB38: @ 0x0801EB38
	push {r4-r6,lr}
	add r5, r0, #0
	ldr r0, [r5, #12]
	sub r0, r0, #32
	str r0, [r5, #12]
	cmp r0, #255
	ble _0801EBA2
	ldr r4, _0801EBB8  @ =gUnknown_0813AEF8
	add r6, r5, #0
	add r6, r6, #42
	ldrb r0, [r6]
	lsl r0, r0, #2
	add r1, r0, r4
	mov r2, #0
	ldrsb r2, [r1, r2]
	ldrh r1, [r5, #50]
	add r2, r2, r1
	lsl r2, r2, #16
	lsr r2, r2, #16
	add r0, r0, #1
	add r0, r0, r4
	mov r3, #0
	ldrsb r3, [r0, r3]
	ldrh r0, [r5, #54]
	add r3, r3, r0
	lsl r3, r3, #16
	lsr r3, r3, #16
	add r0, r5, #0
	mov r1, #9
	bl 0x080017EC
	ldrb r1, [r6]
	lsl r1, r1, #2
	add r0, r1, #2
	add r0, r0, r4
	mov r2, #0
	ldrsb r2, [r0, r2]
	ldrh r0, [r5, #50]
	add r2, r2, r0
	lsl r2, r2, #16
	lsr r2, r2, #16
	add r1, r1, #3
	add r1, r1, r4
	mov r3, #0
	ldrsb r3, [r1, r3]
	ldrh r1, [r5, #54]
	add r3, r3, r1
	lsl r3, r3, #16
	lsr r3, r3, #16
	add r0, r5, #0
	mov r1, #9
	bl 0x080017EC
_0801EBA2:
	ldr r0, [r5, #12]
	cmp r0, #0
	ble _0801EBBC
	add r0, r5, #0
	bl 0x08009664
	add r0, r5, #0
	bl sub_0801EE30
	b _0801EBC4
	.byte 0x00
	.byte 0x00
_0801EBB8:
	.4byte gUnknown_0813AEF8
_0801EBBC:
	mov r0, #1
	strb r0, [r5, #20]
	mov r0, #16
	strb r0, [r5, #23]
_0801EBC4:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801EB38

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801EBCC
sub_0801EBCC: @ 0x0801EBCC
	push {r4,lr}
	add r4, r0, #0
	bl 0x08009664
	mov r1, #192
	lsl r1, r1, #5
	add r0, r4, #0
	bl 0x08003F1C
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801EBEC
	mov r0, #1
	strb r0, [r4, #20]
	mov r0, #30
	strb r0, [r4, #23]
_0801EBEC:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801EBCC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801EBF4
sub_0801EBF4: @ 0x0801EBF4
	push {r4,lr}
	add r4, r0, #0
	ldrb r1, [r4, #23]
	cmp r1, #0
	beq _0801EC30
	mov r0, #31
	and r0, r0, r1
	cmp r0, #0
	bne _0801EC28
	add r2, r4, #0
	add r2, r2, #42
	ldrb r0, [r2]
	mov r1, #2
	eor r0, r0, r1
	strb r0, [r2]
	lsl r0, r0, #3
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	ldrb r1, [r2]
	add r1, r1, #4
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x08003870
_0801EC28:
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	b _0801EC4C
_0801EC30:
	mov r1, #224
	lsl r1, r1, #5
	add r0, r4, #0
	bl 0x08003594
	cmp r0, #0
	bne _0801EC4C
	mov r0, #8
	strb r0, [r4, #20]
	mov r0, #30
	strb r0, [r4, #23]
	mov r0, #144
	lsl r0, r0, #1
	str r0, [r4, #12]
_0801EC4C:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801EBF4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801EC54
sub_0801EC54: @ 0x0801EC54
	push {r4,lr}
	add r4, r0, #0
	bl 0x0800963C
	add r0, r4, #0
	bl 0x08003828
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801EC94
	mov r0, #30
	strb r0, [r4, #23]
	bl 0x0800099C
	mov r1, #24
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	lsr r0, r0, #3
	sub r1, r1, #1
	ldrb r2, [r1]
	cmp r0, r2
	beq _0801EC94
	strb r0, [r1]
	add r1, r0, #4
	add r0, r4, #0
	bl 0x08003870
_0801EC94:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801EC54

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801EC9C
sub_0801EC9C: @ 0x0801EC9C
	push {lr}
	mov r12, r0
	mov r3, #0
	mov r2, #1
	mov r0, #1
	mov r1, r12
	strb r0, [r1, #20]
	ldrb r1, [r1, #28]
	sub r0, r0, #5
	and r0, r0, r1
	orr r0, r0, r2
	mov r1, r12
	strb r0, [r1, #28]
	add r1, r1, #46
	mov r0, #4
	strb r0, [r1]
	mov r0, r12
	add r0, r0, #60
	strb r3, [r0]
	mov r0, #128
	lsl r0, r0, #1
	mov r1, r12
	str r0, [r1, #12]
	mov r0, #144
	lsl r0, r0, #9
	str r0, [r1, #16]
	mov r0, r12
	add r0, r0, #43
	ldrb r1, [r0]
	lsr r1, r1, #3
	sub r0, r0, #1
	strb r1, [r0]
	add r1, r1, #8
	mov r0, r12
	bl 0x08003870
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801EC9C

	THUMB_FUNC_START sub_0801ECE8
sub_0801ECE8: @ 0x0801ECE8
	push {r4,lr}
	add r4, r0, #0
	bl sub_0803CC20
	mov r1, #192
	lsl r1, r1, #5
	add r0, r4, #0
	bl 0x08003F1C
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801ED08
	mov r0, #2
	strb r0, [r4, #20]
	mov r0, #30
	strb r0, [r4, #23]
_0801ED08:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801ECE8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801ED10
sub_0801ED10: @ 0x0801ED10
	push {lr}
	add r3, r0, #0
	ldrb r2, [r3, #28]
	lsl r1, r2, #30
	lsr r1, r1, #30
	mov r0, #1
	eor r1, r1, r0
	sub r0, r0, #5
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r3, #28]
	ldrb r0, [r3, #23]
	sub r0, r0, #1
	strb r0, [r3, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801ED38
	add r0, r3, #0
	bl sub_08012540
_0801ED38:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801ED10

	THUMB_FUNC_START sub_0801ED3C
sub_0801ED3C: @ 0x0801ED3C
	push {r4-r7,lr}
	add r4, r0, #0
	mov r0, #50
	ldrsh r1, [r4, r0]
	ldr r3, _0801ED84  @ =gUnknown_03000450
	ldrh r0, [r3, #24]
	sub r1, r1, r0
	asr r1, r1, #4
	mov r2, #54
	ldrsh r0, [r4, r2]
	ldr r2, [r4, #72]
	ldrb r2, [r2, #1]
	lsl r2, r2, #24
	asr r2, r2, #24
	add r0, r0, r2
	ldrh r2, [r3, #26]
	sub r0, r0, r2
	asr r0, r0, #4
	lsl r0, r0, #6
	orr r1, r1, r0
	lsl r1, r1, #16
	lsr r5, r1, #16
	mov r6, #0
	ldr r7, _0801ED88  @ =gUnknown_08137B90
_0801ED6C:
	add r0, r4, #0
	add r0, r0, #80
	ldrh r1, [r0]
	add r0, r5, #0
	bl 0x080093C8
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801ED8C
	mov r0, #0
	b _0801EDAC
	.byte 0x00
	.byte 0x00
_0801ED84:
	.4byte gUnknown_03000450
_0801ED88:
	.4byte gUnknown_08137B90
_0801ED8C:
	add r0, r4, #0
	add r0, r0, #43
	ldrb r0, [r0]
	lsr r0, r0, #3
	lsl r0, r0, #1
	add r0, r0, r7
	ldrh r0, [r0]
	add r0, r5, r0
	lsl r0, r0, #16
	lsr r5, r0, #16
	add r0, r6, #1
	lsl r0, r0, #16
	lsr r6, r0, #16
	cmp r6, #3
	bls _0801ED6C
	mov r0, #1
_0801EDAC:
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0801ED3C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801EDB4
sub_0801EDB4: @ 0x0801EDB4
	push {r4,r5,lr}
	mov r1, #50
	ldrsh r2, [r0, r1]
	ldr r4, _0801EE20  @ =gUnknown_03000450
	ldrh r1, [r4, #24]
	sub r2, r2, r1
	asr r2, r2, #4
	mov r3, #54
	ldrsh r1, [r0, r3]
	ldr r3, [r0, #72]
	ldrb r3, [r3, #1]
	lsl r3, r3, #24
	asr r3, r3, #24
	add r1, r1, r3
	ldrh r3, [r4, #26]
	sub r1, r1, r3
	asr r1, r1, #4
	lsl r1, r1, #6
	orr r2, r2, r1
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, _0801EE24  @ =gUnknown_08137B90
	add r1, r0, #0
	add r1, r1, #43
	ldrb r1, [r1]
	lsr r1, r1, #3
	lsl r1, r1, #1
	add r1, r1, r3
	mov r4, #0
	ldrsh r3, [r1, r4]
	lsl r1, r3, #1
	add r1, r1, r3
	add r2, r2, r1
	lsl r2, r2, #16
	lsr r5, r2, #16
	add r4, r0, #0
	add r4, r4, #80
	ldrh r1, [r4]
	add r0, r5, #0
	mov r2, #9
	bl 0x08009E1C
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801EE28
	ldrh r1, [r4]
	add r0, r5, #0
	bl 0x080093C8
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801EE28
	mov r0, #1
	b _0801EE2A
_0801EE20:
	.4byte gUnknown_03000450
_0801EE24:
	.4byte gUnknown_08137B90
_0801EE28:
	mov r0, #0
_0801EE2A:
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0801EDB4

	THUMB_FUNC_START sub_0801EE30
sub_0801EE30: @ 0x0801EE30
	push {r4,lr}
	add r4, r0, #0
	add r0, r0, #112
	ldrb r1, [r0]
	sub r1, r1, #1
	strb r1, [r0]
	mov r0, #7
	and r1, r1, r0
	cmp r1, #0
	bne _0801EE60
	mov r0, #15
	mov r1, #17
	mov r2, #0
	bl sub_0804C8A8
	add r1, r0, #0
	cmp r1, #0
	beq _0801EE60
	mov r3, #128
	lsl r3, r3, #9
	add r0, r4, #0
	mov r2, #0
	bl sub_0803D4A4
_0801EE60:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801EE30

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801EE68
sub_0801EE68: @ 0x0801EE68
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r6, r0, #0
	ldrb r0, [r6, #20]
	cmp r0, #0
	beq _0801EE88
	add r0, r6, #0
	add r0, r0, #63
	ldrb r1, [r0]
	mov r9, r0
	cmp r1, #6
	bne _0801EE8C
_0801EE88:
	mov r0, #0
	b _0801F090
_0801EE8C:
	bl 0x0800099C
	ldr r1, _0801EF5C  @ =gUnknown_03006C80
	ldrb r1, [r1]
	bl __umodsi3
	lsl r0, r0, #24
	lsr r5, r0, #24
	mov r7, #0
	mov r0, #0
	mov r8, r0
	mov r4, sp
	mov r3, sp
	mov r2, sp
	mov r1, sp
	mov r0, #255
	strb r0, [r1, #3]
	mov r0, #1
	neg r0, r0
	strb r0, [r2, #2]
	strb r0, [r3, #1]
	strb r0, [r4]
_0801EEB8:
	lsl r0, r5, #3
	add r0, r0, r5
	lsl r0, r0, #4
	ldr r1, _0801EF60  @ =gUnknown_03006A30
	add r4, r0, r1
	ldrb r0, [r4, #15]
	mov r1, #211
	neg r1, r1
	and r0, r0, r1
	cmp r0, #0
	beq _0801EF36
	ldr r3, [r4, #40]
	ldrh r0, [r3, #50]
	ldrh r1, [r6, #50]
	sub r0, r0, r1
	add r0, r0, #12
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #24
	bls _0801EEF0
	ldrh r0, [r3, #54]
	ldrh r1, [r6, #54]
	sub r0, r0, r1
	add r0, r0, #12
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #24
	bhi _0801EF36
_0801EEF0:
	add r0, r6, #0
	add r0, r0, #80
	add r1, r3, #0
	add r1, r1, #80
	ldrh r2, [r0]
	ldrh r0, [r1]
	and r0, r0, r2
	lsr r0, r0, #14
	cmp r0, #0
	beq _0801EF36
	add r0, r6, #0
	add r1, r3, #0
	bl sub_0803CECC
	add r0, r0, #4
	mov r1, #24
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r1, [r4, #40]
	add r1, r1, #42
	ldrb r2, [r1]
	mov r1, #4
	lsr r0, r0, #26
	eor r1, r1, r2
	cmp r0, r1
	bne _0801EF36
	mov r0, sp
	add r0, r0, r8
	strb r3, [r0]
	mov r0, r8
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
_0801EF36:
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r0, _0801EF5C  @ =gUnknown_03006C80
	ldrb r1, [r0]
	cmp r5, r1
	bcc _0801EF46
	mov r5, #0
_0801EF46:
	add r0, r7, #1
	lsl r0, r0, #24
	lsr r7, r0, #24
	cmp r7, r1
	bcc _0801EEB8
	mov r1, r8
	cmp r1, #0
	bne _0801EF58
	b _0801F086
_0801EF58:
	mov r5, #0
	b _0801EFB0
_0801EF5C:
	.4byte gUnknown_03006C80
_0801EF60:
	.4byte gUnknown_03006A30
_0801EF64:
	add r1, r5, #1
	lsl r0, r1, #24
	lsr r7, r0, #24
	mov r12, r1
	cmp r7, r8
	bcs _0801EFAA
	mov r0, sp
	add r1, r0, r5
	mov r4, #255
	mov r5, #16
	mov r10, r5
_0801EF7A:
	ldrb r3, [r1]
	mov r0, sp
	add r2, r0, r7
	mov r0, r10
	eor r0, r0, r3
	ldrb r5, [r2]
	cmp r0, r5
	bne _0801EFA0
	add r0, r3, #0
	orr r0, r0, r4
	strb r0, [r1]
	ldrb r0, [r2]
	orr r0, r0, r4
	strb r0, [r2]
	mov r0, r8
	sub r0, r0, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
_0801EFA0:
	add r0, r7, #1
	lsl r0, r0, #24
	lsr r7, r0, #24
	cmp r7, r8
	bcc _0801EF7A
_0801EFAA:
	mov r1, r12
	lsl r0, r1, #24
	lsr r5, r0, #24
_0801EFB0:
	mov r0, r8
	sub r0, r0, #1
	cmp r5, r0
	blt _0801EF64
	mov r5, r8
	cmp r5, #0
	beq _0801F08E
	add r0, r6, #0
	add r0, r0, #114
	ldrb r1, [r0]
	add r3, r0, #0
	add r2, r6, #0
	add r2, r2, #113
	cmp r1, #255
	beq _0801F062
	mov r5, #0
	ldr r7, _0801F034  @ =gUnknown_0813AF08
_0801EFD2:
	mov r0, sp
	add r4, r0, r5
	ldrb r0, [r3]
	ldrb r1, [r4]
	cmp r0, r1
	bne _0801F058
	ldrb r0, [r2]
	add r1, r0, #1
	strb r1, [r2]
	lsl r0, r1, #24
	lsr r0, r0, #24
	cmp r0, #30
	bls _0801F038
	mov r0, #7
	strb r0, [r6, #20]
	mov r0, #90
	strb r0, [r6, #23]
	mov r0, #192
	lsl r0, r0, #9
	str r0, [r6, #16]
	mov r0, #6
	mov r5, r9
	strb r0, [r5]
	add r0, r6, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r1, r1, #4
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r6, #0
	bl 0x08003870
	mov r0, #32
	bl sub_08012468
	add r1, r0, #0
	cmp r1, #0
	beq _0801F054
	mov r0, #1
	strb r0, [r1, #10]
	ldrb r0, [r4]
	add r2, r1, #0
	add r2, r2, #43
	strb r0, [r2]
	add r0, r6, #0
	bl sub_0803D3D0
	b _0801F054
	.byte 0x00
	.byte 0x00
_0801F034:
	.4byte gUnknown_0813AF08
_0801F038:
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0801F054
	mov r0, #6
	and r1, r1, r0
	lsr r0, r1, #1
	add r0, r0, r7
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrh r1, [r6, #50]
	add r0, r0, r1
	strh r0, [r6, #50]
_0801F054:
	mov r0, #1
	b _0801F090
_0801F058:
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #3
	bls _0801EFD2
_0801F062:
	mov r0, #0
	strb r0, [r2]
	mov r5, #0
	mov r0, sp
	b _0801F076
_0801F06C:
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	mov r1, sp
	add r0, r1, r5
_0801F076:
	ldrb r0, [r0]
	cmp r0, #255
	beq _0801F06C
	mov r1, sp
	add r0, r1, r5
	ldrb r0, [r0]
	strb r0, [r3]
	b _0801F08E
_0801F086:
	add r1, r6, #0
	add r1, r1, #114
	mov r0, #255
	strb r0, [r1]
_0801F08E:
	mov r0, r8
_0801F090:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0801EE68

	THUMB_FUNC_START sub_0801F0A0
sub_0801F0A0: @ 0x0801F0A0
	push {r4,r5,lr}
	add r4, r0, #0
	ldr r5, _0801F0C0  @ =gUnknown_0813AFE4
	bl 0x080098DC
	lsl r0, r0, #24
	lsr r0, r0, #22
	add r0, r0, r5
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801F0C0:
	.4byte gUnknown_0813AFE4
	THUMB_FUNC_END sub_0801F0A0

	THUMB_FUNC_START sub_0801F0C4
sub_0801F0C4: @ 0x0801F0C4
	push {lr}
	ldr r2, _0801F0D8  @ =gUnknown_0813AFFC
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0801F0D8:
	.4byte gUnknown_0813AFFC
	THUMB_FUNC_END sub_0801F0C4

	THUMB_FUNC_START sub_0801F0DC
sub_0801F0DC: @ 0x0801F0DC
	push {lr}
	ldr r1, _0801F0E8  @ =gUnknown_0813AFE4
	bl 0x080098A0
	pop {r0}
	bx r0
_0801F0E8:
	.4byte gUnknown_0813AFE4
	THUMB_FUNC_END sub_0801F0DC

	THUMB_FUNC_START sub_0801F0EC
sub_0801F0EC: @ 0x0801F0EC
	push {r4-r7,lr}
	add r6, r0, #0
	add r1, r6, #0
	add r1, r1, #66
	ldrb r2, [r1]
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _0801F102
	sub r0, r2, #1
	b _0801F104
_0801F102:
	add r0, r2, #1
_0801F104:
	strb r0, [r1]
	ldrh r5, [r6, #12]
	add r7, r6, #0
	add r7, r7, #43
	ldrb r4, [r7]
	mov r0, #160
	lsl r0, r0, #2
	str r0, [r6, #12]
	add r0, r6, #0
	add r0, r0, #62
	ldrb r0, [r0]
	strb r0, [r7]
	add r0, r6, #0
	bl 0x080096C4
	str r5, [r6, #12]
	strb r4, [r7]
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801F0EC

	THUMB_FUNC_START sub_0801F12C
sub_0801F12C: @ 0x0801F12C
	push {r4,r5,lr}
	add r5, r0, #0
	mov r0, #33
	bl sub_08012468
	add r4, r0, #0
	cmp r4, #0
	beq _0801F160
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0803D3D0
	add r0, r5, #0
	add r0, r0, #112
	ldrh r0, [r0]
	mov r1, #0
	strh r0, [r4, #50]
	add r0, r5, #0
	add r0, r0, #114
	ldrh r0, [r0]
	strh r0, [r4, #54]
	strh r1, [r4, #58]
	add r1, r4, #0
	add r1, r1, #116
	ldr r0, _0801F16C  @ =0x0000023A
	strh r0, [r1]
_0801F160:
	add r0, r5, #0
	bl sub_08043F20
	pop {r4,r5}
	pop {r0}
	bx r0
_0801F16C:
	.4byte 0x0000023A
	THUMB_FUNC_END sub_0801F12C

	THUMB_FUNC_START sub_0801F170
sub_0801F170: @ 0x0801F170
	push {r4,r5,lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, r1, #46
	mov r0, #5
	strb r0, [r1]
	ldr r0, _0801F1E0  @ =gUnknown_0813B100
	str r0, [r4, #72]
	mov r0, #240
	strb r0, [r4, #23]
	bl 0x0800099C
	mov r1, #28
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	lsr r0, r0, #2
	add r5, r4, #0
	add r5, r5, #42
	strb r0, [r5]
	ldrh r1, [r4, #50]
	add r0, r4, #0
	add r0, r0, #112
	strh r1, [r0]
	ldrh r0, [r4, #54]
	add r1, r4, #0
	add r1, r1, #114
	strh r0, [r1]
	bl 0x0800099C
	mov r1, #112
	and r0, r0, r1
	add r0, r0, #240
	add r1, r4, #0
	add r1, r1, #118
	strh r0, [r1]
	add r0, r4, #0
	add r0, r0, #116
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801F1E4
	mov r0, #1
	strb r0, [r4, #20]
	add r2, r4, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #127
	and r0, r0, r1
	strb r0, [r2]
	add r0, r4, #0
	mov r1, #12
	bl 0x08003870
	b _0801F1FC
	.byte 0x00
	.byte 0x00
_0801F1E0:
	.4byte gUnknown_0813B100
_0801F1E4:
	mov r0, #2
	strb r0, [r4, #20]
	ldrb r1, [r4, #28]
	sub r0, r0, #6
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	ldrb r1, [r5]
	add r0, r4, #0
	bl 0x08003870
_0801F1FC:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801F170

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801F204
sub_0801F204: @ 0x0801F204
	push {lr}
	add r3, r0, #0
	add r1, r3, #0
	add r1, r1, #116
	ldrh r0, [r1]
	sub r0, r0, #1
	strh r0, [r1]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #0
	bne _0801F238
	mov r0, #2
	strb r0, [r3, #20]
	add r2, r3, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r2]
	add r0, r3, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r0, r3, #0
	bl 0x08003870
	b _0801F250
_0801F238:
	cmp r0, #90
	bne _0801F24A
	ldrb r0, [r3, #28]
	mov r1, #4
	neg r1, r1
	and r1, r1, r0
	mov r0, #1
	orr r1, r1, r0
	strb r1, [r3, #28]
_0801F24A:
	add r0, r3, #0
	bl 0x08003828
_0801F250:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801F204

	THUMB_FUNC_START sub_0801F254
sub_0801F254: @ 0x0801F254
	push {r4,lr}
	add r4, r0, #0
	bl sub_0801F3B8
	lsl r1, r0, #24
	lsr r2, r1, #24
	mov r1, #128
	and r1, r1, r0
	cmp r1, #0
	beq _0801F290
	mov r0, #3
	strb r0, [r4, #20]
	mov r0, #16
	strb r0, [r4, #23]
	mov r0, #24
	and r0, r0, r2
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	add r2, r4, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #127
	and r0, r0, r1
	strb r0, [r2]
	add r0, r4, #0
	mov r1, #12
	bl 0x08003870
	b _0801F2DA
_0801F290:
	add r0, r4, #0
	bl 0x08003828
	add r0, r4, #0
	bl 0x080096C4
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801F2AE
	ldrh r0, [r4, #44]
	cmp r0, #0
	beq _0801F2DA
_0801F2AE:
	mov r0, #240
	strb r0, [r4, #23]
	add r2, r4, #0
	add r2, r2, #60
	ldrb r0, [r2]
	mov r1, #128
	orr r0, r0, r1
	strb r0, [r2]
	bl 0x0800099C
	mov r1, #28
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	lsr r0, r0, #2
	sub r1, r1, #1
	strb r0, [r1]
	ldrb r1, [r1]
	add r0, r4, #0
	bl 0x08003870
_0801F2DA:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801F254

	THUMB_FUNC_START sub_0801F2E0
sub_0801F2E0: @ 0x0801F2E0
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801F32E
	mov r0, #4
	strb r0, [r4, #20]
	mov r0, #192
	lsl r0, r0, #1
	str r0, [r4, #12]
	mov r0, #224
	lsl r0, r0, #9
	str r0, [r4, #16]
	add r2, r4, #0
	add r2, r2, #60
	ldrb r0, [r2]
	mov r1, #128
	orr r0, r0, r1
	strb r0, [r2]
	add r1, r4, #0
	add r1, r1, #63
	mov r0, #51
	strb r0, [r1]
	add r0, r4, #0
	add r0, r0, #43
	ldrb r1, [r0]
	lsr r1, r1, #3
	add r1, r1, #8
	add r0, r4, #0
	bl 0x08003870
	add r0, r4, #0
	bl sub_0804CA4C
_0801F32E:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801F2E0

	THUMB_FUNC_START sub_0801F334
sub_0801F334: @ 0x0801F334
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	bl 0x080096C4
	mov r1, #192
	lsl r1, r1, #5
	add r0, r4, #0
	bl 0x08003594
	cmp r0, #0
	bne _0801F37E
	mov r0, #5
	strb r0, [r4, #20]
	mov r0, #16
	strb r0, [r4, #23]
	mov r0, #128
	str r0, [r4, #12]
	add r2, r4, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #127
	and r0, r0, r1
	strb r0, [r2]
	add r1, r4, #0
	add r1, r1, #63
	mov r0, #50
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #12
	bl 0x08003870
	add r0, r4, #0
	bl sub_0804CA4C
_0801F37E:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801F334

	THUMB_FUNC_START sub_0801F384
sub_0801F384: @ 0x0801F384
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801F3B0
	mov r0, #2
	strb r0, [r4, #20]
	mov r0, #1
	strb r0, [r4, #23]
	bl 0x0800099C
	mov r1, #112
	and r0, r0, r1
	add r0, r0, #240
	add r1, r4, #0
	add r1, r1, #118
	strh r0, [r1]
_0801F3B0:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801F384

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801F3B8
sub_0801F3B8: @ 0x0801F3B8
	push {r4-r6,lr}
	add r4, r0, #0
	ldr r2, _0801F41C  @ =gUnknown_03006A30
	ldr r0, _0801F420  @ =gUnknown_03000E20
	ldrh r0, [r0]
	mov r1, #3
	and r1, r1, r0
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r1, r2, #0
	add r1, r1, #40
	add r0, r0, r1
	ldr r3, [r0]
	cmp r3, #0
	beq _0801F454
	ldrb r0, [r3, #10]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #4
	add r1, r1, r2
	add r1, r1, #38
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801F464
	ldrh r0, [r3, #50]
	ldrh r2, [r4, #50]
	sub r1, r0, r2
	add r1, r1, #18
	lsl r1, r1, #16
	lsr r1, r1, #16
	add r6, r0, #0
	add r5, r2, #0
	cmp r1, #36
	bhi _0801F428
	ldrh r2, [r3, #54]
	ldrh r1, [r4, #54]
	sub r0, r2, r1
	add r0, r0, #64
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #128
	bhi _0801F428
	lsl r1, r1, #16
	lsl r0, r2, #16
	cmp r1, r0
	ble _0801F424
	mov r0, #128
	b _0801F476
	.byte 0x00
	.byte 0x00
_0801F41C:
	.4byte gUnknown_03006A30
_0801F420:
	.4byte gUnknown_03000E20
_0801F424:
	mov r0, #144
	b _0801F476
_0801F428:
	sub r0, r6, r5
	add r0, r0, #64
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #128
	bhi _0801F454
	ldrh r0, [r3, #54]
	ldrh r1, [r4, #54]
	sub r0, r0, r1
	add r0, r0, #18
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #36
	bhi _0801F454
	lsl r1, r5, #16
	lsl r0, r6, #16
	cmp r1, r0
	ble _0801F450
	mov r0, #152
	b _0801F476
_0801F450:
	mov r0, #136
	b _0801F476
_0801F454:
	add r1, r4, #0
	add r1, r1, #118
	ldrh r0, [r1]
	sub r0, r0, #1
	strh r0, [r1]
	lsl r0, r0, #16
	cmp r0, #0
	beq _0801F468
_0801F464:
	mov r0, #0
	b _0801F476
_0801F468:
	add r0, r4, #0
	add r0, r0, #43
	ldrb r1, [r0]
	mov r0, #24
	and r0, r0, r1
	mov r1, #128
	orr r0, r0, r1
_0801F476:
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0801F3B8

	THUMB_FUNC_START sub_0801F47C
sub_0801F47C: @ 0x0801F47C
	push {lr}
	ldr r1, _0801F488  @ =gUnknown_0813B108
	bl 0x08009924
	pop {r0}
	bx r0
_0801F488:
	.4byte gUnknown_0813B108
	THUMB_FUNC_END sub_0801F47C

	THUMB_FUNC_START sub_0801F48C
sub_0801F48C: @ 0x0801F48C
	push {r4,lr}
	add r4, r0, #0
	bl sub_0801F668
	ldr r1, _0801F4D0  @ =gUnknown_0813B120
	ldrb r0, [r4, #20]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
	add r0, r4, #0
	bl 0x08003828
	ldr r0, [r4, #40]
	ldr r1, _0801F4D4  @ =0x00FF8000
	and r0, r0, r1
	mov r1, #144
	lsl r1, r1, #11
	cmp r0, r1
	bne _0801F4C8
	add r1, r4, #0
	add r1, r1, #42
	mov r0, #0
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
_0801F4C8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801F4D0:
	.4byte gUnknown_0813B120
_0801F4D4:
	.4byte 0x00FF8000
	THUMB_FUNC_END sub_0801F48C

	THUMB_FUNC_START sub_0801F4D8
sub_0801F4D8: @ 0x0801F4D8
	push {r4,lr}
	add r4, r0, #0
	add r0, r0, #65
	ldrb r1, [r0]
	mov r0, #127
	and r0, r0, r1
	sub r0, r0, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #30
	bhi _0801F538
	add r0, r1, #0
	add r0, r0, #108
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _0801F538
	mov r0, #64
	str r0, [r4, #12]
	add r2, r4, #0
	add r2, r2, #124
	ldrb r0, [r2]
	cmp r0, #2
	bhi _0801F538
	add r0, r0, #1
	strb r0, [r2]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #3
	bne _0801F51C
	add r1, r4, #0
	add r1, r1, #63
	mov r0, #53
	strb r0, [r1]
_0801F51C:
	add r1, r4, #0
	add r1, r1, #125
	mov r0, #30
	strb r0, [r1]
	ldrb r0, [r2]
	sub r1, r1, #83
	strb r0, [r1]
	ldrb r1, [r1]
	add r0, r4, #0
	bl 0x08003870
	mov r0, #91
	bl 0x08003DFC
_0801F538:
	ldr r1, _0801F548  @ =gUnknown_0813B108
	add r0, r4, #0
	bl 0x080098A0
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801F548:
	.4byte gUnknown_0813B108
	THUMB_FUNC_END sub_0801F4D8

	THUMB_FUNC_START sub_0801F54C
sub_0801F54C: @ 0x0801F54C
	push {lr}
	mov r12, r0
	mov r3, #0
	mov r2, #1
	mov r0, #1
	mov r1, r12
	strb r0, [r1, #20]
	mov r0, #30
	strb r0, [r1, #23]
	ldrb r1, [r1, #28]
	sub r0, r0, #34
	and r0, r0, r1
	orr r0, r0, r2
	mov r1, r12
	strb r0, [r1, #28]
	add r1, r1, #46
	mov r0, #5
	strb r0, [r1]
	mov r0, r12
	ldrb r1, [r0, #28]
	mov r0, #49
	neg r0, r0
	and r0, r0, r1
	mov r1, #32
	orr r0, r0, r1
	mov r1, r12
	strb r0, [r1, #28]
	mov r2, r12
	add r2, r2, #94
	ldrb r1, [r2]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2]
	ldr r0, _0801F5AC  @ =gUnknown_0813B1C4
	mov r1, r12
	str r0, [r1, #72]
	mov r0, r12
	add r0, r0, #42
	strb r3, [r0]
	mov r0, r12
	mov r1, #0
	bl 0x08003870
	pop {r0}
	bx r0
_0801F5AC:
	.4byte gUnknown_0813B1C4
	THUMB_FUNC_END sub_0801F54C

	THUMB_FUNC_START sub_0801F5B0
sub_0801F5B0: @ 0x0801F5B0
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	cmp r0, #0
	beq _0801F5C0
	sub r0, r0, #1
	strb r0, [r4, #23]
	b _0801F5FE
_0801F5C0:
	add r0, r4, #0
	mov r1, #96
	mov r2, #80
	bl 0x08009E6C
	add r1, r0, #0
	cmp r1, #0
	beq _0801F5FE
	str r1, [r4, #100]
	add r0, r4, #0
	bl sub_0803CECC
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	mov r0, #2
	strb r0, [r4, #20]
	bl 0x0800099C
	ldr r2, _0801F604  @ =gUnknown_0813B12C
	mov r1, #7
	and r1, r1, r0
	add r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #23]
	mov r0, #64
	str r0, [r4, #12]
	add r1, r4, #0
	add r1, r1, #126
	mov r0, #8
	strb r0, [r1]
_0801F5FE:
	pop {r4}
	pop {r0}
	bx r0
_0801F604:
	.4byte gUnknown_0813B12C
	THUMB_FUNC_END sub_0801F5B0

	THUMB_FUNC_START sub_0801F608
sub_0801F608: @ 0x0801F608
	push {r4,r5,lr}
	add r4, r0, #0
	ldr r0, _0801F660  @ =gUnknown_03000E20
	ldrh r1, [r0]
	mov r5, #7
	add r0, r5, #0
	and r0, r0, r1
	cmp r0, #0
	bne _0801F62E
	ldr r1, [r4, #100]
	add r0, r4, #0
	bl 0x08009EA4
	add r1, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x080040C4
_0801F62E:
	add r0, r4, #0
	bl sub_0801F6BC
	add r0, r4, #0
	bl 0x0800963C
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801F658
	mov r0, #1
	strb r0, [r4, #20]
	bl 0x0800099C
	ldr r1, _0801F664  @ =gUnknown_0813B134
	and r0, r0, r5
	add r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #23]
_0801F658:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801F660:
	.4byte gUnknown_03000E20
_0801F664:
	.4byte gUnknown_0813B134
	THUMB_FUNC_END sub_0801F608

	THUMB_FUNC_START sub_0801F668
sub_0801F668: @ 0x0801F668
	push {lr}
	add r3, r0, #0
	add r1, r3, #0
	add r1, r1, #125
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801F6B2
	sub r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801F6B2
	add r2, r3, #0
	add r2, r2, #124
	ldrb r0, [r2]
	sub r0, r0, #1
	strb r0, [r2]
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801F694
	mov r0, #30
	strb r0, [r1]
_0801F694:
	add r1, r3, #0
	add r1, r1, #63
	mov r0, #52
	strb r0, [r1]
	ldr r1, _0801F6B8  @ =gUnknown_0813B13C
	ldrb r0, [r2]
	add r0, r0, r1
	ldrb r0, [r0]
	add r1, r3, #0
	add r1, r1, #42
	strb r0, [r1]
	ldrb r1, [r1]
	add r0, r3, #0
	bl 0x08003870
_0801F6B2:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801F6B8:
	.4byte gUnknown_0813B13C
	THUMB_FUNC_END sub_0801F668

	THUMB_FUNC_START sub_0801F6BC
sub_0801F6BC: @ 0x0801F6BC
	add r2, r0, #0
	add r1, r2, #0
	add r1, r1, #126
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801F6CE
	sub r0, r0, #1
	strb r0, [r1]
	b _0801F6E0
_0801F6CE:
	mov r0, #8
	strb r0, [r1]
	ldr r1, [r2, #12]
	ldr r0, _0801F6E4  @ =0x000001FF
	cmp r1, r0
	bgt _0801F6E0
	add r0, r1, #0
	add r0, r0, #32
	str r0, [r2, #12]
_0801F6E0:
	bx lr
	.byte 0x00
	.byte 0x00
_0801F6E4:
	.4byte 0x000001FF
	THUMB_FUNC_END sub_0801F6BC

	THUMB_FUNC_START sub_0801F6E8
sub_0801F6E8: @ 0x0801F6E8
	push {r4,r5,lr}
	add r5, r0, #0
	ldrb r0, [r5, #11]
	cmp r0, #0
	bne _0801F73C
	add r0, r5, #0
	bl 0x080095A4
	ldr r4, _0801F738  @ =gUnknown_0813B1CC
	add r0, r5, #0
	bl 0x080098DC
	lsl r0, r0, #24
	lsr r0, r0, #22
	add r0, r0, r4
	ldr r1, [r0]
	add r0, r5, #0
	bl _call_via_r1
	add r0, r5, #0
	bl sub_0801F970
	add r0, r5, #0
	bl 0x08003828
	add r0, r5, #0
	bl 0x08008D90
	ldrb r2, [r5, #31]
	mov r1, #63
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #64
	orr r0, r0, r2
	strb r0, [r5, #31]
	ldrb r0, [r5, #29]
	and r1, r1, r0
	orr r1, r1, r2
	strb r1, [r5, #29]
	b _0801F742
_0801F738:
	.4byte gUnknown_0813B1CC
_0801F73C:
	add r0, r5, #0
	bl sub_0801F8D8
_0801F742:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801F6E8

	THUMB_FUNC_START sub_0801F748
sub_0801F748: @ 0x0801F748
	push {lr}
	ldr r2, _0801F75C  @ =gUnknown_0813B1E4
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0801F75C:
	.4byte gUnknown_0813B1E4
	THUMB_FUNC_END sub_0801F748

	THUMB_FUNC_START sub_0801F760
sub_0801F760: @ 0x0801F760
	push {r4-r6,lr}
	add r4, r0, #0
	ldrb r0, [r4, #10]
	cmp r0, #0
	beq _0801F770
	mov r0, #1
	strb r0, [r4, #20]
	b _0801F784
_0801F770:
	mov r0, #3
	strb r0, [r4, #20]
	mov r0, #30
	strb r0, [r4, #23]
	add r2, r4, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #127
	and r0, r0, r1
	strb r0, [r2]
_0801F784:
	ldr r6, _0801F7D8  @ =gUnknown_03006A30
	ldr r0, [r4, #76]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r6
	ldrh r1, [r0, #54]
	mov r5, #128
	lsl r5, r5, #7
	add r0, r5, #0
	and r0, r0, r1
	cmp r0, #0
	bne _0801F7CA
	mov r0, #35
	bl sub_08012468
	add r1, r0, #0
	cmp r1, #0
	beq _0801F7CA
	ldrb r0, [r4, #10]
	strb r0, [r1, #10]
	mov r0, #1
	strb r0, [r1, #11]
	ldr r0, [r4, #76]
	str r0, [r1, #88]
	ldrb r0, [r0, #10]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #4
	add r1, r1, r6
	ldrh r2, [r1, #54]
	add r0, r5, #0
	orr r0, r0, r2
	strh r0, [r1, #54]
_0801F7CA:
	ldr r1, _0801F7DC  @ =gUnknown_0813B1CC
	add r0, r4, #0
	bl 0x080098A0
	pop {r4-r6}
	pop {r0}
	bx r0
_0801F7D8:
	.4byte gUnknown_03006A30
_0801F7DC:
	.4byte gUnknown_0813B1CC
	THUMB_FUNC_END sub_0801F760

	THUMB_FUNC_START sub_0801F7E0
sub_0801F7E0: @ 0x0801F7E0
	push {r4,r5,lr}
	add r5, r0, #0
	mov r4, #1
	mov r0, #1
	strb r0, [r5, #20]
	bl 0x0800099C
	strb r0, [r5, #24]
	ldrb r1, [r5, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	orr r0, r0, r4
	strb r0, [r5, #28]
	ldr r0, _0801F82C  @ =gUnknown_0813B224
	str r0, [r5, #72]
	bl 0x0800099C
	mov r1, #31
	and r0, r0, r1
	add r1, r5, #0
	add r1, r1, #43
	strb r0, [r1]
	add r1, r1, #65
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801F81C
	mov r0, #150
	lsl r0, r0, #2
	strh r0, [r1]
_0801F81C:
	add r0, r5, #0
	mov r1, #0
	bl 0x08003870
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801F82C:
	.4byte gUnknown_0813B224
	THUMB_FUNC_END sub_0801F7E0

	THUMB_FUNC_START sub_0801F830
sub_0801F830: @ 0x0801F830
	push {r4,lr}
	add r4, r0, #0
	ldr r0, [r4, #100]
	cmp r0, #0
	beq _0801F84E
	bl sub_08044594
	add r1, r0, #0
	ldr r0, [r4, #100]
	cmp r0, r1
	beq _0801F870
	mov r0, #2
	strb r0, [r4, #20]
	str r1, [r4, #100]
	b _0801F864
_0801F84E:
	add r0, r4, #0
	mov r1, #120
	mov r2, #80
	bl 0x08009E6C
	add r1, r0, #0
	str r1, [r4, #100]
	cmp r1, #0
	beq _0801F870
	mov r0, #2
	strb r0, [r4, #20]
_0801F864:
	add r0, r4, #0
	bl sub_0803CECC
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
_0801F870:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801F830

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801F878
sub_0801F878: @ 0x0801F878
	push {r4,lr}
	add r4, r0, #0
	ldr r0, _0801F8A8  @ =gUnknown_03000E20
	ldrh r1, [r0]
	mov r0, #7
	and r0, r0, r1
	cmp r0, #0
	bne _0801F89C
	ldr r1, [r4, #100]
	add r0, r4, #0
	bl 0x08009EA4
	add r1, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x080040C4
_0801F89C:
	add r0, r4, #0
	bl 0x08009694
	pop {r4}
	pop {r0}
	bx r0
_0801F8A8:
	.4byte gUnknown_03000E20
	THUMB_FUNC_END sub_0801F878

	THUMB_FUNC_START sub_0801F8AC
sub_0801F8AC: @ 0x0801F8AC
	push {lr}
	add r3, r0, #0
	ldrb r2, [r3, #28]
	lsl r1, r2, #30
	lsr r1, r1, #30
	mov r0, #1
	eor r1, r1, r0
	sub r0, r0, #5
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r3, #28]
	ldrb r0, [r3, #23]
	sub r0, r0, #1
	strb r0, [r3, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801F8D4
	add r0, r3, #0
	bl sub_08012540
_0801F8D4:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801F8AC

	THUMB_FUNC_START sub_0801F8D8
sub_0801F8D8: @ 0x0801F8D8
	push {r4,lr}
	add r4, r0, #0
	ldrb r1, [r4, #20]
	cmp r1, #0
	bne _0801F900
	mov r0, #1
	strb r0, [r4, #20]
	add r0, r4, #0
	add r0, r0, #60
	strb r1, [r0]
	add r2, r4, #0
	add r2, r2, #94
	ldrb r0, [r2]
	mov r1, #3
	orr r0, r0, r1
	strb r0, [r2]
	add r0, r4, #0
	mov r1, #1
	bl 0x08003870
_0801F900:
	ldr r0, [r4, #88]
	add r1, r4, #0
	bl sub_0803D3D0
	ldrh r0, [r4, #58]
	sub r0, r0, #4
	strh r0, [r4, #58]
	add r0, r4, #0
	bl 0x08003828
	ldr r1, [r4, #88]
	add r0, r1, #0
	add r0, r0, #114
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801F948
	cmp r0, #59
	bhi _0801F938
	ldrb r2, [r4, #28]
	lsl r1, r2, #30
	lsr r1, r1, #30
	mov r0, #1
	eor r1, r1, r0
	sub r0, r0, #5
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #28]
	b _0801F962
_0801F938:
	ldrb r0, [r4, #28]
	mov r1, #4
	neg r1, r1
	and r1, r1, r0
	mov r0, #1
	orr r1, r1, r0
	strb r1, [r4, #28]
	b _0801F962
_0801F948:
	ldr r2, _0801F968  @ =gUnknown_03006A30
	ldrb r0, [r1, #10]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #4
	add r1, r1, r2
	ldrh r2, [r1, #54]
	ldr r0, _0801F96C  @ =0x0000BFFF
	and r0, r0, r2
	strh r0, [r1, #54]
	add r0, r4, #0
	bl sub_08012540
_0801F962:
	pop {r4}
	pop {r0}
	bx r0
_0801F968:
	.4byte gUnknown_03006A30
_0801F96C:
	.4byte 0x0000BFFF
	THUMB_FUNC_END sub_0801F8D8

	THUMB_FUNC_START sub_0801F970
sub_0801F970: @ 0x0801F970
	add r3, r0, #0
	ldr r0, _0801F998  @ =gUnknown_03000E20
	ldrb r1, [r3, #24]
	ldrb r0, [r0]
	add r1, r1, r0
	mov r0, #15
	and r1, r1, r0
	lsl r2, r1, #24
	mov r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _0801F994
	ldr r0, _0801F99C  @ =gUnknown_0813B1F4
	lsr r1, r2, #26
	add r1, r1, r0
	mov r0, #0
	ldrsb r0, [r1, r0]
	strh r0, [r3, #58]
_0801F994:
	bx lr
	.byte 0x00
	.byte 0x00
_0801F998:
	.4byte gUnknown_03000E20
_0801F99C:
	.4byte gUnknown_0813B1F4
	THUMB_FUNC_END sub_0801F970

	THUMB_FUNC_START sub_0801F9A0
sub_0801F9A0: @ 0x0801F9A0
	push {r4,lr}
	add r4, r0, #0
	ldr r1, _0801F9B8  @ =gUnknown_0813B22C
	bl 0x08009924
	add r0, r4, #0
	bl sub_0801FC70
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801F9B8:
	.4byte gUnknown_0813B22C
	THUMB_FUNC_END sub_0801F9A0

	THUMB_FUNC_START sub_0801F9BC
sub_0801F9BC: @ 0x0801F9BC
	push {lr}
	ldr r2, _0801F9D0  @ =gUnknown_0813B244
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0801F9D0:
	.4byte gUnknown_0813B244
	THUMB_FUNC_END sub_0801F9BC

	THUMB_FUNC_START sub_0801F9D4
sub_0801F9D4: @ 0x0801F9D4
	push {r4,lr}
	add r4, r0, #0
	ldr r0, [r4, #88]
	cmp r0, #0
	beq _0801F9EC
	add r1, r0, #0
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #0
	bne _0801F9EC
	mov r0, #244
	strb r0, [r1]
_0801F9EC:
	ldrb r0, [r4, #20]
	cmp r0, #2
	bhi _0801F9FE
	mov r0, #3
	strb r0, [r4, #20]
	add r0, r4, #0
	mov r1, #12
	bl sub_0801FCC4
_0801F9FE:
	ldr r1, _0801FA0C  @ =gUnknown_0813B22C
	add r0, r4, #0
	bl 0x080098A0
	pop {r4}
	pop {r0}
	bx r0
_0801FA0C:
	.4byte gUnknown_0813B22C
	THUMB_FUNC_END sub_0801F9D4

	THUMB_FUNC_START sub_0801FA10
sub_0801FA10: @ 0x0801FA10
	push {r4,r5,lr}
	add r5, r0, #0
	mov r0, #9
	bl sub_080124C0
	add r4, r0, #0
	cmp r4, #0
	beq _0801FA66
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0803D3D0
	str r5, [r4, #84]
	str r4, [r5, #88]
	ldrb r1, [r5, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r5, #28]
	add r1, r5, #0
	add r1, r1, #46
	mov r0, #5
	strb r0, [r1]
	add r2, r5, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r2]
	ldr r0, _0801FA6C  @ =gUnknown_0813B44C
	str r0, [r5, #72]
	bl 0x0800099C
	mov r1, #3
	and r0, r0, r1
	add r1, r5, #0
	add r1, r1, #42
	strb r0, [r1]
	add r0, r5, #0
	bl sub_0801FD28
_0801FA66:
	pop {r4,r5}
	pop {r0}
	bx r0
_0801FA6C:
	.4byte gUnknown_0813B44C
	THUMB_FUNC_END sub_0801FA10

	THUMB_FUNC_START sub_0801FA70
sub_0801FA70: @ 0x0801FA70
	push {lr}
	add r1, r0, #0
	ldrb r0, [r1, #23]
	sub r0, r0, #1
	strb r0, [r1, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801FA86
	add r0, r1, #0
	bl sub_0801FD44
_0801FA86:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801FA70

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801FA8C
sub_0801FA8C: @ 0x0801FA8C
	push {r4,r5,lr}
	add r5, r0, #0
	mov r1, #52
	mov r2, #52
	bl 0x08009E6C
	str r0, [r5, #100]
	cmp r0, #0
	beq _0801FAA6
	add r0, r5, #0
	bl sub_0801FD5C
	b _0801FB02
_0801FAA6:
	ldrb r0, [r5, #23]
	sub r0, r0, #1
	strb r0, [r5, #23]
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801FAF6
	ldrb r0, [r5, #24]
	sub r0, r0, #1
	strb r0, [r5, #24]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801FADE
	bl 0x0800099C
	mov r4, #24
	and r0, r0, r4
	add r0, r0, #30
	strb r0, [r5, #24]
	bl 0x0800099C
	and r0, r0, r4
	add r1, r5, #0
	add r1, r1, #43
	strb r0, [r1]
	add r0, r5, #0
	mov r1, #4
	bl sub_0801FCC4
_0801FADE:
	add r0, r5, #0
	bl 0x0800963C
	lsl r0, r0, #16
	cmp r0, #0
	bne _0801FAEE
	mov r0, #1
	strb r0, [r5, #24]
_0801FAEE:
	add r0, r5, #0
	bl 0x08003828
	b _0801FB02
_0801FAF6:
	mov r0, #3
	strb r0, [r5, #20]
	add r0, r5, #0
	mov r1, #12
	bl sub_0801FCC4
_0801FB02:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801FA8C

	THUMB_FUNC_START sub_0801FB08
sub_0801FB08: @ 0x0801FB08
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	ldr r0, [r4, #100]
	cmp r0, #0
	bne _0801FB22
	add r0, r4, #0
	mov r1, #88
	mov r2, #88
	bl 0x08009E6C
	str r0, [r4, #100]
_0801FB22:
	add r2, r4, #0
	add r2, r2, #41
	ldrb r1, [r2]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _0801FB3E
	ldr r0, [r4, #100]
	cmp r0, #0
	beq _0801FB3E
	add r0, r4, #0
	bl sub_0801FD5C
	b _0801FB4E
_0801FB3E:
	ldrb r1, [r2]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0801FB4E
	add r0, r4, #0
	bl sub_0801FD44
_0801FB4E:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801FB08

	THUMB_FUNC_START sub_0801FB54
sub_0801FB54: @ 0x0801FB54
	add r1, r0, #0
	ldrb r0, [r1, #23]
	sub r0, r0, #1
	strb r0, [r1, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801FB72
	mov r0, #5
	strb r0, [r1, #20]
	mov r0, #120
	strb r0, [r1, #23]
	mov r0, #30
	strb r0, [r1, #24]
	add r0, r0, #226
	str r0, [r1, #12]
_0801FB72:
	bx lr
	THUMB_FUNC_END sub_0801FB54

	THUMB_FUNC_START sub_0801FB74
sub_0801FB74: @ 0x0801FB74
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #24]
	cmp r0, #0
	beq _0801FB88
	sub r0, r0, #1
	strb r0, [r4, #24]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801FBC2
_0801FB88:
	add r0, r4, #0
	bl sub_0801FD84
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801FBC2
	mov r0, #6
	strb r0, [r4, #20]
	mov r0, #160
	lsl r0, r0, #2
	str r0, [r4, #12]
	add r0, r4, #0
	add r0, r0, #42
	ldrb r1, [r0]
	mov r0, #3
	and r0, r0, r1
	lsl r0, r0, #3
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #16
	bl sub_0801FCC4
	ldr r0, [r4, #88]
	add r0, r0, #68
	mov r1, #8
	strb r1, [r0]
	b _0801FBFE
_0801FBC2:
	ldr r0, [r4, #88]
	add r0, r0, #68
	mov r1, #4
	strb r1, [r0]
	ldr r1, [r4, #100]
	add r0, r4, #0
	bl 0x08009EA4
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #8
	bl sub_0801FCC4
	add r0, r4, #0
	bl 0x0800963C
	add r0, r4, #0
	bl 0x08003828
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801FBFE
	add r0, r4, #0
	bl sub_0801FD28
_0801FBFE:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801FB74

	THUMB_FUNC_START sub_0801FC04
sub_0801FC04: @ 0x0801FC04
	push {r4,lr}
	add r4, r0, #0
	add r0, r0, #43
	ldrb r0, [r0]
	mov r2, #16
	eor r2, r2, r0
	add r0, r4, #0
	mov r1, #64
	bl 0x08002E70
	add r0, r4, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _0801FC30
	mov r0, #7
	strb r0, [r4, #20]
_0801FC30:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801FC04

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801FC38
sub_0801FC38: @ 0x0801FC38
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _0801FC5C
	add r0, r4, #0
	bl 0x0800963C
	add r0, r4, #0
	bl sub_0801FE00
	b _0801FC6A
_0801FC5C:
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0801FC6A
	add r0, r4, #0
	bl sub_0801FD28
_0801FC6A:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801FC38

	THUMB_FUNC_START sub_0801FC70
sub_0801FC70: @ 0x0801FC70
	push {r4,r5,lr}
	add r5, r0, #0
	ldr r1, [r5, #88]
	cmp r1, #0
	beq _0801FCB8
	bl sub_0803D3D0
	ldr r3, [r5, #88]
	ldr r4, _0801FCC0  @ =gUnknown_0813B4D4
	add r0, r5, #0
	add r0, r0, #42
	ldrb r2, [r0]
	mov r1, #3
	add r0, r1, #0
	and r0, r0, r2
	lsl r0, r0, #2
	add r2, r5, #0
	add r2, r2, #41
	ldrb r2, [r2]
	and r1, r1, r2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r3, #72]
	add r3, r3, #60
	ldrb r0, [r3]
	mov r1, #127
	and r1, r1, r0
	add r0, r5, #0
	add r0, r0, #60
	ldrb r2, [r0]
	mov r0, #128
	and r0, r0, r2
	orr r1, r1, r0
	strb r1, [r3]
_0801FCB8:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801FCC0:
	.4byte gUnknown_0813B4D4
	THUMB_FUNC_END sub_0801FC70

	THUMB_FUNC_START sub_0801FCC4
sub_0801FCC4: @ 0x0801FCC4
	push {r4-r7,lr}
	add r7, r0, #0
	lsl r1, r1, #24
	lsr r6, r1, #24
	add r0, r0, #43
	ldrb r3, [r0]
	add r0, r3, #4
	mov r1, #24
	and r0, r0, r1
	lsr r5, r0, #3
	add r2, r7, #0
	add r2, r2, #42
	ldrb r4, [r2]
	mov r0, #28
	and r0, r0, r4
	cmp r0, r6
	bne _0801FD14
	mov r0, #7
	and r3, r3, r0
	cmp r3, #4
	beq _0801FCF8
	mov r0, #3
	and r0, r0, r4
	cmp r5, r0
	beq _0801FD20
	b _0801FD06
_0801FCF8:
	mov r1, #3
	add r0, r1, #0
	and r0, r0, r4
	sub r0, r5, r0
	and r0, r0, r1
	cmp r0, #1
	ble _0801FD20
_0801FD06:
	add r0, r6, r5
	strb r0, [r2]
	ldrb r1, [r2]
	add r0, r7, #0
	bl 0x08003870
	b _0801FD20
_0801FD14:
	add r0, r6, r5
	strb r0, [r2]
	ldrb r1, [r2]
	add r0, r7, #0
	bl 0x08003870
_0801FD20:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801FCC4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801FD28
sub_0801FD28: @ 0x0801FD28
	push {lr}
	mov r1, #1
	strb r1, [r0, #20]
	mov r1, #60
	strb r1, [r0, #23]
	add r1, r0, #0
	add r1, r1, #42
	ldrb r2, [r1]
	mov r1, #3
	and r1, r1, r2
	bl 0x08003870
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801FD28

	THUMB_FUNC_START sub_0801FD44
sub_0801FD44: @ 0x0801FD44
	mov r2, #0
	mov r1, #2
	strb r1, [r0, #20]
	mov r1, #240
	strb r1, [r0, #23]
	mov r1, #1
	strb r1, [r0, #24]
	mov r1, #128
	str r1, [r0, #12]
	str r2, [r0, #100]
	bx lr
	THUMB_FUNC_END sub_0801FD44

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801FD5C
sub_0801FD5C: @ 0x0801FD5C
	push {r4,lr}
	add r4, r0, #0
	mov r0, #4
	strb r0, [r4, #20]
	mov r0, #15
	strb r0, [r4, #23]
	ldr r1, [r4, #100]
	add r0, r4, #0
	bl sub_0803CECC
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0
	bl sub_0801FCC4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801FD5C

	THUMB_FUNC_START sub_0801FD84
sub_0801FD84: @ 0x0801FD84
	push {r4,lr}
	add r4, r0, #0
	ldr r2, [r4, #100]
	mov r1, #12
	bl 0x08009998
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0801FDF6
	add r0, r4, #0
	add r0, r0, #42
	ldrb r0, [r0]
	mov r1, #3
	and r1, r1, r0
	cmp r1, #1
	beq _0801FDCA
	cmp r1, #1
	bgt _0801FDB4
	cmp r1, #0
	beq _0801FDBE
	b _0801FDF6
_0801FDB4:
	cmp r1, #2
	beq _0801FDD6
	cmp r1, #3
	beq _0801FDE2
	b _0801FDF6
_0801FDBE:
	mov r1, #54
	ldrsh r0, [r4, r1]
	ldr r1, [r4, #100]
	mov r2, #54
	ldrsh r1, [r1, r2]
	b _0801FDEC
_0801FDCA:
	ldr r0, [r4, #100]
	mov r1, #50
	ldrsh r0, [r0, r1]
	mov r2, #50
	ldrsh r1, [r4, r2]
	b _0801FDEC
_0801FDD6:
	ldr r0, [r4, #100]
	mov r1, #54
	ldrsh r0, [r0, r1]
	mov r2, #54
	ldrsh r1, [r4, r2]
	b _0801FDEC
_0801FDE2:
	mov r1, #50
	ldrsh r0, [r4, r1]
	ldr r1, [r4, #100]
	mov r2, #50
	ldrsh r1, [r1, r2]
_0801FDEC:
	sub r0, r0, r1
	cmp r0, #55
	bgt _0801FDF6
	mov r0, #1
	b _0801FDF8
_0801FDF6:
	mov r0, #0
_0801FDF8:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0801FD84

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801FE00
sub_0801FE00: @ 0x0801FE00
	push {r4-r6,lr}
	add r4, r0, #0
	add r0, r0, #40
	ldrb r1, [r0]
	mov r6, #3
	add r0, r6, #0
	and r0, r0, r1
	cmp r0, #0
	bne _0801FE46
	mov r0, #15
	mov r1, #17
	mov r2, #0
	bl sub_0804C8A8
	add r5, r0, #0
	cmp r5, #0
	beq _0801FE46
	add r0, r4, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r0, r6, #0
	and r0, r0, r1
	lsl r0, r0, #1
	ldr r1, _0801FE4C  @ =gUnknown_0813B264
	add r0, r0, r1
	mov r2, #0
	ldrsb r2, [r0, r2]
	lsl r2, r2, #16
	mov r3, #1
	ldrsb r3, [r0, r3]
	lsl r3, r3, #16
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0803D4A4
_0801FE46:
	pop {r4-r6}
	pop {r0}
	bx r0
_0801FE4C:
	.4byte gUnknown_0813B264
	THUMB_FUNC_END sub_0801FE00

	THUMB_FUNC_START sub_0801FE50
sub_0801FE50: @ 0x0801FE50
	push {lr}
	ldr r1, _0801FE5C  @ =gUnknown_0813B514
	bl 0x08009924
	pop {r0}
	bx r0
_0801FE5C:
	.4byte gUnknown_0813B514
	THUMB_FUNC_END sub_0801FE50

	THUMB_FUNC_START sub_0801FE60
sub_0801FE60: @ 0x0801FE60
	push {lr}
	ldr r2, _0801FE74  @ =gUnknown_0813B52C
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0801FE74:
	.4byte gUnknown_0813B52C
	THUMB_FUNC_END sub_0801FE60

	THUMB_FUNC_START sub_0801FE78
sub_0801FE78: @ 0x0801FE78
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #20]
	cmp r0, #2
	bhi _0801FE8E
	mov r0, #3
	strb r0, [r4, #20]
	add r0, r4, #0
	mov r1, #12
	bl sub_0801FCC4
_0801FE8E:
	ldr r1, _0801FE9C  @ =gUnknown_0813B514
	add r0, r4, #0
	bl 0x080098A0
	pop {r4}
	pop {r0}
	bx r0
_0801FE9C:
	.4byte gUnknown_0813B514
	THUMB_FUNC_END sub_0801FE78

	THUMB_FUNC_START sub_0801FEA0
sub_0801FEA0: @ 0x0801FEA0
	push {lr}
	add r3, r0, #0
	ldrb r0, [r3, #23]
	sub r0, r0, #1
	strb r0, [r3, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801FED6
	mov r0, #5
	strb r0, [r3, #20]
	mov r0, #128
	strb r0, [r3, #23]
	mov r0, #16
	strb r0, [r3, #24]
	add r0, r0, #240
	str r0, [r3, #12]
	add r2, r3, #0
	add r2, r2, #42
	ldrb r1, [r2]
	mov r0, #3
	and r0, r0, r1
	add r0, r0, #8
	strb r0, [r2]
	ldrb r1, [r2]
	add r0, r3, #0
	bl 0x08003870
_0801FED6:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801FEA0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801FEDC
sub_0801FEDC: @ 0x0801FEDC
	push {r4,r5,lr}
	add r4, r0, #0
	bl 0x08003828
	ldr r0, [r4, #100]
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801FEF2
	mov r0, #1
	strb r0, [r4, #23]
_0801FEF2:
	ldr r1, [r4, #100]
	add r0, r4, #0
	bl 0x08009EA4
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r0, r0, #4
	mov r1, #24
	and r0, r0, r1
	lsr r0, r0, #3
	add r1, r4, #0
	add r1, r1, #42
	ldrb r2, [r1]
	mov r1, #3
	and r1, r1, r2
	cmp r1, r0
	beq _0801FF18
	mov r0, #1
	strb r0, [r4, #23]
_0801FF18:
	add r0, r4, #0
	bl sub_0801FFBC
	add r2, r4, #0
	add r2, r2, #124
	ldrh r0, [r4, #50]
	ldrh r1, [r2]
	sub r0, r0, r1
	add r0, r0, #2
	lsl r0, r0, #16
	lsr r0, r0, #16
	add r3, r4, #0
	add r3, r3, #126
	cmp r0, #4
	bhi _0801FF46
	ldrh r0, [r4, #54]
	ldrh r1, [r3]
	sub r0, r0, r1
	add r0, r0, #2
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #4
	bls _0801FF66
_0801FF46:
	mov r1, #50
	ldrsh r0, [r4, r1]
	mov r5, #54
	ldrsh r1, [r4, r5]
	mov r5, #0
	ldrsh r2, [r2, r5]
	mov r5, #0
	ldrsh r3, [r3, r5]
	bl 0x08003F54
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	add r0, r4, #0
	bl 0x0800963C
_0801FF66:
	ldrb r0, [r4, #24]
	cmp r0, #0
	beq _0801FF76
	sub r0, r0, #1
	strb r0, [r4, #24]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801FF96
_0801FF76:
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0801FF96
	add r0, r4, #0
	bl sub_08020028
	lsl r0, r0, #24
	cmp r0, #0
	beq _0801FF96
	add r0, r4, #0
	bl sub_08020060
_0801FF96:
	ldr r0, [r4, #88]
	cmp r0, #0
	beq _0801FFA2
	add r0, r4, #0
	bl sub_080200A0
_0801FFA2:
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801FFB4
	add r0, r4, #0
	bl sub_0801FD28
_0801FFB4:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801FEDC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801FFBC
sub_0801FFBC: @ 0x0801FFBC
	add r2, r0, #0
	add r0, r0, #42
	ldrb r0, [r0]
	mov r1, #3
	and r1, r1, r0
	cmp r1, #1
	beq _0801FFF0
	cmp r1, #1
	bgt _0801FFD4
	cmp r1, #0
	beq _0801FFDE
	b _08020026
_0801FFD4:
	cmp r1, #2
	beq _0801FFF8
	cmp r1, #3
	beq _08020010
	b _08020026
_0801FFDE:
	ldr r0, [r2, #100]
	ldrh r1, [r0, #50]
	add r0, r2, #0
	add r0, r0, #124
	strh r1, [r0]
	ldr r0, [r2, #100]
	ldrh r0, [r0, #54]
	add r0, r0, #56
	b _08020008
_0801FFF0:
	ldr r0, [r2, #100]
	ldrh r0, [r0, #50]
	sub r0, r0, #56
	b _08020016
_0801FFF8:
	ldr r0, [r2, #100]
	ldrh r1, [r0, #50]
	add r0, r2, #0
	add r0, r0, #124
	strh r1, [r0]
	ldr r0, [r2, #100]
	ldrh r0, [r0, #54]
	sub r0, r0, #56
_08020008:
	add r1, r2, #0
	add r1, r1, #126
	strh r0, [r1]
	b _08020026
_08020010:
	ldr r0, [r2, #100]
	ldrh r0, [r0, #50]
	add r0, r0, #56
_08020016:
	add r1, r2, #0
	add r1, r1, #124
	strh r0, [r1]
	ldr r0, [r2, #100]
	ldrh r1, [r0, #54]
	add r0, r2, #0
	add r0, r0, #126
	strh r1, [r0]
_08020026:
	bx lr
	THUMB_FUNC_END sub_0801FFBC

	THUMB_FUNC_START sub_08020028
sub_08020028: @ 0x08020028
	push {r4,lr}
	add r4, r0, #0
	ldr r2, [r4, #100]
	mov r1, #12
	bl 0x08009974
	lsl r0, r0, #24
	lsr r3, r0, #24
	mov r0, #128
	and r0, r0, r3
	cmp r0, #0
	beq _08020058
	add r0, r4, #0
	add r0, r0, #42
	ldrb r2, [r0]
	mov r1, #3
	mov r0, #24
	and r0, r0, r3
	and r1, r1, r2
	lsr r0, r0, #3
	cmp r1, r0
	bne _08020058
	mov r0, #1
	b _0802005A
_08020058:
	mov r0, #0
_0802005A:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08020028

	THUMB_FUNC_START sub_08020060
sub_08020060: @ 0x08020060
	push {r4,r5,lr}
	add r5, r0, #0
	mov r0, #8
	bl sub_08012494
	add r4, r0, #0
	cmp r4, #0
	beq _08020098
	add r0, r5, #0
	add r0, r0, #42
	ldrb r1, [r0]
	mov r2, #3
	mov r0, #3
	and r0, r0, r1
	lsl r0, r0, #3
	add r3, r4, #0
	add r3, r3, #43
	mov r1, #0
	strb r0, [r3]
	add r3, r3, #51
	ldrb r0, [r3]
	orr r0, r0, r2
	strb r0, [r3]
	str r5, [r4, #84]
	add r0, r5, #0
	add r0, r0, #41
	strb r1, [r0]
	str r4, [r5, #88]
_08020098:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08020060

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080200A0
sub_080200A0: @ 0x080200A0
	push {lr}
	add r1, r0, #0
	add r1, r1, #42
	ldrb r1, [r1]
	mov r3, #3
	and r3, r3, r1
	lsl r3, r3, #1
	ldr r1, _080200CC  @ =gUnknown_0813B544
	add r3, r3, r1
	ldr r1, [r0, #88]
	mov r2, #0
	ldrsb r2, [r3, r2]
	lsl r2, r2, #16
	ldrb r3, [r3, #1]
	lsl r3, r3, #24
	asr r3, r3, #24
	lsl r3, r3, #16
	bl sub_0803D4A4
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080200CC:
	.4byte gUnknown_0813B544
	THUMB_FUNC_END sub_080200A0

	THUMB_FUNC_START sub_080200D0
sub_080200D0: @ 0x080200D0
	push {r4,r5,lr}
	add r5, r0, #0
	bl 0x080095A4
	add r0, r5, #0
	bl 0x08009874
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #0
	beq _0802010A
	add r0, r5, #0
	add r0, r0, #60
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _08020100
	ldrb r0, [r5, #23]
	cmp r0, #1
	bne _08020100
	add r0, r5, #0
	bl sub_08020478
_08020100:
	add r0, r5, #0
	add r1, r4, #0
	bl 0x0800996C
	b _08020120
_0802010A:
	ldr r4, _08020128  @ =gUnknown_0813B5D4
	add r0, r5, #0
	bl 0x080098DC
	lsl r0, r0, #24
	lsr r0, r0, #22
	add r0, r0, r4
	ldr r1, [r0]
	add r0, r5, #0
	bl _call_via_r1
_08020120:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08020128:
	.4byte gUnknown_0813B5D4
	THUMB_FUNC_END sub_080200D0

	THUMB_FUNC_START sub_0802012C
sub_0802012C: @ 0x0802012C
	push {lr}
	ldr r2, _08020140  @ =gUnknown_0813B5EC
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08020140:
	.4byte gUnknown_0813B5EC
	THUMB_FUNC_END sub_0802012C

	THUMB_FUNC_START sub_08020144
sub_08020144: @ 0x08020144
	push {lr}
	add r2, r0, #0
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #0
	beq _08020160
	cmp r0, #12
	beq _08020160
	mov r1, #0
	mov r0, #3
	strb r0, [r2, #20]
	add r0, r2, #0
	add r0, r0, #66
	strb r1, [r0]
_08020160:
	ldr r1, _0802016C  @ =gUnknown_0813B5D4
	add r0, r2, #0
	bl 0x080098A0
	pop {r0}
	bx r0
_0802016C:
	.4byte gUnknown_0813B5D4
	THUMB_FUNC_END sub_08020144

	THUMB_FUNC_START sub_08020170
sub_08020170: @ 0x08020170
	push {r4,lr}
	add r4, r0, #0
	mov r0, #38
	bl sub_08012468
	cmp r0, #0
	beq _08020184
	add r0, r4, #0
	bl sub_08020478
_08020184:
	add r0, r4, #0
	bl sub_08043F20
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08020170

	THUMB_FUNC_START sub_08020190
sub_08020190: @ 0x08020190
	push {r4,r5,lr}
	add r5, r0, #0
	mov r0, #1
	strb r0, [r5, #20]
	ldr r0, _08020270  @ =0x0000FFFF
	strh r0, [r5, #58]
	add r1, r5, #0
	add r1, r1, #46
	mov r0, #3
	strb r0, [r1]
	ldrb r1, [r5, #28]
	sub r0, r0, #52
	and r0, r0, r1
	mov r1, #16
	orr r0, r0, r1
	strb r0, [r5, #28]
	ldr r0, _08020274  @ =gUnknown_0813B64C
	str r0, [r5, #72]
	add r1, r5, #0
	add r1, r1, #126
	mov r0, #225
	lsl r0, r0, #2
	strh r0, [r1]
	add r0, r5, #0
	add r0, r0, #124
	ldrh r0, [r0]
	cmp r0, #0
	bne _08020252
	ldrh r2, [r5, #50]
	mov r1, #63
	add r0, r1, #0
	and r0, r0, r2
	lsl r0, r0, #4
	add r0, r0, #16
	add r2, r5, #0
	add r2, r2, #120
	strh r0, [r2]
	ldrh r0, [r5, #54]
	and r1, r1, r0
	lsl r1, r1, #4
	add r1, r1, #16
	add r0, r5, #0
	add r0, r0, #122
	strh r1, [r0]
	ldrh r0, [r5, #50]
	mov r2, #252
	lsl r2, r2, #4
	add r1, r2, #0
	and r1, r1, r0
	ldr r3, _08020278  @ =gUnknown_0201EFF8
	mov r0, #82
	add r0, r0, r5
	mov r12, r0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r3
	lsr r1, r1, #2
	ldrh r0, [r0]
	add r1, r1, r0
	add r0, r5, #0
	add r0, r0, #116
	strh r1, [r0]
	ldrh r0, [r5, #54]
	and r2, r2, r0
	mov r1, r12
	ldrb r0, [r1]
	lsl r0, r0, #2
	add r4, r3, #2
	add r0, r0, r4
	lsr r2, r2, #2
	ldrh r0, [r0]
	add r2, r2, r0
	add r0, r5, #0
	add r0, r0, #118
	strh r2, [r0]
	ldrb r1, [r5, #11]
	lsl r1, r1, #4
	mov r2, r12
	ldrb r0, [r2]
	lsl r0, r0, #2
	add r0, r0, r3
	ldrh r0, [r0]
	add r0, r0, #8
	add r1, r1, r0
	strh r1, [r5, #50]
	ldrb r1, [r5, #23]
	lsl r1, r1, #4
	ldrb r0, [r2]
	lsl r0, r0, #2
	add r0, r0, r4
	ldrh r0, [r0]
	add r0, r0, #8
	add r1, r1, r0
	strh r1, [r5, #54]
	add r0, r5, #0
	bl 0x08008D90
_08020252:
	ldrh r0, [r5, #50]
	add r1, r5, #0
	add r1, r1, #112
	strh r0, [r1]
	ldrh r0, [r5, #54]
	add r1, r1, #2
	strh r0, [r1]
	add r0, r5, #0
	mov r1, #0
	bl 0x08003870
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08020270:
	.4byte 0x0000FFFF
_08020274:
	.4byte gUnknown_0813B64C
_08020278:
	.4byte gUnknown_0201EFF8
	THUMB_FUNC_END sub_08020190

	THUMB_FUNC_START sub_0802027C
sub_0802027C: @ 0x0802027C
	push {r4,lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, r1, #124
	ldrh r0, [r1]
	cmp r0, #0
	beq _08020290
	sub r0, r0, #1
	strh r0, [r1]
	b _08020350
_08020290:
	ldr r2, _08020358  @ =gUnknown_03006A30
	ldr r0, _0802035C  @ =gUnknown_03000E20
	ldrh r0, [r0]
	mov r1, #3
	and r1, r1, r0
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r2, r2, #40
	add r0, r0, r2
	ldr r3, [r0]
	cmp r3, #0
	beq _08020350
	mov r0, #50
	ldrsh r1, [r3, r0]
	add r0, r4, #0
	add r0, r0, #116
	ldrh r0, [r0]
	sub r1, r1, r0
	add r0, r4, #0
	add r0, r0, #120
	ldrh r0, [r0]
	cmp r1, r0
	bhi _08020350
	mov r0, #54
	ldrsh r1, [r3, r0]
	add r0, r4, #0
	add r0, r0, #118
	ldrh r0, [r0]
	sub r1, r1, r0
	add r0, r4, #0
	add r0, r0, #122
	ldrh r0, [r0]
	cmp r1, r0
	bhi _08020350
	add r0, r3, #0
	add r0, r0, #80
	add r1, r4, #0
	add r1, r1, #80
	ldrh r2, [r0]
	ldrh r0, [r1]
	and r0, r0, r2
	cmp r0, #0
	beq _08020350
	add r0, r3, #0
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #0
	beq _08020350
	ldr r1, _08020360  @ =gUnknown_03000940
	ldrb r0, [r3, #10]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r1, [r0]
	mov r0, #128
	lsl r0, r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _08020350
	str r3, [r4, #100]
	mov r0, #2
	strb r0, [r4, #20]
	ldrb r1, [r4, #28]
	sub r0, r0, #6
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	add r2, r4, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r2]
	ldr r1, [r4, #100]
	add r0, r4, #0
	bl sub_0803CECC
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	mov r0, #144
	lsl r0, r0, #10
	str r0, [r4, #16]
	mov r0, #15
	mov r1, #12
	mov r2, #0
	bl sub_0804C8A8
	add r3, r0, #0
	cmp r3, #0
	beq _08020350
	add r0, r4, #0
	add r1, r3, #0
	bl sub_0803D3D0
_08020350:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08020358:
	.4byte gUnknown_03006A30
_0802035C:
	.4byte gUnknown_03000E20
_08020360:
	.4byte gUnknown_03000940
	THUMB_FUNC_END sub_0802027C

	THUMB_FUNC_START sub_08020364
sub_08020364: @ 0x08020364
	push {r4,lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, r1, #126
	ldrh r0, [r1]
	sub r0, r0, #1
	strh r0, [r1]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0802038C
	add r0, r4, #0
	bl sub_0804C9C8
	add r0, r4, #0
	bl sub_08020478
	add r0, r4, #0
	bl sub_08012540
	b _080203AC
_0802038C:
	add r0, r4, #0
	bl 0x08009664
	add r0, r4, #0
	bl 0x08003828
	mov r1, #192
	lsl r1, r1, #5
	add r0, r4, #0
	bl 0x08003594
	cmp r0, #0
	bne _080203AC
	add r0, r4, #0
	bl sub_0802043C
_080203AC:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08020364

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080203B4
sub_080203B4: @ 0x080203B4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r7, r0, #0
	bl sub_080123E8
	add r5, r0, #0
	cmp r5, #0
	beq _08020430
	bl sub_08012410
	add r6, r0, #0
	cmp r6, #0
	beq _08020430
	add r0, r7, #0
	add r1, r5, #0
	bl sub_080204E8
	ldrh r0, [r5, #50]
	sub r0, r0, #4
	strh r0, [r5, #50]
	str r6, [r5, #84]
	mov r0, #62
	add r0, r0, r7
	mov r8, r0
	ldrb r0, [r0]
	sub r0, r0, #2
	mov r4, #31
	and r0, r0, r4
	add r1, r5, #0
	add r1, r1, #43
	strb r0, [r1]
	add r0, r7, #0
	add r1, r6, #0
	bl sub_080204E8
	ldrh r0, [r6, #50]
	add r0, r0, #4
	strh r0, [r6, #50]
	str r5, [r6, #84]
	mov r1, r8
	ldrb r0, [r1]
	add r0, r0, #2
	and r0, r0, r4
	add r1, r6, #0
	add r1, r1, #43
	strb r0, [r1]
	mov r0, #15
	mov r1, #2
	mov r2, #0
	bl sub_0804C8A8
	add r5, r0, #0
	cmp r5, #0
	beq _0802042A
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0803D3D0
_0802042A:
	add r0, r7, #0
	bl sub_08012540
_08020430:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080203B4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802043C
sub_0802043C: @ 0x0802043C
	push {r4,lr}
	add r4, r0, #0
	ldr r1, [r4, #100]
	bl 0x08009EA4
	ldr r3, _08020474  @ =gUnknown_0813B5FC
	ldrb r2, [r4, #23]
	add r1, r2, #1
	strb r1, [r4, #23]
	mov r1, #1
	and r1, r1, r2
	add r1, r1, r3
	ldrb r1, [r1]
	add r0, r0, r1
	mov r1, #31
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	mov r0, #224
	lsl r0, r0, #9
	str r0, [r4, #16]
	mov r0, #49
	bl 0x08003DFC
	pop {r4}
	pop {r0}
	bx r0
_08020474:
	.4byte gUnknown_0813B5FC
	THUMB_FUNC_END sub_0802043C

	THUMB_FUNC_START sub_08020478
sub_08020478: @ 0x08020478
	push {r4,lr}
	add r4, r0, #0
	mov r0, #38
	bl sub_08012468
	add r2, r0, #0
	cmp r2, #0
	beq _080204E2
	add r0, r4, #0
	add r0, r0, #112
	ldrh r0, [r0]
	strh r0, [r2, #50]
	add r0, r4, #0
	add r0, r0, #114
	ldrh r0, [r0]
	strh r0, [r2, #54]
	add r0, r4, #0
	add r0, r0, #82
	ldrb r0, [r0]
	add r1, r2, #0
	add r1, r1, #82
	strb r0, [r1]
	add r0, r4, #0
	add r0, r0, #116
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, r0, #116
	strh r1, [r0]
	add r0, r4, #0
	add r0, r0, #118
	ldrh r0, [r0]
	add r1, r2, #0
	add r1, r1, #118
	strh r0, [r1]
	add r0, r4, #0
	add r0, r0, #120
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, r0, #120
	strh r1, [r0]
	add r0, r4, #0
	add r0, r0, #122
	ldrh r0, [r0]
	add r1, r2, #0
	add r1, r1, #122
	strh r0, [r1]
	add r1, r1, #2
	mov r0, #150
	lsl r0, r0, #2
	strh r0, [r1]
	add r0, r2, #0
	bl 0x08008D90
_080204E2:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08020478

	THUMB_FUNC_START sub_080204E8
sub_080204E8: @ 0x080204E8
	push {r4,lr}
	add r2, r0, #0
	add r4, r1, #0
	mov r0, #3
	strb r0, [r4, #8]
	mov r0, #39
	strb r0, [r4, #9]
	add r1, r1, #61
	mov r0, #248
	strb r0, [r1]
	ldr r0, [r2, #100]
	str r0, [r4, #100]
	add r0, r2, #0
	add r0, r0, #112
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, r0, #112
	strh r1, [r0]
	add r0, r2, #0
	add r0, r0, #114
	ldrh r0, [r0]
	add r1, r4, #0
	add r1, r1, #114
	strh r0, [r1]
	add r0, r2, #0
	add r0, r0, #116
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, r0, #116
	strh r1, [r0]
	add r0, r2, #0
	add r0, r0, #118
	ldrh r0, [r0]
	add r1, r4, #0
	add r1, r1, #118
	strh r0, [r1]
	add r0, r2, #0
	add r0, r0, #120
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, r0, #120
	strh r1, [r0]
	add r0, r2, #0
	add r0, r0, #122
	ldrh r0, [r0]
	add r1, r4, #0
	add r1, r1, #122
	strh r0, [r1]
	add r0, r2, #0
	add r1, r4, #0
	bl sub_08044018
	mov r0, #4
	add r1, r4, #0
	bl sub_08012728
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080204E8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08020560
sub_08020560: @ 0x08020560
	push {r4,r5,lr}
	add r4, r0, #0
	bl 0x080095A4
	ldr r5, _08020584  @ =gUnknown_0813B654
	add r0, r4, #0
	bl 0x080098DC
	lsl r0, r0, #24
	lsr r0, r0, #22
	add r0, r0, r5
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
	pop {r4,r5}
	pop {r0}
	bx r0
_08020584:
	.4byte gUnknown_0813B654
	THUMB_FUNC_END sub_08020560

	THUMB_FUNC_START sub_08020588
sub_08020588: @ 0x08020588
	push {lr}
	ldr r2, _0802059C  @ =gUnknown_0813B66C
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0802059C:
	.4byte gUnknown_0813B66C
	THUMB_FUNC_END sub_08020588

	THUMB_FUNC_START sub_080205A0
sub_080205A0: @ 0x080205A0
	push {lr}
	ldr r1, _080205AC  @ =gUnknown_0813B654
	bl 0x080098A0
	pop {r0}
	bx r0
_080205AC:
	.4byte gUnknown_0813B654
	THUMB_FUNC_END sub_080205A0

	THUMB_FUNC_START sub_080205B0
sub_080205B0: @ 0x080205B0
	push {r4,lr}
	add r4, r0, #0
	bl sub_0802065C
	add r0, r4, #0
	bl sub_08043F20
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080205B0

	THUMB_FUNC_START sub_080205C4
sub_080205C4: @ 0x080205C4
	push {lr}
	mov r3, #1
	mov r1, #1
	strb r1, [r0, #20]
	ldrb r2, [r0, #28]
	sub r1, r1, #5
	and r1, r1, r2
	orr r1, r1, r3
	strb r1, [r0, #28]
	add r2, r0, #0
	add r2, r2, #46
	mov r1, #3
	strb r1, [r2]
	ldrb r2, [r0, #28]
	sub r1, r1, #52
	and r1, r1, r2
	mov r2, #16
	orr r1, r1, r2
	strb r1, [r0, #28]
	ldr r1, _08020608  @ =0x0000FFFE
	strh r1, [r0, #58]
	ldr r1, _0802060C  @ =gUnknown_0813B674
	str r1, [r0, #72]
	add r2, r0, #0
	add r2, r2, #126
	mov r1, #150
	lsl r1, r1, #1
	strh r1, [r2]
	mov r1, #1
	bl 0x08003870
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08020608:
	.4byte 0x0000FFFE
_0802060C:
	.4byte gUnknown_0813B674
	THUMB_FUNC_END sub_080205C4

	THUMB_FUNC_START sub_08020610
sub_08020610: @ 0x08020610
	push {r4,lr}
	add r4, r0, #0
	bl 0x08009678
	add r0, r4, #0
	bl 0x08003828
	add r1, r4, #0
	add r1, r1, #126
	ldrh r0, [r1]
	sub r0, r0, #1
	strh r0, [r1]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #0
	bne _0802063E
	add r0, r4, #0
	bl sub_0802065C
	add r0, r4, #0
	bl sub_08012540
	b _08020654
_0802063E:
	cmp r0, #44
	bhi _08020654
	ldrb r2, [r4, #28]
	lsl r1, r2, #30
	lsr r1, r1, #30
	mov r0, #1
	eor r1, r1, r0
	sub r0, r0, #5
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #28]
_08020654:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08020610

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802065C
sub_0802065C: @ 0x0802065C
	push {lr}
	ldr r1, [r0, #84]
	cmp r1, #0
	bne _0802066A
	bl sub_08020478
	b _0802066E
_0802066A:
	mov r0, #0
	str r0, [r1, #84]
_0802066E:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802065C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08020674
sub_08020674: @ 0x08020674
	push {lr}
	ldr r1, _08020680  @ =gUnknown_0813B67C
	bl 0x08009924
	pop {r0}
	bx r0
_08020680:
	.4byte gUnknown_0813B67C
	THUMB_FUNC_END sub_08020674

	THUMB_FUNC_START sub_08020684
sub_08020684: @ 0x08020684
	push {r4,lr}
	add r4, r0, #0
	ldrb r2, [r4, #20]
	cmp r2, #0
	beq _080206BC
	add r1, r4, #0
	add r1, r1, #122
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802069E
	sub r0, r0, #1
	strh r0, [r1]
	b _080206B4
_0802069E:
	cmp r2, #3
	bhi _080206B4
	add r0, r4, #0
	bl sub_080209A0
	add r1, r0, #0
	cmp r1, #0
	beq _080206B4
	add r0, r4, #0
	bl sub_080209DC
_080206B4:
	add r0, r4, #0
	mov r1, #128
	bl sub_08044240
_080206BC:
	ldr r0, _080206D8  @ =gUnknown_0813B694
	ldrb r1, [r4, #20]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r4, #0
	bl _call_via_r1
	add r0, r4, #0
	bl sub_08020C0C
	pop {r4}
	pop {r0}
	bx r0
_080206D8:
	.4byte gUnknown_0813B694
	THUMB_FUNC_END sub_08020684

	THUMB_FUNC_START sub_080206DC
sub_080206DC: @ 0x080206DC
	push {lr}
	add r3, r0, #0
	ldr r1, [r3, #76]
	ldrb r0, [r1, #10]
	cmp r0, #2
	bhi _080206FA
	ldr r2, _08020708  @ =gUnknown_03006A30
	add r1, r0, #0
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r2, r2, #40
	add r0, r0, r2
	ldr r0, [r0]
	str r0, [r3, #100]
_080206FA:
	ldr r1, _0802070C  @ =gUnknown_0813B67C
	add r0, r3, #0
	bl 0x080098A0
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08020708:
	.4byte gUnknown_03006A30
_0802070C:
	.4byte gUnknown_0813B67C
	THUMB_FUNC_END sub_080206DC

	THUMB_FUNC_START sub_08020710
sub_08020710: @ 0x08020710
	push {r4,lr}
	add r4, r0, #0
	mov r0, #9
	bl sub_080124C0
	cmp r0, #0
	beq _08020756
	str r4, [r0, #84]
	str r0, [r4, #88]
	mov r2, #1
	mov r0, #1
	strb r0, [r4, #20]
	ldrb r1, [r4, #28]
	sub r0, r0, #5
	and r0, r0, r1
	orr r0, r0, r2
	strb r0, [r4, #28]
	add r1, r4, #0
	add r1, r1, #46
	mov r0, #5
	strb r0, [r1]
	add r2, r4, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r2]
	ldr r0, _0802075C  @ =gUnknown_0813B7AC
	str r0, [r4, #72]
	mov r0, #100
	strb r0, [r4, #23]
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
_08020756:
	pop {r4}
	pop {r0}
	bx r0
_0802075C:
	.4byte gUnknown_0813B7AC
	THUMB_FUNC_END sub_08020710

	THUMB_FUNC_START sub_08020760
sub_08020760: @ 0x08020760
	push {r4,lr}
	add r4, r0, #0
	mov r0, #2
	strb r0, [r4, #20]
	mov r1, #60
	strb r1, [r4, #23]
	add r0, r4, #0
	add r0, r0, #116
	strb r1, [r0]
	mov r0, #4
	strb r0, [r4, #24]
	bl 0x0800099C
	mov r1, #24
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	lsr r0, r0, #3
	sub r1, r1, #1
	strb r0, [r1]
	ldrb r1, [r1]
	add r0, r4, #0
	bl 0x08003870
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08020760

	THUMB_FUNC_START sub_08020798
sub_08020798: @ 0x08020798
	push {r4,r5,lr}
	add r4, r0, #0
	bl 0x08003828
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	beq _080207BA
	add r0, r4, #0
	bl 0x0800963C
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #0
	bne _080207D2
_080207BA:
	cmp r5, #0
	bne _080207CA
	ldrb r0, [r4, #23]
	mov r1, #60
	sub r1, r1, r0
	add r0, r4, #0
	add r0, r0, #116
	strb r1, [r0]
_080207CA:
	mov r0, #3
	strb r0, [r4, #20]
	mov r0, #30
	strb r0, [r4, #23]
_080207D2:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08020798

	THUMB_FUNC_START sub_080207D8
sub_080207D8: @ 0x080207D8
	push {lr}
	add r2, r0, #0
	ldrb r0, [r2, #23]
	sub r0, r0, #1
	strb r0, [r2, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0802084A
	ldrb r0, [r2, #24]
	sub r0, r0, #1
	strb r0, [r2, #24]
	ldrb r0, [r2, #24]
	cmp r0, #1
	beq _08020810
	cmp r0, #1
	bgt _080207FE
	cmp r0, #0
	beq _0802080C
	b _08020806
_080207FE:
	cmp r0, #2
	beq _0802083A
	cmp r0, #3
	beq _08020810
_08020806:
	add r1, r2, #0
	add r1, r1, #116
	b _08020842
_0802080C:
	mov r0, #1
	b _08020848
_08020810:
	mov r0, #2
	strb r0, [r2, #20]
	add r0, r2, #0
	add r0, r0, #116
	ldrb r0, [r0]
	strb r0, [r2, #23]
	add r3, r2, #0
	add r3, r3, #43
	ldrb r0, [r3]
	mov r1, #16
	eor r0, r0, r1
	strb r0, [r3]
	lsr r0, r0, #3
	add r1, r2, #0
	add r1, r1, #42
	strb r0, [r1]
	ldrb r1, [r1]
	add r0, r2, #0
	bl 0x08003870
	b _0802084A
_0802083A:
	add r1, r2, #0
	add r1, r1, #116
	mov r0, #60
	strb r0, [r1]
_08020842:
	ldrb r0, [r1]
	strb r0, [r2, #23]
	mov r0, #2
_08020848:
	strb r0, [r2, #20]
_0802084A:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080207D8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08020850
sub_08020850: @ 0x08020850
	add r1, r0, #0
	ldrb r0, [r1, #23]
	sub r0, r0, #1
	strb r0, [r1, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08020868
	mov r0, #5
	strb r0, [r1, #20]
	mov r0, #144
	lsl r0, r0, #1
	str r0, [r1, #12]
_08020868:
	bx lr
	THUMB_FUNC_END sub_08020850

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802086C
sub_0802086C: @ 0x0802086C
	push {r4,r5,lr}
	add r5, r0, #0
	bl sub_08020AE8
	lsl r0, r0, #24
	cmp r0, #0
	beq _08020896
	mov r0, #6
	strb r0, [r5, #20]
	mov r0, #60
	strb r0, [r5, #23]
	add r0, r5, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r1, r1, #4
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r5, #0
	bl 0x08003870
	b _08020936
_08020896:
	add r0, r5, #0
	bl 0x0800963C
	lsl r0, r0, #16
	cmp r0, #0
	bne _08020930
	add r1, r5, #0
	add r1, r1, #117
	ldrb r0, [r1]
	cmp r0, #0
	beq _080208CA
	add r2, r5, #0
	add r2, r2, #43
	ldrb r0, [r2]
	mov r1, #16
	eor r0, r0, r1
	strb r0, [r2]
	lsr r0, r0, #3
	add r1, r5, #0
	add r1, r1, #42
	strb r0, [r1]
	ldrb r1, [r1]
	add r0, r5, #0
	bl 0x08003870
	b _08020930
_080208CA:
	mov r0, #1
	strb r0, [r1]
	add r1, r5, #0
	add r1, r1, #120
	mov r0, #150
	lsl r0, r0, #1
	strh r0, [r1]
	add r4, r5, #0
	add r4, r4, #43
	ldrb r0, [r4]
	sub r1, r1, #2
	strb r0, [r1]
	ldr r2, [r5, #100]
	ldrh r0, [r2, #50]
	ldrh r1, [r5, #50]
	sub r0, r0, r1
	lsl r0, r0, #16
	asr r0, r0, #16
	ldrh r1, [r2, #54]
	ldrh r2, [r5, #54]
	sub r1, r1, r2
	lsl r1, r1, #16
	asr r1, r1, #16
	bl 0x080040E0
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldrb r2, [r4]
	lsl r1, r2, #3
	sub r0, r0, r1
	mov r1, #255
	and r0, r0, r1
	cmp r0, #127
	bgt _08020914
	add r0, r2, #0
	add r0, r0, #8
	b _08020918
_08020914:
	add r0, r2, #0
	sub r0, r0, #8
_08020918:
	mov r1, #24
	and r0, r0, r1
	strb r0, [r4]
	ldrb r0, [r4]
	lsr r0, r0, #3
	add r1, r5, #0
	add r1, r1, #42
	strb r0, [r1]
	ldrb r1, [r1]
	add r0, r5, #0
	bl 0x08003870
_08020930:
	add r0, r5, #0
	bl 0x08003828
_08020936:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802086C

	THUMB_FUNC_START sub_0802093C
sub_0802093C: @ 0x0802093C
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08020964
	mov r0, #7
	strb r0, [r4, #20]
	add r0, r4, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r0, r4, #0
	bl 0x08003870
	b _0802097A
_08020964:
	lsl r0, r1, #24
	cmp r0, #0
	beq _08020972
	add r1, r4, #0
	add r1, r1, #63
	mov r0, #60
	b _08020978
_08020972:
	add r1, r4, #0
	add r1, r1, #63
	mov r0, #59
_08020978:
	strb r0, [r1]
_0802097A:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802093C

	THUMB_FUNC_START sub_08020980
sub_08020980: @ 0x08020980
	add r1, r0, #0
	ldrb r0, [r1, #23]
	sub r0, r0, #1
	strb r0, [r1, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0802099C
	mov r0, #1
	strb r0, [r1, #20]
	add r0, r0, #255
	str r0, [r1, #12]
	add r1, r1, #122
	mov r0, #60
	strh r0, [r1]
_0802099C:
	bx lr
	THUMB_FUNC_END sub_08020980

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080209A0
sub_080209A0: @ 0x080209A0
	push {lr}
	mov r1, #104
	mov r2, #64
	bl 0x08009E6C
	add r3, r0, #0
	cmp r3, #0
	beq _080209D4
	ldr r2, _080209CC  @ =gUnknown_03006A30
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r2
	ldrh r1, [r0, #54]
	ldr r0, _080209D0  @ =0x00001091
	and r0, r0, r1
	cmp r0, #0
	bne _080209D4
	add r0, r3, #0
	b _080209D6
	.byte 0x00
	.byte 0x00
_080209CC:
	.4byte gUnknown_03006A30
_080209D0:
	.4byte 0x00001091
_080209D4:
	mov r0, #0
_080209D6:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080209A0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080209DC
sub_080209DC: @ 0x080209DC
	push {r4,lr}
	add r4, r0, #0
	mov r0, #4
	strb r0, [r4, #20]
	mov r0, #8
	strb r0, [r4, #23]
	str r1, [r4, #100]
	add r0, r4, #0
	bl sub_0803CECC
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #27
	sub r1, r1, #1
	strb r0, [r1]
	ldrb r1, [r1]
	add r0, r4, #0
	bl 0x08003870
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080209DC

	THUMB_FUNC_START sub_08020A0C
sub_08020A0C: @ 0x08020A0C
	push {r4-r7,lr}
	add r4, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #27
	cmp r1, #1
	beq _08020A48
	cmp r1, #1
	bgt _08020A22
	cmp r1, #0
	beq _08020A2C
	b _08020A92
_08020A22:
	cmp r1, #2
	beq _08020A52
	cmp r1, #3
	beq _08020A74
	b _08020A92
_08020A2C:
	ldr r3, [r4, #72]
	ldrb r2, [r3, #4]
	ldrh r1, [r4, #50]
	add r0, r1, r2
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r12, r0
	sub r1, r1, r2
	lsl r1, r1, #16
	lsr r7, r1, #16
	ldrb r1, [r3, #5]
	ldrh r0, [r4, #54]
	sub r0, r0, r1
	b _08020A6C
_08020A48:
	ldr r2, [r4, #72]
	ldrb r1, [r2, #2]
	ldrh r0, [r4, #50]
	add r0, r0, r1
	b _08020A7C
_08020A52:
	ldr r3, [r4, #72]
	ldrb r2, [r3, #4]
	ldrh r1, [r4, #50]
	add r0, r1, r2
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r12, r0
	sub r1, r1, r2
	lsl r1, r1, #16
	lsr r7, r1, #16
	ldrb r1, [r3, #5]
	ldrh r0, [r4, #54]
	add r0, r0, r1
_08020A6C:
	lsl r0, r0, #16
	lsr r5, r0, #16
	add r3, r5, #0
	b _08020A92
_08020A74:
	ldr r2, [r4, #72]
	ldrb r1, [r2, #2]
	ldrh r0, [r4, #50]
	sub r0, r0, r1
_08020A7C:
	lsl r0, r0, #16
	lsr r7, r0, #16
	mov r12, r7
	ldrb r2, [r2, #3]
	ldrh r1, [r4, #54]
	sub r0, r1, r2
	lsl r0, r0, #16
	lsr r3, r0, #16
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r5, r1, #16
_08020A92:
	ldr r6, _08020ADC  @ =gUnknown_03000450
	ldrh r0, [r6, #24]
	mov r1, r12
	sub r0, r1, r0
	asr r0, r0, #4
	ldrh r1, [r6, #26]
	sub r1, r3, r1
	asr r1, r1, #4
	lsl r1, r1, #6
	orr r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	add r4, r4, #80
	ldrh r1, [r4]
	bl 0x080093C8
	lsl r0, r0, #24
	cmp r0, #0
	bne _08020AD8
	ldrh r0, [r6, #24]
	sub r0, r7, r0
	asr r0, r0, #4
	ldrh r1, [r6, #26]
	sub r1, r5, r1
	asr r1, r1, #4
	lsl r1, r1, #6
	orr r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldrh r1, [r4]
	bl 0x080093C8
	lsl r0, r0, #24
	cmp r0, #0
	beq _08020AE0
_08020AD8:
	mov r0, #0
	b _08020AE2
_08020ADC:
	.4byte gUnknown_03000450
_08020AE0:
	mov r0, #1
_08020AE2:
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08020A0C

	THUMB_FUNC_START sub_08020AE8
sub_08020AE8: @ 0x08020AE8
	push {r4-r6,lr}
	add r4, r0, #0
	ldr r1, _08020B14  @ =gUnknown_03000940
	ldr r2, [r4, #100]
	ldrb r0, [r2, #10]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r1, [r0]
	mov r0, #128
	lsl r0, r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _08020B0C
	add r0, r2, #0
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #0
	bne _08020B18
_08020B0C:
	add r0, r4, #0
	bl sub_08020760
	b _08020C06
_08020B14:
	.4byte gUnknown_03000940
_08020B18:
	ldrh r0, [r4, #50]
	ldrh r1, [r2, #50]
	sub r0, r0, r1
	add r0, r0, #20
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #40
	bhi _08020B3C
	ldrh r0, [r4, #54]
	ldrh r1, [r2, #54]
	sub r0, r0, r1
	add r0, r0, #20
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #40
	bhi _08020B3C
	mov r0, #1
	b _08020C06
_08020B3C:
	add r5, r4, #0
	add r5, r5, #117
	ldrb r0, [r5]
	cmp r0, #0
	beq _08020BC8
	ldr r1, [r4, #100]
	add r0, r4, #0
	bl sub_0803CECC
	lsl r0, r0, #24
	lsr r3, r0, #24
	add r6, r4, #0
	add r6, r6, #118
	ldrb r2, [r6]
	sub r0, r2, r3
	add r0, r0, #8
	mov r1, #31
	and r0, r0, r1
	cmp r0, #16
	ble _08020B80
	mov r0, #0
	strb r0, [r5]
	add r1, r4, #0
	add r1, r1, #119
	mov r0, #8
	strb r0, [r1]
	add r0, r3, #4
	mov r1, #24
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	lsr r0, r0, #3
	b _08020BA4
_08020B80:
	add r0, r4, #0
	add r1, r2, #0
	bl sub_08020A0C
	lsl r0, r0, #24
	cmp r0, #0
	beq _08020BB2
	mov r0, #0
	strb r0, [r5]
	add r1, r4, #0
	add r1, r1, #119
	mov r0, #8
	strb r0, [r1]
	ldrb r0, [r6]
	sub r1, r1, #76
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #27
_08020BA4:
	sub r1, r1, #1
	strb r0, [r1]
	ldrb r1, [r1]
	add r0, r4, #0
	bl 0x08003870
	b _08020C04
_08020BB2:
	add r1, r4, #0
	add r1, r1, #120
	ldrh r0, [r1]
	sub r0, r0, #1
	strh r0, [r1]
	lsl r0, r0, #16
	cmp r0, #0
	bne _08020C04
	mov r0, #1
	strb r0, [r4, #20]
	b _08020C04
_08020BC8:
	add r1, r4, #0
	add r1, r1, #119
	ldrb r0, [r1]
	cmp r0, #0
	beq _08020BD8
	sub r0, r0, #1
	strb r0, [r1]
	b _08020C04
_08020BD8:
	mov r0, #8
	strb r0, [r1]
	ldr r1, [r4, #100]
	add r0, r4, #0
	bl sub_0803CECC
	add r0, r0, #4
	mov r1, #24
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	lsr r0, r0, #3
	sub r1, r1, #1
	ldrb r2, [r1]
	cmp r0, r2
	beq _08020C04
	strb r0, [r1]
	ldrb r1, [r1]
	add r0, r4, #0
	bl 0x08003870
_08020C04:
	mov r0, #0
_08020C06:
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08020AE8

	THUMB_FUNC_START sub_08020C0C
sub_08020C0C: @ 0x08020C0C
	push {r4-r6,lr}
	add r5, r0, #0
	ldr r1, [r5, #88]
	cmp r1, #0
	beq _08020C6C
	bl sub_0803D3D0
	mov r0, #41
	add r0, r0, r5
	mov r12, r0
	ldrb r1, [r0]
	mov r6, #7
	add r0, r6, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08020C60
	ldr r1, [r5, #88]
	add r1, r1, #60
	ldrb r2, [r1]
	mov r0, #128
	orr r0, r0, r2
	strb r0, [r1]
	ldr r4, [r5, #88]
	ldr r3, _08020C5C  @ =gUnknown_0813B854
	add r0, r5, #0
	add r0, r0, #42
	ldrb r1, [r0]
	lsl r0, r1, #2
	add r0, r0, r1
	mov r1, r12
	ldrb r2, [r1]
	add r1, r6, #0
	and r1, r1, r2
	add r0, r0, r1
	sub r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r3
	ldr r0, [r0]
	str r0, [r4, #72]
	b _08020C6C
_08020C5C:
	.4byte gUnknown_0813B854
_08020C60:
	ldr r0, [r5, #88]
	add r0, r0, #60
	ldrb r2, [r0]
	mov r1, #127
	and r1, r1, r2
	strb r1, [r0]
_08020C6C:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08020C0C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08020C74
sub_08020C74: @ 0x08020C74
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #11]
	cmp r0, #0
	beq _08020CC0
	ldr r0, [r4, #84]
	add r0, r0, #127
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08020CC0
	mov r0, #6
	strb r0, [r4, #20]
	mov r0, #30
	strb r0, [r4, #23]
	ldrb r2, [r4, #29]
	lsl r1, r2, #30
	lsr r1, r1, #30
	mov r0, #2
	orr r1, r1, r0
	sub r0, r0, #6
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #29]
	add r1, r4, #0
	add r1, r1, #112
	mov r0, #240
	strh r0, [r1]
	add r1, r1, #2
	add r0, r0, #48
	strh r0, [r1]
	ldr r1, [r4, #84]
	add r1, r1, #127
	ldrb r2, [r1]
	mov r0, #254
	and r0, r0, r2
	strb r0, [r1]
_08020CC0:
	ldr r1, _08020D04  @ =gUnknown_0813B8A4
	ldrb r0, [r4, #20]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #10]
	cmp r0, #2
	bne _08020CFE
	add r0, r4, #0
	bl sub_08021234
	add r0, r4, #0
	bl sub_080210F0
	add r1, r4, #0
	add r1, r1, #110
	ldrh r0, [r1]
	sub r0, r0, #1
	strh r0, [r1]
	lsl r0, r0, #16
	cmp r0, #0
	bne _08020CFE
	mov r0, #30
	strh r0, [r1]
	add r0, r4, #0
	mov r1, #89
	bl 0x08003E10
_08020CFE:
	pop {r4}
	pop {r0}
	bx r0
_08020D04:
	.4byte gUnknown_0813B8A4
	THUMB_FUNC_END sub_08020C74

	THUMB_FUNC_START sub_08020D08
sub_08020D08: @ 0x08020D08
	push {r4,lr}
	add r4, r0, #0
	mov r2, #1
	mov r0, #1
	strb r0, [r4, #20]
	ldrb r1, [r4, #28]
	sub r0, r0, #5
	and r0, r0, r1
	orr r0, r0, r2
	strb r0, [r4, #28]
	ldrb r1, [r4, #10]
	mov r0, #2
	sub r0, r0, r1
	strh r0, [r4, #52]
	ldr r1, _08020D44  @ =gUnknown_0813B8C0
	ldrb r0, [r4, #10]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	strh r0, [r4, #58]
	add r1, r4, #0
	add r1, r1, #110
	mov r0, #30
	strh r0, [r1]
	ldrb r0, [r4, #10]
	cmp r0, #0
	beq _08020D48
	cmp r0, #1
	beq _08020D60
	b _08020D6C
_08020D44:
	.4byte gUnknown_0813B8C0
_08020D48:
	ldrb r2, [r4, #29]
	mov r1, #63
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #64
	orr r0, r0, r2
	strb r0, [r4, #29]
	ldrb r0, [r4, #31]
	and r1, r1, r0
	orr r1, r1, r2
	strb r1, [r4, #31]
	b _08020D6C
_08020D60:
	add r2, r4, #0
	add r2, r2, #94
	ldrb r0, [r2]
	mov r1, #3
	orr r0, r0, r1
	strb r0, [r2]
_08020D6C:
	add r0, r4, #0
	bl sub_08021350
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
	add r0, r4, #0
	bl 0x08003B94
	add r1, r4, #0
	add r1, r1, #112
	mov r3, #0
	mov r0, #128
	lsl r0, r0, #4
	strh r0, [r1]
	add r0, r4, #0
	add r0, r0, #114
	mov r2, #192
	lsl r2, r2, #3
	strh r2, [r0]
	ldr r0, _08020DAC  @ =gUnknown_03000488
	ldrh r1, [r1]
	strh r1, [r0]
	strh r2, [r0, #2]
	strh r3, [r0, #4]
	add r1, r4, #0
	bl sub_0803D770
	pop {r4}
	pop {r0}
	bx r0
_08020DAC:
	.4byte gUnknown_03000488
	THUMB_FUNC_END sub_08020D08

	THUMB_FUNC_START sub_08020DB0
sub_08020DB0: @ 0x08020DB0
	push {r4-r6,lr}
	add r4, r0, #0
	mov r6, #0
	add r2, r4, #0
	add r2, r2, #112
	ldrh r0, [r2]
	sub r0, r0, #24
	strh r0, [r2]
	add r3, r4, #0
	add r3, r3, #114
	ldrh r0, [r3]
	sub r0, r0, #16
	strh r0, [r3]
	ldrh r1, [r2]
	ldr r5, _08020E24  @ =gUnknown_0813B8D8
	ldrb r0, [r4, #10]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r0, [r0]
	cmp r1, r0
	bgt _08020DDE
	strh r0, [r2]
	mov r6, #1
_08020DDE:
	ldrh r1, [r3]
	ldrb r0, [r4, #10]
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r5
	ldr r0, [r0]
	cmp r1, r0
	bgt _08020DFA
	strh r0, [r3]
	cmp r6, #0
	beq _08020DFA
	mov r0, #2
	strb r0, [r4, #20]
_08020DFA:
	ldr r0, _08020E28  @ =gUnknown_03000488
	add r1, r4, #0
	add r1, r1, #112
	ldrh r1, [r1]
	mov r2, #0
	strh r1, [r0]
	add r1, r4, #0
	add r1, r1, #114
	ldrh r1, [r1]
	strh r1, [r0, #2]
	strh r2, [r0, #4]
	add r1, r4, #0
	bl sub_0803D770
	add r0, r4, #0
	bl 0x08003828
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08020E24:
	.4byte gUnknown_0813B8D8
_08020E28:
	.4byte gUnknown_03000488
	THUMB_FUNC_END sub_08020DB0

	THUMB_FUNC_START sub_08020E2C
sub_08020E2C: @ 0x08020E2C
	push {r4-r6,lr}
	add r3, r0, #0
	ldr r1, [r3, #84]
	add r0, r1, #0
	add r0, r0, #125
	ldrb r0, [r0]
	cmp r0, #1
	bne _08020E42
	mov r0, #3
	strb r0, [r3, #20]
	b _08020EAC
_08020E42:
	ldrh r5, [r3, #50]
	ldrh r6, [r3, #54]
	ldrb r0, [r3, #11]
	cmp r0, #0
	beq _08020E54
	ldrh r0, [r1, #50]
	strh r0, [r3, #50]
	ldrh r0, [r1, #54]
	b _08020E7A
_08020E54:
	ldr r0, _08020EB4  @ =gUnknown_03000E20
	ldrh r0, [r0]
	add r0, r0, #1
	mov r1, #7
	and r0, r0, r1
	add r0, r0, #120
	add r4, r3, r0
	ldrb r1, [r4]
	mov r0, #15
	and r0, r0, r1
	ldr r1, _08020EB8  @ =0x0000FFF8
	add r0, r0, r1
	add r0, r5, r0
	strh r0, [r3, #50]
	ldrb r0, [r4]
	lsr r0, r0, #4
	add r0, r0, r1
	ldrh r1, [r3, #54]
	add r0, r0, r1
_08020E7A:
	strh r0, [r3, #54]
	ldr r2, [r3, #88]
	cmp r2, #0
	beq _08020EA6
	ldr r0, _08020EB4  @ =gUnknown_03000E20
	ldrh r1, [r0]
	mov r0, #7
	and r0, r0, r1
	add r0, r0, #120
	add r4, r2, r0
	ldrh r1, [r3, #50]
	sub r1, r1, r5
	add r1, r1, #8
	mov r2, #15
	and r1, r1, r2
	ldrh r0, [r3, #54]
	sub r0, r0, r6
	add r0, r0, #8
	and r0, r0, r2
	lsl r0, r0, #4
	orr r1, r1, r0
	strb r1, [r4]
_08020EA6:
	add r0, r3, #0
	bl 0x08003828
_08020EAC:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08020EB4:
	.4byte gUnknown_03000E20
_08020EB8:
	.4byte 0x0000FFF8
	THUMB_FUNC_END sub_08020E2C

	THUMB_FUNC_START sub_08020EBC
sub_08020EBC: @ 0x08020EBC
	push {r4-r6,lr}
	add r4, r0, #0
	mov r5, #0
	add r2, r4, #0
	add r2, r2, #112
	ldrh r0, [r2]
	add r0, r0, #8
	strh r0, [r2]
	add r3, r4, #0
	add r3, r3, #114
	ldrh r0, [r3]
	sub r0, r0, #8
	strh r0, [r3]
	ldrh r1, [r2]
	ldr r6, _08020F54  @ =gUnknown_0813B8F0
	ldrb r0, [r4, #10]
	lsl r0, r0, #3
	add r0, r0, r6
	ldr r0, [r0]
	cmp r1, r0
	blt _08020EEA
	strh r0, [r2]
	mov r5, #1
_08020EEA:
	ldrh r1, [r3]
	ldrb r0, [r4, #10]
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r6
	ldr r0, [r0]
	cmp r1, r0
	bgt _08020F04
	strh r0, [r3]
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
_08020F04:
	ldr r0, [r4, #56]
	ldr r1, _08020F58  @ =0xFFFF8000
	add r0, r0, r1
	str r0, [r4, #56]
	ldr r1, _08020F5C  @ =gUnknown_0813B8CC
	ldrb r0, [r4, #10]
	lsl r0, r0, #2
	add r0, r0, r1
	mov r2, #58
	ldrsh r1, [r4, r2]
	ldr r0, [r0]
	cmp r0, r1
	blt _08020F2C
	strh r0, [r4, #58]
	cmp r5, #2
	bne _08020F2C
	mov r0, #4
	strb r0, [r4, #20]
	mov r0, #1
	strb r0, [r4, #23]
_08020F2C:
	ldr r0, _08020F60  @ =gUnknown_03000488
	add r1, r4, #0
	add r1, r1, #112
	ldrh r1, [r1]
	mov r2, #0
	strh r1, [r0]
	add r1, r4, #0
	add r1, r1, #114
	ldrh r1, [r1]
	strh r1, [r0, #2]
	strh r2, [r0, #4]
	add r1, r4, #0
	bl sub_0803D770
	add r0, r4, #0
	bl 0x08003828
	pop {r4-r6}
	pop {r0}
	bx r0
_08020F54:
	.4byte gUnknown_0813B8F0
_08020F58:
	.4byte 0xFFFF8000
_08020F5C:
	.4byte gUnknown_0813B8CC
_08020F60:
	.4byte gUnknown_03000488
	THUMB_FUNC_END sub_08020EBC

	THUMB_FUNC_START sub_08020F64
sub_08020F64: @ 0x08020F64
	push {lr}
	add r1, r0, #0
	ldr r0, [r1, #84]
	add r0, r0, #125
	ldrb r2, [r0]
	cmp r2, #0
	bne _08020F7A
	mov r0, #5
	strb r0, [r1, #20]
	str r2, [r1, #12]
	b _08020F90
_08020F7A:
	ldrb r0, [r1, #23]
	sub r0, r0, #1
	strb r0, [r1, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08020F90
	mov r0, #30
	strb r0, [r1, #23]
	ldr r0, [r1, #12]
	add r0, r0, #48
	str r0, [r1, #12]
_08020F90:
	add r0, r1, #0
	bl 0x08003828
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08020F64

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08020F9C
sub_08020F9C: @ 0x08020F9C
	push {r4-r6,lr}
	add r4, r0, #0
	mov r5, #0
	add r2, r4, #0
	add r2, r2, #112
	ldrh r0, [r2]
	sub r0, r0, #8
	strh r0, [r2]
	add r3, r4, #0
	add r3, r3, #114
	ldrh r0, [r3]
	add r0, r0, #8
	strh r0, [r3]
	ldrh r1, [r2]
	ldr r6, _08021030  @ =gUnknown_0813B8D8
	ldrb r0, [r4, #10]
	lsl r0, r0, #3
	add r0, r0, r6
	ldr r0, [r0]
	cmp r1, r0
	bgt _08020FCA
	strh r0, [r2]
	mov r5, #1
_08020FCA:
	ldrh r1, [r3]
	ldrb r0, [r4, #10]
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r6
	ldr r0, [r0]
	cmp r1, r0
	blt _08020FE4
	strh r0, [r3]
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
_08020FE4:
	ldr r0, [r4, #56]
	mov r1, #128
	lsl r1, r1, #8
	add r0, r0, r1
	str r0, [r4, #56]
	ldr r1, _08021034  @ =gUnknown_0813B8C0
	ldrb r0, [r4, #10]
	lsl r0, r0, #2
	add r0, r0, r1
	mov r2, #58
	ldrsh r1, [r4, r2]
	ldr r0, [r0]
	cmp r0, r1
	bgt _08021008
	strh r0, [r4, #58]
	cmp r5, #2
	bne _08021008
	strb r5, [r4, #20]
_08021008:
	ldr r0, _08021038  @ =gUnknown_03000488
	add r1, r4, #0
	add r1, r1, #112
	ldrh r1, [r1]
	mov r2, #0
	strh r1, [r0]
	add r1, r4, #0
	add r1, r1, #114
	ldrh r1, [r1]
	strh r1, [r0, #2]
	strh r2, [r0, #4]
	add r1, r4, #0
	bl sub_0803D770
	add r0, r4, #0
	bl 0x08003828
	pop {r4-r6}
	pop {r0}
	bx r0
_08021030:
	.4byte gUnknown_0813B8D8
_08021034:
	.4byte gUnknown_0813B8C0
_08021038:
	.4byte gUnknown_03000488
	THUMB_FUNC_END sub_08020F9C

	THUMB_FUNC_START sub_0802103C
sub_0802103C: @ 0x0802103C
	push {r4,lr}
	add r4, r0, #0
	ldr r2, [r4, #88]
	cmp r2, #0
	beq _08021056
	ldr r0, _08021090  @ =gUnknown_03000E20
	ldrh r1, [r0]
	mov r0, #7
	and r0, r0, r1
	add r0, r0, r2
	add r0, r0, #120
	mov r1, #136
	strb r1, [r0]
_08021056:
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	beq _08021098
	add r1, r4, #0
	add r1, r1, #112
	ldrh r0, [r1]
	sub r0, r0, #4
	strh r0, [r1]
	add r0, r4, #0
	add r0, r0, #114
	ldrh r2, [r0]
	add r2, r2, #8
	strh r2, [r0]
	ldr r0, _08021094  @ =gUnknown_03000488
	ldrh r1, [r1]
	strh r1, [r0]
	strh r2, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	add r1, r4, #0
	bl sub_0803D770
	add r0, r4, #0
	bl 0x08003828
	b _080210EA
_08021090:
	.4byte gUnknown_03000E20
_08021094:
	.4byte gUnknown_03000488
_08021098:
	ldr r1, [r4, #88]
	cmp r1, #0
	beq _080210DE
	ldr r0, [r4, #84]
	str r1, [r0, #84]
	ldr r1, [r4, #88]
	mov r0, #1
	strb r0, [r1, #11]
	ldr r1, [r4, #88]
	ldr r0, [r4, #84]
	ldrh r0, [r0, #50]
	strh r0, [r1, #50]
	ldr r1, [r4, #88]
	ldr r0, [r4, #84]
	ldrh r0, [r0, #54]
	strh r0, [r1, #54]
	ldr r0, [r4, #88]
	bl sub_08021350
	ldr r0, [r4, #88]
	ldr r1, [r0, #88]
	cmp r1, #0
	beq _080210DE
	ldr r0, [r4, #84]
	ldrh r0, [r0, #50]
	strh r0, [r1, #50]
	ldr r0, [r4, #88]
	ldr r1, [r0, #88]
	ldr r0, [r4, #84]
	ldrh r0, [r0, #54]
	strh r0, [r1, #54]
	ldr r0, [r4, #88]
	ldr r0, [r0, #88]
	bl sub_08021350
_080210DE:
	add r0, r4, #0
	bl 0x08003BCC
	add r0, r4, #0
	bl sub_08012540
_080210EA:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802103C

	THUMB_FUNC_START sub_080210F0
sub_080210F0: @ 0x080210F0
	push {r4-r6,lr}
	add r4, r0, #0
	mov r0, #50
	ldrsh r1, [r4, r0]
	ldr r2, _08021150  @ =gUnknown_03000450
	ldrh r0, [r2, #24]
	sub r1, r1, r0
	asr r1, r1, #4
	mov r3, #54
	ldrsh r0, [r4, r3]
	ldrh r2, [r2, #26]
	sub r0, r0, r2
	asr r0, r0, #4
	lsl r0, r0, #6
	orr r1, r1, r0
	lsl r1, r1, #16
	lsr r6, r1, #16
	add r5, r4, #0
	add r5, r5, #80
	ldrh r1, [r5]
	add r0, r6, #0
	bl 0x0800932C
	lsl r0, r0, #16
	mov r1, #156
	lsl r1, r1, #17
	cmp r0, r1
	bne _08021148
	mov r0, #15
	mov r1, #15
	mov r2, #0
	bl sub_0804C8A8
	add r1, r0, #0
	cmp r1, #0
	beq _08021148
	add r0, r4, #0
	bl sub_0803D3D0
	ldrh r2, [r5]
	mov r0, #47
	add r1, r6, #0
	bl sub_08014658
_08021148:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08021150:
	.4byte gUnknown_03000450
	THUMB_FUNC_END sub_080210F0

	THUMB_FUNC_START sub_08021154
sub_08021154: @ 0x08021154
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003FB0
	lsl r0, r0, #24
	cmp r0, #0
	beq _08021188
	ldr r2, _08021184  @ =gUnknown_03006A30
	ldrb r1, [r4, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r2, r0, r2
	ldrh r1, [r2, #54]
	mov r0, #128
	lsl r0, r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _08021188
	ldrb r0, [r2, #5]
	cmp r0, #1
	beq _08021188
	mov r0, #1
	b _0802118A
_08021184:
	.4byte gUnknown_03006A30
_08021188:
	mov r0, #0
_0802118A:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08021154

	THUMB_FUNC_START sub_08021190
sub_08021190: @ 0x08021190
	push {r4-r6,lr}
	add r5, r0, #0
	add r4, r1, #0
	lsl r2, r2, #16
	lsr r6, r2, #16
	ldr r0, [r4, #88]
	cmp r0, #0
	beq _080211AA
	ldrh r1, [r0, #8]
	mov r0, #129
	lsl r0, r0, #2
	cmp r1, r0
	beq _0802122A
_080211AA:
	ldrh r0, [r4, #50]
	ldrh r1, [r5, #50]
	sub r0, r0, r1
	ldr r2, _08021210  @ =gUnknown_0813B920
	ldrb r1, [r2, #6]
	add r0, r1, r0
	lsl r0, r0, #16
	lsr r0, r0, #16
	lsl r1, r1, #1
	cmp r0, r1
	bgt _08021214
	ldrh r0, [r4, #54]
	ldrh r1, [r5, #54]
	sub r0, r0, r1
	ldrb r1, [r2, #7]
	add r0, r1, r0
	lsl r0, r0, #16
	lsr r0, r0, #16
	lsl r1, r1, #1
	cmp r0, r1
	bgt _08021214
	ldrb r0, [r4, #20]
	cmp r0, #2
	bne _080211E0
	ldrb r0, [r4, #21]
	cmp r0, #1
	bls _08021214
_080211E0:
	add r0, r4, #0
	bl 0x08003FB0
	lsl r0, r0, #24
	cmp r0, #0
	beq _08021214
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	bl sub_0804411C
	add r1, r0, #0
	cmp r1, #0
	beq _08021214
	ldrh r0, [r4, #58]
	strh r0, [r1, #58]
	ldr r0, [r5, #84]
	str r0, [r1, #84]
	str r5, [r1, #88]
	str r4, [r1, #100]
	str r1, [r4, #88]
	mov r0, #1
	b _0802122C
	.byte 0x00
	.byte 0x00
_08021210:
	.4byte gUnknown_0813B920
_08021214:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0803CECC
	add r2, r0, #0
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r0, r4, #0
	add r1, r6, #0
	bl 0x08002E70
_0802122A:
	mov r0, #0
_0802122C:
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08021190

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08021234
sub_08021234: @ 0x08021234
	push {r4-r7,lr}
	add r6, r0, #0
	ldr r0, _0802124C  @ =gUnknown_03006C80
	ldrb r0, [r0]
	cmp r0, #3
	beq _08021272
	cmp r0, #3
	bgt _08021250
	cmp r0, #2
	beq _08021290
	b _080212AC
	.byte 0x00
	.byte 0x00
_0802124C:
	.4byte gUnknown_03006C80
_08021250:
	cmp r0, #4
	bne _080212AC
	ldr r0, _080212E0  @ =gUnknown_03006A30
	mov r1, #236
	lsl r1, r1, #1
	add r4, r0, r1
	ldr r0, [r4]
	bl sub_08021154
	lsl r0, r0, #24
	cmp r0, #0
	beq _08021272
	ldr r1, [r4]
	ldrh r2, [r6, #12]
	add r0, r6, #0
	bl sub_08021190
_08021272:
	ldr r0, _080212E0  @ =gUnknown_03006A30
	mov r1, #164
	lsl r1, r1, #1
	add r4, r0, r1
	ldr r0, [r4]
	bl sub_08021154
	lsl r0, r0, #24
	cmp r0, #0
	beq _08021290
	ldr r1, [r4]
	ldrh r2, [r6, #12]
	add r0, r6, #0
	bl sub_08021190
_08021290:
	ldr r0, _080212E0  @ =gUnknown_03006A30
	add r4, r0, #0
	add r4, r4, #184
	ldr r0, [r4]
	bl sub_08021154
	lsl r0, r0, #24
	cmp r0, #0
	beq _080212AC
	ldr r1, [r4]
	ldrh r2, [r6, #12]
	add r0, r6, #0
	bl sub_08021190
_080212AC:
	ldr r4, _080212E0  @ =gUnknown_03006A30
	ldr r0, [r4, #40]
	bl sub_08021154
	lsl r0, r0, #24
	cmp r0, #0
	beq _080212C4
	ldr r1, [r4, #40]
	ldrh r2, [r6, #12]
	add r0, r6, #0
	bl sub_08021190
_080212C4:
	ldr r0, _080212E4  @ =gUnknown_03005960
	ldr r5, [r0, #20]
	add r7, r5, #0
	cmp r5, #0
	beq _08021348
_080212CE:
	ldrb r0, [r5, #9]
	cmp r0, #3
	beq _080212F0
	cmp r0, #3
	bgt _080212E8
	cmp r0, #2
	beq _080212F6
	b _08021342
	.byte 0x00
	.byte 0x00
_080212E0:
	.4byte gUnknown_03006A30
_080212E4:
	.4byte gUnknown_03005960
_080212E8:
	cmp r0, #4
	beq _08021312
	cmp r0, #5
	bne _08021342
_080212F0:
	ldr r0, [r5, #12]
	cmp r0, #0
	beq _08021342
_080212F6:
	ldr r4, [r6, #12]
	add r4, r4, #128
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0803CECC
	add r2, r0, #0
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r0, r5, #0
	add r1, r4, #0
	bl 0x08002E70
	b _08021342
_08021312:
	add r0, r5, #0
	add r0, r0, #100
	ldrh r0, [r0]
	cmp r0, #0
	bne _08021342
	ldrb r0, [r5, #20]
	cmp r0, #2
	bne _08021328
	ldrb r0, [r5, #21]
	cmp r0, #1
	bls _08021342
_08021328:
	ldr r2, [r6, #12]
	add r2, r2, #128
	lsl r2, r2, #16
	lsr r2, r2, #16
	add r0, r6, #0
	add r1, r5, #0
	bl sub_08021190
	lsl r0, r0, #24
	cmp r0, #0
	beq _08021342
	mov r0, #3
	strb r0, [r5, #21]
_08021342:
	ldr r5, [r5, #4]
	cmp r7, r5
	bne _080212CE
_08021348:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021234

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08021350
sub_08021350: @ 0x08021350
	add r2, r0, #0
	add r0, r0, #120
	mov r1, #136
	strb r1, [r0]
	add r0, r0, #1
	strb r1, [r0]
	add r0, r0, #1
	strb r1, [r0]
	add r0, r0, #1
	strb r1, [r0]
	add r0, r0, #1
	strb r1, [r0]
	add r0, r0, #1
	strb r1, [r0]
	add r0, r0, #1
	strb r1, [r0]
	add r0, r0, #1
	strb r1, [r0]
	bx lr
	THUMB_FUNC_END sub_08021350

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08021378
sub_08021378: @ 0x08021378
	push {r4-r6,lr}
	add r4, r0, #0
	ldrb r1, [r4, #11]
	mov r6, #128
	add r0, r6, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08021390
	add r0, r4, #0
	bl sub_08022044
	b _080215E6
_08021390:
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _08021488
	ldr r1, _08021480  @ =gUnknown_0813B96C
	ldrb r0, [r4, #20]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #23]
	cmp r0, #0
	bne _080213B0
	b _080215E6
_080213B0:
	ldr r5, [r4, #56]
	cmp r5, #0
	beq _080213B8
	b _080215E6
_080213B8:
	add r0, r4, #0
	add r0, r0, #65
	ldrb r1, [r0]
	add r0, r6, #0
	and r0, r0, r1
	cmp r0, #0
	bne _080213C8
	b _080215E6
_080213C8:
	mov r0, #127
	and r0, r0, r1
	cmp r0, #16
	beq _080213D2
	b _080215E6
_080213D2:
	ldr r2, _08021484  @ =gUnknown_03006A30
	ldr r0, [r4, #76]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r2
	mov r6, #6
	strb r6, [r0, #12]
	ldr r0, [r4, #76]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r2
	add r0, r0, #56
	mov r1, #1
	strb r1, [r0]
	add r1, r4, #0
	add r1, r1, #61
	mov r0, #254
	strb r0, [r1]
	ldr r0, [r4, #76]
	add r0, r0, #42
	ldrb r0, [r0]
	cmp r0, #2
	beq _0802140A
	b _080215E6
_0802140A:
	ldr r1, [r4, #84]
	ldr r0, [r4, #48]
	str r0, [r1, #48]
	ldr r1, [r4, #84]
	ldr r0, [r4, #52]
	str r0, [r1, #52]
	ldr r0, [r4, #84]
	str r5, [r0, #56]
	ldr r1, [r4, #84]
	add r1, r1, #60
	ldrb r0, [r1]
	mov r2, #128
	orr r0, r0, r2
	strb r0, [r1]
	ldr r2, [r4, #84]
	ldrb r1, [r2, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r2, #28]
	ldr r1, [r4, #84]
	mov r0, #128
	lsl r0, r0, #2
	str r0, [r1, #12]
	mov r0, #192
	lsl r0, r0, #9
	str r0, [r1, #16]
	add r1, r1, #43
	mov r0, #8
	strb r0, [r1]
	ldr r0, [r4, #84]
	mov r1, #14
	bl 0x08003870
	ldr r0, [r4, #84]
	strb r6, [r0, #20]
	ldr r0, [r4, #84]
	add r0, r0, #116
	strb r5, [r0]
	ldr r0, [r4, #84]
	add r0, r0, #117
	mov r1, #30
	strb r1, [r0]
	ldr r0, [r4, #84]
	bl sub_08022B10
	mov r0, #166
	bl sub_0800D24C
	mov r0, #163
	bl sub_0800D24C
	add r0, r4, #0
	bl sub_08012540
	b _080215E6
	.byte 0x00
	.byte 0x00
_08021480:
	.4byte gUnknown_0813B96C
_08021484:
	.4byte gUnknown_03006A30
_08021488:
	ldrb r1, [r4, #10]
	cmp r1, #3
	bls _080214A6
	add r0, r4, #0
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802149A
	b _080215D6
_0802149A:
	add r0, r4, #0
	bl sub_08043F20
	mov r0, #5
	strb r0, [r4, #10]
	b _080215E6
_080214A6:
	ldr r0, [r4, #124]
	cmp r0, #0
	beq _080214B0
	sub r0, r0, #1
	str r0, [r4, #124]
_080214B0:
	ldrb r0, [r4, #20]
	cmp r0, #8
	bne _080214B8
	b _080215D6
_080214B8:
	ldr r0, [r4, #56]
	cmp r0, #0
	beq _080214C0
	b _080215D6
_080214C0:
	cmp r1, #0
	bne _080214C6
	b _080215D6
_080214C6:
	add r0, r4, #0
	add r0, r0, #65
	ldrb r1, [r0]
	add r0, r6, #0
	and r0, r0, r1
	cmp r0, #0
	bne _080214D6
	b _080215D6
_080214D6:
	mov r0, #127
	and r0, r0, r1
	cmp r0, #0
	beq _080215D6
	cmp r0, #16
	bne _080215AA
	ldr r2, _0802156C  @ =gUnknown_03006A30
	ldr r0, [r4, #76]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r2
	mov r1, #6
	strb r1, [r0, #12]
	ldr r0, [r4, #76]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r2
	add r0, r0, #56
	mov r1, #1
	strb r1, [r0]
	add r1, r4, #0
	add r1, r1, #61
	mov r0, #254
	strb r0, [r1]
	ldr r0, [r4, #76]
	add r0, r0, #42
	ldrb r0, [r0]
	cmp r0, #2
	bne _08021580
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	mov r0, #128
	lsl r0, r0, #2
	str r0, [r4, #12]
	mov r0, #192
	lsl r0, r0, #9
	str r0, [r4, #16]
	add r1, r4, #0
	add r1, r1, #43
	mov r0, #8
	strb r0, [r1]
	ldrb r0, [r4, #10]
	sub r0, r0, #1
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #25
	mov r0, #128
	lsl r0, r0, #19
	add r1, r1, r0
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x08003870
	add r0, r4, #0
	add r0, r0, #117
	ldrb r1, [r0]
	add r2, r0, #0
	cmp r1, #0
	beq _08021570
	add r1, r4, #0
	add r1, r1, #116
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _08021576
	.byte 0x00
	.byte 0x00
_0802156C:
	.4byte gUnknown_03006A30
_08021570:
	add r0, r4, #0
	add r0, r0, #116
	strb r1, [r0]
_08021576:
	mov r0, #30
	strb r0, [r2]
	add r0, r4, #0
	bl sub_08022B10
_08021580:
	ldrb r0, [r4, #10]
	cmp r0, #3
	bne _0802159E
	ldrb r0, [r4, #20]
	cmp r0, #2
	beq _0802159E
	cmp r0, #2
	blt _08021598
	cmp r0, #7
	bgt _08021598
	cmp r0, #6
	bge _0802159E
_08021598:
	mov r0, #163
	bl sub_0800D24C
_0802159E:
	mov r0, #6
	strb r0, [r4, #20]
	mov r0, #166
	bl sub_0800D24C
	b _080215D6
_080215AA:
	add r1, r4, #0
	add r1, r1, #61
	mov r0, #216
	strb r0, [r1]
	ldrb r0, [r4, #10]
	sub r0, r0, #1
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #25
	mov r0, #160
	lsl r0, r0, #19
	add r1, r1, r0
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x08003870
	ldrb r0, [r4, #20]
	add r1, r4, #0
	add r1, r1, #114
	strb r0, [r1]
	mov r0, #5
	strb r0, [r4, #20]
_080215D6:
	ldr r0, _080215EC  @ =gUnknown_0813B928
	ldrb r1, [r4, #20]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r4, #0
	bl _call_via_r1
_080215E6:
	pop {r4-r6}
	pop {r0}
	bx r0
_080215EC:
	.4byte gUnknown_0813B928
	THUMB_FUNC_END sub_08021378

	THUMB_FUNC_START sub_080215F0
sub_080215F0: @ 0x080215F0
	push {r4,r5,lr}
	add r5, r0, #0
	mov r0, #101
	mov r1, #0
	mov r2, #0
	bl sub_0804C8A8
	cmp r0, #0
	beq _08021604
	str r5, [r0, #84]
_08021604:
	mov r2, #1
	mov r4, #1
	strb r4, [r5, #20]
	ldrb r0, [r5, #30]
	lsl r0, r0, #28
	lsr r0, r0, #28
	add r0, r0, #1
	mov r1, #15
	and r0, r0, r1
	lsl r1, r0, #4
	orr r1, r1, r0
	strb r1, [r5, #30]
	ldrb r1, [r5, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	orr r0, r0, r2
	strb r0, [r5, #28]
	add r0, r5, #0
	mov r1, #6
	bl 0x08003870
	ldr r0, _08021684  @ =gUnknown_03006C80
	ldrb r1, [r0]
	lsl r0, r1, #1
	add r0, r0, r1
	strb r0, [r5, #23]
	mov r0, #120
	strb r0, [r5, #24]
	ldr r0, _08021688  @ =0x00002A30
	str r0, [r5, #124]
	mov r0, #192
	lsl r0, r0, #2
	str r0, [r5, #12]
	add r1, r5, #0
	add r1, r1, #46
	mov r2, #8
	mov r0, #8
	strb r0, [r1]
	ldrb r0, [r5, #28]
	mov r1, #48
	orr r0, r0, r1
	strb r0, [r5, #28]
	add r3, r5, #0
	add r3, r3, #94
	ldrb r1, [r3]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	orr r0, r0, r2
	strb r0, [r3]
	ldr r0, _0802168C  @ =gUnknown_0813BCAC
	str r0, [r5, #72]
	add r0, r5, #0
	add r0, r0, #106
	strb r4, [r0]
	ldr r1, _08021690  @ =gUnknown_03000450
	ldr r0, [r1]
	str r0, [r5, #88]
	str r5, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08021684:
	.4byte gUnknown_03006C80
_08021688:
	.4byte 0x00002A30
_0802168C:
	.4byte gUnknown_0813BCAC
_08021690:
	.4byte gUnknown_03000450
	THUMB_FUNC_END sub_080215F0

	THUMB_FUNC_START sub_08021694
sub_08021694: @ 0x08021694
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #24]
	cmp r0, #0
	beq _080216AA
	bl sub_0803DF84
	ldrb r0, [r4, #24]
	sub r0, r0, #1
	strb r0, [r4, #24]
	b _080216B0
_080216AA:
	ldr r1, _080216D0  @ =gUnknown_03000450
	ldr r0, [r4, #88]
	str r0, [r1]
_080216B0:
	add r0, r4, #0
	add r0, r0, #65
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08021730
	mov r0, #127
	and r0, r0, r1
	cmp r0, #8
	beq _08021700
	cmp r0, #8
	bgt _080216D4
	cmp r0, #4
	beq _08021700
	b _08021730
_080216D0:
	.4byte gUnknown_03000450
_080216D4:
	cmp r0, #12
	beq _08021700
	cmp r0, #16
	bne _08021730
	ldr r2, _08021738  @ =gUnknown_03006A30
	ldr r0, [r4, #76]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r2
	mov r1, #6
	strb r1, [r0, #12]
	ldr r0, [r4, #76]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r2
	add r0, r0, #56
	mov r1, #1
	strb r1, [r0]
_08021700:
	add r1, r4, #0
	add r1, r1, #61
	mov r0, #232
	strb r0, [r1]
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0802172A
	ldrb r0, [r4, #30]
	lsr r0, r0, #4
	sub r0, r0, #1
	mov r1, #15
	and r0, r0, r1
	lsl r1, r0, #4
	orr r1, r1, r0
	strb r1, [r4, #30]
	add r0, r4, #0
	bl sub_08022A7C
_0802172A:
	add r0, r4, #0
	bl sub_08022D88
_08021730:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08021738:
	.4byte gUnknown_03006A30
	THUMB_FUNC_END sub_08021694

	THUMB_FUNC_START sub_0802173C
sub_0802173C: @ 0x0802173C
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	cmp r1, #0
	bne _08021750
	b _08021858
_08021750:
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _0802175E
	mov r0, #168
	bl sub_0800D24C
_0802175E:
	add r0, r4, #0
	bl sub_0803CC20
	ldr r1, _080217CC  @ =0xFFFFFE08
	add r0, r1, #0
	ldrh r2, [r4, #50]
	add r1, r0, r2
	ldrh r2, [r4, #54]
	add r0, r0, r2
	lsl r0, r0, #16
	lsr r2, r0, #16
	lsl r1, r1, #16
	mov r0, #192
	lsl r0, r0, #10
	add r1, r1, r0
	lsr r1, r1, #16
	cmp r1, #6
	bhi _08021790
	mov r0, #252
	lsl r0, r0, #1
	strh r0, [r4, #50]
	ldrb r1, [r4, #24]
	mov r0, #1
	orr r0, r0, r1
	strb r0, [r4, #24]
_08021790:
	lsl r0, r2, #16
	mov r1, #192
	lsl r1, r1, #10
	add r0, r0, r1
	lsr r0, r0, #16
	cmp r0, #6
	bhi _080217AC
	mov r0, #252
	lsl r0, r0, #1
	strh r0, [r4, #54]
	ldrb r1, [r4, #24]
	mov r0, #2
	orr r0, r0, r1
	strb r0, [r4, #24]
_080217AC:
	ldrb r0, [r4, #24]
	cmp r0, #3
	bne _08021830
	ldrb r0, [r4, #23]
	cmp r0, #0
	beq _080217D0
	sub r0, r0, #1
	mov r1, #0
	strb r0, [r4, #23]
	add r2, r4, #0
	add r2, r2, #43
	mov r0, #255
	strb r0, [r2]
	str r1, [r4, #16]
	b _08021858
	.byte 0x00
	.byte 0x00
_080217CC:
	.4byte 0xFFFFFE08
_080217D0:
	mov r1, #128
	lsl r1, r1, #6
	add r0, r4, #0
	bl 0x08003594
	cmp r0, #0
	bne _08021858
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	ldrb r0, [r4, #10]
	cmp r0, #0
	beq _080217F6
	mov r0, #97
	mov r1, #0
	mov r2, #0
	bl sub_0804C8A8
	b _08021808
_080217F6:
	mov r0, #1
	strb r0, [r4, #10]
	add r0, r4, #0
	bl sub_08022AEC
	mov r0, #206
	lsl r0, r0, #1
	bl sub_0800D24C
_08021808:
	ldrb r0, [r4, #10]
	sub r0, r0, #1
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #25
	mov r2, #128
	lsl r2, r2, #20
	add r1, r1, r2
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x08003870
	add r0, r4, #0
	bl sub_080229CC
	mov r0, #16
	mov r1, #3
	bl sub_080161F8
	b _08021858
_08021830:
	mov r1, #50
	ldrsh r0, [r4, r1]
	mov r2, #54
	ldrsh r1, [r4, r2]
	mov r3, #252
	lsl r3, r3, #1
	add r2, r3, #0
	bl 0x08003F54
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	ldr r0, [r4, #16]
	cmp r0, #0
	beq _08021858
	mov r1, #128
	lsl r1, r1, #5
	add r0, r4, #0
	bl 0x08003594
_08021858:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802173C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08021860
sub_08021860: @ 0x08021860
	push {r4,r5,lr}
	sub sp, sp, #128
	add r5, r0, #0
	bl 0x08003828
	add r0, r5, #0
	add r0, r0, #41
	ldrb r0, [r0]
	cmp r0, #0
	beq _08021926
	mov r0, #4
	strb r0, [r5, #20]
	bl 0x0800099C
	mov r1, #1
	and r0, r0, r1
	strb r0, [r5, #11]
	cmp r0, #0
	beq _0802188E
	add r1, r5, #0
	add r1, r1, #43
	mov r0, #16
	b _08021892
_0802188E:
	add r1, r5, #0
	add r1, r1, #43
_08021892:
	strb r0, [r1]
	mov r0, #1
	strb r0, [r5, #23]
	add r1, r5, #0
	add r1, r1, #115
	strb r0, [r1]
	ldr r1, _08021908  @ =gUnknown_0842765C
	ldrb r0, [r5, #10]
	sub r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r4, [r0]
	bl 0x0800099C
	mov r1, #3
	and r1, r1, r0
	add r4, r4, r1
	ldrb r0, [r4]
	strb r0, [r5, #24]
	mov r0, #128
	lsl r0, r0, #1
	str r0, [r5, #12]
	mov r0, #192
	lsl r0, r0, #10
	str r0, [r5, #16]
	ldrb r0, [r5, #10]
	sub r0, r0, #1
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #1
	add r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r5, #0
	bl 0x08003870
	ldrb r0, [r5, #10]
	cmp r0, #2
	bne _0802190C
	add r1, r5, #0
	add r1, r1, #121
	mov r0, #0
	strb r0, [r1]
	add r2, r5, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #127
	and r0, r0, r1
	strb r0, [r2]
	ldrb r1, [r5, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	strb r0, [r5, #28]
	add r0, r5, #0
	bl sub_0802292C
	b _08021926
	.byte 0x00
	.byte 0x00
_08021908:
	.4byte gUnknown_0842765C
_0802190C:
	cmp r0, #3
	bne _08021920
	bl 0x08003170
	add r1, r5, #0
	add r1, r1, #120
	strb r0, [r1]
	mov r0, #161
	bl sub_0800D24C
_08021920:
	mov r0, #49
	bl sub_0800D24C
_08021926:
	add sp, sp, #128
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021860

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08021930
sub_08021930: @ 0x08021930
	push {r4,lr}
	add r4, r0, #0
	bl sub_08022D50
	ldrb r0, [r4, #10]
	cmp r0, #2
	bne _08021948
	add r0, r4, #0
	add r0, r0, #121
	ldrb r0, [r0]
	cmp r0, #15
	bne _08021A46
_08021948:
	add r0, r4, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	cmp r1, #0
	bne _080219BC
	add r0, r4, #0
	bl sub_0803CC20
	mov r1, #128
	lsl r1, r1, #6
	add r0, r4, #0
	bl 0x08003594
	cmp r0, #0
	bne _080219AC
	add r1, r4, #0
	add r1, r1, #40
	mov r0, #1
	strb r0, [r1]
	ldrb r1, [r4, #23]
	sub r1, r1, #1
	strb r1, [r4, #23]
	ldrb r0, [r4, #24]
	sub r0, r0, #1
	strb r0, [r4, #24]
	lsl r1, r1, #24
	cmp r1, #0
	bne _080219A4
	ldrb r0, [r4, #11]
	cmp r0, #0
	beq _08021996
	add r2, r4, #0
	add r2, r2, #43
	ldrb r0, [r2]
	sub r0, r0, #8
	b _0802199E
_08021996:
	add r2, r4, #0
	add r2, r2, #43
	ldrb r0, [r2]
	add r0, r0, #8
_0802199E:
	mov r1, #31
	and r0, r0, r1
	strb r0, [r2]
_080219A4:
	add r0, r4, #0
	bl sub_080229CC
	b _08021A46
_080219AC:
	ldr r0, [r4, #16]
	cmp r0, #0
	bne _08021A46
	add r1, r4, #0
	add r1, r1, #40
	mov r0, #1
	strb r0, [r1]
	b _08021A46
_080219BC:
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08021A46
	ldrb r0, [r4, #10]
	cmp r0, #2
	bne _080219D2
	add r1, r4, #0
	add r1, r1, #121
	mov r0, #0
	strb r0, [r1]
_080219D2:
	ldrb r0, [r4, #24]
	cmp r0, #0
	beq _08021A10
	ldrb r2, [r4, #23]
	cmp r2, #0
	bne _080219F2
	add r1, r4, #0
	add r1, r1, #115
	ldrb r0, [r1]
	cmp r0, #0
	beq _080219EE
	strb r2, [r1]
	mov r0, #1
	b _080219F0
_080219EE:
	mov r0, #2
_080219F0:
	strb r0, [r4, #23]
_080219F2:
	mov r0, #192
	lsl r0, r0, #10
	str r0, [r4, #16]
	ldrb r0, [r4, #10]
	sub r0, r0, #1
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #1
	add r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x08003870
	b _08021A46
_08021A10:
	mov r0, #12
	strb r0, [r4, #20]
	mov r0, #255
	strb r0, [r4, #23]
	add r0, r4, #0
	bl sub_08022CA4
	strb r0, [r4, #23]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #255
	bne _08021A30
	add r0, r4, #0
	bl sub_08022A7C
	b _08021A46
_08021A30:
	bl 0x0800099C
	ldr r2, _08021A4C  @ =gUnknown_0813BD9A
	mov r1, #7
	and r1, r1, r0
	add r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #24]
	add r0, r4, #0
	bl sub_08022BB8
_08021A46:
	pop {r4}
	pop {r0}
	bx r0
_08021A4C:
	.4byte gUnknown_0813BD9A
	THUMB_FUNC_END sub_08021930

	THUMB_FUNC_START sub_08021A50
sub_08021A50: @ 0x08021A50
	push {r4,lr}
	add r4, r0, #0
	bl sub_08022D50
	ldrb r0, [r4, #10]
	cmp r0, #2
	bne _08021A68
	add r0, r4, #0
	add r0, r0, #121
	ldrb r0, [r0]
	cmp r0, #15
	bne _08021B12
_08021A68:
	add r0, r4, #0
	bl 0x08003828
	add r2, r4, #0
	add r2, r2, #112
	ldrh r0, [r2]
	cmp r0, #0
	beq _08021A7C
	sub r0, r0, #1
	strh r0, [r2]
_08021A7C:
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	cmp r1, #0
	bne _08021ABA
	add r0, r4, #0
	bl sub_0803CC20
	mov r1, #128
	lsl r1, r1, #6
	add r0, r4, #0
	bl 0x08003594
	cmp r0, #0
	bne _08021AAA
	add r1, r4, #0
	add r1, r1, #40
	mov r0, #1
	strb r0, [r1]
	add r0, r4, #0
	bl sub_080229CC
	b _08021B0C
_08021AAA:
	ldr r0, [r4, #16]
	cmp r0, #0
	bne _08021B0C
	add r1, r4, #0
	add r1, r1, #40
	mov r0, #1
	strb r0, [r1]
	b _08021B0C
_08021ABA:
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08021B0C
	ldrh r0, [r2]
	cmp r0, #0
	beq _08021ADE
	ldrb r0, [r4, #10]
	cmp r0, #2
	bne _08021AD6
	add r1, r4, #0
	add r1, r1, #121
	mov r0, #0
	strb r0, [r1]
_08021AD6:
	add r0, r4, #0
	bl sub_08022BB8
	b _08021B0C
_08021ADE:
	ldrb r0, [r4, #24]
	sub r0, r0, #1
	strb r0, [r4, #24]
	lsl r0, r0, #24
	cmp r0, #0
	beq _08021B06
	mov r0, #13
	strb r0, [r4, #20]
	mov r0, #180
	strh r0, [r2]
	ldrb r0, [r4, #10]
	sub r0, r0, #1
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #25
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x08003870
	b _08021B0C
_08021B06:
	add r0, r4, #0
	bl sub_08022A7C
_08021B0C:
	add r0, r4, #0
	bl sub_08022C24
_08021B12:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021A50

	THUMB_FUNC_START sub_08021B18
sub_08021B18: @ 0x08021B18
	push {r4,r5,lr}
	add r4, r0, #0
	bl sub_08022D50
	add r0, r4, #0
	add r0, r0, #112
	ldrh r5, [r0]
	cmp r5, #0
	beq _08021B58
	sub r0, r0, #77
	ldrb r0, [r0]
	cmp r0, #0
	beq _08021B46
	ldrb r0, [r4, #10]
	sub r0, r0, #1
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #25
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x08003870
	b _08021B4C
_08021B46:
	add r0, r4, #0
	bl 0x08003828
_08021B4C:
	add r1, r4, #0
	add r1, r1, #112
	ldrh r0, [r1]
	sub r0, r0, #1
	strh r0, [r1]
	b _08021B86
_08021B58:
	mov r0, #12
	strb r0, [r4, #20]
	add r0, r4, #0
	bl sub_08022CA4
	strb r0, [r4, #23]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #255
	bne _08021B74
	add r0, r4, #0
	bl sub_08022A7C
	b _08021B86
_08021B74:
	ldrb r0, [r4, #10]
	cmp r0, #2
	bne _08021B80
	add r0, r4, #0
	add r0, r0, #121
	strb r5, [r0]
_08021B80:
	add r0, r4, #0
	bl sub_08022BB8
_08021B86:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021B18

	THUMB_FUNC_START sub_08021B8C
sub_08021B8C: @ 0x08021B8C
	push {r4,lr}
	add r4, r0, #0
	bl sub_08022D50
	add r0, r4, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08021BB0
	add r0, r4, #0
	add r0, r0, #114
	ldrb r0, [r0]
	strb r0, [r4, #20]
_08021BB0:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021B8C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08021BB8
sub_08021BB8: @ 0x08021BB8
	push {r4,r5,lr}
	add r5, r0, #0
	bl 0x08003828
	add r0, r5, #0
	bl sub_0803CC20
	mov r1, #50
	ldrsh r0, [r5, r1]
	mov r2, #170
	lsl r2, r2, #2
	cmp r0, r2
	ble _08021C1E
	add r1, r5, #0
	add r1, r1, #63
	mov r4, #0
	mov r0, #1
	strb r0, [r1]
	strh r2, [r5, #50]
	ldrb r0, [r5, #10]
	sub r0, r0, #1
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #25
	mov r0, #192
	lsl r0, r0, #19
	add r1, r1, r0
	lsr r1, r1, #24
	add r0, r5, #0
	bl 0x08003870
	mov r0, #8
	strb r0, [r5, #20]
	str r4, [r5, #16]
	ldrb r0, [r5, #30]
	lsr r0, r0, #4
	add r0, r0, #1
	mov r1, #15
	and r0, r0, r1
	lsl r1, r0, #4
	orr r1, r1, r0
	strb r1, [r5, #30]
	add r1, r5, #0
	add r1, r1, #112
	mov r0, #180
	lsl r0, r0, #1
	strh r0, [r1]
	mov r0, #169
	bl sub_0800D24C
	b _08021C52
_08021C1E:
	mov r1, #128
	lsl r1, r1, #6
	add r0, r5, #0
	bl 0x08003594
	cmp r0, #0
	bne _08021C52
	ldrb r0, [r5, #10]
	sub r0, r0, #1
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #25
	mov r0, #144
	lsl r0, r0, #20
	add r1, r1, r0
	lsr r1, r1, #24
	add r0, r5, #0
	bl 0x08003870
	mov r0, #90
	strb r0, [r5, #24]
	mov r0, #7
	strb r0, [r5, #20]
	add r0, r5, #0
	bl sub_080229CC
_08021C52:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021BB8

	THUMB_FUNC_START sub_08021C58
sub_08021C58: @ 0x08021C58
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r1, r4, #0
	add r1, r1, #117
	ldrb r0, [r1]
	cmp r0, #0
	beq _08021C6E
	sub r0, r0, #1
	strb r0, [r1]
_08021C6E:
	ldrb r0, [r4, #24]
	sub r0, r0, #1
	strb r0, [r4, #24]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #255
	bne _08021C82
	add r0, r4, #0
	bl sub_08022A7C
_08021C82:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021C58

	THUMB_FUNC_START sub_08021C88
sub_08021C88: @ 0x08021C88
	push {r4,r5,lr}
	add r5, r0, #0
	mov r1, #128
	lsl r1, r1, #6
	bl 0x08003594
	add r0, r5, #0
	add r0, r0, #65
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _08021CA4
	b _08021E4A
_08021CA4:
	mov r0, #127
	and r0, r0, r1
	sub r0, r0, #4
	add r4, r5, #0
	add r4, r4, #69
	cmp r0, #20
	bhi _08021D56
	lsl r0, r0, #2
	ldr r1, _08021CBC  @ =0x08021CC0
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_08021CBC:
	.4byte 0x08021CC0
	.4byte _08021D38
	.4byte _08021D56
	.4byte _08021D56
	.4byte _08021D56
	.4byte _08021D38
	.4byte _08021D56
	.4byte _08021D56
	.4byte _08021D56
	.4byte _08021D38
	.4byte _08021D56
	.4byte _08021D56
	.4byte _08021D56
	.4byte _08021D14
	.4byte _08021D56
	.4byte _08021D56
	.4byte _08021D56
	.4byte _08021D56
	.4byte _08021D56
	.4byte _08021D56
	.4byte _08021D56
	.4byte _08021D38
_08021D14:
	ldr r2, _08021DC4  @ =gUnknown_03006A30
	ldr r0, [r5, #76]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r2
	mov r1, #6
	strb r1, [r0, #12]
	ldr r0, [r5, #76]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r2
	add r0, r0, #56
	mov r1, #1
	strb r1, [r0]
_08021D38:
	add r4, r5, #0
	add r4, r4, #69
	ldrb r0, [r4]
	sub r0, r0, #1
	strb r0, [r4]
	add r1, r5, #0
	add r1, r1, #61
	mov r0, #208
	strb r0, [r1]
	add r0, r5, #0
	bl sub_08022D88
	mov r0, #45
	bl sub_0800D24C
_08021D56:
	add r1, r5, #0
	add r1, r1, #65
	mov r0, #0
	strb r0, [r1]
	ldrb r0, [r4]
	cmp r0, #0
	bne _08021E4A
	ldrb r0, [r5, #10]
	add r0, r0, #1
	strb r0, [r5, #10]
	add r0, r5, #0
	bl sub_0802C0EC
	ldr r0, _08021DC8  @ =gUnknown_03006C80
	ldrb r0, [r0, #6]
	add r0, r0, #1
	ldrb r1, [r5, #10]
	cmp r0, r1
	bne _08021D80
	mov r0, #4
	strb r0, [r5, #10]
_08021D80:
	add r0, r5, #0
	bl sub_08022AEC
	ldrb r0, [r5, #10]
	cmp r0, #3
	bhi _08021E0C
	cmp r0, #2
	bne _08021DD0
	mov r0, #19
	bl sub_0802C39C
	add r0, r5, #0
	mov r1, #8
	bl sub_0802C070
	mov r0, #21
	bl sub_0802C2DC
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #15
	and r1, r1, r0
	lsl r0, r0, #4
	orr r0, r0, r1
	strb r0, [r5, #30]
	ldr r0, _08021DCC  @ =gUnknown_0813BCB4
	str r0, [r5, #72]
	ldrb r1, [r5, #28]
	mov r0, #49
	neg r0, r0
	and r0, r0, r1
	mov r1, #32
	orr r0, r0, r1
	b _08021DFE
_08021DC4:
	.4byte gUnknown_03006A30
_08021DC8:
	.4byte gUnknown_03006C80
_08021DCC:
	.4byte gUnknown_0813BCB4
_08021DD0:
	mov r0, #21
	bl sub_0802C39C
	add r0, r5, #0
	mov r1, #9
	bl sub_0802C070
	mov r0, #22
	bl sub_0802C2DC
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #15
	and r1, r1, r0
	lsl r0, r0, #4
	orr r0, r0, r1
	strb r0, [r5, #30]
	ldr r0, _08021E08  @ =gUnknown_0813BCBC
	str r0, [r5, #72]
	ldrb r1, [r5, #28]
	mov r0, #49
	neg r0, r0
	and r0, r0, r1
_08021DFE:
	strb r0, [r5, #28]
	add r0, r5, #0
	bl sub_08022A7C
	b _08021E70
_08021E08:
	.4byte gUnknown_0813BCBC
_08021E0C:
	mov r0, #22
	bl sub_0802C39C
	add r0, r5, #0
	mov r1, #7
	bl sub_0802C070
	mov r0, #23
	bl sub_0802C2DC
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r2, #15
	add r1, r0, #0
	and r1, r1, r2
	lsl r0, r0, #4
	orr r0, r0, r1
	strb r0, [r5, #30]
	strb r2, [r5, #20]
	add r2, r5, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #127
	and r0, r0, r1
	strb r0, [r2]
	ldrb r1, [r5, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	strb r0, [r5, #28]
	b _08021E70
_08021E4A:
	add r1, r5, #0
	add r1, r1, #112
	ldrh r0, [r1]
	sub r0, r0, #1
	strh r0, [r1]
	lsl r0, r0, #16
	cmp r0, #0
	bne _08021E70
	ldrb r0, [r5, #30]
	lsr r0, r0, #4
	sub r0, r0, #1
	mov r1, #15
	and r0, r0, r1
	lsl r1, r0, #4
	orr r1, r1, r0
	strb r1, [r5, #30]
	add r0, r5, #0
	bl sub_08022A7C
_08021E70:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021C88

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08021E78
sub_08021E78: @ 0x08021E78
	push {r4,lr}
	add r4, r0, #0
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	mov r0, #9
	strb r0, [r4, #20]
	add r0, r4, #0
	mov r1, #30
	bl 0x08003870
	add r0, r4, #0
	bl sub_08022764
	add r0, r4, #0
	bl sub_08022734
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021E78

	THUMB_FUNC_START sub_08021EA8
sub_08021EA8: @ 0x08021EA8
	push {r4,lr}
	add r4, r0, #0
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	add r0, r4, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08021EF8
	mov r0, #128
	lsl r0, r0, #2
	str r0, [r4, #12]
	mov r0, #16
	strb r0, [r4, #20]
	mov r0, #32
	strb r0, [r4, #23]
	mov r1, #50
	ldrsh r0, [r4, r1]
	mov r2, #54
	ldrsh r1, [r4, r2]
	mov r3, #252
	lsl r3, r3, #1
	add r2, r3, #0
	bl 0x08003F54
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	ldr r0, _08021F04  @ =gUnknown_0813BCC4
	str r0, [r4, #72]
_08021EF8:
	add r0, r4, #0
	bl sub_08022734
	pop {r4}
	pop {r0}
	bx r0
_08021F04:
	.4byte gUnknown_0813BCC4
	THUMB_FUNC_END sub_08021EA8

	THUMB_FUNC_START sub_08021F08
sub_08021F08: @ 0x08021F08
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	bl 0x08002E64
	ldrb r0, [r4, #23]
	add r1, r0, #0
	cmp r1, #0
	beq _08021F24
	sub r0, r0, #1
	strb r0, [r4, #23]
	b _08021F2A
_08021F24:
	mov r0, #10
	strb r0, [r4, #20]
	strb r1, [r4, #23]
_08021F2A:
	add r0, r4, #0
	bl sub_08022734
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021F08

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08021F38
sub_08021F38: @ 0x08021F38
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	cmp r0, #0
	beq _08021F48
	sub r0, r0, #1
	strb r0, [r4, #23]
	b _08021F5E
_08021F48:
	mov r0, #11
	strb r0, [r4, #20]
	mov r0, #240
	strb r0, [r4, #23]
	add r0, r4, #0
	mov r1, #31
	bl 0x08003870
	add r0, r4, #0
	bl sub_08022998
_08021F5E:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021F38

	THUMB_FUNC_START sub_08021F64
sub_08021F64: @ 0x08021F64
	push {r4-r6,lr}
	add r4, r0, #0
	bl 0x08003828
	ldrb r0, [r4, #23]
	cmp r0, #0
	beq _08021FE8
	sub r0, r0, #1
	strb r0, [r4, #23]
	add r0, r4, #0
	bl 0x08002E64
	ldr r6, _08021FBC  @ =gUnknown_0813B974
	add r5, r4, #0
	add r5, r5, #43
	ldrb r0, [r5]
	lsr r0, r0, #3
	lsl r0, r0, #1
	add r0, r0, r6
	ldrh r1, [r4, #44]
	ldrh r0, [r0]
	and r0, r0, r1
	cmp r0, #0
	beq _08021FF8
	ldr r2, _08021FC0  @ =gUnknown_03006A30
	ldrb r1, [r4, #24]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r2, r2, #40
	add r0, r0, r2
	ldr r0, [r0]
	add r1, r4, #0
	bl 0x08003F4C
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldrb r1, [r5]
	cmp r1, r0
	beq _08021FC4
	mov r0, #16
	eor r0, r0, r1
	strb r0, [r5]
	b _08021FF8
_08021FBC:
	.4byte gUnknown_0813B974
_08021FC0:
	.4byte gUnknown_03006A30
_08021FC4:
	add r2, r1, #0
	add r2, r2, #8
	mov r3, #31
	and r2, r2, r3
	strb r2, [r5]
	lsr r0, r2, #3
	lsl r0, r0, #1
	add r0, r0, r6
	ldrh r1, [r4, #44]
	ldrh r0, [r0]
	and r0, r0, r1
	cmp r0, #0
	beq _08021FF8
	add r0, r2, #0
	sub r0, r0, #16
	and r0, r0, r3
	strb r0, [r5]
	b _08021FF8
_08021FE8:
	mov r0, #10
	strb r0, [r4, #20]
	mov r0, #240
	strb r0, [r4, #23]
	add r0, r4, #0
	mov r1, #32
	bl 0x08003870
_08021FF8:
	add r0, r4, #0
	bl sub_08022734
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021F64

	THUMB_FUNC_START sub_08022004
sub_08022004: @ 0x08022004
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #255
	bne _08022026
	mov r0, #10
	strb r0, [r4, #20]
	mov r0, #240
	strb r0, [r4, #23]
	add r0, r4, #0
	mov r1, #32
	bl 0x08003870
_08022026:
	add r0, r4, #0
	add r0, r0, #35
	ldrb r0, [r0]
	cmp r0, #32
	beq _08022038
	add r0, r4, #0
	mov r1, #32
	bl 0x08003870
_08022038:
	add r0, r4, #0
	bl sub_08022734
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08022004

	THUMB_FUNC_START sub_08022044
sub_08022044: @ 0x08022044
	push {r4-r6,lr}
	add r5, r0, #0
	ldrb r0, [r5, #20]
	cmp r0, #2
	beq _08022050
	b _08022328
_08022050:
	add r3, r5, #0
	add r3, r3, #65
	ldrb r1, [r3]
	mov r0, #128
	and r0, r0, r1
	add r6, r5, #0
	add r6, r6, #61
	cmp r0, #0
	bne _08022064
	b _080222C2
_08022064:
	mov r0, #240
	strb r0, [r6]
	ldr r1, [r5, #76]
	ldrb r2, [r5, #11]
	mov r0, #15
	ldrb r1, [r1, #10]
	and r0, r0, r2
	cmp r1, r0
	bne _0802216A
	ldrb r0, [r3]
	mov r2, #127
	and r2, r2, r0
	cmp r2, #24
	bls _08022082
	b _080222C2
_08022082:
	lsl r0, r2, #2
	ldr r1, _0802208C  @ =0x08022090
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_0802208C:
	.4byte 0x08022090
	.4byte _080222C2
	.4byte _080222C2
	.4byte _080222C2
	.4byte _080222C2
	.4byte _08022118
	.4byte _080222C2
	.4byte _080222C2
	.4byte _080222C2
	.4byte _08022118
	.4byte _080222C2
	.4byte _080222C2
	.4byte _080222C2
	.4byte _08022118
	.4byte _080222C2
	.4byte _080222C2
	.4byte _080222C2
	.4byte _080220F4
	.4byte _080222C2
	.4byte _080222C2
	.4byte _080222C2
	.4byte _080222C2
	.4byte _080222C2
	.4byte _080222C2
	.4byte _080222C2
	.4byte _08022118
_080220F4:
	ldr r2, _0802213C  @ =gUnknown_03006A30
	ldr r0, [r5, #76]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r2
	mov r1, #6
	strb r1, [r0, #12]
	ldr r0, [r5, #76]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r2
	add r0, r0, #56
	mov r1, #1
	strb r1, [r0]
_08022118:
	ldr r0, [r5, #84]
	add r0, r0, #61
	mov r1, #24
	strb r1, [r0]
	strb r1, [r6]
	ldr r0, [r5, #84]
	add r2, r0, #0
	add r2, r2, #69
	ldrb r1, [r2]
	ldr r0, [r5, #76]
	add r0, r0, #68
	ldrb r0, [r0]
	sub r1, r1, r0
	cmp r1, #0
	bgt _08022140
	mov r0, #0
	strb r0, [r2]
	b _08022142
_0802213C:
	.4byte gUnknown_03006A30
_08022140:
	strb r1, [r2]
_08022142:
	ldrb r0, [r5, #11]
	mov r2, #15
	mov r3, #15
	add r1, r3, #0
	and r1, r1, r0
	add r1, r1, #7
	and r1, r1, r2
	ldrb r2, [r5, #30]
	mov r0, #16
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	lsl r1, r1, #4
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r5, #30]
	mov r0, #45
	bl sub_0800D24C
	b _080222C2
_0802216A:
	ldrb r0, [r3]
	mov r2, #127
	and r2, r2, r0
	cmp r2, #16
	bls _08022176
	b _080222C2
_08022176:
	lsl r0, r2, #2
	ldr r1, _08022180  @ =0x08022184
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_08022180:
	.4byte 0x08022184
	.4byte _08022292
	.4byte _080222C2
	.4byte _080222C2
	.4byte _080222C2
	.4byte _080221C8
	.4byte _080222C2
	.4byte _080222C2
	.4byte _080222C2
	.4byte _080221C8
	.4byte _080222C2
	.4byte _080222C2
	.4byte _080222C2
	.4byte _080221C8
	.4byte _080222C2
	.4byte _080222C2
	.4byte _080222C2
	.4byte _080221C8
_080221C8:
	ldr r2, _080222F8  @ =gUnknown_03006A30
	ldr r0, [r5, #76]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r2, r2, #40
	add r0, r0, r2
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	cmp r0, #0
	bne _080221EE
	mov r1, #4
	neg r1, r1
	add r0, r2, #0
	bl sub_0802C3F0
_080221EE:
	ldr r0, [r5, #76]
	add r0, r0, #61
	mov r1, #24
	strb r1, [r0]
	ldr r0, [r5, #84]
	ldrb r0, [r0, #20]
	cmp r0, #14
	beq _080222C2
	mov r0, #96
	mov r1, #0
	mov r2, #0
	bl sub_0804C8A8
	add r4, r0, #0
	cmp r4, #0
	beq _08022292
	mov r0, #129
	strb r0, [r4, #27]
	add r1, r4, #0
	add r1, r1, #35
	mov r0, #33
	strb r0, [r1]
	ldr r0, [r5, #84]
	ldrh r0, [r0, #50]
	strh r0, [r4, #50]
	ldr r0, [r5, #84]
	ldrh r0, [r0, #54]
	add r0, r0, #1
	strh r0, [r4, #54]
	ldr r0, [r5, #84]
	ldrb r1, [r0, #30]
	lsr r1, r1, #4
	add r1, r1, #1
	mov r0, #15
	add r2, r1, #0
	and r2, r2, r0
	ldrb r3, [r4, #30]
	mov r0, #16
	neg r0, r0
	and r0, r0, r3
	orr r0, r0, r2
	mov r2, #15
	and r1, r1, r2
	lsl r1, r1, #4
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #30]
	ldr r0, [r5, #84]
	ldrb r1, [r0, #29]
	lsr r1, r1, #6
	lsl r1, r1, #6
	ldrb r3, [r4, #29]
	mov r2, #63
	add r0, r2, #0
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r4, #29]
	ldr r0, [r5, #84]
	ldrb r1, [r0, #31]
	lsr r1, r1, #6
	lsl r1, r1, #6
	ldrb r3, [r4, #31]
	add r0, r2, #0
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r4, #31]
	ldr r0, [r5, #84]
	ldrb r0, [r0, #28]
	lsr r0, r0, #6
	lsl r0, r0, #6
	ldrb r1, [r4, #28]
	and r2, r2, r1
	orr r2, r2, r0
	strb r2, [r4, #28]
	ldr r0, [r5, #84]
	add r0, r0, #32
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, r0, #32
	strb r1, [r0]
	mov r0, #120
	strb r0, [r4, #23]
_08022292:
	ldr r1, [r5, #84]
	ldrb r0, [r1, #20]
	cmp r0, #14
	beq _080222C2
	mov r0, #120
	strb r0, [r1, #23]
	ldr r1, [r5, #84]
	mov r0, #14
	strb r0, [r1, #20]
	ldr r2, _080222F8  @ =gUnknown_03006A30
	ldr r0, [r5, #76]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r2, r2, #40
	add r0, r0, r2
	ldr r0, [r0]
	add r0, r0, #61
	mov r1, #24
	strb r1, [r0]
	ldr r0, [r5, #76]
	bl 0x080023C8
_080222C2:
	ldrb r0, [r6]
	cmp r0, #0
	bne _08022314
	ldr r0, _080222FC  @ =gUnknown_03000414
	add r1, r5, #0
	add r1, r1, #115
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08022300
	ldrb r0, [r5, #11]
	mov r2, #15
	mov r3, #15
	add r1, r3, #0
	and r1, r1, r0
	add r1, r1, #7
	and r1, r1, r2
	ldrb r2, [r5, #30]
	mov r0, #16
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	lsl r1, r1, #4
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r5, #30]
	b _08022314
_080222F8:
	.4byte gUnknown_03006A30
_080222FC:
	.4byte gUnknown_03000414
_08022300:
	ldr r0, [r5, #84]
	ldrb r0, [r0, #30]
	lsl r0, r0, #28
	lsr r0, r0, #28
	add r0, r0, #1
	mov r1, #15
	and r0, r0, r1
	lsl r1, r0, #4
	orr r1, r1, r0
	strb r1, [r5, #30]
_08022314:
	ldr r0, [r5, #84]
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #0
	beq _08022320
	b _08022420
_08022320:
	add r0, r5, #0
	bl sub_08043F20
	b _08022420
_08022328:
	ldr r0, [r5, #84]
	ldrb r0, [r0, #20]
	cmp r0, #9
	bne _080223BC
	mov r3, #1
	mov r6, #1
	strb r6, [r5, #20]
	add r2, r5, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #127
	and r0, r0, r1
	strb r0, [r2]
	ldrb r1, [r5, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	orr r0, r0, r3
	strb r0, [r5, #28]
	ldr r0, [r5, #84]
	add r0, r0, #80
	ldrh r1, [r0]
	add r0, r5, #0
	add r0, r0, #80
	strh r1, [r0]
	ldrb r0, [r5, #23]
	mov r4, #15
	mov r1, #15
	and r1, r1, r0
	ldrb r0, [r5, #10]
	add r0, r0, #7
	add r1, r1, r0
	and r1, r1, r4
	ldrb r0, [r5, #30]
	mov r3, #16
	neg r3, r3
	add r2, r3, #0
	and r2, r2, r0
	orr r2, r2, r1
	strb r2, [r5, #30]
	lsl r0, r2, #28
	lsr r0, r0, #28
	cmp r0, #10
	ble _0802238A
	sub r0, r0, #4
	and r0, r0, r4
	and r2, r2, r3
	orr r2, r2, r0
	strb r2, [r5, #30]
_0802238A:
	ldrb r0, [r5, #24]
	sub r0, r0, #1
	strb r0, [r5, #24]
	mov r2, #255
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #255
	bne _08022420
	add r1, r5, #0
	add r1, r1, #116
	ldrb r0, [r1]
	cmp r0, #0
	beq _080223AE
	sub r0, r0, #1
	strb r0, [r1]
	and r0, r0, r2
	strb r0, [r5, #24]
	b _080223B0
_080223AE:
	strb r6, [r5, #24]
_080223B0:
	ldrb r0, [r5, #10]
	add r0, r0, #1
	mov r1, #3
	and r0, r0, r1
	strb r0, [r5, #10]
	b _08022420
_080223BC:
	mov r0, #2
	strb r0, [r5, #20]
	add r2, r5, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r2]
	ldr r0, _080223FC  @ =gUnknown_03000414
	add r1, r5, #0
	add r1, r1, #115
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08022400
	ldrb r0, [r5, #11]
	mov r2, #15
	mov r3, #15
	add r1, r3, #0
	and r1, r1, r0
	add r1, r1, #7
	and r1, r1, r2
	ldrb r2, [r5, #30]
	mov r0, #16
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	lsl r1, r1, #4
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r5, #30]
	b _08022414
_080223FC:
	.4byte gUnknown_03000414
_08022400:
	ldr r0, [r5, #84]
	ldrb r0, [r0, #30]
	lsl r0, r0, #28
	lsr r0, r0, #28
	add r0, r0, #1
	mov r1, #15
	and r0, r0, r1
	lsl r1, r0, #4
	orr r1, r1, r0
	strb r1, [r5, #30]
_08022414:
	ldr r0, _08022444  @ =gUnknown_08427678
	ldrb r1, [r5, #23]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r0, [r1]
	str r0, [r5, #72]
_08022420:
	ldr r0, [r5, #84]
	ldr r1, [r0, #48]
	str r1, [r5, #48]
	ldr r3, [r0, #52]
	str r3, [r5, #52]
	add r0, r0, #41
	ldrb r1, [r0]
	ldrb r2, [r5, #23]
	mov r0, #15
	and r0, r0, r2
	asr r1, r1, r0
	mov r0, #1
	and r1, r1, r0
	cmp r1, #0
	beq _08022448
	add r0, r3, #1
	str r0, [r5, #52]
	b _0802245A
_08022444:
	.4byte gUnknown_08427678
_08022448:
	add r2, r5, #0
	add r2, r2, #94
	ldrb r1, [r2]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r2]
_0802245A:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08022044

	THUMB_FUNC_START sub_08022460
sub_08022460: @ 0x08022460
	push {lr}
	mov r12, r0
	ldrb r0, [r0, #20]
	add r0, r0, #1
	mov r1, r12
	strb r0, [r1, #20]
	ldrb r1, [r1, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	mov r2, r12
	strb r0, [r2, #28]
	ldr r0, [r2, #84]
	add r0, r0, #80
	ldrh r1, [r0]
	mov r0, r12
	add r0, r0, #80
	strh r1, [r0]
	ldr r3, [r2, #84]
	ldrb r0, [r3, #30]
	lsl r0, r0, #28
	lsr r0, r0, #28
	lsl r1, r0, #4
	orr r0, r0, r1
	strb r0, [r2, #30]
	ldrb r1, [r3, #28]
	lsr r1, r1, #6
	lsl r1, r1, #6
	ldrb r2, [r2, #28]
	mov r0, #63
	and r0, r0, r2
	orr r0, r0, r1
	mov r1, r12
	strb r0, [r1, #28]
	add r3, r3, #32
	ldrb r1, [r3]
	mov r0, r12
	add r0, r0, #32
	strb r1, [r0]
	mov r2, r12
	ldr r1, [r2, #84]
	ldr r0, [r1, #48]
	str r0, [r2, #48]
	ldr r0, [r1, #52]
	str r0, [r2, #52]
	ldrb r0, [r2, #23]
	cmp r0, #0
	beq _080224EC
	mov r1, r12
	add r1, r1, #46
	mov r2, #8
	mov r0, #8
	strb r0, [r1]
	mov r1, r12
	ldrb r0, [r1, #28]
	mov r1, #48
	orr r0, r0, r1
	mov r1, r12
	strb r0, [r1, #28]
	mov r3, r12
	add r3, r3, #94
	ldrb r1, [r3]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	orr r0, r0, r2
	strb r0, [r3]
	b _080224F4
_080224EC:
	mov r1, r12
	add r1, r1, #60
	mov r0, #0
	strb r0, [r1]
_080224F4:
	ldr r0, _08022504  @ =gUnknown_0813BCB4
	mov r2, r12
	str r0, [r2, #72]
	mov r0, r12
	bl sub_08022508
	pop {r0}
	bx r0
_08022504:
	.4byte gUnknown_0813BCB4
	THUMB_FUNC_END sub_08022460

	THUMB_FUNC_START sub_08022508
sub_08022508: @ 0x08022508
	push {r4,lr}
	mov r12, r0
	ldr r1, [r0, #84]
	ldr r2, _08022568  @ =gUnknown_0813BDA2
	mov r4, r12
	add r4, r4, #114
	ldrb r0, [r4]
	lsl r0, r0, #1
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrh r1, [r1, #50]
	add r0, r0, r1
	mov r1, r12
	add r1, r1, #116
	mov r3, #0
	strh r0, [r1]
	mov r0, r12
	ldr r1, [r0, #84]
	ldrb r0, [r4]
	lsl r0, r0, #1
	add r0, r0, #1
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrh r1, [r1, #54]
	add r0, r0, r1
	mov r1, r12
	add r1, r1, #118
	strh r0, [r1]
	mov r1, r12
	strb r3, [r1, #24]
	mov r0, #192
	lsl r0, r0, #2
	str r0, [r1, #12]
	mov r0, #192
	lsl r0, r0, #10
	str r0, [r1, #16]
	mov r0, r12
	mov r1, #11
	bl 0x08003870
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08022568:
	.4byte gUnknown_0813BDA2
	THUMB_FUNC_END sub_08022508

	THUMB_FUNC_START sub_0802256C
sub_0802256C: @ 0x0802256C
	push {r4-r6,lr}
	add r5, r0, #0
	ldr r1, [r5, #84]
	ldrb r0, [r1, #20]
	cmp r0, #6
	beq _0802257C
	cmp r0, #2
	bne _08022594
_0802257C:
	ldrb r0, [r5, #23]
	cmp r0, #0
	beq _0802258C
	ldr r0, [r5, #48]
	str r0, [r1, #48]
	ldr r1, [r5, #84]
	ldr r0, [r5, #52]
	str r0, [r1, #52]
_0802258C:
	add r0, r5, #0
	bl sub_08012540
	b _0802272C
_08022594:
	add r0, r5, #0
	bl 0x08003828
	add r0, r5, #0
	add r0, r0, #41
	ldrb r1, [r0]
	cmp r1, #0
	beq _080225A6
	b _080226FA
_080225A6:
	add r0, r5, #0
	bl sub_0803CC20
	add r6, r5, #0
	add r6, r6, #116
	ldrh r0, [r5, #50]
	ldrh r4, [r6]
	sub r0, r0, r4
	add r3, r5, #0
	add r3, r3, #118
	ldrh r1, [r5, #54]
	ldrh r2, [r3]
	sub r1, r1, r2
	lsl r1, r1, #16
	lsr r2, r1, #16
	lsl r0, r0, #16
	mov r1, #192
	lsl r1, r1, #10
	add r0, r0, r1
	lsr r0, r0, #16
	cmp r0, #6
	bhi _080225DC
	strh r4, [r5, #50]
	ldrb r1, [r5, #24]
	mov r0, #1
	orr r0, r0, r1
	strb r0, [r5, #24]
_080225DC:
	lsl r0, r2, #16
	mov r2, #192
	lsl r2, r2, #10
	add r0, r0, r2
	lsr r0, r0, #16
	cmp r0, #6
	bhi _080225F6
	ldrh r0, [r3]
	strh r0, [r5, #54]
	ldrb r1, [r5, #24]
	mov r0, #2
	orr r0, r0, r1
	strb r0, [r5, #24]
_080225F6:
	ldrb r0, [r5, #24]
	cmp r0, #3
	bne _080226C4
	add r1, r5, #0
	add r1, r1, #43
	mov r0, #255
	strb r0, [r1]
	mov r1, #128
	lsl r1, r1, #6
	add r0, r5, #0
	bl 0x08003594
	cmp r0, #0
	beq _08022614
	b _08022720
_08022614:
	add r0, r5, #0
	add r0, r0, #40
	mov r1, #1
	strb r1, [r0]
	ldrb r0, [r5, #23]
	cmp r0, #0
	beq _080226AE
	mov r0, #96
	mov r1, #0
	mov r2, #0
	bl sub_0804C8A8
	add r4, r0, #0
	cmp r4, #0
	beq _080226A8
	mov r0, #129
	strb r0, [r4, #27]
	add r1, r4, #0
	add r1, r1, #35
	mov r0, #13
	strb r0, [r1]
	ldrh r0, [r5, #50]
	strh r0, [r4, #50]
	ldrh r0, [r5, #54]
	strh r0, [r4, #54]
	ldrb r1, [r5, #30]
	lsl r1, r1, #28
	lsr r1, r1, #28
	add r1, r1, #1
	mov r0, #15
	and r1, r1, r0
	ldrb r2, [r4, #30]
	mov r0, #16
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #30]
	ldrb r1, [r5, #29]
	lsr r1, r1, #6
	lsl r1, r1, #6
	ldrb r3, [r4, #29]
	mov r2, #63
	add r0, r2, #0
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r4, #29]
	ldrb r1, [r5, #31]
	lsr r1, r1, #6
	lsl r1, r1, #6
	ldrb r3, [r4, #31]
	add r0, r2, #0
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r4, #31]
	ldrb r0, [r5, #28]
	lsr r0, r0, #6
	lsl r0, r0, #6
	ldrb r1, [r4, #28]
	and r2, r2, r1
	orr r2, r2, r0
	strb r2, [r4, #28]
	add r0, r5, #0
	add r0, r0, #32
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, r0, #32
	strb r1, [r0]
	add r2, r4, #0
	add r2, r2, #94
	ldrb r1, [r2]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	strb r0, [r2]
_080226A8:
	mov r0, #167
	bl sub_0800D24C
_080226AE:
	ldr r2, [r5, #84]
	add r2, r2, #121
	ldrb r0, [r5, #11]
	mov r1, #15
	and r1, r1, r0
	mov r0, #1
	lsl r0, r0, r1
	ldrb r1, [r2]
	orr r0, r0, r1
	strb r0, [r2]
	b _08022720
_080226C4:
	mov r4, #50
	ldrsh r0, [r5, r4]
	mov r2, #54
	ldrsh r1, [r5, r2]
	mov r4, #0
	ldrsh r2, [r6, r4]
	mov r4, #0
	ldrsh r3, [r3, r4]
	bl 0x08003F54
	add r1, r5, #0
	add r1, r1, #43
	strb r0, [r1]
	ldr r0, [r5, #16]
	cmp r0, #0
	beq _080226F0
	mov r1, #128
	lsl r1, r1, #5
	add r0, r5, #0
	bl 0x08003594
	b _08022720
_080226F0:
	add r1, r5, #0
	add r1, r1, #40
	mov r0, #2
	strb r0, [r1]
	b _08022720
_080226FA:
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08022720
	ldr r0, [r5, #84]
	add r0, r0, #121
	ldrb r0, [r0]
	cmp r0, #0
	bne _08022720
	add r2, r5, #0
	add r2, r2, #114
	ldrb r0, [r2]
	add r0, r0, #1
	mov r1, #7
	and r0, r0, r1
	strb r0, [r2]
	add r0, r5, #0
	bl sub_08022508
_08022720:
	add r0, r5, #0
	bl sub_08022C24
	ldrb r1, [r5, #24]
	orr r1, r1, r0
	strb r1, [r5, #24]
_0802272C:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802256C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08022734
sub_08022734: @ 0x08022734
	ldr r2, [r0, #100]
	add r3, r0, #0
	add r3, r3, #33
	ldrb r1, [r3]
	add r1, r1, #15
	add r2, r2, #33
	strb r1, [r2]
	ldr r2, [r0, #116]
	ldrb r1, [r3]
	add r1, r1, #28
	add r2, r2, #33
	strb r1, [r2]
	ldr r2, [r0, #120]
	ldrb r1, [r3]
	add r1, r1, #41
	add r2, r2, #33
	strb r1, [r2]
	ldr r1, [r0, #124]
	ldrb r0, [r3]
	add r0, r0, #54
	add r1, r1, #33
	strb r0, [r1]
	bx lr
	THUMB_FUNC_END sub_08022734

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08022764
sub_08022764: @ 0x08022764
	push {r4-r6,lr}
	add r6, r0, #0
	mov r0, #42
	bl sub_08012468
	str r0, [r6, #100]
	cmp r0, #0
	beq _080227AC
	str r6, [r0, #84]
	ldr r1, [r6, #100]
	mov r2, #0
	mov r0, #1
	strb r0, [r1, #10]
	ldr r0, [r6, #100]
	strb r2, [r0, #23]
	ldr r2, [r6, #100]
	add r1, r2, #0
	add r1, r1, #116
	mov r0, #15
	strb r0, [r1]
	strb r0, [r2, #24]
	ldr r3, [r6, #100]
	ldrb r1, [r6, #28]
	lsr r1, r1, #6
	lsl r1, r1, #6
	ldrb r2, [r3, #28]
	mov r0, #63
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r3, #28]
	ldr r0, [r6, #100]
	add r1, r6, #0
	add r1, r1, #32
	ldrb r1, [r1]
	add r0, r0, #32
	strb r1, [r0]
_080227AC:
	mov r0, #42
	bl sub_08012468
	str r0, [r6, #116]
	cmp r0, #0
	beq _080227EE
	str r6, [r0, #84]
	ldr r0, [r6, #116]
	mov r1, #1
	strb r1, [r0, #10]
	ldr r0, [r6, #116]
	strb r1, [r0, #23]
	ldr r2, [r6, #116]
	add r1, r2, #0
	add r1, r1, #116
	mov r0, #15
	strb r0, [r1]
	strb r0, [r2, #24]
	ldr r3, [r6, #116]
	ldrb r1, [r6, #28]
	lsr r1, r1, #6
	lsl r1, r1, #6
	ldrb r2, [r3, #28]
	mov r0, #63
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r3, #28]
	ldr r0, [r6, #116]
	add r1, r6, #0
	add r1, r1, #32
	ldrb r1, [r1]
	add r0, r0, #32
	strb r1, [r0]
_080227EE:
	mov r0, #42
	bl sub_08012468
	str r0, [r6, #120]
	cmp r0, #0
	beq _08022832
	str r6, [r0, #84]
	ldr r1, [r6, #120]
	mov r0, #1
	strb r0, [r1, #10]
	ldr r1, [r6, #120]
	mov r0, #2
	strb r0, [r1, #23]
	ldr r2, [r6, #120]
	add r1, r2, #0
	add r1, r1, #116
	mov r0, #15
	strb r0, [r1]
	strb r0, [r2, #24]
	ldr r3, [r6, #120]
	ldrb r1, [r6, #28]
	lsr r1, r1, #6
	lsl r1, r1, #6
	ldrb r2, [r3, #28]
	mov r0, #63
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r3, #28]
	ldr r0, [r6, #120]
	add r1, r6, #0
	add r1, r1, #32
	ldrb r1, [r1]
	add r0, r0, #32
	strb r1, [r0]
_08022832:
	mov r0, #42
	bl sub_08012468
	str r0, [r6, #124]
	cmp r0, #0
	beq _08022876
	str r6, [r0, #84]
	ldr r1, [r6, #124]
	mov r0, #1
	strb r0, [r1, #10]
	ldr r1, [r6, #124]
	mov r0, #3
	strb r0, [r1, #23]
	ldr r2, [r6, #124]
	add r1, r2, #0
	add r1, r1, #116
	mov r0, #15
	strb r0, [r1]
	strb r0, [r2, #24]
	ldr r3, [r6, #124]
	ldrb r1, [r6, #28]
	lsr r1, r1, #6
	lsl r1, r1, #6
	ldrb r2, [r3, #28]
	mov r0, #63
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r3, #28]
	ldr r0, [r6, #124]
	add r1, r6, #0
	add r1, r1, #32
	ldrb r1, [r1]
	add r0, r0, #32
	strb r1, [r0]
_08022876:
	bl 0x0800099C
	mov r1, #15
	and r0, r0, r1
	ldr r4, [r6, #100]
	ldr r3, _08022920  @ =gUnknown_0813BCEC
	lsl r0, r0, #2
	add r1, r0, r3
	ldrb r1, [r1]
	mov r2, #128
	orr r1, r1, r2
	strb r1, [r4, #11]
	ldr r4, [r6, #116]
	add r1, r3, #1
	add r1, r0, r1
	ldrb r1, [r1]
	orr r1, r1, r2
	strb r1, [r4, #11]
	ldr r4, [r6, #120]
	add r1, r3, #2
	add r1, r0, r1
	ldrb r1, [r1]
	orr r1, r1, r2
	strb r1, [r4, #11]
	ldr r1, [r6, #124]
	add r3, r3, #3
	add r0, r0, r3
	ldrb r0, [r0]
	orr r2, r2, r0
	strb r2, [r1, #11]
	bl 0x0800099C
	mov r1, #3
	and r0, r0, r1
	ldr r1, _08022924  @ =gUnknown_03006C80
	ldrb r1, [r1]
	sub r1, r1, #1
	lsl r1, r1, #2
	add r0, r0, r1
	lsl r0, r0, #24
	ldr r2, [r6, #100]
	ldr r5, _08022928  @ =gUnknown_0813BD2C
	ldrb r4, [r2, #11]
	mov r3, #15
	add r1, r3, #0
	and r1, r1, r4
	lsr r0, r0, #22
	add r1, r1, r0
	add r1, r1, r5
	ldrb r1, [r1]
	add r2, r2, #115
	strb r1, [r2]
	ldr r2, [r6, #116]
	ldrb r4, [r2, #11]
	add r1, r3, #0
	and r1, r1, r4
	add r1, r1, r0
	add r1, r1, r5
	ldrb r1, [r1]
	add r2, r2, #115
	strb r1, [r2]
	ldr r2, [r6, #120]
	ldrb r4, [r2, #11]
	add r1, r3, #0
	and r1, r1, r4
	add r1, r1, r0
	add r1, r1, r5
	ldrb r1, [r1]
	add r2, r2, #115
	strb r1, [r2]
	ldr r1, [r6, #124]
	ldrb r2, [r1, #11]
	and r3, r3, r2
	add r3, r3, r0
	add r3, r3, r5
	ldrb r0, [r3]
	add r1, r1, #115
	strb r0, [r1]
	mov r0, #163
	bl sub_0800D24C
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08022920:
	.4byte gUnknown_0813BCEC
_08022924:
	.4byte gUnknown_03006C80
_08022928:
	.4byte gUnknown_0813BD2C
	THUMB_FUNC_END sub_08022764

	THUMB_FUNC_START sub_0802292C
sub_0802292C: @ 0x0802292C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r7, r0, #0
	bl 0x0800099C
	add r6, r0, #0
	mov r0, #3
	and r6, r6, r0
	bl 0x0800099C
	add r5, r0, #0
	mov r0, #1
	and r5, r5, r0
	mov r4, #0
_0802294A:
	mov r0, #42
	bl sub_08012468
	add r2, r0, #0
	cmp r2, #0
	beq _0802297C
	mov r3, #0
	mov r0, #1
	strb r0, [r2, #10]
	mov r1, #64
	add r0, r4, #0
	orr r0, r0, r1
	strb r0, [r2, #11]
	lsl r0, r4, #1
	add r0, r5, r0
	add r1, r2, #0
	add r1, r1, #114
	strb r0, [r1]
	str r7, [r2, #84]
	cmp r4, r6
	bne _0802297A
	mov r0, #255
	strb r0, [r2, #23]
	b _0802297C
_0802297A:
	strb r3, [r2, #23]
_0802297C:
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #3
	bls _0802294A
	mov r0, #161
	bl sub_0800D24C
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802292C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08022998
sub_08022998: @ 0x08022998
	push {r4,lr}
	add r4, r0, #0
	mov r1, #0
	mov r2, #0
	bl sub_0803D9F4
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _080229C8  @ =gUnknown_03006A30
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #4
	add r2, r2, #40
	add r1, r1, r2
	ldr r0, [r1]
	add r1, r4, #0
	bl 0x08003F4C
	add r4, r4, #43
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080229C8:
	.4byte gUnknown_03006A30
	THUMB_FUNC_END sub_08022998

	THUMB_FUNC_START sub_080229CC
sub_080229CC: @ 0x080229CC
	push {r4,r5,lr}
	add r5, r0, #0
	ldrb r0, [r5, #10]
	cmp r0, #2
	bne _080229DE
	ldrb r0, [r5, #28]
	lsl r0, r0, #30
	cmp r0, #0
	beq _08022A74
_080229DE:
	mov r0, #96
	mov r1, #0
	mov r2, #0
	bl sub_0804C8A8
	add r4, r0, #0
	cmp r4, #0
	beq _08022A6E
	mov r0, #129
	strb r0, [r4, #27]
	ldrb r1, [r5, #10]
	sub r1, r1, #1
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #1
	add r0, r0, #3
	add r1, r4, #0
	add r1, r1, #35
	strb r0, [r1]
	ldrh r0, [r5, #50]
	strh r0, [r4, #50]
	ldrh r0, [r5, #54]
	strh r0, [r4, #54]
	ldrb r1, [r5, #30]
	lsl r1, r1, #28
	lsr r1, r1, #28
	add r1, r1, #1
	mov r0, #15
	and r1, r1, r0
	ldrb r2, [r4, #30]
	mov r0, #16
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #30]
	ldrb r1, [r5, #29]
	lsr r1, r1, #6
	lsl r1, r1, #6
	ldrb r3, [r4, #29]
	mov r2, #63
	add r0, r2, #0
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r4, #29]
	ldrb r1, [r5, #31]
	lsr r1, r1, #6
	lsl r1, r1, #6
	ldrb r3, [r4, #31]
	add r0, r2, #0
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r4, #31]
	ldrb r0, [r5, #28]
	lsr r0, r0, #6
	lsl r0, r0, #6
	ldrb r1, [r4, #28]
	and r2, r2, r1
	orr r2, r2, r0
	strb r2, [r4, #28]
	add r0, r5, #0
	add r0, r0, #32
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, r0, #32
	strb r1, [r0]
	add r2, r4, #0
	add r2, r2, #94
	ldrb r1, [r2]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	strb r0, [r2]
_08022A6E:
	mov r0, #167
	bl sub_0800D24C
_08022A74:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080229CC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08022A7C
sub_08022A7C: @ 0x08022A7C
	push {r4,lr}
	add r4, r0, #0
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	add r1, r4, #0
	add r1, r1, #63
	mov r3, #0
	mov r0, #61
	strb r0, [r1]
	add r2, r4, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r2]
	add r0, r4, #0
	add r0, r0, #117
	strb r3, [r0]
	mov r0, #192
	lsl r0, r0, #2
	str r0, [r4, #12]
	mov r0, #192
	lsl r0, r0, #10
	str r0, [r4, #16]
	mov r0, #2
	strb r0, [r4, #20]
	mov r0, #32
	strb r0, [r4, #23]
	strb r3, [r4, #24]
	ldrb r0, [r4, #10]
	cmp r0, #1
	bls _08022ADE
	sub r0, r0, #1
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #25
	mov r0, #128
	lsl r0, r0, #18
	add r1, r1, r0
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x08003870
	b _08022AE6
_08022ADE:
	add r0, r4, #0
	mov r1, #2
	bl 0x08003870
_08022AE6:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08022A7C

	THUMB_FUNC_START sub_08022AEC
sub_08022AEC: @ 0x08022AEC
	ldr r2, _08022B08  @ =gUnknown_08427668
	ldr r1, _08022B0C  @ =gUnknown_03006C80
	ldrb r1, [r1]
	sub r1, r1, #1
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r2, [r1]
	ldrb r1, [r0, #10]
	add r1, r1, r2
	sub r1, r1, #1
	ldrb r1, [r1]
	add r0, r0, #69
	strb r1, [r0]
	bx lr
_08022B08:
	.4byte gUnknown_08427668
_08022B0C:
	.4byte gUnknown_03006C80
	THUMB_FUNC_END sub_08022AEC

	THUMB_FUNC_START sub_08022B10
sub_08022B10: @ 0x08022B10
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r7, r0, #0
	ldr r0, [r7, #124]
	cmp r0, #0
	beq _08022BA2
	add r2, r7, #0
	add r2, r2, #116
	ldrb r0, [r2]
	add r1, r2, #0
	cmp r0, #4
	bls _08022B32
	mov r0, #4
	strb r0, [r1]
_08022B32:
	mov r5, #0
	ldr r3, _08022BB0  @ =gUnknown_0813BD6C
	ldrb r0, [r2]
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #1
	add r1, r1, r3
	ldrb r0, [r1]
	cmp r0, #255
	beq _08022BA2
	mov r8, r3
	add r6, r2, #0
	ldr r0, _08022BB4  @ =0x0000FFF0
	mov r9, r0
_08022B4E:
	ldrb r0, [r6]
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #1
	add r1, r5, r1
	add r1, r1, r8
	ldrb r1, [r1]
	add r0, r7, #0
	bl sub_0804CABC
	add r4, r0, #0
	cmp r4, #0
	beq _08022B8A
	ldrh r0, [r4, #50]
	sub r0, r0, #8
	strh r0, [r4, #50]
	mov r0, r9
	strh r0, [r4, #58]
	bl 0x0800099C
	mov r1, #7
	and r0, r0, r1
	add r0, r0, #20
	mov r1, #128
	orr r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	mov r0, #1
	strb r0, [r4, #11]
_08022B8A:
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldrb r1, [r6]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #1
	add r0, r5, r0
	add r0, r0, r8
	ldrb r0, [r0]
	cmp r0, #255
	bne _08022B4E
_08022BA2:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08022BB0:
	.4byte gUnknown_0813BD6C
_08022BB4:
	.4byte 0x0000FFF0
	THUMB_FUNC_END sub_08022B10

	THUMB_FUNC_START sub_08022BB8
sub_08022BB8: @ 0x08022BB8
	push {r4,lr}
	add r4, r0, #0
	bl 0x0800099C
	ldr r2, _08022C1C  @ =gUnknown_0813BD8A
	mov r1, #7
	and r1, r1, r0
	lsl r1, r1, #1
	add r1, r1, r2
	ldrh r1, [r1]
	add r0, r4, #0
	add r0, r0, #112
	strh r1, [r0]
	ldr r2, _08022C20  @ =gUnknown_03006A30
	ldrb r1, [r4, #23]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r2, r2, #40
	add r0, r0, r2
	ldr r1, [r0]
	add r0, r4, #0
	bl 0x08003F4C
	mov r1, #24
	and r1, r1, r0
	add r0, r4, #0
	add r0, r0, #43
	strb r1, [r0]
	mov r0, #128
	lsl r0, r0, #1
	str r0, [r4, #12]
	mov r0, #128
	lsl r0, r0, #10
	str r0, [r4, #16]
	ldrb r0, [r4, #10]
	sub r0, r0, #1
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #1
	add r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x08003870
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08022C1C:
	.4byte gUnknown_0813BD8A
_08022C20:
	.4byte gUnknown_03006A30
	THUMB_FUNC_END sub_08022BB8

	THUMB_FUNC_START sub_08022C24
sub_08022C24: @ 0x08022C24
	push {r4,r5,lr}
	add r4, r0, #0
	mov r5, #0
	mov r0, #50
	ldrsh r1, [r4, r0]
	ldr r0, _08022C3C  @ =0x00000197
	cmp r1, r0
	bgt _08022C40
	add r0, r0, #1
	strh r0, [r4, #50]
	b _08022C6C
	.byte 0x00
	.byte 0x00
_08022C3C:
	.4byte 0x00000197
_08022C40:
	mov r0, #148
	lsl r0, r0, #2
	cmp r1, r0
	ble _08022C6E
	ldrb r1, [r4, #11]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	bne _08022C5E
	ldr r0, [r4, #56]
	cmp r0, #0
	bne _08022C5E
	add r0, r4, #0
	bl sub_08022A7C
_08022C5E:
	mov r1, #50
	ldrsh r0, [r4, r1]
	mov r1, #166
	lsl r1, r1, #2
	cmp r0, r1
	ble _08022C6E
	strh r1, [r4, #50]
_08022C6C:
	mov r5, #1
_08022C6E:
	mov r0, #54
	ldrsh r1, [r4, r0]
	ldr r0, _08022C84  @ =0x000001A7
	cmp r1, r0
	bgt _08022C88
	add r0, r0, #1
	strh r0, [r4, #54]
	mov r0, #2
	orr r5, r5, r0
	b _08022C9A
	.byte 0x00
	.byte 0x00
_08022C84:
	.4byte 0x000001A7
_08022C88:
	mov r0, #146
	lsl r0, r0, #2
	cmp r1, r0
	ble _08022C9A
	strh r0, [r4, #54]
	mov r0, #2
	orr r5, r5, r0
	lsl r0, r5, #24
	lsr r5, r0, #24
_08022C9A:
	add r0, r5, #0
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08022C24

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08022CA4
sub_08022CA4: @ 0x08022CA4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r5, r0, #0
	ldr r6, _08022D10  @ =0x0000FFFF
	mov r4, #255
	mov r3, #0
	ldr r0, _08022D14  @ =gUnknown_03006C80
	ldrb r0, [r0]
	cmp r3, r0
	bcs _08022D40
	ldrb r1, [r5, #23]
	mov r12, r1
	ldr r7, _08022D18  @ =gUnknown_03006A58
	mov r9, r7
	ldr r1, _08022D1C  @ =0x0000024F
	mov r8, r1
	mov r10, r0
_08022CCC:
	cmp r12, r3
	beq _08022D36
	lsl r0, r3, #3
	add r0, r0, r3
	lsl r0, r0, #4
	add r0, r0, r9
	ldr r1, [r0]
	ldrh r2, [r1, #50]
	mov r7, #50
	ldrsh r0, [r1, r7]
	cmp r0, r8
	bgt _08022D36
	ldrh r0, [r5, #50]
	sub r0, r2, r0
	lsl r0, r0, #16
	neg r0, r0
	lsr r2, r0, #16
	ldrh r0, [r1, #54]
	ldrh r1, [r5, #54]
	sub r0, r0, r1
	lsl r0, r0, #16
	neg r0, r0
	lsr r0, r0, #16
	cmp r4, #255
	bne _08022D20
	lsl r1, r2, #16
	asr r1, r1, #16
	lsl r0, r0, #16
	asr r0, r0, #16
	add r1, r1, r0
	lsl r1, r1, #16
	lsr r6, r1, #16
	b _08022D34
	.byte 0x00
	.byte 0x00
_08022D10:
	.4byte 0x0000FFFF
_08022D14:
	.4byte gUnknown_03006C80
_08022D18:
	.4byte gUnknown_03006A58
_08022D1C:
	.4byte 0x0000024F
_08022D20:
	lsl r1, r2, #16
	asr r1, r1, #16
	lsl r0, r0, #16
	asr r0, r0, #16
	add r1, r1, r0
	lsl r1, r1, #16
	lsr r0, r1, #16
	cmp r6, r0
	bls _08022D36
	add r6, r0, #0
_08022D34:
	add r4, r3, #0
_08022D36:
	add r0, r3, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
	cmp r3, r10
	bcc _08022CCC
_08022D40:
	add r0, r4, #0
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08022CA4

	THUMB_FUNC_START sub_08022D50
sub_08022D50: @ 0x08022D50
	add r2, r0, #0
	ldrb r0, [r2, #10]
	cmp r0, #3
	bne _08022D86
	ldr r0, _08022D78  @ =gUnknown_03000414
	add r1, r2, #0
	add r1, r1, #120
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08022D7C
	ldrb r0, [r2, #28]
	mov r1, #4
	neg r1, r1
	and r1, r1, r0
	mov r0, #1
	orr r1, r1, r0
	strb r1, [r2, #28]
	b _08022D86
	.byte 0x00
	.byte 0x00
_08022D78:
	.4byte gUnknown_03000414
_08022D7C:
	ldrb r1, [r2, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	strb r0, [r2, #28]
_08022D86:
	bx lr
	THUMB_FUNC_END sub_08022D50

	THUMB_FUNC_START sub_08022D88
sub_08022D88: @ 0x08022D88
	push {r4-r7,lr}
	add r7, r0, #0
	mov r5, #0
	mov r6, #31
_08022D90:
	mov r0, #15
	mov r1, #13
	mov r2, #32
	bl sub_0804C8A8
	add r4, r0, #0
	cmp r4, #0
	beq _08022DCA
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0803D3D0
	ldrh r0, [r4, #54]
	sub r0, r0, #16
	strh r0, [r4, #54]
	bl 0x0800099C
	and r0, r0, r6
	lsl r0, r0, #8
	str r0, [r4, #12]
	bl 0x0800099C
	and r0, r0, r6
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	add r0, r4, #0
	bl sub_0803CC20
_08022DCA:
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #3
	bls _08022D90
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08022D88

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08022DDC
sub_08022DDC: @ 0x08022DDC
	push {r4,lr}
	add r4, r0, #0
	ldr r0, _08022E04  @ =gUnknown_03000208
	ldrh r0, [r0, #2]
	cmp r0, #1
	bls _08022DEE
	add r0, r4, #0
	bl 0x080095A4
_08022DEE:
	ldr r0, _08022E08  @ =gUnknown_0813BDB4
	ldrb r1, [r4, #20]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
_08022E04:
	.4byte gUnknown_03000208
_08022E08:
	.4byte gUnknown_0813BDB4
	THUMB_FUNC_END sub_08022DDC

	THUMB_FUNC_START sub_08022E0C
sub_08022E0C: @ 0x08022E0C
	push {r4,lr}
	add r4, r0, #0
	bl 0x0800099C
	strb r0, [r4, #24]
	add r1, r4, #0
	add r1, r1, #46
	mov r0, #6
	strb r0, [r1]
	ldr r0, _08022E68  @ =gUnknown_0813991C
	str r0, [r4, #72]
	ldrh r1, [r4, #50]
	add r0, r4, #0
	add r0, r0, #124
	strh r1, [r0]
	ldrh r0, [r4, #54]
	add r1, r4, #0
	add r1, r1, #126
	strh r0, [r1]
	add r0, r4, #0
	add r0, r0, #82
	ldrb r0, [r0]
	ldrb r1, [r4, #11]
	bl sub_08012F84
	str r0, [r4, #112]
	str r0, [r4, #116]
	add r0, r4, #0
	bl sub_08023010
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
	mov r2, #1
	mov r0, #1
	strb r0, [r4, #20]
	ldrb r1, [r4, #28]
	sub r0, r0, #5
	and r0, r0, r1
	orr r0, r0, r2
	strb r0, [r4, #28]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08022E68:
	.4byte gUnknown_0813991C
	THUMB_FUNC_END sub_08022E0C

	THUMB_FUNC_START sub_08022E6C
sub_08022E6C: @ 0x08022E6C
	push {lr}
	ldr r2, _08022E80  @ =gUnknown_0813BDBC
	ldrb r1, [r0, #21]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08022E80:
	.4byte gUnknown_0813BDBC
	THUMB_FUNC_END sub_08022E6C

	THUMB_FUNC_START sub_08022E84
sub_08022E84: @ 0x08022E84
	push {r4,lr}
	add r4, r0, #0
	bl sub_0803CC20
	add r0, r4, #0
	add r0, r0, #122
	ldrh r1, [r0]
	mov r2, #54
	ldrsh r0, [r4, r2]
	cmp r1, r0
	blt _08022EA2
	strh r1, [r4, #54]
	add r0, r4, #0
	bl sub_08023010
_08022EA2:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08022E84

	THUMB_FUNC_START sub_08022EA8
sub_08022EA8: @ 0x08022EA8
	push {r4,lr}
	add r4, r0, #0
	bl sub_0803CC20
	add r2, r4, #0
	add r2, r2, #122
	ldrh r1, [r2]
	mov r3, #54
	ldrsh r0, [r4, r3]
	cmp r1, r0
	blt _08022ED8
	add r0, r4, #0
	add r0, r0, #120
	ldrh r1, [r0]
	mov r3, #50
	ldrsh r0, [r4, r3]
	cmp r1, r0
	bgt _08022ED8
	strh r1, [r4, #50]
	ldrh r0, [r2]
	strh r0, [r4, #54]
	add r0, r4, #0
	bl sub_08023010
_08022ED8:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08022EA8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08022EE0
sub_08022EE0: @ 0x08022EE0
	push {r4,lr}
	add r4, r0, #0
	bl sub_0803CC20
	add r0, r4, #0
	add r0, r0, #120
	ldrh r1, [r0]
	mov r2, #50
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bgt _08022EFE
	strh r1, [r4, #50]
	add r0, r4, #0
	bl sub_08023010
_08022EFE:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08022EE0

	THUMB_FUNC_START sub_08022F04
sub_08022F04: @ 0x08022F04
	push {r4,lr}
	add r4, r0, #0
	bl sub_0803CC20
	add r2, r4, #0
	add r2, r2, #122
	ldrh r1, [r2]
	mov r3, #54
	ldrsh r0, [r4, r3]
	cmp r1, r0
	bgt _08022F34
	add r0, r4, #0
	add r0, r0, #120
	ldrh r1, [r0]
	mov r3, #50
	ldrsh r0, [r4, r3]
	cmp r1, r0
	bgt _08022F34
	strh r1, [r4, #50]
	ldrh r0, [r2]
	strh r0, [r4, #54]
	add r0, r4, #0
	bl sub_08023010
_08022F34:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08022F04

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08022F3C
sub_08022F3C: @ 0x08022F3C
	push {r4,lr}
	add r4, r0, #0
	bl sub_0803CC20
	add r0, r4, #0
	add r0, r0, #122
	ldrh r1, [r0]
	mov r2, #54
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bgt _08022F5A
	strh r1, [r4, #54]
	add r0, r4, #0
	bl sub_08023010
_08022F5A:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08022F3C

	THUMB_FUNC_START sub_08022F60
sub_08022F60: @ 0x08022F60
	push {r4,lr}
	add r4, r0, #0
	bl sub_0803CC20
	add r2, r4, #0
	add r2, r2, #122
	ldrh r1, [r2]
	mov r3, #54
	ldrsh r0, [r4, r3]
	cmp r1, r0
	bgt _08022F90
	add r0, r4, #0
	add r0, r0, #120
	ldrh r1, [r0]
	mov r3, #50
	ldrsh r0, [r4, r3]
	cmp r1, r0
	blt _08022F90
	strh r1, [r4, #50]
	ldrh r0, [r2]
	strh r0, [r4, #54]
	add r0, r4, #0
	bl sub_08023010
_08022F90:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08022F60

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08022F98
sub_08022F98: @ 0x08022F98
	push {r4,lr}
	add r4, r0, #0
	bl sub_0803CC20
	add r0, r4, #0
	add r0, r0, #120
	ldrh r1, [r0]
	mov r2, #50
	ldrsh r0, [r4, r2]
	cmp r1, r0
	blt _08022FB6
	strh r1, [r4, #50]
	add r0, r4, #0
	bl sub_08023010
_08022FB6:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08022F98

	THUMB_FUNC_START sub_08022FBC
sub_08022FBC: @ 0x08022FBC
	push {r4,lr}
	add r4, r0, #0
	bl sub_0803CC20
	add r2, r4, #0
	add r2, r2, #122
	ldrh r1, [r2]
	mov r3, #54
	ldrsh r0, [r4, r3]
	cmp r1, r0
	blt _08022FEC
	add r0, r4, #0
	add r0, r0, #120
	ldrh r1, [r0]
	mov r3, #50
	ldrsh r0, [r4, r3]
	cmp r1, r0
	blt _08022FEC
	strh r1, [r4, #50]
	ldrh r0, [r2]
	strh r0, [r4, #54]
	add r0, r4, #0
	bl sub_08023010
_08022FEC:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08022FBC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08022FF4
sub_08022FF4: @ 0x08022FF4
	push {lr}
	add r1, r0, #0
	ldrb r0, [r1, #23]
	sub r0, r0, #1
	strb r0, [r1, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0802300A
	add r0, r1, #0
	bl sub_08023010
_0802300A:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08022FF4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08023010
sub_08023010: @ 0x08023010
	push {r4,lr}
	add r2, r0, #0
	ldr r0, [r2, #112]
	ldrh r1, [r0]
	ldr r0, _0802303C  @ =0x0000FFFF
	cmp r1, r0
	bne _08023022
	ldr r0, [r2, #116]
	str r0, [r2, #112]
_08023022:
	ldr r3, [r2, #112]
	ldrh r1, [r3]
	mov r0, #128
	lsl r0, r0, #8
	and r0, r0, r1
	add r4, r3, #0
	cmp r0, #0
	beq _08023040
	mov r0, #8
	strb r0, [r2, #21]
	ldrh r0, [r4, #2]
	strb r0, [r2, #23]
	b _080230EC
_0802303C:
	.4byte 0x0000FFFF
_08023040:
	add r0, r2, #0
	add r0, r0, #43
	strb r1, [r0]
	add r3, r4, #2
	lsl r0, r1, #24
	lsr r0, r0, #26
	strb r0, [r2, #21]
	ldrb r0, [r2, #21]
	cmp r0, #7
	bhi _080230E0
	lsl r0, r0, #2
	ldr r1, _08023060  @ =0x08023064
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_08023060:
	.4byte 0x08023064
	.4byte _08023090
	.4byte _08023084
	.4byte _080230A8
	.4byte _0802309C
	.4byte _080230BC
	.4byte _080230B0
	.4byte _080230D4
	.4byte _080230C8
_08023084:
	ldrh r0, [r3]
	ldrh r1, [r2, #50]
	add r0, r0, r1
	add r1, r2, #0
	add r1, r1, #120
	strh r0, [r1]
_08023090:
	ldrh r0, [r2, #54]
	ldrh r1, [r3]
	sub r0, r0, r1
	add r1, r2, #0
	add r1, r1, #122
	b _080230DE
_0802309C:
	ldrh r0, [r3]
	ldrh r1, [r2, #54]
	add r0, r0, r1
	add r1, r2, #0
	add r1, r1, #122
	strh r0, [r1]
_080230A8:
	ldrh r0, [r3]
	ldrh r1, [r2, #50]
	add r0, r0, r1
	b _080230DA
_080230B0:
	ldrh r0, [r2, #50]
	ldrh r1, [r3]
	sub r0, r0, r1
	add r1, r2, #0
	add r1, r1, #120
	strh r0, [r1]
_080230BC:
	ldrh r0, [r3]
	ldrh r1, [r2, #54]
	add r0, r0, r1
	add r1, r2, #0
	add r1, r1, #122
	b _080230DE
_080230C8:
	ldrh r0, [r2, #54]
	ldrh r1, [r3]
	sub r0, r0, r1
	add r1, r2, #0
	add r1, r1, #122
	strh r0, [r1]
_080230D4:
	ldrh r0, [r2, #50]
	ldrh r1, [r3]
	sub r0, r0, r1
_080230DA:
	add r1, r2, #0
	add r1, r1, #120
_080230DE:
	strh r0, [r1]
_080230E0:
	add r3, r3, #2
	ldrh r0, [r3]
	ldr r4, [r2, #112]
	cmp r0, #0
	beq _080230EC
	str r0, [r2, #12]
_080230EC:
	add r0, r4, #0
	add r0, r0, #8
	str r0, [r2, #112]
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08023010

	THUMB_FUNC_START sub_080230F8
sub_080230F8: @ 0x080230F8
	push {lr}
	ldr r1, _08023104  @ =gUnknown_0813BDE0
	bl 0x08009924
	pop {r0}
	bx r0
_08023104:
	.4byte gUnknown_0813BDE0
	THUMB_FUNC_END sub_080230F8

	THUMB_FUNC_START sub_08023108
sub_08023108: @ 0x08023108
	push {lr}
	ldr r2, _0802311C  @ =gUnknown_0813BDF8
	ldrb r1, [r0, #10]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0802311C:
	.4byte gUnknown_0813BDF8
	THUMB_FUNC_END sub_08023108

	THUMB_FUNC_START sub_08023120
sub_08023120: @ 0x08023120
	push {lr}
	ldr r1, _0802312C  @ =gUnknown_0813BDE0
	bl 0x080098A0
	pop {r0}
	bx r0
_0802312C:
	.4byte gUnknown_0813BDE0
	THUMB_FUNC_END sub_08023120

	THUMB_FUNC_START sub_08023130
sub_08023130: @ 0x08023130
	push {r4,lr}
	add r4, r0, #0
	ldr r1, _08023174  @ =gUnknown_0813BE0C
	ldrb r0, [r4, #20]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
	add r0, r4, #0
	bl 0x08003828
	add r2, r4, #0
	add r2, r2, #41
	ldrb r1, [r2]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0802316E
	mov r0, #0
	strb r0, [r2]
	bl 0x0800099C
	add r2, r4, #0
	add r2, r2, #40
	mov r1, #56
	and r0, r0, r1
	ldrb r1, [r2]
	add r0, r0, r1
	strb r0, [r2]
_0802316E:
	pop {r4}
	pop {r0}
	bx r0
_08023174:
	.4byte gUnknown_0813BE0C
	THUMB_FUNC_END sub_08023130

	THUMB_FUNC_START sub_08023178
sub_08023178: @ 0x08023178
	push {r4,r5,lr}
	add r5, r0, #0
	bl sub_0803DF84
	add r0, r5, #0
	bl sub_08023A38
	lsl r0, r0, #24
	cmp r0, #0
	beq _080231C4
	mov r4, #1
	mov r3, #1
	strb r3, [r5, #20]
	mov r0, #30
	strb r0, [r5, #23]
	ldrb r2, [r5, #28]
	mov r1, #4
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	orr r0, r0, r4
	strb r0, [r5, #28]
	ldr r0, _080231CC  @ =gUnknown_0813C0B0
	str r0, [r5, #72]
	add r0, r5, #0
	add r0, r0, #106
	strb r3, [r0]
	add r2, r5, #0
	add r2, r2, #94
	ldrb r0, [r2]
	and r1, r1, r0
	strb r1, [r2]
	add r0, r5, #0
	mov r1, #0
	bl 0x08003870
	ldr r0, _080231D0  @ =gUnknown_03000450
	str r5, [r0]
_080231C4:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080231CC:
	.4byte gUnknown_0813C0B0
_080231D0:
	.4byte gUnknown_03000450
	THUMB_FUNC_END sub_08023178

	THUMB_FUNC_START sub_080231D4
sub_080231D4: @ 0x080231D4
	push {r4,lr}
	add r4, r0, #0
	bl sub_0803DF84
	add r0, r4, #0
	add r0, r0, #125
	ldrb r0, [r0]
	cmp r0, #7
	bne _08023222
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08023222
	mov r0, #2
	strb r0, [r4, #20]
	mov r0, #180
	strb r0, [r4, #23]
	add r1, r4, #0
	add r1, r1, #110
	mov r0, #150
	lsl r0, r0, #3
	strh r0, [r1]
	mov r0, #206
	lsl r0, r0, #1
	bl sub_0800D24C
	ldr r3, _08023228  @ =gUnknown_03000450
	ldr r2, _0802322C  @ =gUnknown_03006A30
	ldr r0, _08023230  @ =gUnknown_03000414
	ldrb r1, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r2, r2, #40
	add r0, r0, r2
	ldr r0, [r0]
	str r0, [r3]
_08023222:
	pop {r4}
	pop {r0}
	bx r0
_08023228:
	.4byte gUnknown_03000450
_0802322C:
	.4byte gUnknown_03006A30
_08023230:
	.4byte gUnknown_03000414
	THUMB_FUNC_END sub_080231D4

	THUMB_FUNC_START sub_08023234
sub_08023234: @ 0x08023234
	push {r4,lr}
	add r4, r0, #0
	add r0, r0, #124
	ldrb r0, [r0]
	cmp r0, #0
	bne _080232B2
	ldrb r0, [r4, #23]
	cmp r0, #0
	beq _0802325C
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #90
	bne _080232CE
	add r0, r4, #0
	mov r1, #29
	bl 0x08003870
	b _080232CE
_0802325C:
	ldr r0, _0802328C  @ =gUnknown_03006C80
	ldrb r0, [r0, #6]
	cmp r0, #1
	beq _08023290
	add r0, r4, #0
	bl sub_08023BAC
	lsl r0, r0, #24
	cmp r0, #0
	beq _080232CE
	mov r0, #3
	strb r0, [r4, #20]
	mov r0, #60
	strb r0, [r4, #23]
	ldr r0, [r4, #52]
	add r0, r0, #1
	str r0, [r4, #52]
	add r1, r4, #0
	add r1, r1, #110
	mov r0, #225
	lsl r0, r0, #4
	strh r0, [r1]
	b _080232CE
	.byte 0x00
	.byte 0x00
_0802328C:
	.4byte gUnknown_03006C80
_08023290:
	add r0, r4, #0
	bl sub_08023D14
	lsl r0, r0, #24
	cmp r0, #0
	beq _080232CE
	mov r0, #5
	strb r0, [r4, #20]
	ldr r0, [r4, #52]
	add r0, r0, #1
	str r0, [r4, #52]
	add r1, r4, #0
	add r1, r1, #110
	mov r0, #150
	lsl r0, r0, #3
	strh r0, [r1]
	b _080232CE
_080232B2:
	add r1, r4, #0
	add r1, r1, #110
	ldrh r0, [r1]
	sub r0, r0, #1
	strh r0, [r1]
	lsl r0, r0, #16
	cmp r0, #0
	bne _080232CE
	mov r0, #150
	lsl r0, r0, #3
	strh r0, [r1]
	mov r0, #11
	bl sub_0800D6A4
_080232CE:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08023234

	THUMB_FUNC_START sub_080232D4
sub_080232D4: @ 0x080232D4
	add r1, r0, #0
	add r0, r0, #125
	ldrb r0, [r0]
	cmp r0, #3
	bne _080232E6
	mov r0, #4
	strb r0, [r1, #20]
	mov r0, #180
	strb r0, [r1, #23]
_080232E6:
	bx lr
	THUMB_FUNC_END sub_080232D4

	THUMB_FUNC_START sub_080232E8
sub_080232E8: @ 0x080232E8
	push {r4,lr}
	add r4, r0, #0
	add r0, r0, #124
	ldrb r0, [r0]
	cmp r0, #0
	bne _08023332
	ldrb r0, [r4, #23]
	cmp r0, #0
	beq _08023310
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #90
	bne _08023366
	add r0, r4, #0
	mov r1, #29
	bl 0x08003870
	b _08023366
_08023310:
	add r0, r4, #0
	bl sub_08023D14
	lsl r0, r0, #24
	cmp r0, #0
	beq _08023366
	mov r0, #5
	strb r0, [r4, #20]
	ldr r0, [r4, #52]
	add r0, r0, #1
	str r0, [r4, #52]
	add r1, r4, #0
	add r1, r1, #110
	mov r0, #150
	lsl r0, r0, #3
	strh r0, [r1]
	b _08023366
_08023332:
	add r1, r4, #0
	add r1, r1, #110
	ldrh r0, [r1]
	sub r0, r0, #1
	strh r0, [r1]
	lsl r0, r0, #16
	cmp r0, #0
	bne _08023366
	mov r0, #225
	lsl r0, r0, #4
	strh r0, [r1]
	add r2, r4, #0
	add r2, r2, #112
	ldrb r0, [r2]
	mov r1, #1
	eor r0, r0, r1
	strb r0, [r2]
	cmp r0, #0
	beq _08023360
	mov r0, #12
	bl sub_0800D6A4
	b _08023366
_08023360:
	mov r0, #13
	bl sub_0800D6A4
_08023366:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080232E8

	THUMB_FUNC_START sub_0802336C
sub_0802336C: @ 0x0802336C
	add r1, r0, #0
	add r0, r0, #125
	ldrb r0, [r0]
	cmp r0, #1
	bne _0802337A
	mov r0, #6
	strb r0, [r1, #20]
_0802337A:
	bx lr
	THUMB_FUNC_END sub_0802336C

	THUMB_FUNC_START sub_0802337C
sub_0802337C: @ 0x0802337C
	push {lr}
	add r1, r0, #0
	add r0, r0, #124
	ldrb r0, [r0]
	cmp r0, #0
	bne _08023392
	mov r0, #7
	strb r0, [r1, #20]
	mov r0, #150
	strb r0, [r1, #23]
	b _080233AC
_08023392:
	add r1, r1, #110
	ldrh r0, [r1]
	sub r0, r0, #1
	strh r0, [r1]
	lsl r0, r0, #16
	cmp r0, #0
	bne _080233AC
	mov r0, #225
	lsl r0, r0, #4
	strh r0, [r1]
	mov r0, #14
	bl sub_0800D6A4
_080233AC:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802337C

	THUMB_FUNC_START sub_080233B0
sub_080233B0: @ 0x080233B0
	add r2, r0, #0
	ldrb r0, [r2, #23]
	sub r0, r0, #1
	strb r0, [r2, #23]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	bne _080233D0
	add r1, r2, #0
	add r1, r1, #69
	strb r0, [r1]
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #127
	and r0, r0, r1
	strb r0, [r2]
_080233D0:
	bx lr
	THUMB_FUNC_END sub_080233B0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080233D4
sub_080233D4: @ 0x080233D4
	push {lr}
	add r2, r0, #0
	ldrb r0, [r2, #20]
	cmp r0, #0
	beq _080233F0
	ldr r0, [r2, #124]
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #0
	bne _080233F0
	add r0, r2, #0
	bl sub_08012540
	b _08023400
_080233F0:
	ldr r0, _08023404  @ =gUnknown_0813BE30
	ldrb r1, [r2, #20]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r2, #0
	bl _call_via_r1
_08023400:
	pop {r0}
	bx r0
_08023404:
	.4byte gUnknown_0813BE30
	THUMB_FUNC_END sub_080233D4

	THUMB_FUNC_START sub_08023408
sub_08023408: @ 0x08023408
	push {r4,r5,lr}
	mov r12, r0
	mov r3, #1
	mov r4, #1
	strb r4, [r0, #20]
	mov r0, #32
	mov r1, r12
	strb r0, [r1, #23]
	ldrb r1, [r1, #28]
	mov r2, #4
	neg r2, r2
	add r0, r2, #0
	and r0, r0, r1
	orr r0, r0, r3
	mov r1, r12
	strb r0, [r1, #28]
	mov r0, #128
	str r0, [r1, #12]
	mov r5, r12
	add r5, r5, #117
	ldrb r0, [r5]
	eor r0, r0, r3
	lsl r0, r0, #4
	add r0, r0, #8
	add r1, r1, #43
	strb r0, [r1]
	ldr r1, _08023474  @ =gUnknown_0813BE2C
	ldrb r0, [r5]
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	mov r3, r12
	ldrh r3, [r3, #50]
	add r0, r0, r3
	mov r1, r12
	strh r0, [r1, #50]
	strb r4, [r1, #26]
	ldr r0, _08023478  @ =gUnknown_0813C0B8
	str r0, [r1, #72]
	add r1, r1, #94
	ldrb r0, [r1]
	and r2, r2, r0
	strb r2, [r1]
	ldrb r1, [r5]
	add r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r0, r12
	bl 0x08003870
	pop {r4,r5}
	pop {r0}
	bx r0
_08023474:
	.4byte gUnknown_0813BE2C
_08023478:
	.4byte gUnknown_0813C0B8
	THUMB_FUNC_END sub_08023408

	THUMB_FUNC_START sub_0802347C
sub_0802347C: @ 0x0802347C
	push {r4,lr}
	add r4, r0, #0
	ldr r2, _080234CC  @ =gUnknown_08137B10
	ldr r0, [r4, #124]
	add r0, r0, #126
	ldrb r1, [r0]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r0, [r4, #84]
	add r0, r0, #125
	ldrb r2, [r0]
	ldr r0, [r1]
	and r0, r0, r2
	cmp r0, #0
	beq _080234C6
	add r0, r4, #0
	bl sub_0803CC20
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _080234C6
	mov r0, #3
	strb r0, [r4, #20]
	mov r0, #32
	str r0, [r4, #12]
	ldrh r1, [r4, #50]
	add r0, r4, #0
	add r0, r0, #112
	mov r2, #0
	strh r1, [r0]
	add r0, r0, #3
	strb r2, [r0]
	sub r0, r0, #1
	strb r2, [r0]
_080234C6:
	pop {r4}
	pop {r0}
	bx r0
_080234CC:
	.4byte gUnknown_08137B10
	THUMB_FUNC_END sub_0802347C

	THUMB_FUNC_START sub_080234D0
sub_080234D0: @ 0x080234D0
	push {r4-r6,lr}
	add r4, r0, #0
	bl sub_0803DB4C
	ldrb r0, [r4, #21]
	cmp r0, #5
	bne _08023570
	ldr r2, _08023568  @ =gUnknown_03006A30
	ldrb r1, [r4, #11]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r2, r2, #40
	add r0, r0, r2
	ldr r3, [r0]
	add r5, r4, #0
	add r5, r5, #116
	ldrb r0, [r5]
	cmp r0, #0
	bne _08023528
	ldr r1, _0802356C  @ =gUnknown_0813BE48
	add r2, r3, #0
	add r2, r2, #42
	ldrb r0, [r2]
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrh r6, [r4, #50]
	add r0, r0, r6
	strh r0, [r3, #50]
	ldrb r0, [r2]
	add r0, r0, #1
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrh r1, [r4, #54]
	add r0, r0, r1
	strh r0, [r3, #54]
	mov r0, #1
	strb r0, [r5]
	mov r0, #2
	strb r0, [r4, #24]
_08023528:
	add r0, r3, #0
	add r0, r0, #42
	ldrb r1, [r0]
	lsr r1, r1, #1
	add r0, r4, #0
	add r0, r0, #117
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r0, r0, #1
	cmp r1, r0
	bne _0802357C
	add r0, r3, #0
	add r0, r0, #41
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802357C
	add r0, r4, #0
	bl sub_080237F8
	ldrb r0, [r5]
	cmp r0, #1
	bne _0802357C
	mov r0, #2
	strb r0, [r5]
	ldr r0, [r4, #84]
	mov r1, #28
	bl 0x08003870
	mov r0, #164
	bl 0x08003DFC
	b _0802357C
_08023568:
	.4byte gUnknown_03006A30
_0802356C:
	.4byte gUnknown_0813BE48
_08023570:
	mov r0, #0
	mov r1, #3
	strb r1, [r4, #20]
	add r1, r4, #0
	add r1, r1, #116
	strb r0, [r1]
_0802357C:
	add r0, r4, #0
	bl 0x08003C10
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080234D0

	THUMB_FUNC_START sub_08023588
sub_08023588: @ 0x08023588
	push {r4,lr}
	add r4, r0, #0
	bl 0x080077D0
	add r0, r4, #0
	add r0, r0, #114
	ldrb r0, [r0]
	cmp r0, #0
	beq _080235B6
	add r0, r4, #0
	add r0, r0, #117
	ldrb r0, [r0]
	lsl r0, r0, #4
	add r0, r0, #8
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	add r0, r4, #0
	bl sub_0803CC20
	add r0, r4, #0
	bl sub_080239C0
_080235B6:
	add r0, r4, #0
	bl 0x08003C10
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08023588

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080235C4
sub_080235C4: @ 0x080235C4
	add r3, r0, #0
	ldrb r0, [r3, #23]
	sub r0, r0, #1
	strb r0, [r3, #23]
	lsl r0, r0, #24
	cmp r0, #0
	beq _080235E4
	ldrb r2, [r3, #28]
	lsl r1, r2, #30
	lsr r1, r1, #30
	mov r0, #1
	eor r1, r1, r0
	sub r0, r0, #5
	and r0, r0, r2
	orr r0, r0, r1
	b _080235EE
_080235E4:
	mov r0, #5
	strb r0, [r3, #20]
	ldrb r1, [r3, #28]
	sub r0, r0, #9
	and r0, r0, r1
_080235EE:
	strb r0, [r3, #28]
	bx lr
	THUMB_FUNC_END sub_080235C4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080235F4
sub_080235F4: @ 0x080235F4
	push {r4,lr}
	add r3, r0, #0
	ldr r0, [r3, #124]
	add r0, r0, #124
	ldrh r0, [r0]
	cmp r0, #16
	bne _08023644
	mov r2, #1
	mov r0, #1
	strb r0, [r3, #20]
	mov r0, #32
	strb r0, [r3, #23]
	mov r0, #128
	str r0, [r3, #12]
	ldrb r1, [r3, #28]
	sub r0, r0, #132
	and r0, r0, r1
	orr r0, r0, r2
	strb r0, [r3, #28]
	mov r0, #117
	add r0, r0, r3
	mov r12, r0
	ldrb r0, [r0]
	eor r0, r0, r2
	lsl r0, r0, #4
	add r0, r0, #8
	add r1, r3, #0
	add r1, r1, #43
	strb r0, [r1]
	ldr r2, [r3, #84]
	ldr r1, _0802364C  @ =gUnknown_0813BE2C
	mov r4, r12
	ldrb r0, [r4]
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrh r2, [r2, #50]
	add r0, r0, r2
	strh r0, [r3, #50]
_08023644:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802364C:
	.4byte gUnknown_0813BE2C
	THUMB_FUNC_END sub_080235F4

	THUMB_FUNC_START sub_08023650
sub_08023650: @ 0x08023650
	push {r4-r6,lr}
	add r4, r0, #0
	ldr r0, [r4, #84]
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #0
	beq _080236E6
	ldrb r0, [r4, #20]
	cmp r0, #0
	bne _0802368C
	mov r3, #1
	mov r0, #1
	strb r0, [r4, #20]
	ldrb r2, [r4, #28]
	mov r1, #4
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	orr r0, r0, r3
	strb r0, [r4, #28]
	add r2, r4, #0
	add r2, r2, #94
	ldrb r0, [r2]
	and r1, r1, r0
	orr r1, r1, r3
	strb r1, [r2]
	add r0, r4, #0
	mov r1, #19
	bl 0x08003870
_0802368C:
	ldrb r6, [r4, #11]
	lsr r0, r6, #4
	cmp r0, #0
	beq _080236A4
	ldr r1, [r4, #88]
	ldr r0, [r4, #84]
	add r0, r0, #124
	ldrh r2, [r0]
	add r0, r4, #0
	bl sub_08023E14
	b _080236F2
_080236A4:
	ldr r2, [r4, #84]
	mov r0, #50
	ldrsh r1, [r2, r0]
	ldr r5, [r2, #88]
	mov r3, #50
	ldrsh r0, [r5, r3]
	sub r1, r1, r0
	mov r3, #15
	and r3, r3, r6
	add r0, r1, #0
	mul r0, r3, r0
	cmp r0, #0
	bge _080236C0
	add r0, r0, #3
_080236C0:
	asr r0, r0, #2
	ldrh r5, [r5, #50]
	add r0, r0, r5
	strh r0, [r4, #50]
	mov r5, #54
	ldrsh r0, [r2, r5]
	ldr r2, [r2, #88]
	mov r5, #54
	ldrsh r1, [r2, r5]
	sub r0, r0, r1
	mul r0, r3, r0
	cmp r0, #0
	bge _080236DC
	add r0, r0, #3
_080236DC:
	asr r0, r0, #2
	ldrh r2, [r2, #54]
	add r0, r0, r2
	strh r0, [r4, #54]
	b _080236F2
_080236E6:
	add r0, r4, #0
	bl sub_08023F10
	add r0, r4, #0
	bl sub_08012540
_080236F2:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08023650

	THUMB_FUNC_START sub_080236F8
sub_080236F8: @ 0x080236F8
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #20]
	cmp r0, #0
	bne _08023718
	mov r3, #1
	mov r0, #1
	strb r0, [r4, #20]
	add r2, r4, #0
	add r2, r2, #94
	ldrb r1, [r2]
	sub r0, r0, #5
	and r0, r0, r1
	orr r0, r0, r3
	strb r0, [r2]
	b _08023790
_08023718:
	mov r2, #0
	ldrb r0, [r4, #11]
	cmp r0, #0
	beq _0802374A
	ldr r1, [r4, #112]
	cmp r1, #0
	beq _0802372E
	add r0, r4, #0
	bl sub_08023EB8
	mov r2, #1
_0802372E:
	ldr r1, [r4, #116]
	cmp r1, #0
	beq _0802373C
	add r0, r4, #0
	bl sub_08023EB8
	mov r2, #1
_0802373C:
	ldr r1, [r4, #120]
	cmp r1, #0
	beq _08023786
	add r0, r4, #0
	bl sub_08023EB8
	b _08023790
_0802374A:
	ldr r0, [r4, #112]
	cmp r0, #0
	beq _0802375E
	ldr r0, [r0, #84]
	ldr r1, [r0, #112]
	mov r2, #0
	mov r3, #1
	bl sub_0803D4A4
	mov r2, #1
_0802375E:
	ldr r0, [r4, #116]
	cmp r0, #0
	beq _08023772
	ldr r0, [r0, #84]
	ldr r1, [r0, #112]
	mov r2, #0
	mov r3, #1
	bl sub_0803D4A4
	mov r2, #1
_08023772:
	ldr r0, [r4, #120]
	cmp r0, #0
	beq _08023786
	ldr r0, [r0, #84]
	ldr r1, [r0, #112]
	mov r2, #0
	mov r3, #1
	bl sub_0803D4A4
	mov r2, #1
_08023786:
	cmp r2, #0
	bne _08023790
	add r0, r4, #0
	bl sub_08012540
_08023790:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080236F8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08023798
sub_08023798: @ 0x08023798
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #20]
	cmp r0, #0
	bne _080237CA
	mov r3, #1
	mov r0, #1
	strb r0, [r4, #20]
	ldrb r2, [r4, #28]
	mov r1, #4
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	orr r0, r0, r3
	strb r0, [r4, #28]
	add r2, r4, #0
	add r2, r2, #94
	ldrb r0, [r2]
	and r1, r1, r0
	orr r1, r1, r3
	strb r1, [r2]
	add r0, r4, #0
	mov r1, #19
	bl 0x08003870
_080237CA:
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _080237F2
	mov r0, #15
	mov r1, #1
	mov r2, #0
	bl sub_0804C8A8
	add r1, r0, #0
	cmp r1, #0
	beq _080237EC
	add r0, r4, #0
	bl sub_0803D3D0
_080237EC:
	add r0, r4, #0
	bl sub_08012540
_080237F2:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08023798

	THUMB_FUNC_START sub_080237F8
sub_080237F8: @ 0x080237F8
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r6, r0, #0
	ldr r1, _08023864  @ =gUnknown_03006A30
	ldrb r3, [r6, #11]
	lsl r0, r3, #3
	add r0, r0, r3
	lsl r0, r0, #4
	add r1, r1, #40
	add r0, r0, r1
	ldr r5, [r0]
	ldr r0, _08023868  @ =gUnknown_0813BE50
	mov r1, #117
	add r1, r1, r6
	mov r8, r1
	ldrb r1, [r1]
	add r0, r1, r0
	ldrb r0, [r0]
	mov r9, r0
	add r0, r6, #0
	add r0, r0, #114
	ldrb r0, [r0]
	cmp r0, #47
	bhi _080238B2
	ldrh r4, [r5, #50]
	ldrh r7, [r5, #54]
	add r0, r5, #0
	mov r1, #64
	mov r2, r9
	bl 0x08002E70
	lsl r4, r4, #16
	asr r4, r4, #16
	ldrh r2, [r5, #50]
	mov r3, #50
	ldrsh r0, [r5, r3]
	cmp r4, r0
	bne _08023856
	lsl r0, r7, #16
	asr r0, r0, #16
	mov r3, #54
	ldrsh r1, [r5, r3]
	cmp r0, r1
	bne _08023856
	b _080239B2
_08023856:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802386C
	sub r0, r2, r4
	b _0802386E
	.byte 0x00
	.byte 0x00
_08023864:
	.4byte gUnknown_03006A30
_08023868:
	.4byte gUnknown_0813BE50
_0802386C:
	sub r0, r4, r2
_0802386E:
	lsl r0, r0, #16
	lsr r0, r0, #16
	lsl r1, r0, #16
	asr r1, r1, #8
	add r0, r6, #0
	mov r2, r9
	bl 0x08002E70
	add r0, r6, #0
	bl sub_080239C0
	add r0, r6, #0
	add r0, r0, #114
	ldrb r0, [r0]
	cmp r0, #47
	bls _08023898
	add r1, r6, #0
	add r1, r1, #119
	mov r0, #0
	strb r0, [r1]
	b _080239B2
_08023898:
	ldrb r0, [r6, #24]
	sub r0, r0, #1
	strb r0, [r6, #24]
	lsl r0, r0, #24
	cmp r0, #0
	beq _080238A6
	b _080239B2
_080238A6:
	mov r0, #8
	strb r0, [r6, #24]
	mov r0, #139
	bl 0x08003DFC
	b _080239B2
_080238B2:
	ldr r0, _080238D8  @ =gUnknown_0813BE56
	add r0, r1, r0
	ldrb r2, [r0]
	ldr r1, _080238DC  @ =gUnknown_03000940
	lsl r0, r3, #1
	add r0, r0, r1
	ldrh r0, [r0]
	and r2, r2, r0
	cmp r2, #0
	beq _080239AC
	add r1, r6, #0
	add r1, r1, #119
	ldrb r0, [r1]
	cmp r0, #14
	bhi _080238E0
	add r0, r0, #1
	strb r0, [r1]
	b _080239B2
	.byte 0x00
	.byte 0x00
_080238D8:
	.4byte gUnknown_0813BE56
_080238DC:
	.4byte gUnknown_03000940
_080238E0:
	ldr r2, [r6, #124]
	add r2, r2, #110
	add r0, r6, #0
	add r0, r0, #118
	ldrb r0, [r0]
	ldrh r1, [r2]
	orr r0, r0, r1
	strh r0, [r2]
	ldr r0, [r6, #84]
	ldrb r0, [r0, #20]
	cmp r0, #6
	bne _08023906
	ldr r0, [r6, #124]
	add r0, r0, #110
	ldrh r1, [r0]
	mov r0, #192
	and r0, r0, r1
	cmp r0, #192
	bne _080239B2
_08023906:
	mov r0, #4
	strb r0, [r6, #20]
	mov r0, #60
	strb r0, [r6, #23]
	ldr r1, _080239A0  @ =gUnknown_0813BE52
	mov r2, r8
	ldrb r0, [r2]
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrh r3, [r6, #50]
	add r0, r0, r3
	strh r0, [r6, #50]
	mov r0, #18
	bl 0x08003DFC
	mov r0, #15
	mov r1, #3
	mov r2, #32
	bl sub_0804C8A8
	add r5, r0, #0
	cmp r5, #0
	beq _08023950
	ldr r0, _080239A4  @ =gUnknown_0813BE54
	mov r2, r8
	ldrb r1, [r2]
	add r1, r1, r0
	mov r2, #0
	ldrsb r2, [r1, r2]
	lsl r2, r2, #16
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #0
	bl sub_0803D4A4
_08023950:
	ldr r4, _080239A8  @ =gUnknown_0813BE58
	bl 0x0800099C
	mov r1, #7
	and r1, r1, r0
	add r1, r1, r4
	ldrb r1, [r1]
	mov r0, #0
	mov r2, #1
	bl sub_0804C8A8
	add r5, r0, #0
	cmp r5, #0
	beq _080239B2
	mov r3, r8
	ldrb r0, [r3]
	mov r1, #1
	eor r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, #8
	mov r2, #128
	neg r2, r2
	add r1, r2, #0
	orr r0, r0, r1
	add r1, r5, #0
	add r1, r1, #43
	strb r0, [r1]
	ldr r1, _080239A4  @ =gUnknown_0813BE54
	ldrb r0, [r3]
	add r0, r0, r1
	mov r2, #0
	ldrsb r2, [r0, r2]
	lsl r2, r2, #16
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #0
	bl sub_0803D4A4
	b _080239B2
	.byte 0x00
	.byte 0x00
_080239A0:
	.4byte gUnknown_0813BE52
_080239A4:
	.4byte gUnknown_0813BE54
_080239A8:
	.4byte gUnknown_0813BE58
_080239AC:
	add r0, r6, #0
	add r0, r0, #119
	strb r2, [r0]
_080239B2:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080237F8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080239C0
sub_080239C0: @ 0x080239C0
	push {r4,lr}
	add r3, r0, #0
	add r0, r0, #117
	ldrb r0, [r0]
	cmp r0, #0
	beq _080239E0
	ldrh r1, [r3, #50]
	add r0, r3, #0
	add r0, r0, #112
	ldrb r0, [r0]
	sub r1, r1, r0
	add r0, r3, #0
	add r0, r0, #114
	strb r1, [r0]
	add r4, r0, #0
	b _080239F2
_080239E0:
	add r0, r3, #0
	add r0, r0, #112
	ldrb r0, [r0]
	ldrh r1, [r3, #50]
	sub r0, r0, r1
	add r1, r3, #0
	add r1, r1, #114
	strb r0, [r1]
	add r4, r1, #0
_080239F2:
	ldr r0, [r3, #84]
	ldrb r0, [r0, #20]
	cmp r0, #4
	bne _08023A14
	ldr r2, [r3, #124]
	add r2, r2, #124
	ldrb r1, [r4]
	add r3, r3, #115
	ldrb r0, [r3]
	sub r1, r1, r0
	asr r1, r1, #2
	ldrh r0, [r2]
	sub r0, r0, r1
	strh r0, [r2]
	ldrb r1, [r4]
	mov r0, #252
	b _08023A2C
_08023A14:
	ldr r2, [r3, #124]
	add r2, r2, #124
	ldrb r1, [r4]
	add r3, r3, #115
	ldrb r0, [r3]
	sub r1, r1, r0
	asr r1, r1, #3
	ldrh r0, [r2]
	sub r0, r0, r1
	strh r0, [r2]
	ldrb r1, [r4]
	mov r0, #248
_08023A2C:
	and r0, r0, r1
	strb r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080239C0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08023A38
sub_08023A38: @ 0x08023A38
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r8, r0
	bl sub_080123E8
	add r7, r0, #0
	cmp r7, #0
	bne _08023A50
	b _08023B9C
_08023A50:
	bl sub_08012410
	add r6, r0, #0
	cmp r6, #0
	bne _08023A5C
	b _08023B9C
_08023A5C:
	bl sub_08012410
	add r5, r0, #0
	cmp r5, #0
	bne _08023A68
	b _08023B9C
_08023A68:
	bl sub_08012410
	add r4, r0, #0
	cmp r4, #0
	bne _08023A74
	b _08023B9C
_08023A74:
	mov r0, #3
	mov r10, r0
	mov r1, r10
	strb r1, [r7, #8]
	strb r1, [r6, #8]
	strb r1, [r5, #8]
	strb r1, [r4, #8]
	mov r0, #45
	strb r0, [r7, #9]
	strb r0, [r6, #9]
	strb r0, [r5, #9]
	mov r0, #44
	strb r0, [r4, #9]
	strb r1, [r4, #10]
	mov r2, r8
	str r2, [r7, #84]
	str r2, [r6, #84]
	str r2, [r5, #84]
	str r2, [r4, #84]
	str r4, [r7, #88]
	str r4, [r6, #88]
	str r4, [r5, #88]
	add r0, r7, #0
	add r0, r0, #43
	mov r1, #0
	strb r1, [r0]
	add r1, r6, #0
	add r1, r1, #43
	mov r0, #85
	strb r0, [r1]
	add r1, r5, #0
	add r1, r1, #43
	mov r0, #171
	strb r0, [r1]
	add r1, r6, #0
	add r1, r1, #126
	mov r0, #1
	strb r0, [r1]
	add r1, r5, #0
	add r1, r1, #126
	mov r0, #2
	strb r0, [r1]
	ldr r2, _08023B98  @ =gUnknown_0813E4CC
	mov r9, r2
	mov r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _08023AD6
	add r0, r0, #15
_08023AD6:
	asr r0, r0, #4
	lsl r2, r0, #16
	mov r0, r9
	add r0, r0, #128
	mov r1, #0
	ldrsh r0, [r0, r1]
	neg r0, r0
	cmp r0, #0
	bge _08023AEA
	add r0, r0, #15
_08023AEA:
	asr r3, r0, #4
	sub r3, r3, #4
	lsl r3, r3, #16
	mov r0, r8
	add r1, r7, #0
	bl sub_0803D4A4
	mov r0, r9
	add r0, r0, #170
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _08023B06
	add r0, r0, #15
_08023B06:
	asr r0, r0, #4
	lsl r2, r0, #16
	mov r0, #149
	lsl r0, r0, #1
	add r0, r0, r9
	mov r1, #0
	ldrsh r0, [r0, r1]
	neg r0, r0
	cmp r0, #0
	bge _08023B1C
	add r0, r0, #15
_08023B1C:
	asr r3, r0, #4
	sub r3, r3, #4
	lsl r3, r3, #16
	mov r0, r8
	add r1, r6, #0
	bl sub_0803D4A4
	mov r0, #171
	lsl r0, r0, #1
	add r0, r0, r9
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _08023B3A
	add r0, r0, #15
_08023B3A:
	asr r0, r0, #4
	lsl r2, r0, #16
	mov r0, #235
	lsl r0, r0, #1
	add r0, r0, r9
	mov r1, #0
	ldrsh r0, [r0, r1]
	neg r0, r0
	cmp r0, #0
	bge _08023B50
	add r0, r0, #15
_08023B50:
	asr r3, r0, #4
	sub r3, r3, #4
	lsl r3, r3, #16
	mov r0, r8
	add r1, r5, #0
	bl sub_0803D4A4
	mov r0, r8
	add r1, r4, #0
	bl sub_0803D3D0
	mov r0, #4
	add r1, r7, #0
	bl sub_08012728
	mov r0, #4
	add r1, r6, #0
	bl sub_08012728
	mov r0, #4
	add r1, r5, #0
	bl sub_08012728
	mov r0, #5
	add r1, r4, #0
	bl sub_08012728
	mov r0, r8
	add r0, r0, #124
	mov r2, r10
	strb r2, [r0]
	add r0, r0, #1
	mov r1, #0
	strb r1, [r0]
	mov r0, #1
	b _08023B9E
_08023B98:
	.4byte gUnknown_0813E4CC
_08023B9C:
	mov r0, #0
_08023B9E:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08023A38

	THUMB_FUNC_START sub_08023BAC
sub_08023BAC: @ 0x08023BAC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r8, r0
	bl sub_080123E8
	add r6, r0, #0
	cmp r6, #0
	bne _08023BC4
	b _08023D04
_08023BC4:
	bl sub_08012410
	add r7, r0, #0
	cmp r7, #0
	bne _08023BD0
	b _08023D04
_08023BD0:
	bl sub_08012410
	mov r10, r0
	cmp r0, #0
	bne _08023BDC
	b _08023D04
_08023BDC:
	bl sub_08012410
	add r4, r0, #0
	cmp r4, #0
	bne _08023BE8
	b _08023D04
_08023BE8:
	bl sub_08012410
	add r5, r0, #0
	cmp r5, #0
	bne _08023BF4
	b _08023D04
_08023BF4:
	bl sub_08012410
	mov r9, r0
	cmp r0, #0
	bne _08023C00
	b _08023D04
_08023C00:
	mov r2, #3
	strb r2, [r6, #8]
	strb r2, [r7, #8]
	mov r0, r10
	strb r2, [r0, #8]
	strb r2, [r4, #8]
	strb r2, [r5, #8]
	mov r1, r9
	strb r2, [r1, #8]
	mov r1, #44
	strb r1, [r6, #9]
	strb r1, [r7, #9]
	mov r0, #45
	mov r3, r10
	strb r0, [r3, #9]
	strb r0, [r4, #9]
	strb r1, [r5, #9]
	mov r0, r9
	strb r1, [r0, #9]
	mov r1, #1
	strb r1, [r6, #10]
	strb r1, [r7, #10]
	strb r2, [r5, #10]
	strb r2, [r0, #10]
	strb r1, [r3, #11]
	strb r1, [r4, #11]
	strb r1, [r5, #11]
	strb r1, [r0, #11]
	mov r2, r8
	str r2, [r6, #84]
	str r2, [r7, #84]
	str r2, [r3, #84]
	str r2, [r4, #84]
	str r2, [r5, #84]
	str r2, [r0, #84]
	str r5, [r6, #88]
	str r0, [r7, #88]
	str r5, [r3, #88]
	str r0, [r4, #88]
	add r0, r6, #0
	add r0, r0, #117
	mov r3, #0
	strb r3, [r0]
	add r0, r7, #0
	add r0, r0, #117
	strb r1, [r0]
	add r2, r6, #0
	add r2, r2, #118
	mov r0, #128
	strb r0, [r2]
	add r2, r7, #0
	add r2, r2, #118
	strb r0, [r2]
	mov r0, r10
	str r0, [r6, #124]
	str r4, [r7, #124]
	add r0, r4, #0
	add r0, r0, #126
	strb r1, [r0]
	mov r0, r8
	add r1, r6, #0
	bl sub_0803D3D0
	mov r0, r8
	add r1, r7, #0
	bl sub_0803D3D0
	mov r0, r8
	mov r1, r10
	mov r2, #0
	ldr r3, _08023D00  @ =0xFFE80000
	bl sub_0803D4A4
	mov r0, r8
	add r1, r4, #0
	mov r2, #0
	mov r3, #192
	lsl r3, r3, #13
	bl sub_0803D4A4
	mov r0, r8
	add r1, r5, #0
	mov r2, #0
	ldr r3, _08023D00  @ =0xFFE80000
	bl sub_0803D4A4
	mov r0, r8
	mov r1, r9
	mov r2, #0
	mov r3, #192
	lsl r3, r3, #13
	bl sub_0803D4A4
	mov r0, #4
	add r1, r6, #0
	bl sub_08012728
	mov r0, #4
	add r1, r7, #0
	bl sub_08012728
	mov r0, #4
	mov r1, r10
	bl sub_08012728
	mov r0, #4
	add r1, r4, #0
	bl sub_08012728
	mov r0, #5
	add r1, r5, #0
	bl sub_08012728
	mov r0, #5
	mov r1, r9
	bl sub_08012728
	mov r1, r8
	add r1, r1, #124
	mov r0, #2
	strb r0, [r1]
	mov r0, r8
	add r0, r0, #125
	mov r1, #0
	strb r1, [r0]
	mov r0, #1
	b _08023D06
	.byte 0x00
	.byte 0x00
_08023D00:
	.4byte 0xFFE80000
_08023D04:
	mov r0, #0
_08023D06:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08023BAC

	THUMB_FUNC_START sub_08023D14
sub_08023D14: @ 0x08023D14
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r8, r0
	bl sub_080123E8
	add r5, r0, #0
	cmp r5, #0
	beq _08023E02
	bl sub_08012410
	add r6, r0, #0
	cmp r6, #0
	beq _08023E02
	bl sub_08012410
	add r4, r0, #0
	cmp r4, #0
	beq _08023E02
	bl sub_08012410
	add r7, r0, #0
	cmp r7, #0
	beq _08023E02
	mov r0, #0
	mov r10, r0
	mov r2, #3
	strb r2, [r5, #8]
	strb r2, [r6, #8]
	strb r2, [r4, #8]
	strb r2, [r7, #8]
	mov r1, #44
	strb r1, [r5, #9]
	strb r1, [r6, #9]
	mov r0, #45
	strb r0, [r4, #9]
	strb r1, [r7, #9]
	mov r1, #1
	mov r9, r1
	mov r0, r9
	strb r0, [r5, #10]
	strb r0, [r6, #10]
	strb r2, [r7, #10]
	mov r0, #2
	strb r0, [r4, #11]
	strb r0, [r7, #11]
	mov r1, r8
	str r1, [r5, #84]
	str r1, [r6, #84]
	str r1, [r4, #84]
	str r1, [r7, #84]
	str r7, [r5, #88]
	str r7, [r6, #88]
	str r7, [r4, #88]
	add r0, r5, #0
	add r0, r0, #117
	mov r1, r10
	strb r1, [r0]
	add r0, r6, #0
	add r0, r0, #117
	mov r1, r9
	strb r1, [r0]
	add r1, r5, #0
	add r1, r1, #118
	mov r0, #128
	strb r0, [r1]
	add r1, r6, #0
	add r1, r1, #118
	mov r0, #64
	strb r0, [r1]
	str r4, [r5, #124]
	str r4, [r6, #124]
	mov r0, r8
	add r1, r5, #0
	bl sub_0803D3D0
	mov r0, r8
	add r1, r6, #0
	bl sub_0803D3D0
	mov r0, r8
	add r1, r4, #0
	bl sub_0803D3D0
	mov r0, r8
	add r1, r7, #0
	bl sub_0803D3D0
	mov r0, #4
	add r1, r5, #0
	bl sub_08012728
	mov r0, #4
	add r1, r6, #0
	bl sub_08012728
	mov r0, #4
	add r1, r4, #0
	bl sub_08012728
	mov r0, #5
	add r1, r7, #0
	bl sub_08012728
	add r1, r4, #0
	add r1, r1, #43
	mov r0, #32
	strb r0, [r1]
	mov r0, r8
	add r0, r0, #124
	mov r1, r9
	strb r1, [r0]
	add r0, r0, #1
	mov r1, r10
	strb r1, [r0]
	mov r0, #1
	b _08023E04
_08023E02:
	mov r0, #0
_08023E04:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08023D14

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08023E14
sub_08023E14: @ 0x08023E14
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r5, r0, #0
	add r4, r1, #0
	lsl r2, r2, #16
	lsr r6, r2, #16
	ldrh r0, [r4, #50]
	ldrh r1, [r5, #50]
	sub r0, r0, r1
	lsl r0, r0, #16
	asr r0, r0, #16
	ldrh r1, [r4, #54]
	ldrh r2, [r5, #54]
	sub r1, r1, r2
	lsl r1, r1, #16
	asr r1, r1, #16
	bl 0x080040E0
	lsl r0, r0, #24
	lsr r2, r0, #24
	mov r12, r2
	cmp r6, #3
	bhi _08023E46
	mov r6, #4
_08023E46:
	ldr r0, [r4, #48]
	ldr r7, [r5, #48]
	sub r1, r0, r7
	ldr r0, _08023EB4  @ =gUnknown_0813E4CC
	mov r8, r0
	lsl r0, r2, #1
	add r0, r0, r8
	mov r2, #0
	ldrsh r0, [r0, r2]
	mul r0, r6, r0
	lsl r0, r0, #8
	sub r3, r1, r0
	cmp r0, #0
	bge _08023E64
	neg r0, r0
_08023E64:
	cmp r1, #0
	bge _08023E6A
	neg r1, r1
_08023E6A:
	sub r0, r1, r0
	cmp r0, #0
	bgt _08023E72
	mov r3, #0
_08023E72:
	add r0, r7, r3
	str r0, [r5, #48]
	ldr r0, [r4, #52]
	ldr r4, [r5, #52]
	sub r1, r0, r4
	mov r0, r12
	add r0, r0, #64
	lsl r0, r0, #1
	add r0, r0, r8
	mov r2, #0
	ldrsh r0, [r0, r2]
	mul r0, r6, r0
	lsl r2, r0, #8
	neg r0, r2
	sub r3, r1, r0
	cmp r0, #0
	bge _08023E96
	add r0, r2, #0
_08023E96:
	cmp r1, #0
	bge _08023E9C
	neg r1, r1
_08023E9C:
	sub r0, r1, r0
	cmp r0, #0
	bgt _08023EA4
	mov r3, #0
_08023EA4:
	add r0, r4, r3
	str r0, [r5, #52]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08023EB4:
	.4byte gUnknown_0813E4CC
	THUMB_FUNC_END sub_08023E14

	THUMB_FUNC_START sub_08023EB8
sub_08023EB8: @ 0x08023EB8
	push {r4,r5,lr}
	add r3, r0, #0
	add r5, r1, #0
	ldr r0, [r5, #84]
	add r0, r0, #124
	ldrh r2, [r0]
	add r0, r5, #0
	add r1, r3, #0
	bl sub_08023E14
	ldr r4, [r5, #88]
	ldr r0, [r4, #84]
	add r0, r0, #124
	ldrh r2, [r0]
	add r0, r4, #0
	add r1, r5, #0
	bl sub_08023E14
	ldr r5, [r4, #88]
	ldr r0, [r5, #84]
	add r0, r0, #124
	ldrh r2, [r0]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_08023E14
	ldr r4, [r5, #88]
	add r0, r4, #0
	add r0, r0, #124
	ldrh r2, [r0]
	add r0, r4, #0
	add r1, r5, #0
	bl sub_08023E14
	ldr r1, [r4, #112]
	add r0, r4, #0
	mov r2, #0
	mov r3, #1
	bl sub_0803D4A4
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08023EB8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08023F10
sub_08023F10: @ 0x08023F10
	push {r4,lr}
	add r4, r0, #0
	mov r0, #44
	bl sub_08012468
	add r1, r0, #0
	cmp r1, #0
	beq _08023F2E
	mov r0, #4
	strb r0, [r1, #10]
	ldrb r0, [r4, #23]
	strb r0, [r1, #23]
	add r0, r4, #0
	bl sub_0803D3D0
_08023F2E:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08023F10

	THUMB_FUNC_START sub_08023F34
sub_08023F34: @ 0x08023F34
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #10]
	cmp r0, #0
	bne _08023F60
	ldr r1, _08023F5C  @ =gUnknown_0813C0C0
	ldrb r0, [r4, #20]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
	add r1, r4, #0
	add r1, r1, #127
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	b _08023F70
	.byte 0x00
	.byte 0x00
_08023F5C:
	.4byte gUnknown_0813C0C0
_08023F60:
	ldr r0, _08023F78  @ =gUnknown_0813C128
	ldrb r1, [r4, #20]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r4, #0
	bl _call_via_r1
_08023F70:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08023F78:
	.4byte gUnknown_0813C128
	THUMB_FUNC_END sub_08023F34

	THUMB_FUNC_START sub_08023F7C
sub_08023F7C: @ 0x08023F7C
	push {r4,lr}
	add r4, r0, #0
	bl sub_08024D7C
	lsl r0, r0, #24
	cmp r0, #0
	bne _08023F8C
	b _080240B4
_08023F8C:
	ldrb r0, [r4, #11]
	cmp r0, #1
	beq _08023FDC
	cmp r0, #1
	bgt _08023F9C
	cmp r0, #0
	beq _08023FA2
	b _0802408A
_08023F9C:
	cmp r0, #2
	beq _08024024
	b _0802408A
_08023FA2:
	mov r0, #1
	strb r0, [r4, #20]
	mov r0, #120
	strb r0, [r4, #23]
	mov r0, #150
	strb r0, [r4, #24]
	add r0, r0, #106
	str r0, [r4, #12]
	ldr r1, _08023FD4  @ =gUnknown_08427688
	ldr r0, _08023FD8  @ =gUnknown_03006C80
	ldrb r0, [r0, #6]
	sub r0, r0, #1
	add r0, r0, r1
	ldrb r0, [r0]
	add r1, r4, #0
	add r1, r1, #69
	strb r0, [r1]
	add r1, r1, #55
	mov r0, #16
	strh r0, [r1]
	add r0, r4, #0
	mov r1, #3
	bl 0x08003870
	b _0802408A
_08023FD4:
	.4byte gUnknown_08427688
_08023FD8:
	.4byte gUnknown_03006C80
_08023FDC:
	mov r0, #7
	strb r0, [r4, #20]
	mov r0, #60
	strb r0, [r4, #23]
	ldr r1, _0802401C  @ =gUnknown_0842768B
	ldr r0, _08024020  @ =gUnknown_03006C80
	ldrb r0, [r0, #6]
	sub r0, r0, #1
	add r0, r0, r1
	ldrb r0, [r0]
	add r1, r4, #0
	add r1, r1, #69
	strb r0, [r1]
	add r1, r1, #55
	mov r0, #16
	strh r0, [r1]
	add r0, r4, #0
	mov r1, #3
	bl 0x08003870
	mov r0, #15
	mov r1, #2
	mov r2, #32
	bl sub_0804C8A8
	add r1, r0, #0
	cmp r1, #0
	beq _0802408A
	add r0, r4, #0
	bl sub_0803D3D0
	b _0802408A
_0802401C:
	.4byte gUnknown_0842768B
_08024020:
	.4byte gUnknown_03006C80
_08024024:
	mov r0, #14
	strb r0, [r4, #20]
	mov r0, #150
	strb r0, [r4, #23]
	add r0, r0, #106
	str r0, [r4, #12]
	ldr r1, _080240BC  @ =gUnknown_0842768E
	ldr r0, _080240C0  @ =gUnknown_03006C80
	ldrb r0, [r0, #6]
	sub r0, r0, #1
	add r0, r0, r1
	ldrb r0, [r0]
	add r1, r4, #0
	add r1, r1, #69
	strb r0, [r1]
	add r1, r1, #55
	mov r0, #16
	strh r0, [r1]
	bl 0x0800099C
	mov r1, #31
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	ldrb r1, [r1]
	add r1, r1, #2
	asr r1, r1, #2
	mov r0, #7
	and r1, r1, r0
	add r0, r4, #0
	add r0, r0, #42
	strb r1, [r0]
	add r1, r1, #20
	add r0, r4, #0
	bl 0x08003870
	mov r0, #15
	mov r1, #2
	mov r2, #32
	bl sub_0804C8A8
	add r1, r0, #0
	cmp r1, #0
	beq _08024084
	add r0, r4, #0
	bl sub_0803D3D0
_08024084:
	mov r0, #158
	bl 0x08003DFC
_0802408A:
	ldr r0, [r4, #84]
	ldrb r1, [r0, #30]
	lsl r1, r1, #28
	lsr r1, r1, #28
	lsl r0, r1, #4
	orr r0, r0, r1
	strb r0, [r4, #30]
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	ldr r0, _080240C4  @ =gUnknown_0813C164
	str r0, [r4, #72]
	bl 0x0800099C
	add r1, r4, #0
	add r1, r1, #127
	strb r0, [r1]
_080240B4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080240BC:
	.4byte gUnknown_0842768E
_080240C0:
	.4byte gUnknown_03006C80
_080240C4:
	.4byte gUnknown_0813C164
	THUMB_FUNC_END sub_08023F7C

	THUMB_FUNC_START sub_080240C8
sub_080240C8: @ 0x080240C8
	push {r4-r7,lr}
	add r7, r0, #0
	ldr r0, _08024164  @ =gUnknown_03006C80
	ldrb r1, [r0, #5]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _0802415E
	ldrb r0, [r7, #23]
	cmp r0, #0
	beq _0802410A
	sub r0, r0, #1
	strb r0, [r7, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0802415E
	add r0, r7, #0
	add r0, r0, #43
	ldrb r1, [r0]
	add r1, r1, #16
	asr r1, r1, #5
	mov r0, #7
	and r1, r1, r0
	add r0, r7, #0
	add r0, r0, #42
	strb r1, [r0]
	add r1, r1, #20
	add r0, r7, #0
	bl 0x08003870
	mov r0, #158
	bl 0x08003DFC
_0802410A:
	ldr r0, [r7, #84]
	ldr r6, _08024168  @ =gUnknown_0813E4CC
	add r1, r7, #0
	add r1, r1, #43
	ldrb r3, [r1]
	lsl r1, r3, #1
	add r1, r1, r6
	mov r2, #0
	ldrsh r1, [r1, r2]
	add r4, r7, #0
	add r4, r4, #124
	ldrh r5, [r4]
	add r2, r1, #0
	mul r2, r5, r2
	lsl r2, r2, #8
	asr r2, r2, #16
	lsl r2, r2, #16
	add r3, r3, #64
	lsl r3, r3, #1
	add r3, r3, r6
	mov r6, #0
	ldrsh r1, [r3, r6]
	add r3, r1, #0
	mul r3, r5, r3
	asr r3, r3, #8
	neg r3, r3
	sub r3, r3, #4
	lsl r3, r3, #16
	add r1, r7, #0
	bl sub_0803D4A4
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #63
	bls _0802415E
	mov r0, #2
	strb r0, [r7, #20]
	mov r0, #60
	strb r0, [r7, #23]
_0802415E:
	pop {r4-r7}
	pop {r0}
	bx r0
_08024164:
	.4byte gUnknown_03006C80
_08024168:
	.4byte gUnknown_0813E4CC
	THUMB_FUNC_END sub_080240C8

	THUMB_FUNC_START sub_0802416C
sub_0802416C: @ 0x0802416C
	add r3, r0, #0
	ldrb r0, [r3, #23]
	sub r0, r0, #1
	strb r0, [r3, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _080241AA
	mov r0, #3
	strb r0, [r3, #20]
	mov r0, #90
	strb r0, [r3, #23]
	ldr r1, _080241AC  @ =gUnknown_08427692
	ldr r0, _080241B0  @ =gUnknown_03006C80
	ldrb r0, [r0, #6]
	sub r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	str r0, [r3, #12]
	ldr r2, [r3, #84]
	add r2, r2, #125
	ldr r1, _080241B4  @ =gUnknown_08137B10
	add r0, r3, #0
	add r0, r0, #126
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldrb r1, [r2]
	orr r0, r0, r1
	strb r0, [r2]
_080241AA:
	bx lr
_080241AC:
	.4byte gUnknown_08427692
_080241B0:
	.4byte gUnknown_03006C80
_080241B4:
	.4byte gUnknown_08137B10
	THUMB_FUNC_END sub_0802416C

	THUMB_FUNC_START sub_080241B8
sub_080241B8: @ 0x080241B8
	push {r4,lr}
	add r4, r0, #0
	bl sub_08024FEC
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _080241E2
	mov r0, #4
	strb r0, [r4, #20]
	add r0, r4, #0
	bl sub_08024BDC
	ldr r2, [r4, #112]
	ldrb r1, [r4, #30]
	lsr r1, r1, #4
	lsl r0, r1, #4
	orr r0, r0, r1
	strb r0, [r2, #30]
_080241E2:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080241B8

	THUMB_FUNC_START sub_080241E8
sub_080241E8: @ 0x080241E8
	push {r4,lr}
	add r4, r0, #0
	bl sub_08024F98
	ldr r0, [r4, #112]
	bl 0x08003828
	add r0, r4, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08024218
	mov r0, #5
	strb r0, [r4, #20]
	mov r0, #90
	strb r0, [r4, #23]
	add r0, r4, #0
	bl sub_08024CD0
_08024218:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080241E8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08024220
sub_08024220: @ 0x08024220
	push {r4,lr}
	add r4, r0, #0
	bl sub_08024AE0
	lsl r0, r0, #24
	cmp r0, #0
	beq _08024240
	add r0, r4, #0
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #0
	bne _08024240
	add r0, r4, #0
	bl sub_08024EA0
	b _0802426C
_08024240:
	ldrb r0, [r4, #23]
	cmp r0, #0
	bne _0802425C
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	cmp r0, #0
	bne _08024260
	mov r0, #6
	strb r0, [r4, #20]
	add r0, r4, #0
	bl sub_08024D10
	b _08024260
_0802425C:
	sub r0, r0, #1
	strb r0, [r4, #23]
_08024260:
	add r0, r4, #0
	bl sub_08024F98
	ldr r0, [r4, #112]
	bl 0x08003828
_0802426C:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08024220

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08024274
sub_08024274: @ 0x08024274
	push {r4,lr}
	add r4, r0, #0
	bl sub_08024F98
	ldr r0, [r4, #112]
	bl 0x08003828
	add r0, r4, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080242C0
	mov r0, #3
	strb r0, [r4, #20]
	mov r0, #60
	strb r0, [r4, #23]
	add r0, r4, #0
	bl sub_08024D48
	add r0, r4, #0
	add r0, r0, #43
	ldrb r1, [r0]
	add r1, r1, #2
	asr r1, r1, #2
	mov r0, #7
	and r1, r1, r0
	add r0, r4, #0
	add r0, r0, #42
	strb r1, [r0]
	add r1, r1, #20
	add r0, r4, #0
	bl 0x08003870
_080242C0:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08024274

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080242C8
sub_080242C8: @ 0x080242C8
	push {lr}
	add r3, r0, #0
	ldrb r0, [r3, #23]
	sub r0, r0, #1
	strb r0, [r3, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _080242FA
	mov r0, #8
	strb r0, [r3, #20]
	ldr r2, [r3, #84]
	add r2, r2, #125
	ldr r1, _08024300  @ =gUnknown_08137B10
	add r0, r3, #0
	add r0, r0, #126
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldrb r1, [r2]
	orr r0, r0, r1
	strb r0, [r2]
	mov r0, #158
	bl 0x08003DFC
_080242FA:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08024300:
	.4byte gUnknown_08137B10
	THUMB_FUNC_END sub_080242C8

	THUMB_FUNC_START sub_08024304
sub_08024304: @ 0x08024304
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	cmp r0, #0
	beq _08024314
	sub r0, r0, #1
	strb r0, [r4, #23]
	b _0802436A
_08024314:
	mov r0, #9
	strb r0, [r4, #20]
	bl 0x0800099C
	mov r1, #63
	and r0, r0, r1
	add r0, r0, #180
	strb r0, [r4, #23]
	ldr r0, _08024334  @ =gUnknown_03006C80
	ldrb r0, [r0]
	cmp r0, #2
	beq _08024338
	mov r0, #144
	lsl r0, r0, #1
	b _0802433C
	.byte 0x00
	.byte 0x00
_08024334:
	.4byte gUnknown_03006C80
_08024338:
	mov r0, #128
	lsl r0, r0, #1
_0802433C:
	str r0, [r4, #12]
	bl sub_08044594
	add r1, r0, #0
	str r1, [r4, #100]
	add r0, r4, #0
	bl 0x08009EA4
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	ldrb r1, [r1]
	add r1, r1, #2
	asr r1, r1, #2
	mov r0, #7
	and r1, r1, r0
	add r0, r4, #0
	add r0, r0, #42
	strb r1, [r0]
	add r1, r1, #20
	add r0, r4, #0
	bl 0x08003870
_0802436A:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08024304

	THUMB_FUNC_START sub_08024370
sub_08024370: @ 0x08024370
	push {r4,lr}
	add r4, r0, #0
	add r0, r0, #110
	ldrh r1, [r0]
	mov r2, #128
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, #0
	beq _0802438E
	mov r0, #11
	strb r0, [r4, #20]
	add r0, r4, #0
	bl sub_08024BDC
	b _08024410
_0802438E:
	add r0, r4, #0
	add r0, r0, #65
	ldrb r1, [r0]
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, #0
	beq _080243B6
	ldr r1, [r4, #76]
	ldrb r0, [r1, #10]
	cmp r0, #3
	bhi _080243B6
	ldr r2, _08024408  @ =gUnknown_03006A30
	add r1, r0, #0
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r2, r2, #40
	add r0, r0, r2
	ldr r0, [r0]
	str r0, [r4, #100]
_080243B6:
	ldrb r0, [r4, #23]
	sub r1, r0, #1
	strb r1, [r4, #23]
	lsl r0, r1, #24
	cmp r0, #0
	beq _0802440C
	mov r0, #3
	and r1, r1, r0
	cmp r1, #0
	bne _08024400
	ldr r1, [r4, #100]
	add r0, r4, #0
	bl 0x08009EA4
	add r1, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x080040C4
	add r0, r4, #0
	add r0, r0, #43
	ldrb r0, [r0]
	add r0, r0, #2
	asr r1, r0, #2
	mov r0, #7
	and r1, r1, r0
	add r0, r4, #0
	add r0, r0, #42
	ldrb r2, [r0]
	cmp r1, r2
	beq _08024400
	strb r1, [r0]
	add r1, r1, #20
	add r0, r4, #0
	bl 0x08003870
_08024400:
	add r0, r4, #0
	bl sub_0803CC20
	b _08024410
_08024408:
	.4byte gUnknown_03006A30
_0802440C:
	mov r0, #10
	strb r0, [r4, #20]
_08024410:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08024370

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08024418
sub_08024418: @ 0x08024418
	push {r4-r6,lr}
	add r4, r0, #0
	add r0, r0, #110
	ldrh r1, [r0]
	mov r6, #128
	add r0, r6, #0
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, #0
	beq _08024442
	mov r0, #11
	strb r0, [r4, #20]
	add r0, r4, #0
	bl sub_08024BDC
	ldr r0, [r4, #88]
	add r1, r4, #0
	bl sub_0803D3D0
	b _0802446C
_08024442:
	add r0, r4, #0
	bl 0x08003828
	add r2, r4, #0
	add r2, r2, #41
	ldrb r1, [r2]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08024460
	strb r5, [r2]
	add r0, r4, #0
	bl sub_08024EFC
	b _0802446C
_08024460:
	add r0, r6, #0
	and r0, r0, r1
	cmp r0, #0
	beq _0802446C
	mov r0, #8
	strb r0, [r4, #20]
_0802446C:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08024418

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08024474
sub_08024474: @ 0x08024474
	push {r4,lr}
	add r4, r0, #0
	ldr r0, [r4, #112]
	bl 0x08003828
	add r0, r4, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080244A0
	mov r0, #12
	strb r0, [r4, #20]
	mov r0, #240
	strb r0, [r4, #23]
	add r0, r4, #0
	bl sub_08024CD0
_080244A0:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08024474

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080244A8
sub_080244A8: @ 0x080244A8
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	cmp r0, #0
	beq _080244D4
	sub r0, r0, #1
	strb r0, [r4, #23]
	add r0, r4, #0
	bl sub_08024AE0
	lsl r0, r0, #24
	cmp r0, #0
	beq _080244E8
	add r0, r4, #0
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #0
	bne _080244E8
	add r0, r4, #0
	bl sub_08024EA0
	b _080244E8
_080244D4:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	cmp r0, #0
	bne _080244E8
	mov r0, #13
	strb r0, [r4, #20]
	add r0, r4, #0
	bl sub_08024D10
_080244E8:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080244A8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080244F0
sub_080244F0: @ 0x080244F0
	push {r4,lr}
	add r4, r0, #0
	ldr r0, [r4, #112]
	bl 0x08003828
	add r0, r4, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08024524
	mov r0, #8
	strb r0, [r4, #20]
	mov r0, #30
	strb r0, [r4, #23]
	add r1, r4, #0
	add r1, r1, #124
	mov r0, #16
	strh r0, [r1]
	add r0, r4, #0
	bl sub_08024D48
_08024524:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080244F0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802452C
sub_0802452C: @ 0x0802452C
	push {r4,lr}
	add r4, r0, #0
	bl sub_0803CC20
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08024574
	mov r0, #15
	strb r0, [r4, #20]
	ldr r1, _0802457C  @ =gUnknown_08427698
	ldr r0, _08024580  @ =gUnknown_03006C80
	ldrb r0, [r0, #6]
	sub r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	str r0, [r4, #12]
	add r1, r4, #0
	add r1, r1, #110
	mov r0, #1
	strh r0, [r1]
	ldr r2, [r4, #84]
	add r2, r2, #125
	ldr r1, _08024584  @ =gUnknown_08137B10
	add r0, r4, #0
	add r0, r0, #126
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldrb r1, [r2]
	orr r0, r0, r1
	strb r0, [r2]
_08024574:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802457C:
	.4byte gUnknown_08427698
_08024580:
	.4byte gUnknown_03006C80
_08024584:
	.4byte gUnknown_08137B10
	THUMB_FUNC_END sub_0802452C

	THUMB_FUNC_START sub_08024588
sub_08024588: @ 0x08024588
	push {r4,lr}
	add r4, r0, #0
	add r2, r4, #0
	add r2, r2, #110
	ldrh r1, [r2]
	mov r0, #192
	and r0, r0, r1
	cmp r0, #192
	bne _080245B4
	mov r0, #16
	strb r0, [r4, #20]
	add r0, r4, #0
	bl sub_08024BDC
	add r0, r4, #0
	bl sub_08024C90
	ldr r0, [r4, #88]
	add r1, r4, #0
	bl sub_0803D3D0
	b _080245C0
_080245B4:
	mov r0, #63
	and r0, r0, r1
	strh r0, [r2]
	add r0, r4, #0
	bl sub_08024F4C
_080245C0:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08024588

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080245C8
sub_080245C8: @ 0x080245C8
	push {r4,lr}
	add r4, r0, #0
	ldr r0, [r4, #112]
	bl 0x08003828
	add r0, r4, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080245F4
	mov r0, #17
	strb r0, [r4, #20]
	mov r0, #240
	strb r0, [r4, #23]
	add r0, r4, #0
	bl sub_08024CD0
_080245F4:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080245C8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080245FC
sub_080245FC: @ 0x080245FC
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	cmp r0, #0
	beq _08024684
	sub r0, r0, #1
	strb r0, [r4, #23]
	add r0, r4, #0
	bl sub_08024AE0
	lsl r0, r0, #24
	cmp r0, #0
	beq _080246A4
	add r1, r4, #0
	add r1, r1, #69
	ldrb r0, [r1]
	cmp r0, #0
	bne _080246A4
	mov r0, #255
	strb r0, [r1]
	mov r0, #22
	strb r0, [r4, #20]
	mov r0, #180
	strb r0, [r4, #23]
	add r3, r4, #0
	add r3, r3, #60
	ldrb r2, [r3]
	mov r1, #127
	add r0, r1, #0
	and r0, r0, r2
	strb r0, [r3]
	add r2, r4, #0
	add r2, r2, #94
	ldrb r0, [r2]
	mov r3, #3
	orr r0, r0, r3
	strb r0, [r2]
	ldr r0, [r4, #112]
	add r0, r0, #60
	ldrb r2, [r0]
	and r1, r1, r2
	strb r1, [r0]
	ldr r1, [r4, #112]
	add r1, r1, #94
	ldrb r0, [r1]
	orr r0, r0, r3
	strb r0, [r1]
	bl 0x0800099C
	mov r1, #15
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	mov r0, #128
	lsl r0, r0, #3
	str r0, [r4, #12]
	add r1, r1, #81
	mov r0, #15
	strh r0, [r1]
	ldr r0, [r4, #84]
	add r0, r0, #110
	ldr r1, _08024680  @ =0x0000FFFF
	strh r1, [r0]
	b _080246A4
	.byte 0x00
	.byte 0x00
_08024680:
	.4byte 0x0000FFFF
_08024684:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	cmp r0, #0
	bne _080246A4
	mov r0, #18
	strb r0, [r4, #20]
	add r2, r4, #0
	add r2, r2, #110
	ldrh r0, [r2]
	mov r1, #2
	eor r0, r0, r1
	strh r0, [r2]
	add r0, r4, #0
	bl sub_08024D10
_080246A4:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080245FC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080246AC
sub_080246AC: @ 0x080246AC
	push {r4,lr}
	add r4, r0, #0
	ldr r0, [r4, #112]
	bl 0x08003828
	add r0, r4, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08024722
	add r1, r4, #0
	add r1, r1, #124
	mov r0, #16
	strh r0, [r1]
	add r0, r4, #0
	bl sub_08024D48
	add r0, r4, #0
	add r0, r0, #110
	ldrh r1, [r0]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _080246F0
	mov r0, #19
	strb r0, [r4, #20]
	mov r0, #30
	strb r0, [r4, #23]
	b _08024722
_080246F0:
	mov r0, #14
	strb r0, [r4, #20]
	mov r0, #150
	strb r0, [r4, #23]
	add r0, r0, #106
	str r0, [r4, #12]
	ldr r0, [r4, #84]
	add r1, r4, #0
	bl sub_0803CECC
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	ldrb r1, [r1]
	add r1, r1, #2
	asr r1, r1, #2
	mov r0, #7
	and r1, r1, r0
	add r0, r4, #0
	add r0, r0, #42
	strb r1, [r0]
	add r1, r1, #20
	add r0, r4, #0
	bl 0x08003870
_08024722:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080246AC

	THUMB_FUNC_START sub_08024728
sub_08024728: @ 0x08024728
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	cmp r0, #0
	beq _08024738
	sub r0, r0, #1
	strb r0, [r4, #23]
	b _08024770
_08024738:
	mov r0, #20
	strb r0, [r4, #20]
	mov r0, #120
	strb r0, [r4, #23]
	add r0, r0, #168
	str r0, [r4, #12]
	bl sub_08044594
	add r1, r0, #0
	str r1, [r4, #100]
	add r0, r4, #0
	bl 0x08009EA4
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	ldrb r1, [r1]
	add r1, r1, #2
	asr r1, r1, #2
	mov r0, #7
	and r1, r1, r0
	add r0, r4, #0
	add r0, r0, #42
	strb r1, [r0]
	add r1, r1, #20
	add r0, r4, #0
	bl 0x08003870
_08024770:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08024728

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08024778
sub_08024778: @ 0x08024778
	push {r4,lr}
	add r4, r0, #0
	add r2, r4, #0
	add r2, r2, #110
	ldrh r1, [r2]
	mov r0, #192
	and r0, r0, r1
	cmp r0, #192
	bne _080247A4
	mov r0, #16
	strb r0, [r4, #20]
	add r0, r4, #0
	bl sub_08024BDC
	add r0, r4, #0
	bl sub_08024C90
	ldr r0, [r4, #88]
	add r1, r4, #0
	bl sub_0803D3D0
	b _0802482C
_080247A4:
	mov r0, #63
	and r0, r0, r1
	strh r0, [r2]
	add r0, r4, #0
	add r0, r0, #65
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080247D2
	ldr r1, [r4, #76]
	ldrb r0, [r1, #10]
	cmp r0, #3
	bhi _080247D2
	ldr r2, _08024824  @ =gUnknown_03006A30
	add r1, r0, #0
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r2, r2, #40
	add r0, r0, r2
	ldr r0, [r0]
	str r0, [r4, #100]
_080247D2:
	ldrb r0, [r4, #23]
	sub r1, r0, #1
	strb r1, [r4, #23]
	lsl r0, r1, #24
	cmp r0, #0
	beq _08024828
	mov r0, #3
	and r1, r1, r0
	cmp r1, #0
	bne _0802481C
	ldr r1, [r4, #100]
	add r0, r4, #0
	bl 0x08009EA4
	add r1, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x080040C4
	add r0, r4, #0
	add r0, r0, #43
	ldrb r0, [r0]
	add r0, r0, #2
	asr r1, r0, #2
	mov r0, #7
	and r1, r1, r0
	add r0, r4, #0
	add r0, r0, #42
	ldrb r2, [r0]
	cmp r1, r2
	beq _0802481C
	strb r1, [r0]
	add r1, r1, #20
	add r0, r4, #0
	bl 0x08003870
_0802481C:
	add r0, r4, #0
	bl sub_0803CC20
	b _0802482C
_08024824:
	.4byte gUnknown_03006A30
_08024828:
	mov r0, #21
	strb r0, [r4, #20]
_0802482C:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08024778

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08024834
sub_08024834: @ 0x08024834
	push {r4,lr}
	add r4, r0, #0
	add r2, r4, #0
	add r2, r2, #110
	ldrh r1, [r2]
	mov r0, #192
	and r0, r0, r1
	cmp r0, #192
	bne _08024860
	mov r0, #16
	strb r0, [r4, #20]
	add r0, r4, #0
	bl sub_08024BDC
	add r0, r4, #0
	bl sub_08024C90
	ldr r0, [r4, #88]
	add r1, r4, #0
	bl sub_0803D3D0
	b _08024892
_08024860:
	mov r0, #63
	and r0, r0, r1
	strh r0, [r2]
	add r0, r4, #0
	bl 0x08003828
	add r1, r4, #0
	add r1, r1, #41
	ldrb r2, [r1]
	mov r0, #1
	and r0, r0, r2
	cmp r0, #0
	beq _08024886
	mov r0, #0
	strb r0, [r1]
	add r0, r4, #0
	bl sub_08024EFC
	b _08024892
_08024886:
	mov r0, #128
	and r0, r0, r2
	cmp r0, #0
	beq _08024892
	mov r0, #19
	strb r0, [r4, #20]
_08024892:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08024834

	THUMB_FUNC_START sub_08024898
sub_08024898: @ 0x08024898
	push {r4,lr}
	add r4, r0, #0
	add r0, r0, #61
	ldrb r0, [r0]
	cmp r0, #0
	bne _080248D8
	ldrb r0, [r4, #23]
	sub r1, r0, #1
	strb r1, [r4, #23]
	lsl r0, r1, #24
	cmp r0, #0
	bne _080248B6
	mov r0, #23
	strb r0, [r4, #20]
	b _080248D8
_080248B6:
	mov r0, #15
	and r1, r1, r0
	cmp r1, #0
	bne _080248D2
	bl 0x0800099C
	mov r1, #31
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	mov r0, #46
	bl sub_0800D24C
_080248D2:
	add r0, r4, #0
	bl sub_0803CC20
_080248D8:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08024898

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080248E0
sub_080248E0: @ 0x080248E0
	add r3, r0, #0
	ldr r2, _08024910  @ =gUnknown_0842769E
	ldrb r1, [r3, #23]
	mov r0, #3
	and r0, r0, r1
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrh r2, [r3, #50]
	add r0, r0, r2
	strh r0, [r3, #50]
	add r1, r1, #1
	strb r1, [r3, #23]
	lsl r1, r1, #24
	lsr r1, r1, #24
	cmp r1, #59
	bls _0802490C
	mov r0, #30
	strb r0, [r3, #23]
	mov r0, #24
	strb r0, [r3, #20]
_0802490C:
	bx lr
	.byte 0x00
	.byte 0x00
_08024910:
	.4byte gUnknown_0842769E
	THUMB_FUNC_END sub_080248E0

	THUMB_FUNC_START sub_08024914
sub_08024914: @ 0x08024914
	push {lr}
	add r1, r0, #0
	ldrb r0, [r1, #23]
	sub r0, r0, #1
	strb r0, [r1, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0802492A
	add r0, r1, #0
	bl sub_08024EA0
_0802492A:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08024914

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08024930
sub_08024930: @ 0x08024930
	add r3, r0, #0
	mov r0, #1
	strb r0, [r3, #20]
	add r1, r3, #0
	add r1, r1, #69
	mov r0, #255
	strb r0, [r1]
	add r2, r3, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #127
	and r0, r0, r1
	strb r0, [r2]
	add r1, r3, #0
	add r1, r1, #63
	mov r0, #63
	strb r0, [r1]
	ldr r0, _08024958  @ =gUnknown_0813C15C
	str r0, [r3, #72]
	bx lr
_08024958:
	.4byte gUnknown_0813C15C
	THUMB_FUNC_END sub_08024930

	THUMB_FUNC_START sub_0802495C
sub_0802495C: @ 0x0802495C
	push {r4,lr}
	add r4, r0, #0
	ldr r1, [r4, #84]
	ldrb r0, [r1, #11]
	cmp r0, #0
	bne _08024990
	ldr r0, [r1, #84]
	add r0, r0, #124
	ldrb r0, [r0]
	cmp r0, #1
	bne _08024990
	add r0, r4, #0
	add r0, r0, #60
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08024990
	mov r0, #2
	strb r0, [r4, #20]
	bl 0x0800099C
	add r0, r0, #30
	mov r1, #15
	and r0, r0, r1
	strb r0, [r4, #23]
_08024990:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802495C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08024998
sub_08024998: @ 0x08024998
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _080249B4
	mov r0, #3
	strb r0, [r4, #20]
	add r0, r4, #0
	mov r1, #9
	bl 0x08003870
_080249B4:
	add r0, r4, #0
	add r0, r0, #60
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _080249C6
	mov r0, #1
	strb r0, [r4, #20]
_080249C6:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08024998

	THUMB_FUNC_START sub_080249CC
sub_080249CC: @ 0x080249CC
	push {r4-r7,lr}
	add r5, r0, #0
	ldr r3, [r5, #84]
	ldr r2, _08024A3C  @ =gUnknown_084276A2
	add r7, r5, #0
	add r7, r7, #41
	ldrb r0, [r7]
	lsr r0, r0, #4
	mov r1, #3
	and r0, r0, r1
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	strh r0, [r5, #58]
	strh r0, [r3, #58]
	ldrb r1, [r7]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08024A48
	mov r0, #13
	bl sub_08012494
	add r6, r0, #0
	cmp r6, #0
	beq _08024A68
	ldr r4, _08024A40  @ =gUnknown_03006A30
	bl 0x0800099C
	ldr r1, _08024A44  @ =gUnknown_03006C80
	ldrb r1, [r1]
	bl __umodsi3
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #4
	add r4, r4, #40
	add r1, r1, r4
	ldr r1, [r1]
	add r0, r5, #0
	bl sub_0803CECC
	add r1, r6, #0
	add r1, r1, #43
	strb r0, [r1]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0803D3D0
	mov r0, #0
	strb r0, [r7]
	mov r0, #165
	bl 0x08003DFC
	b _08024A68
_08024A3C:
	.4byte gUnknown_084276A2
_08024A40:
	.4byte gUnknown_03006A30
_08024A44:
	.4byte gUnknown_03006C80
_08024A48:
	lsl r0, r1, #24
	lsr r0, r0, #24
	cmp r0, #128
	bne _08024A68
	mov r0, #2
	strb r0, [r5, #20]
	bl 0x0800099C
	add r0, r0, #30
	mov r1, #15
	and r0, r0, r1
	strb r0, [r5, #23]
	add r0, r5, #0
	mov r1, #8
	bl 0x08003870
_08024A68:
	add r0, r5, #0
	add r0, r0, #60
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _08024A7A
	mov r0, #1
	strb r0, [r5, #20]
_08024A7A:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080249CC

	THUMB_FUNC_START sub_08024A80
sub_08024A80: @ 0x08024A80
	push {r4,r5,lr}
	add r3, r0, #0
	add r5, r1, #0
	add r2, r3, #0
	add r2, r2, #110
	ldrh r0, [r2]
	mov r1, #1
	mov r4, #0
	orr r1, r1, r0
	strh r1, [r2]
	add r1, r3, #0
	add r1, r1, #69
	ldr r0, [r5, #76]
	add r0, r0, #68
	ldrb r2, [r1]
	ldrb r0, [r0]
	cmp r2, r0
	bcs _08024AA8
	strb r4, [r1]
	b _08024AAC
_08024AA8:
	sub r0, r2, r0
	strb r0, [r1]
_08024AAC:
	ldr r0, [r5, #76]
	add r0, r0, #70
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bge _08024AC4
	neg r0, r1
	add r1, r0, #0
	sub r1, r1, #16
	b _08024AC6
_08024AC4:
	add r1, r1, #16
_08024AC6:
	add r0, r3, #0
	add r0, r0, #61
	strb r1, [r0]
	ldr r0, [r3, #112]
	add r0, r0, #61
	strb r1, [r0]
	mov r0, #45
	bl 0x08003DFC
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08024A80

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08024AE0
sub_08024AE0: @ 0x08024AE0
	push {r4-r6,lr}
	add r2, r0, #0
	ldr r4, [r2, #112]
	ldrb r0, [r4, #30]
	lsr r0, r0, #4
	ldrb r1, [r2, #30]
	lsr r5, r1, #4
	cmp r0, r5
	bne _08024B44
	add r3, r2, #0
	add r3, r3, #65
	ldrb r1, [r3]
	mov r6, #128
	add r0, r6, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08024B1A
	ldrb r0, [r3]
	sub r0, r0, #132
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #159
	bhi _08024BC4
	sub r1, r5, #7
	ldr r0, [r2, #76]
	ldrb r0, [r0, #10]
	cmp r1, r0
	bne _08024BD2
	b _08024BB4
_08024B1A:
	add r3, r4, #0
	add r3, r3, #65
	ldrb r1, [r3]
	add r0, r6, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08024BD2
	ldrb r0, [r3]
	sub r0, r0, #132
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #159
	bhi _08024BC4
	sub r1, r5, #7
	ldr r0, [r4, #76]
	ldrb r0, [r0, #10]
	cmp r1, r0
	bne _08024BD2
	add r0, r2, #0
	add r1, r4, #0
	b _08024BB8
_08024B44:
	mov r4, #0
	add r3, r2, #0
	add r3, r3, #65
	ldrb r1, [r3]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08024B6E
	ldrb r0, [r3]
	sub r0, r0, #132
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #159
	bhi _08024B6E
	mov r4, #16
	sub r1, r5, #7
	ldr r0, [r2, #76]
	ldrb r0, [r0, #10]
	cmp r1, r0
	bne _08024B6E
	mov r4, #17
_08024B6E:
	ldr r3, [r2, #112]
	mov r0, #65
	add r0, r0, r3
	mov r12, r0
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08024BA8
	mov r1, r12
	ldrb r0, [r1]
	sub r0, r0, #132
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #159
	bhi _08024BA8
	mov r0, #32
	orr r4, r4, r0
	ldrb r0, [r3, #30]
	lsr r0, r0, #4
	sub r0, r0, #7
	ldr r1, [r3, #76]
	ldrb r1, [r1, #10]
	cmp r0, r1
	bne _08024BA8
	mov r0, #2
	orr r4, r4, r0
	lsl r0, r4, #24
	lsr r4, r0, #24
_08024BA8:
	cmp r4, #0
	beq _08024BD2
	mov r0, #3
	and r0, r0, r4
	cmp r0, #3
	bne _08024BC0
_08024BB4:
	add r0, r2, #0
	add r1, r2, #0
_08024BB8:
	bl sub_08024A80
	mov r0, #1
	b _08024BD4
_08024BC0:
	cmp r0, #0
	bne _08024BD2
_08024BC4:
	add r0, r2, #0
	add r0, r0, #61
	mov r1, #248
	strb r1, [r0]
	ldr r0, [r2, #112]
	add r0, r0, #61
	strb r1, [r0]
_08024BD2:
	mov r0, #0
_08024BD4:
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08024AE0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08024BDC
sub_08024BDC: @ 0x08024BDC
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r5, r0, #0
	bl 0x0800099C
	ldr r1, _08024C3C  @ =gUnknown_03006C80
	mov r9, r1
	ldrb r1, [r1]
	bl __umodsi3
	add r0, r0, #7
	mov r6, #15
	mov r2, #15
	mov r8, r2
	add r1, r0, #0
	and r1, r1, r6
	mov r7, #16
	neg r7, r7
	lsl r2, r0, #4
	orr r2, r2, r1
	strb r2, [r5, #30]
	add r0, r5, #0
	add r0, r0, #110
	ldrh r0, [r0]
	cmp r0, #0
	beq _08024C40
	bl 0x0800099C
	ldr r4, [r5, #112]
	mov r2, r9
	ldrb r1, [r2]
	bl __umodsi3
	add r0, r0, #7
	lsl r3, r0, #4
	ldrb r2, [r4, #30]
	add r1, r6, #0
	and r1, r1, r2
	orr r1, r1, r3
	and r0, r0, r6
	mov r2, r8
	and r0, r0, r2
	and r1, r1, r7
	orr r1, r1, r0
	strb r1, [r4, #30]
	b _08024C5C
_08024C3C:
	.4byte gUnknown_03006C80
_08024C40:
	ldr r4, [r5, #112]
	lsl r1, r2, #28
	lsr r1, r1, #28
	lsl r3, r1, #4
	ldrb r2, [r4, #30]
	add r0, r6, #0
	and r0, r0, r2
	orr r0, r0, r3
	and r1, r1, r6
	mov r2, r8
	and r1, r1, r2
	and r0, r0, r7
	orr r0, r0, r1
	strb r0, [r4, #30]
_08024C5C:
	ldr r2, [r5, #112]
	ldrb r1, [r2, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r2, #28]
	add r0, r5, #0
	mov r1, #4
	bl 0x08003870
	ldr r0, [r5, #112]
	mov r1, #5
	bl 0x08003870
	mov r0, #162
	bl 0x08003DFC
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08024BDC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08024C90
sub_08024C90: @ 0x08024C90
	push {r4-r6,lr}
	add r4, r0, #0
	bl 0x0800099C
	ldr r6, [r4, #112]
	ldr r5, _08024CC8  @ =gUnknown_0813C138
	ldrb r1, [r4, #30]
	lsl r1, r1, #28
	lsr r1, r1, #28
	sub r1, r1, #7
	lsl r4, r1, #1
	add r4, r4, r1
	ldr r1, _08024CCC  @ =gUnknown_03006C80
	ldrb r1, [r1]
	sub r1, r1, #1
	bl __umodsi3
	add r4, r4, r0
	add r4, r4, r5
	ldrb r0, [r4]
	mov r1, #15
	and r1, r1, r0
	lsl r0, r0, #4
	orr r0, r0, r1
	strb r0, [r6, #30]
	pop {r4-r6}
	pop {r0}
	bx r0
_08024CC8:
	.4byte gUnknown_0813C138
_08024CCC:
	.4byte gUnknown_03006C80
	THUMB_FUNC_END sub_08024C90

	THUMB_FUNC_START sub_08024CD0
sub_08024CD0: @ 0x08024CD0
	push {r4,lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, r1, #63
	mov r0, #63
	strb r0, [r1]
	ldr r0, _08024D0C  @ =gUnknown_0813C154
	str r0, [r4, #72]
	ldr r1, [r4, #112]
	add r1, r1, #60
	ldrb r2, [r1]
	mov r0, #128
	orr r0, r0, r2
	strb r0, [r1]
	ldr r0, [r4, #112]
	mov r1, #8
	bl 0x08003870
	bl 0x0800099C
	ldr r1, [r4, #112]
	add r1, r1, #40
	mov r2, #7
	and r0, r0, r2
	ldrb r2, [r1]
	add r0, r0, r2
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
_08024D0C:
	.4byte gUnknown_0813C154
	THUMB_FUNC_END sub_08024CD0

	THUMB_FUNC_START sub_08024D10
sub_08024D10: @ 0x08024D10
	push {r4,lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, r1, #63
	mov r0, #64
	strb r0, [r1]
	ldr r0, _08024D44  @ =gUnknown_0813C164
	str r0, [r4, #72]
	ldr r1, [r4, #112]
	add r1, r1, #60
	ldrb r2, [r1]
	mov r0, #127
	and r0, r0, r2
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #6
	bl 0x08003870
	ldr r0, [r4, #112]
	mov r1, #7
	bl 0x08003870
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08024D44:
	.4byte gUnknown_0813C164
	THUMB_FUNC_END sub_08024D10

	THUMB_FUNC_START sub_08024D48
sub_08024D48: @ 0x08024D48
	push {lr}
	add r3, r0, #0
	add r3, r3, #110
	ldrh r2, [r3]
	mov r1, #63
	and r1, r1, r2
	strh r1, [r3]
	ldr r1, [r0, #84]
	ldrb r2, [r1, #30]
	lsl r2, r2, #28
	lsr r2, r2, #28
	lsl r1, r2, #4
	orr r1, r1, r2
	strb r1, [r0, #30]
	ldr r3, [r0, #112]
	ldrb r2, [r3, #28]
	mov r1, #4
	neg r1, r1
	and r1, r1, r2
	strb r1, [r3, #28]
	mov r1, #3
	bl 0x08003870
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08024D48

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08024D7C
sub_08024D7C: @ 0x08024D7C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r4, r0, #0
	bl sub_080123E8
	mov r8, r0
	cmp r0, #0
	bne _08024D92
	b _08024E92
_08024D92:
	bl sub_08012410
	add r6, r0, #0
	cmp r6, #0
	beq _08024E92
	bl sub_08012410
	add r5, r0, #0
	cmp r5, #0
	beq _08024E92
	bl sub_08012410
	add r7, r0, #0
	cmp r7, #0
	beq _08024E92
	mov r3, #3
	mov r0, #3
	mov r1, r8
	strb r0, [r1, #8]
	strb r0, [r6, #8]
	strb r0, [r5, #8]
	strb r0, [r7, #8]
	mov r0, #45
	mov r9, r0
	mov r0, r9
	strb r0, [r1, #9]
	mov r0, #44
	strb r0, [r6, #9]
	strb r0, [r5, #9]
	strb r0, [r7, #9]
	mov r2, #1
	mov r0, #1
	strb r0, [r1, #10]
	mov r1, #2
	mov r0, #2
	strb r0, [r6, #10]
	strb r0, [r5, #10]
	strb r0, [r7, #10]
	ldrb r0, [r4, #11]
	lsl r0, r0, #4
	orr r0, r0, r3
	strb r0, [r6, #11]
	ldrb r0, [r4, #11]
	lsl r0, r0, #4
	orr r0, r0, r1
	strb r0, [r5, #11]
	ldrb r0, [r4, #11]
	lsl r0, r0, #4
	orr r0, r0, r2
	strb r0, [r7, #11]
	mov r1, r8
	str r4, [r1, #84]
	str r4, [r6, #84]
	str r4, [r5, #84]
	str r4, [r7, #84]
	str r4, [r6, #88]
	str r6, [r5, #88]
	str r5, [r7, #88]
	add r0, r4, #0
	bl sub_0803D3D0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0803D3D0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0803D3D0
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0803D3D0
	mov r0, #4
	mov r1, r8
	bl sub_08012728
	mov r0, #4
	add r1, r6, #0
	bl sub_08012728
	mov r0, #4
	add r1, r5, #0
	bl sub_08012728
	mov r0, #4
	add r1, r7, #0
	bl sub_08012728
	mov r0, r8
	str r0, [r4, #112]
	ldrb r0, [r4, #11]
	cmp r0, #2
	bne _08024E5C
	mov r0, #30
	strb r0, [r6, #23]
	mov r0, #60
	strb r0, [r5, #23]
	mov r0, #90
	strb r0, [r7, #23]
	b _08024E68
_08024E5C:
	mov r0, #15
	strb r0, [r6, #23]
	mov r0, #30
	strb r0, [r5, #23]
	mov r1, r9
	strb r1, [r7, #23]
_08024E68:
	ldr r1, [r4, #88]
	ldr r0, [r1, #112]
	cmp r0, #0
	bne _08024E78
	str r7, [r1, #112]
	ldr r0, [r4, #88]
	add r0, r0, #112
	b _08024E8C
_08024E78:
	ldr r0, [r1, #116]
	cmp r0, #0
	bne _08024E86
	str r7, [r1, #116]
	ldr r0, [r4, #88]
	add r0, r0, #116
	b _08024E8C
_08024E86:
	str r7, [r1, #120]
	ldr r0, [r4, #88]
	add r0, r0, #120
_08024E8C:
	str r0, [r4, #116]
	mov r0, #1
	b _08024E94
_08024E92:
	mov r0, #0
_08024E94:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08024D7C

	THUMB_FUNC_START sub_08024EA0
sub_08024EA0: @ 0x08024EA0
	push {r4,r5,lr}
	add r4, r0, #0
	ldr r0, [r4, #116]
	mov r5, #0
	str r5, [r0]
	ldr r1, [r4, #84]
	add r1, r1, #124
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	mov r0, #15
	mov r1, #1
	mov r2, #0
	bl sub_0804C8A8
	add r1, r0, #0
	cmp r1, #0
	beq _08024ECA
	add r0, r4, #0
	bl sub_0803D3D0
_08024ECA:
	add r0, r4, #0
	bl sub_08025058
	mov r0, #25
	strb r0, [r4, #20]
	ldrb r1, [r4, #28]
	sub r0, r0, #29
	and r0, r0, r1
	strb r0, [r4, #28]
	add r2, r4, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #127
	and r0, r0, r1
	strb r0, [r2]
	add r0, r4, #0
	add r0, r0, #69
	strb r5, [r0]
	ldr r0, [r4, #112]
	bl sub_08012540
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08024EA0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08024EFC
sub_08024EFC: @ 0x08024EFC
	push {r4,r5,lr}
	add r5, r0, #0
	mov r0, #14
	bl sub_08012494
	add r4, r0, #0
	cmp r4, #0
	beq _08024F40
	add r2, r5, #0
	add r2, r2, #42
	ldrb r0, [r2]
	lsl r0, r0, #2
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	ldr r3, _08024F48  @ =gUnknown_084276A6
	ldrb r0, [r2]
	lsl r0, r0, #1
	add r1, r0, r3
	mov r2, #0
	ldrsb r2, [r1, r2]
	lsl r2, r2, #16
	add r0, r0, #1
	add r0, r0, r3
	mov r3, #0
	ldrsb r3, [r0, r3]
	lsl r3, r3, #16
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0803D4A4
	mov r0, #165
	bl 0x08003DFC
_08024F40:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08024F48:
	.4byte gUnknown_084276A6
	THUMB_FUNC_END sub_08024EFC

	THUMB_FUNC_START sub_08024F4C
sub_08024F4C: @ 0x08024F4C
	push {r4,r5,lr}
	add r4, r0, #0
	ldr r0, [r4, #84]
	add r1, r4, #0
	bl sub_0803CECC
	add r5, r4, #0
	add r5, r5, #43
	strb r0, [r5]
	ldrb r0, [r5]
	add r0, r0, #2
	asr r1, r0, #2
	mov r0, #7
	and r1, r1, r0
	add r0, r4, #0
	add r0, r0, #42
	ldrb r2, [r0]
	cmp r1, r2
	beq _08024F7C
	strb r1, [r0]
	add r1, r1, #20
	add r0, r4, #0
	bl 0x08003870
_08024F7C:
	add r0, r4, #0
	bl sub_0803CC20
	ldrb r0, [r5]
	add r0, r0, #8
	mov r1, #31
	and r0, r0, r1
	strb r0, [r5]
	add r0, r4, #0
	bl sub_0803CC20
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08024F4C

	THUMB_FUNC_START sub_08024F98
sub_08024F98: @ 0x08024F98
	push {r4,r5,lr}
	add r5, r0, #0
	mov r0, #43
	add r0, r0, r5
	mov r12, r0
	ldrb r0, [r0]
	add r0, r0, #1
	mov r1, r12
	strb r0, [r1]
	ldr r4, [r5, #84]
	ldr r3, _08024FE8  @ =gUnknown_0813E4CC
	ldrb r0, [r1]
	lsl r0, r0, #1
	add r0, r0, r3
	mov r2, #0
	ldrsh r1, [r0, r2]
	add r2, r5, #0
	add r2, r2, #124
	ldrh r0, [r2]
	mul r0, r1, r0
	asr r0, r0, #8
	ldrh r1, [r4, #50]
	add r0, r0, r1
	strh r0, [r5, #50]
	mov r1, r12
	ldrb r0, [r1]
	add r0, r0, #64
	lsl r0, r0, #1
	add r0, r0, r3
	mov r3, #0
	ldrsh r1, [r0, r3]
	ldrh r0, [r2]
	mul r1, r0, r1
	asr r1, r1, #8
	ldrh r0, [r4, #54]
	sub r0, r0, r1
	strh r0, [r5, #54]
	pop {r4,r5}
	pop {r0}
	bx r0
_08024FE8:
	.4byte gUnknown_0813E4CC
	THUMB_FUNC_END sub_08024F98

	THUMB_FUNC_START sub_08024FEC
sub_08024FEC: @ 0x08024FEC
	push {r4-r6,lr}
	add r5, r0, #0
	add r6, r5, #0
	add r6, r6, #43
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	ldrb r0, [r6]
	add r0, r0, #16
	asr r1, r0, #5
	mov r0, #7
	and r1, r1, r0
	add r0, r5, #0
	add r0, r0, #42
	ldrb r2, [r0]
	cmp r1, r2
	beq _08025018
	strb r1, [r0]
	add r1, r1, #20
	add r0, r5, #0
	bl 0x08003870
_08025018:
	ldr r4, [r5, #84]
	ldr r3, _08025054  @ =gUnknown_0813E4CC
	ldrb r0, [r6]
	lsl r0, r0, #1
	add r0, r0, r3
	mov r2, #0
	ldrsh r1, [r0, r2]
	add r2, r5, #0
	add r2, r2, #124
	ldrh r0, [r2]
	mul r0, r1, r0
	asr r0, r0, #8
	ldrh r1, [r4, #50]
	add r0, r0, r1
	strh r0, [r5, #50]
	ldrb r0, [r6]
	add r0, r0, #64
	lsl r0, r0, #1
	add r0, r0, r3
	mov r3, #0
	ldrsh r1, [r0, r3]
	ldrh r0, [r2]
	mul r1, r0, r1
	asr r1, r1, #8
	ldrh r0, [r4, #54]
	sub r0, r0, r1
	strh r0, [r5, #54]
	pop {r4-r6}
	pop {r0}
	bx r0
_08025054:
	.4byte gUnknown_0813E4CC
	THUMB_FUNC_END sub_08024FEC

	THUMB_FUNC_START sub_08025058
sub_08025058: @ 0x08025058
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r7, r0, #0
	ldrb r0, [r7, #10]
	cmp r0, #1
	bhi _080250CC
	ldr r0, [r7, #84]
	add r1, r7, #0
	bl sub_0803CECC
	sub r5, r0, #3
	mov r0, #31
	and r5, r5, r0
	bl 0x0800099C
	add r4, r0, #0
	mov r0, #3
	and r4, r4, r0
	bl 0x0800099C
	mov r1, #12
	and r1, r1, r0
	ldr r0, _080250D8  @ =gUnknown_0813C144
	add r1, r1, r0
	mov r8, r1
	mov r6, #0
_0802508E:
	mov r1, r8
	add r0, r1, r4
	ldrb r1, [r0]
	mov r0, #0
	mov r2, #1
	bl sub_0804C8A8
	add r2, r0, #0
	cmp r2, #0
	beq _080250B6
	mov r1, #128
	add r3, r2, #0
	add r3, r3, #43
	add r0, r5, #0
	orr r0, r0, r1
	strb r0, [r3]
	add r0, r7, #0
	add r1, r2, #0
	bl sub_0803D3D0
_080250B6:
	add r5, r5, #2
	mov r0, #31
	and r5, r5, r0
	add r4, r4, #1
	mov r0, #3
	and r4, r4, r0
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #3
	bls _0802508E
_080250CC:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080250D8:
	.4byte gUnknown_0813C144
	THUMB_FUNC_END sub_08025058

	THUMB_FUNC_START sub_080250DC
sub_080250DC: @ 0x080250DC
	push {r4,r5,lr}
	add r4, r0, #0
	ldr r5, _080250FC  @ =gUnknown_0813C2F4
	bl 0x08002E18
	lsl r0, r0, #24
	lsr r0, r0, #22
	add r0, r0, r5
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080250FC:
	.4byte gUnknown_0813C2F4
	THUMB_FUNC_END sub_080250DC

	THUMB_FUNC_START sub_08025100
sub_08025100: @ 0x08025100
	push {lr}
	ldr r2, _08025114  @ =gUnknown_0813C308
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08025114:
	.4byte gUnknown_0813C308
	THUMB_FUNC_END sub_08025100

	THUMB_FUNC_START sub_08025118
sub_08025118: @ 0x08025118
	push {lr}
	add r2, r0, #0
	add r0, r0, #65
	ldrb r0, [r0]
	cmp r0, #128
	bne _0802512C
	add r0, r2, #0
	bl sub_08012540
	b _0802513E
_0802512C:
	add r0, r2, #0
	add r0, r0, #62
	ldrb r0, [r0]
	add r1, r2, #0
	add r1, r1, #43
	strb r0, [r1]
	add r0, r2, #0
	bl sub_08025210
_0802513E:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08025118

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08025144
sub_08025144: @ 0x08025144
	push {lr}
	add r3, r0, #0
	ldrb r0, [r3, #20]
	add r0, r0, #1
	strb r0, [r3, #20]
	ldrh r0, [r3, #58]
	sub r0, r0, #2
	mov r2, #0
	strh r0, [r3, #58]
	ldrb r1, [r3, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r3, #28]
	add r1, r3, #0
	add r1, r1, #46
	mov r0, #2
	strb r0, [r1]
	add r0, r3, #0
	add r0, r0, #35
	strb r2, [r0]
	ldrb r1, [r3, #28]
	mov r0, #49
	neg r0, r0
	and r0, r0, r1
	mov r1, #16
	orr r0, r0, r1
	strb r0, [r3, #28]
	ldr r0, _08025198  @ =gUnknown_0813C36C
	str r0, [r3, #72]
	add r0, r3, #0
	add r0, r0, #43
	ldrb r1, [r0]
	lsr r1, r1, #4
	add r0, r3, #0
	bl 0x08003870
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08025198:
	.4byte gUnknown_0813C36C
	THUMB_FUNC_END sub_08025144

	THUMB_FUNC_START sub_0802519C
sub_0802519C: @ 0x0802519C
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	bl 0x08009FDC
	ldrh r1, [r4, #44]
	cmp r1, #0
	beq _080251DA
	ldr r0, _080251C0  @ =0x0000FFFF
	cmp r1, r0
	bne _080251C4
	add r0, r4, #0
	bl sub_08012540
	b _080251E0
	.byte 0x00
	.byte 0x00
_080251C0:
	.4byte 0x0000FFFF
_080251C4:
	ldrh r1, [r4, #44]
	add r0, r4, #0
	bl 0x080038E8
	add r0, r4, #0
	bl sub_08025210
	add r0, r4, #0
	bl 0x08008E50
	b _080251E0
_080251DA:
	add r0, r4, #0
	bl 0x08008E50
_080251E0:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802519C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080251E8
sub_080251E8: @ 0x080251E8
	push {r4,lr}
	add r4, r0, #0
	bl sub_0803CC20
	add r0, r4, #0
	bl 0x08003828
	mov r1, #192
	lsl r1, r1, #5
	add r0, r4, #0
	bl 0x08003594
	cmp r0, #0
	bne _0802520A
	add r0, r4, #0
	bl sub_08012540
_0802520A:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080251E8

	THUMB_FUNC_START sub_08025210
sub_08025210: @ 0x08025210
	push {lr}
	mov r1, #2
	strb r1, [r0, #20]
	mov r1, #64
	str r1, [r0, #12]
	mov r1, #160
	lsl r1, r1, #9
	str r1, [r0, #16]
	add r3, r0, #0
	add r3, r3, #60
	ldrb r2, [r3]
	mov r1, #127
	and r1, r1, r2
	strb r1, [r3]
	add r1, r0, #0
	add r1, r1, #43
	ldrb r1, [r1]
	lsr r1, r1, #4
	add r1, r1, #2
	bl 0x08003870
	mov r0, #29
	bl 0x08003DFC
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08025210

	THUMB_FUNC_START sub_08025244
sub_08025244: @ 0x08025244
	push {lr}
	add r2, r0, #0
	add r0, r0, #65
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08025264
	mov r0, #127
	and r0, r0, r1
	cmp r0, #7
	bhi _08025264
	add r0, r2, #0
	bl sub_08012540
	b _08025274
_08025264:
	ldr r0, _08025278  @ =gUnknown_0813C374
	ldrb r1, [r2, #20]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r2, #0
	bl _call_via_r1
_08025274:
	pop {r0}
	bx r0
_08025278:
	.4byte gUnknown_0813C374
	THUMB_FUNC_END sub_08025244

	THUMB_FUNC_START sub_0802527C
sub_0802527C: @ 0x0802527C
	push {lr}
	ldrb r1, [r0, #20]
	add r1, r1, #1
	strb r1, [r0, #20]
	mov r1, #8
	strb r1, [r0, #23]
	ldrb r2, [r0, #28]
	sub r1, r1, #12
	and r1, r1, r2
	mov r2, #1
	orr r1, r1, r2
	strb r1, [r0, #28]
	ldr r1, _080252A4  @ =gUnknown_0813C390
	str r1, [r0, #72]
	mov r1, #0
	bl 0x08003870
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080252A4:
	.4byte gUnknown_0813C390
	THUMB_FUNC_END sub_0802527C

	THUMB_FUNC_START sub_080252A8
sub_080252A8: @ 0x080252A8
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _080252BE
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
_080252BE:
	add r0, r4, #0
	bl 0x08003828
	add r2, r4, #0
	add r2, r2, #41
	ldrb r1, [r2]
	mov r3, #1
	add r0, r3, #0
	and r0, r0, r1
	cmp r0, #0
	beq _080252E8
	mov r0, #0
	strb r0, [r2]
	ldrb r2, [r4, #30]
	lsl r1, r2, #28
	lsr r1, r1, #28
	eor r1, r1, r3
	sub r0, r0, #16
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #30]
_080252E8:
	add r0, r4, #0
	bl sub_0803CC20
	add r0, r4, #0
	bl 0x08008E50
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080252A8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080252FC
sub_080252FC: @ 0x080252FC
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r2, r4, #0
	add r2, r2, #41
	ldrb r1, [r2]
	mov r3, #1
	add r0, r3, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08025328
	mov r0, #0
	strb r0, [r2]
	ldrb r2, [r4, #30]
	lsl r1, r2, #28
	lsr r1, r1, #28
	eor r1, r1, r3
	sub r0, r0, #16
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #30]
_08025328:
	add r0, r4, #0
	bl 0x08009FDC
	add r0, r4, #0
	bl 0x08008E50
	ldrh r0, [r4, #44]
	cmp r0, #0
	beq _08025340
	add r0, r4, #0
	bl sub_08012540
_08025340:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080252FC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08025348
sub_08025348: @ 0x08025348
	push {r4,lr}
	add r4, r0, #0
	ldr r1, _08025388  @ =gUnknown_0813C398
	ldrb r0, [r4, #20]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
	add r0, r4, #0
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802536E
	ldr r1, [r4, #100]
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _080253AC
_0802536E:
	ldr r2, [r4, #100]
	ldr r0, [r2, #4]
	cmp r0, #0
	beq _0802539E
	ldrb r0, [r2, #8]
	cmp r0, #1
	bne _0802538C
	mov r1, #0
	strb r0, [r2, #23]
	ldr r0, [r4, #100]
	str r1, [r0, #16]
	b _0802539E
	.byte 0x00
	.byte 0x00
_08025388:
	.4byte gUnknown_0813C398
_0802538C:
	ldrh r1, [r2, #8]
	mov r0, #129
	lsl r0, r0, #3
	cmp r1, r0
	bne _0802539E
	ldrb r1, [r2, #26]
	mov r0, #240
	and r0, r0, r1
	strb r0, [r2, #26]
_0802539E:
	ldr r1, [r4, #100]
	mov r0, #0
	str r0, [r1, #88]
	add r0, r4, #0
	bl sub_08012540
	b _080253B2
_080253AC:
	add r0, r4, #0
	bl sub_0803D3D0
_080253B2:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08025348

	THUMB_FUNC_START sub_080253B8
sub_080253B8: @ 0x080253B8
	push {r4,r5,lr}
	add r5, r0, #0
	mov r4, #0
	mov r0, #1
	strb r0, [r5, #20]
	mov r0, #60
	strb r0, [r5, #23]
	strb r4, [r5, #11]
	ldr r1, [r5, #100]
	add r0, r5, #0
	bl sub_0803CECC
	lsl r0, r0, #3
	add r1, r5, #0
	add r1, r1, #43
	strb r0, [r1]
	str r4, [r5, #56]
	ldr r0, [r5, #100]
	ldr r0, [r0, #72]
	str r0, [r5, #72]
	add r1, r1, #71
	mov r0, #150
	lsl r0, r0, #1
	strh r0, [r1]
	bl 0x0800099C
	mov r1, #15
	and r0, r0, r1
	add r0, r0, #24
	add r1, r5, #0
	add r1, r1, #116
	strh r0, [r1]
	ldr r2, [r5, #100]
	ldrb r0, [r2, #8]
	cmp r0, #1
	bne _08025434
	ldrb r1, [r2, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	ldr r1, _08025430  @ =gUnknown_03006A30
	add r2, r0, r1
	mov r0, #14
	strb r0, [r2, #12]
	add r1, r2, #0
	add r1, r1, #56
	mov r0, #189
	strb r0, [r1]
	add r1, r1, #1
	mov r0, #2
	strb r0, [r1]
	add r1, r1, #1
	mov r0, #255
	strb r0, [r1]
	ldr r0, [r5, #100]
	add r0, r0, #42
	mov r1, #0
	strb r1, [r0]
	b _0802544A
	.byte 0x00
	.byte 0x00
_08025430:
	.4byte gUnknown_03006A30
_08025434:
	ldrh r1, [r2, #8]
	mov r0, #129
	lsl r0, r0, #3
	cmp r1, r0
	bne _0802544A
	ldrb r0, [r2, #26]
	mov r1, #240
	and r1, r1, r0
	mov r0, #6
	orr r1, r1, r0
	strb r1, [r2, #26]
_0802544A:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080253B8

	THUMB_FUNC_START sub_08025450
sub_08025450: @ 0x08025450
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r5, r0, #0
	ldr r0, [r5, #100]
	ldrb r4, [r0, #8]
	cmp r4, #1
	bne _08025486
	bl 0x08003FB0
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	bne _08025476
	add r0, r5, #0
	add r0, r0, #69
	strb r1, [r0]
	b _08025692
_08025476:
	ldr r2, _0802553C  @ =gUnknown_03006A30
	ldr r0, [r5, #100]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r2
	strb r4, [r0, #26]
_08025486:
	ldr r0, [r5, #88]
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #0
	bne _08025492
	b _08025638
_08025492:
	add r0, r5, #0
	add r0, r0, #43
	ldrb r1, [r0]
	sub r1, r1, #8
	strb r1, [r0]
	ldr r1, [r5, #84]
	mov r9, r1
	mov r2, #125
	add r2, r2, r9
	mov r12, r2
	ldrb r1, [r2]
	mov r3, #1
	mov r8, r3
	mov r4, r8
	and r4, r4, r1
	add r6, r0, #0
	cmp r4, #0
	bne _080254C0
	ldr r1, [r5, #100]
	ldrb r0, [r1, #8]
	cmp r0, #1
	bne _080254C0
	b _080255C0
_080254C0:
	ldr r0, [r5, #56]
	ldr r7, _08025540  @ =0xFFFF8000
	add r0, r0, r7
	str r0, [r5, #56]
	ldr r4, [r5, #88]
	ldr r2, _08025544  @ =gUnknown_0813E4CC
	ldrb r0, [r6]
	lsl r0, r0, #1
	add r0, r0, r2
	mov r3, #0
	ldrsh r1, [r0, r3]
	lsl r1, r1, #8
	ldr r3, _08025548  @ =gUnknown_0813C3A4
	mov r7, #58
	ldrsh r0, [r5, r7]
	neg r0, r0
	asr r0, r0, #2
	lsl r0, r0, #2
	add r0, r0, r3
	ldrh r0, [r0]
	mul r1, r0, r1
	ldr r0, [r4, #48]
	add r0, r0, r1
	str r0, [r5, #48]
	ldrb r0, [r6]
	add r0, r0, #64
	lsl r0, r0, #1
	add r0, r0, r2
	mov r2, #0
	ldrsh r1, [r0, r2]
	lsl r1, r1, #8
	mov r7, #58
	ldrsh r0, [r5, r7]
	neg r0, r0
	asr r0, r0, #2
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r3
	ldrh r0, [r0]
	mul r1, r0, r1
	ldr r0, [r4, #52]
	sub r0, r0, r1
	sub r0, r0, #6
	str r0, [r5, #52]
	mov r0, r12
	ldrb r1, [r0]
	mov r0, r8
	and r0, r0, r1
	cmp r0, #0
	beq _0802554C
	mov r2, #58
	ldrsh r1, [r5, r2]
	mov r0, #88
	neg r0, r0
	cmp r1, r0
	bge _08025568
	add r0, r5, #0
	bl sub_080256DC
	b _08025568
	.byte 0x00
	.byte 0x00
_0802553C:
	.4byte gUnknown_03006A30
_08025540:
	.4byte 0xFFFF8000
_08025544:
	.4byte gUnknown_0813E4CC
_08025548:
	.4byte gUnknown_0813C3A4
_0802554C:
	ldr r1, _080255B8  @ =gUnknown_0813C41C
	mov r0, r9
	add r0, r0, #124
	ldrb r0, [r0]
	add r0, r0, r1
	mov r1, #0
	ldrsb r1, [r0, r1]
	mov r3, #58
	ldrsh r0, [r5, r3]
	cmp r1, r0
	ble _08025568
	add r0, r5, #0
	bl sub_080256DC
_08025568:
	ldr r1, [r5, #100]
	ldrb r0, [r1, #8]
	cmp r0, #1
	beq _08025572
	b _08025692
_08025572:
	mov r0, #255
	strb r0, [r1, #23]
	add r4, r5, #0
	add r4, r4, #116
	ldrh r0, [r4]
	sub r0, r0, #1
	strh r0, [r4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _08025588
	b _08025692
_08025588:
	bl 0x0800099C
	mov r1, #15
	and r0, r0, r1
	add r0, r0, #24
	strh r0, [r4]
	ldr r0, [r5, #100]
	ldrb r5, [r0, #10]
	ldr r4, _080255BC  @ =gUnknown_084276B8
	bl 0x0800099C
	mov r1, #7
	and r1, r1, r0
	add r1, r1, r4
	ldrb r1, [r1]
	ldrb r2, [r6]
	add r2, r2, #4
	asr r2, r2, #3
	mov r0, #31
	and r2, r2, r0
	add r0, r5, #0
	bl sub_0803D520
	b _08025692
_080255B8:
	.4byte gUnknown_0813C41C
_080255BC:
	.4byte gUnknown_084276B8
_080255C0:
	mov r0, #255
	strb r0, [r1, #23]
	ldrb r0, [r5, #23]
	sub r0, r0, #1
	strb r0, [r5, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _080255EE
	mov r0, #60
	strb r0, [r5, #23]
	ldr r0, [r5, #100]
	mov r1, #2
	neg r1, r1
	bl sub_0802C3F0
	ldr r0, [r5, #100]
	add r0, r0, #61
	mov r1, #30
	strb r1, [r0]
	ldr r0, [r5, #100]
	mov r1, #195
	bl sub_0800D1C0
_080255EE:
	ldr r1, _08025610  @ =gUnknown_03005E10
	ldr r0, [r5, #100]
	ldrb r0, [r0, #10]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802561A
	add r0, r5, #0
	add r0, r0, #114
	ldrh r2, [r0]
	add r1, r0, #0
	cmp r2, #7
	bhi _08025614
	strh r4, [r1]
	b _08025624
	.byte 0x00
	.byte 0x00
_08025610:
	.4byte gUnknown_03005E10
_08025614:
	add r0, r2, #0
	sub r0, r0, #8
	b _08025622
_0802561A:
	add r1, r5, #0
	add r1, r1, #114
	ldrh r0, [r1]
	sub r0, r0, #1
_08025622:
	strh r0, [r1]
_08025624:
	ldrh r0, [r1]
	cmp r0, #0
	beq _08025638
	ldr r0, [r5, #100]
	mov r7, #58
	ldrsh r1, [r0, r7]
	mov r0, #8
	neg r0, r0
	cmp r1, r0
	bge _08025640
_08025638:
	add r0, r5, #0
	bl sub_080256DC
	b _08025692
_08025640:
	ldr r4, [r5, #88]
	ldr r2, _080256A0  @ =gUnknown_0813E4CC
	ldrb r0, [r6]
	lsl r0, r0, #1
	add r0, r0, r2
	mov r3, #0
	ldrsh r1, [r0, r3]
	lsl r1, r1, #8
	ldr r3, _080256A4  @ =gUnknown_0813C3A4
	mov r7, #58
	ldrsh r0, [r5, r7]
	neg r0, r0
	asr r0, r0, #2
	lsl r0, r0, #2
	add r0, r0, r3
	ldrh r0, [r0]
	mul r1, r0, r1
	ldr r0, [r4, #48]
	add r0, r0, r1
	str r0, [r5, #48]
	ldrb r0, [r6]
	add r0, r0, #64
	lsl r0, r0, #1
	add r0, r0, r2
	mov r2, #0
	ldrsh r1, [r0, r2]
	lsl r1, r1, #8
	mov r7, #58
	ldrsh r0, [r5, r7]
	neg r0, r0
	asr r0, r0, #2
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r3
	ldrh r0, [r0]
	mul r1, r0, r1
	ldr r0, [r4, #52]
	sub r0, r0, r1
	sub r0, r0, #6
	str r0, [r5, #52]
_08025692:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080256A0:
	.4byte gUnknown_0813E4CC
_080256A4:
	.4byte gUnknown_0813C3A4
	THUMB_FUNC_END sub_08025450

	THUMB_FUNC_START sub_080256A8
sub_080256A8: @ 0x080256A8
	push {r4,lr}
	add r4, r0, #0
	bl 0x08009FB8
	mov r1, #160
	lsl r1, r1, #6
	add r0, r4, #0
	bl 0x08003594
	cmp r0, #0
	bne _080256D4
	add r1, r4, #0
	add r1, r1, #69
	strb r0, [r1]
	ldr r0, [r4, #100]
	add r0, r0, #61
	mov r1, #226
	strb r1, [r0]
	ldr r1, [r4, #100]
	add r0, r4, #0
	bl sub_0803D3D0
_080256D4:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080256A8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080256DC
sub_080256DC: @ 0x080256DC
	add r2, r0, #0
	mov r0, #2
	strb r0, [r2, #20]
	add r3, r2, #0
	add r3, r3, #43
	ldrb r0, [r3]
	sub r0, r0, #64
	mov r1, #255
	and r0, r0, r1
	asr r0, r0, #3
	strb r0, [r3]
	ldr r1, _0802571C  @ =gUnknown_0813C41C
	ldr r0, [r2, #84]
	add r0, r0, #124
	ldrb r0, [r0]
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r0, r0, #4
	mov r3, #58
	ldrsh r1, [r2, r3]
	cmp r0, r1
	ble _08025720
	mov r0, #1
	strb r0, [r2, #11]
	mov r0, #224
	lsl r0, r0, #9
	str r0, [r2, #16]
	mov r0, #192
	lsl r0, r0, #1
	b _0802572A
_0802571C:
	.4byte gUnknown_0813C41C
_08025720:
	mov r0, #192
	lsl r0, r0, #8
	str r0, [r2, #16]
	mov r0, #128
	lsl r0, r0, #2
_0802572A:
	str r0, [r2, #12]
	bx lr
	THUMB_FUNC_END sub_080256DC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08025730
sub_08025730: @ 0x08025730
	push {r4,r5,lr}
	add r4, r0, #0
	ldr r5, _08025750  @ =gUnknown_0813C420
	bl 0x08002E18
	lsl r0, r0, #24
	lsr r0, r0, #22
	add r0, r0, r5
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08025750:
	.4byte gUnknown_0813C420
	THUMB_FUNC_END sub_08025730

	THUMB_FUNC_START sub_08025754
sub_08025754: @ 0x08025754
	push {lr}
	ldr r2, _08025768  @ =gUnknown_0813C434
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08025768:
	.4byte gUnknown_0813C434
	THUMB_FUNC_END sub_08025754

	THUMB_FUNC_START sub_0802576C
sub_0802576C: @ 0x0802576C
	push {lr}
	add r2, r0, #0
	add r0, r0, #65
	ldrb r0, [r0]
	cmp r0, #128
	bne _08025780
	add r0, r2, #0
	bl sub_08012540
	b _08025792
_08025780:
	add r0, r2, #0
	add r0, r0, #62
	ldrb r0, [r0]
	add r1, r2, #0
	add r1, r1, #43
	strb r0, [r1]
	add r0, r2, #0
	bl sub_08025850
_08025792:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802576C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08025798
sub_08025798: @ 0x08025798
	push {lr}
	ldrb r1, [r0, #20]
	add r1, r1, #1
	strb r1, [r0, #20]
	ldrh r1, [r0, #58]
	sub r1, r1, #2
	mov r3, #0
	strh r1, [r0, #58]
	ldrb r2, [r0, #28]
	mov r1, #4
	neg r1, r1
	and r1, r1, r2
	mov r2, #1
	orr r1, r1, r2
	strb r1, [r0, #28]
	add r2, r0, #0
	add r2, r2, #46
	mov r1, #2
	strb r1, [r2]
	add r1, r0, #0
	add r1, r1, #35
	strb r3, [r1]
	ldrb r2, [r0, #28]
	mov r1, #49
	neg r1, r1
	and r1, r1, r2
	mov r2, #16
	orr r1, r1, r2
	strb r1, [r0, #28]
	ldr r1, _080257E0  @ =gUnknown_0813C454
	str r1, [r0, #72]
	mov r1, #0
	bl 0x08003870
	pop {r0}
	bx r0
_080257E0:
	.4byte gUnknown_0813C454
	THUMB_FUNC_END sub_08025798

	THUMB_FUNC_START sub_080257E4
sub_080257E4: @ 0x080257E4
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	bl 0x08009FDC
	lsl r0, r0, #16
	cmp r0, #0
	bne _0802581C
	ldrh r1, [r4, #44]
	ldr r0, _08025808  @ =0x0000FFFF
	cmp r1, r0
	bne _0802580C
	add r0, r4, #0
	bl sub_08012540
	b _08025822
_08025808:
	.4byte 0x0000FFFF
_0802580C:
	ldrh r1, [r4, #44]
	add r0, r4, #0
	bl 0x080038E8
	add r0, r4, #0
	bl sub_08025850
	b _08025822
_0802581C:
	add r0, r4, #0
	bl 0x08008E50
_08025822:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080257E4

	THUMB_FUNC_START sub_08025828
sub_08025828: @ 0x08025828
	push {r4,lr}
	add r4, r0, #0
	bl sub_0803CC20
	add r0, r4, #0
	bl 0x08003828
	mov r1, #192
	lsl r1, r1, #5
	add r0, r4, #0
	bl 0x08003594
	cmp r0, #0
	bne _0802584A
	add r0, r4, #0
	bl sub_08012540
_0802584A:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08025828

	THUMB_FUNC_START sub_08025850
sub_08025850: @ 0x08025850
	push {lr}
	mov r1, #2
	strb r1, [r0, #20]
	mov r1, #64
	str r1, [r0, #12]
	mov r1, #160
	lsl r1, r1, #9
	str r1, [r0, #16]
	add r0, r0, #60
	ldrb r2, [r0]
	mov r1, #127
	and r1, r1, r2
	strb r1, [r0]
	mov r0, #23
	bl 0x08003DFC
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08025850

	THUMB_FUNC_START sub_08025874
sub_08025874: @ 0x08025874
	push {r4,lr}
	add r4, r0, #0
	add r0, r0, #65
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080258AC
	ldrb r0, [r4, #10]
	cmp r0, #3
	bne _080258A4
	cmp r1, #128
	beq _080258A4
	mov r0, #15
	mov r1, #13
	mov r2, #0
	bl sub_0804C8A8
	add r1, r0, #0
	cmp r1, #0
	beq _080258A4
	add r0, r4, #0
	bl sub_0803D3D0
_080258A4:
	add r0, r4, #0
	bl sub_08012540
	b _080258D6
_080258AC:
	ldr r0, [r4, #84]
	cmp r0, #0
	beq _080258BA
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #0
	beq _080258D0
_080258BA:
	ldr r0, _080258CC  @ =gUnknown_0813C45C
	ldrb r1, [r4, #20]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r4, #0
	bl _call_via_r1
	b _080258D6
_080258CC:
	.4byte gUnknown_0813C45C
_080258D0:
	add r0, r4, #0
	bl sub_08012540
_080258D6:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08025874

	THUMB_FUNC_START sub_080258DC
sub_080258DC: @ 0x080258DC
	push {r4,r5,lr}
	add r4, r0, #0
	ldrb r1, [r4, #28]
	mov r2, #4
	neg r2, r2
	add r0, r2, #0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	add r0, r4, #0
	add r0, r0, #43
	ldrb r0, [r0]
	add r0, r0, #4
	mov r1, #24
	and r0, r0, r1
	asr r0, r0, #3
	add r5, r4, #0
	add r5, r5, #42
	strb r0, [r5]
	ldr r0, _08025948  @ =gUnknown_0813C598
	str r0, [r4, #72]
	ldrb r0, [r4, #10]
	cmp r0, #3
	bne _0802591E
	add r1, r4, #0
	add r1, r1, #46
	mov r0, #6
	strb r0, [r1]
	strh r2, [r4, #58]
	add r1, r1, #22
	mov r0, #4
	strb r0, [r1]
_0802591E:
	ldrb r0, [r4, #11]
	cmp r0, #0
	bne _08025950
	mov r0, #1
	strb r0, [r4, #20]
	ldr r0, [r4, #84]
	ldr r2, _0802594C  @ =gUnknown_0813C468
	ldrb r1, [r5]
	add r1, r1, r2
	mov r3, #0
	ldrsb r3, [r1, r3]
	lsl r3, r3, #16
	add r1, r4, #0
	mov r2, #0
	bl sub_0803D4A4
	ldrb r1, [r5]
	add r0, r4, #0
	bl 0x08003870
	b _08025956
_08025948:
	.4byte gUnknown_0813C598
_0802594C:
	.4byte gUnknown_0813C468
_08025950:
	add r0, r4, #0
	bl sub_08025A60
_08025956:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080258DC

	THUMB_FUNC_START sub_0802595C
sub_0802595C: @ 0x0802595C
	push {r4-r6,lr}
	add r4, r0, #0
	bl 0x08003828
	ldr r0, [r4, #84]
	ldr r2, _080259D4  @ =gUnknown_0813C468
	add r1, r4, #0
	add r1, r1, #42
	ldrb r1, [r1]
	add r1, r1, r2
	mov r3, #0
	ldrsb r3, [r1, r3]
	lsl r3, r3, #16
	add r1, r4, #0
	mov r2, #0
	bl sub_0803D4A4
	ldr r0, [r4, #84]
	add r0, r0, #41
	ldrb r1, [r0]
	mov r6, #1
	add r0, r6, #0
	and r0, r0, r1
	cmp r0, #0
	beq _080259CE
	ldrb r5, [r4, #10]
	cmp r5, #3
	bne _080259C2
	mov r0, #5
	bl sub_08012494
	add r2, r0, #0
	cmp r2, #0
	beq _080259C2
	strb r5, [r2, #10]
	strb r6, [r2, #11]
	add r0, r4, #0
	add r0, r0, #43
	ldrb r0, [r0]
	add r0, r0, #6
	mov r1, #31
	and r0, r0, r1
	add r1, r2, #0
	add r1, r1, #43
	strb r0, [r1]
	ldr r0, [r4, #84]
	str r0, [r2, #84]
	add r0, r4, #0
	add r1, r2, #0
	bl sub_0803D3D0
_080259C2:
	add r0, r4, #0
	bl sub_08025A40
	add r0, r4, #0
	bl sub_08025A60
_080259CE:
	pop {r4-r6}
	pop {r0}
	bx r0
_080259D4:
	.4byte gUnknown_0813C468
	THUMB_FUNC_END sub_0802595C

	THUMB_FUNC_START sub_080259D8
sub_080259D8: @ 0x080259D8
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	bl 0x08009FB8
	add r0, r4, #0
	bl 0x08008E50
	ldrb r0, [r4, #10]
	cmp r0, #3
	beq _08025A18
	ldr r1, _08025A14  @ =gUnknown_084276C0
	add r0, r4, #0
	add r0, r0, #43
	ldrb r0, [r0]
	lsr r0, r0, #3
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r1, [r0]
	ldrh r0, [r4, #44]
	and r0, r0, r1
	cmp r0, #0
	beq _08025A3A
	add r0, r4, #0
	bl sub_08012540
	b _08025A3A
	.byte 0x00
	.byte 0x00
_08025A14:
	.4byte gUnknown_084276C0
_08025A18:
	ldrh r0, [r4, #44]
	cmp r0, #0
	beq _08025A3A
	mov r0, #15
	mov r1, #13
	mov r2, #0
	bl sub_0804C8A8
	add r1, r0, #0
	cmp r1, #0
	beq _08025A34
	add r0, r4, #0
	bl sub_0803D3D0
_08025A34:
	add r0, r4, #0
	bl sub_08012540
_08025A3A:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080259D8

	THUMB_FUNC_START sub_08025A40
sub_08025A40: @ 0x08025A40
	add r2, r0, #0
	ldr r1, [r2, #84]
	ldrb r0, [r1, #8]
	cmp r0, #3
	bne _08025A5A
	ldrb r0, [r1, #9]
	cmp r0, #19
	bne _08025A5A
	ldr r0, [r1, #88]
	cmp r2, r0
	bne _08025A5A
	mov r0, #0
	str r0, [r1, #88]
_08025A5A:
	mov r0, #0
	str r0, [r2, #84]
	bx lr
	THUMB_FUNC_END sub_08025A40

	THUMB_FUNC_START sub_08025A60
sub_08025A60: @ 0x08025A60
	push {r4,r5,lr}
	add r4, r0, #0
	mov r3, #0
	mov r0, #2
	strb r0, [r4, #20]
	add r2, r4, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r2]
	ldr r1, _08025AC4  @ =gUnknown_0813C46C
	sub r2, r2, #18
	ldrb r0, [r2]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrh r5, [r4, #50]
	add r0, r0, r5
	strh r0, [r4, #50]
	ldrb r0, [r2]
	lsl r0, r0, #1
	add r0, r0, #1
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrh r1, [r4, #54]
	add r0, r0, r1
	strh r0, [r4, #54]
	str r3, [r4, #84]
	ldrb r1, [r2]
	add r1, r1, #4
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x08003870
	ldr r1, _08025AC8  @ =gUnknown_0813C474
	ldrb r0, [r4, #10]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	bl 0x08003DFC
	pop {r4,r5}
	pop {r0}
	bx r0
_08025AC4:
	.4byte gUnknown_0813C46C
_08025AC8:
	.4byte gUnknown_0813C474
	THUMB_FUNC_END sub_08025A60

	THUMB_FUNC_START sub_08025ACC
sub_08025ACC: @ 0x08025ACC
	push {r4,r5,lr}
	add r5, r0, #0
	ldr r0, [r5, #84]
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #0
	beq _08025B60
	ldr r1, _08025B4C  @ =gUnknown_0813C5A0
	ldrb r0, [r5, #10]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r5, #0
	bl _call_via_r1
	ldr r4, [r5, #84]
	ldrb r2, [r4, #31]
	lsr r2, r2, #6
	lsl r2, r2, #6
	ldrb r3, [r5, #31]
	mov r1, #63
	add r0, r1, #0
	and r0, r0, r3
	orr r0, r0, r2
	strb r0, [r5, #31]
	ldrb r0, [r4, #29]
	lsr r0, r0, #6
	lsl r0, r0, #6
	ldrb r2, [r5, #29]
	and r1, r1, r2
	orr r1, r1, r0
	strb r1, [r5, #29]
	add r4, r4, #80
	ldrh r1, [r4]
	add r0, r5, #0
	add r0, r0, #80
	strh r1, [r0]
	ldrb r0, [r5, #10]
	cmp r0, #0
	beq _08025B66
	ldr r0, [r5, #88]
	ldrb r0, [r0, #20]
	cmp r0, #7
	beq _08025B54
	ldr r0, _08025B50  @ =gUnknown_03000E20
	ldrh r0, [r0]
	mov r1, #3
	bl __umodsi3
	lsl r0, r0, #16
	lsr r0, r0, #16
	add r0, r0, #1
	ldrb r1, [r5, #10]
	cmp r0, r1
	bne _08025B54
	ldrb r0, [r5, #28]
	mov r1, #4
	neg r1, r1
	and r1, r1, r0
	mov r0, #1
	orr r1, r1, r0
	strb r1, [r5, #28]
	b _08025B66
	.byte 0x00
	.byte 0x00
_08025B4C:
	.4byte gUnknown_0813C5A0
_08025B50:
	.4byte gUnknown_03000E20
_08025B54:
	ldrb r1, [r5, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	strb r0, [r5, #28]
	b _08025B66
_08025B60:
	add r0, r5, #0
	bl sub_08012540
_08025B66:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08025ACC

	THUMB_FUNC_START sub_08025B6C
sub_08025B6C: @ 0x08025B6C
	push {lr}
	ldr r2, _08025B80  @ =gUnknown_0813C5B0
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08025B80:
	.4byte gUnknown_0813C5B0
	THUMB_FUNC_END sub_08025B6C

	THUMB_FUNC_START sub_08025B84
sub_08025B84: @ 0x08025B84
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r7, r0, #0
	bl sub_080123E8
	add r6, r0, #0
	cmp r6, #0
	beq _08025C64
	bl sub_08012410
	add r5, r0, #0
	cmp r5, #0
	beq _08025C64
	bl sub_08012410
	add r4, r0, #0
	cmp r4, #0
	beq _08025C64
	mov r0, #4
	strb r0, [r6, #8]
	strb r0, [r5, #8]
	strb r0, [r4, #8]
	mov r0, #6
	strb r0, [r6, #9]
	strb r0, [r5, #9]
	strb r0, [r4, #9]
	mov r0, #1
	mov r9, r0
	mov r1, #1
	mov r8, r1
	mov r2, r8
	strb r2, [r6, #10]
	mov r0, #2
	strb r0, [r5, #10]
	mov r0, #3
	mov r10, r0
	mov r0, #3
	strb r0, [r4, #10]
	ldr r0, [r7, #84]
	str r0, [r6, #84]
	ldr r0, [r7, #84]
	str r0, [r5, #84]
	ldr r0, [r7, #84]
	str r0, [r4, #84]
	str r7, [r6, #88]
	str r7, [r5, #88]
	str r7, [r4, #88]
	str r6, [r5, #116]
	str r6, [r4, #116]
	add r0, r7, #0
	add r1, r6, #0
	bl sub_0803D3D0
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0803D3D0
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0803D3D0
	mov r0, #5
	add r1, r6, #0
	bl sub_08012728
	mov r0, #5
	add r1, r5, #0
	bl sub_08012728
	mov r0, #5
	add r1, r4, #0
	bl sub_08012728
	mov r1, r8
	strb r1, [r7, #20]
	ldrb r1, [r7, #28]
	mov r2, #4
	neg r2, r2
	add r0, r2, #0
	and r0, r0, r1
	mov r1, r9
	orr r0, r0, r1
	strb r0, [r7, #28]
	add r1, r7, #0
	add r1, r1, #46
	mov r0, #8
	strb r0, [r1]
	ldr r0, _08025C74  @ =gUnknown_0813C65C
	str r0, [r7, #72]
	strh r2, [r7, #58]
	add r2, r7, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r2]
	add r1, r7, #0
	add r1, r1, #94
	ldrb r0, [r1]
	mov r2, r10
	orr r0, r0, r2
	strb r0, [r1]
	add r0, r7, #0
	bl 0x08008DD8
	add r0, r7, #0
	mov r1, #0
	bl 0x08003870
_08025C64:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08025C74:
	.4byte gUnknown_0813C65C
	THUMB_FUNC_END sub_08025B84

	THUMB_FUNC_START sub_08025C78
sub_08025C78: @ 0x08025C78
	push {r4,lr}
	add r4, r0, #0
	ldr r2, [r4, #84]
	ldrb r1, [r2, #24]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08025CD0
	add r0, r2, #0
	add r0, r0, #42
	ldrb r0, [r0]
	sub r0, r0, #1
	mov r1, #3
	and r0, r0, r1
	lsl r0, r0, #3
	add r2, r4, #0
	add r2, r2, #43
	ldrb r1, [r2]
	cmp r0, r1
	bne _08025CD0
	mov r0, #2
	strb r0, [r4, #20]
	ldrb r0, [r2]
	sub r0, r0, #8
	mov r1, #31
	and r0, r0, r1
	strb r0, [r2]
	mov r0, #224
	lsl r0, r0, #3
	str r0, [r4, #12]
	ldr r0, [r4, #84]
	ldrh r1, [r0, #50]
	add r0, r4, #0
	add r0, r0, #120
	strh r1, [r0]
	ldr r0, [r4, #84]
	ldrh r0, [r0, #54]
	add r1, r4, #0
	add r1, r1, #122
	strh r0, [r1]
	add r0, r4, #0
	bl sub_0802614C
	b _08025CE4
_08025CD0:
	add r0, r4, #0
	bl sub_0802614C
	add r0, r4, #0
	add r0, r0, #43
	ldrb r1, [r0]
	sub r1, r1, #1
	mov r2, #31
	and r1, r1, r2
	strb r1, [r0]
_08025CE4:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08025C78

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08025CEC
sub_08025CEC: @ 0x08025CEC
	push {r4-r6,lr}
	add r6, r0, #0
	bl sub_08026244
	ldr r2, [r6, #84]
	add r0, r2, #0
	add r0, r0, #42
	ldrb r0, [r0]
	lsl r0, r0, #1
	ldr r1, _08025DB4  @ =gUnknown_0813C5D4
	add r0, r0, r1
	mov r5, #0
	ldrsb r5, [r0, r5]
	ldrh r1, [r2, #50]
	add r5, r5, r1
	mov r4, #1
	ldrsb r4, [r0, r4]
	ldrh r2, [r2, #54]
	add r4, r4, r2
	mov r2, #50
	ldrsh r0, [r6, r2]
	mov r2, #54
	ldrsh r1, [r6, r2]
	lsl r5, r5, #16
	asr r5, r5, #16
	lsl r4, r4, #16
	asr r4, r4, #16
	add r2, r5, #0
	add r3, r4, #0
	bl 0x08003F54
	add r1, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r6, #0
	bl 0x080040C4
	mov r1, #50
	ldrsh r0, [r6, r1]
	mov r2, #54
	ldrsh r1, [r6, r2]
	add r2, r5, #0
	add r3, r4, #0
	bl 0x08003F54
	add r1, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r6, #0
	bl 0x080040C4
	add r0, r6, #0
	bl sub_0803CC20
	ldr r3, [r6, #84]
	add r0, r3, #0
	add r0, r0, #42
	ldrb r4, [r0]
	lsl r4, r4, #3
	mov r5, #50
	ldrsh r0, [r6, r5]
	mov r2, #54
	ldrsh r1, [r6, r2]
	mov r5, #50
	ldrsh r2, [r3, r5]
	mov r5, #54
	ldrsh r3, [r3, r5]
	bl 0x08003F54
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r4, r0
	bne _08025DAC
	mov r0, #3
	strb r0, [r6, #20]
	mov r0, #224
	lsl r0, r0, #3
	str r0, [r6, #12]
	ldr r0, [r6, #84]
	add r0, r0, #42
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r0, r0, #8
	mov r1, #24
	and r0, r0, r1
	add r1, r6, #0
	add r1, r1, #43
	strb r0, [r1]
	ldr r2, [r6, #84]
	ldrb r1, [r2, #24]
	mov r0, #2
	orr r0, r0, r1
	strb r0, [r2, #24]
	mov r0, #97
	bl 0x08003DFC
_08025DAC:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08025DB4:
	.4byte gUnknown_0813C5D4
	THUMB_FUNC_END sub_08025CEC

	THUMB_FUNC_START sub_08025DB8
sub_08025DB8: @ 0x08025DB8
	push {r4,lr}
	add r4, r0, #0
	bl sub_08026244
	ldr r0, [r4, #84]
	add r0, r0, #42
	ldrb r1, [r0]
	lsl r1, r1, #27
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x080040C4
	ldr r0, [r4, #84]
	add r0, r0, #42
	ldrb r1, [r0]
	lsl r1, r1, #27
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x080040C4
	ldr r0, [r4, #84]
	add r0, r0, #42
	ldrb r1, [r0]
	lsl r1, r1, #27
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x080040C4
	ldr r0, [r4, #84]
	add r0, r0, #42
	ldrb r1, [r0]
	lsl r1, r1, #27
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x080040C4
	add r0, r4, #0
	bl sub_0803CC20
	ldr r0, [r4, #12]
	sub r0, r0, #36
	str r0, [r4, #12]
	ldr r1, _08025E20  @ =0x0000043F
	cmp r0, r1
	bgt _08025E1A
	mov r0, #4
	strb r0, [r4, #20]
	mov r0, #24
	strb r0, [r4, #23]
_08025E1A:
	pop {r4}
	pop {r0}
	bx r0
_08025E20:
	.4byte 0x0000043F
	THUMB_FUNC_END sub_08025DB8

	THUMB_FUNC_START sub_08025E24
sub_08025E24: @ 0x08025E24
	push {r4,lr}
	add r4, r0, #0
	bl sub_08026244
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08025E4C
	mov r0, #5
	strb r0, [r4, #20]
	mov r0, #128
	lsl r0, r0, #3
	str r0, [r4, #12]
	ldr r2, [r4, #84]
	ldrb r0, [r2, #24]
	mov r1, #2
	orr r0, r0, r1
	strb r0, [r2, #24]
_08025E4C:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08025E24

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08025E54
sub_08025E54: @ 0x08025E54
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r4, r0, #0
	ldr r1, [r4, #12]
	ldr r0, _08025EB0  @ =0x000007FF
	cmp r1, r0
	bgt _08025E6A
	add r0, r1, #0
	add r0, r0, #32
	str r0, [r4, #12]
_08025E6A:
	ldrh r5, [r4, #50]
	ldrh r6, [r4, #54]
	ldr r0, [r4, #84]
	add r0, r0, #42
	ldrb r0, [r0]
	lsl r0, r0, #3
	sub r0, r0, #8
	mov r1, #24
	and r0, r0, r1
	mov r1, #43
	add r1, r1, r4
	mov r8, r1
	strb r0, [r1]
	add r0, r4, #0
	bl sub_0802614C
	ldrh r0, [r4, #50]
	sub r0, r0, r5
	add r0, r0, #8
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #16
	bhi _08025EB4
	strh r5, [r4, #50]
	strh r6, [r4, #54]
	mov r0, #6
	strb r0, [r4, #20]
	mov r0, #32
	strb r0, [r4, #23]
	ldr r2, [r4, #84]
	ldrb r0, [r2, #24]
	mov r1, #128
	orr r0, r0, r1
	strb r0, [r2, #24]
	b _08025ED6
_08025EB0:
	.4byte 0x000007FF
_08025EB4:
	lsl r0, r5, #16
	asr r0, r0, #16
	lsl r1, r6, #16
	asr r1, r1, #16
	mov r3, #50
	ldrsh r2, [r4, r3]
	mov r7, #54
	ldrsh r3, [r4, r7]
	bl 0x08003F54
	mov r1, r8
	strb r0, [r1]
	strh r5, [r4, #50]
	strh r6, [r4, #54]
	add r0, r4, #0
	bl sub_0803CC20
_08025ED6:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08025E54

	THUMB_FUNC_START sub_08025EE0
sub_08025EE0: @ 0x08025EE0
	push {r4,lr}
	add r4, r0, #0
	ldrb r1, [r4, #23]
	lsr r1, r1, #1
	bl sub_080261A0
	add r2, r4, #0
	add r2, r2, #43
	ldrb r0, [r2]
	sub r0, r0, #1
	mov r1, #31
	and r0, r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #7
	bhi _08025F2E
	mov r0, #7
	strb r0, [r4, #20]
	mov r0, #150
	strb r0, [r4, #23]
	add r1, r4, #0
	add r1, r1, #46
	mov r0, #0
	strb r0, [r1]
	add r2, r2, #17
	ldrb r1, [r2]
	mov r0, #127
	and r0, r0, r1
	strb r0, [r2]
	add r0, r4, #0
	bl sub_08026204
	mov r0, #48
	bl 0x08003DFC
_08025F2E:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08025EE0

	THUMB_FUNC_START sub_08025F34
sub_08025F34: @ 0x08025F34
	push {r4,lr}
	add r4, r0, #0
	bl sub_08026204
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08025F62
	mov r1, #8
	strb r1, [r4, #20]
	mov r0, #4
	strb r0, [r4, #23]
	add r0, r4, #0
	add r0, r0, #46
	strb r1, [r0]
	add r2, r4, #0
	add r2, r2, #60
	ldrb r0, [r2]
	mov r1, #128
	orr r0, r0, r1
	strb r0, [r2]
_08025F62:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08025F34

	THUMB_FUNC_START sub_08025F68
sub_08025F68: @ 0x08025F68
	push {r4,lr}
	add r4, r0, #0
	ldrb r1, [r4, #23]
	lsr r1, r1, #3
	bl sub_080261A0
	add r2, r4, #0
	add r2, r2, #43
	ldrb r0, [r2]
	sub r0, r0, #1
	mov r1, #31
	and r0, r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #23]
	add r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bge _08025F98
	mov r0, #1
	strb r0, [r4, #20]
	ldr r1, [r4, #84]
	mov r0, #0
	strb r0, [r1, #24]
_08025F98:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08025F68

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08025FA0
sub_08025FA0: @ 0x08025FA0
	push {lr}
	ldr r2, _08025FB4  @ =gUnknown_0813C5DC
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08025FB4:
	.4byte gUnknown_0813C5DC
	THUMB_FUNC_END sub_08025FA0

	THUMB_FUNC_START sub_08025FB8
sub_08025FB8: @ 0x08025FB8
	push {r4,lr}
	add r4, r0, #0
	mov r0, #1
	strb r0, [r4, #20]
	ldr r0, _08025FEC  @ =0x0000FFFC
	strh r0, [r4, #58]
	add r2, r4, #0
	add r2, r2, #94
	ldrb r0, [r2]
	mov r1, #3
	orr r0, r0, r1
	strb r0, [r2]
	add r0, r4, #0
	bl 0x08008DD8
	add r0, r4, #0
	mov r1, #1
	bl 0x08003870
	add r0, r4, #0
	bl sub_08025FF0
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08025FEC:
	.4byte 0x0000FFFC
	THUMB_FUNC_END sub_08025FB8

	THUMB_FUNC_START sub_08025FF0
sub_08025FF0: @ 0x08025FF0
	push {r4-r7,lr}
	add r5, r0, #0
	ldr r0, [r5, #84]
	mov r12, r0
	ldrb r0, [r0, #20]
	cmp r0, #4
	beq _08026040
	ldr r1, _0802603C  @ =gUnknown_0813C5E4
	mov r3, r12
	add r3, r3, #41
	mov r2, r12
	add r2, r2, #42
	ldrb r0, [r2]
	lsl r0, r0, #3
	ldrb r4, [r3]
	add r0, r0, r4
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	mov r6, r12
	ldrh r6, [r6, #50]
	add r0, r0, r6
	strh r0, [r5, #50]
	ldrb r0, [r2]
	lsl r0, r0, #3
	ldrb r3, [r3]
	add r0, r0, r3
	add r0, r0, #1
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	mov r1, r12
	ldrh r1, [r1, #54]
	add r0, r0, r1
	b _08026086
	.byte 0x00
	.byte 0x00
_0802603C:
	.4byte gUnknown_0813C5E4
_08026040:
	ldr r4, _08026090  @ =gUnknown_0813C604
	mov r7, r12
	add r7, r7, #41
	ldrb r0, [r7]
	mov r2, #15
	add r1, r2, #0
	and r1, r1, r0
	mov r6, r12
	add r6, r6, #42
	ldrb r3, [r6]
	lsl r0, r3, #1
	add r0, r0, r3
	lsl r0, r0, #1
	add r1, r1, r0
	add r1, r1, r4
	mov r0, #0
	ldrsb r0, [r1, r0]
	mov r3, r12
	ldrh r3, [r3, #50]
	add r0, r0, r3
	strh r0, [r5, #50]
	ldrb r0, [r7]
	and r2, r2, r0
	ldrb r1, [r6]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #1
	add r2, r2, r0
	add r2, r2, #1
	add r2, r2, r4
	mov r0, #0
	ldrsb r0, [r2, r0]
	mov r4, r12
	ldrh r4, [r4, #54]
	add r0, r0, r4
_08026086:
	strh r0, [r5, #54]
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08026090:
	.4byte gUnknown_0813C604
	THUMB_FUNC_END sub_08025FF0

	THUMB_FUNC_START sub_08026094
sub_08026094: @ 0x08026094
	push {lr}
	ldr r2, _080260A8  @ =gUnknown_0813C61C
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_080260A8:
	.4byte gUnknown_0813C61C
	THUMB_FUNC_END sub_08026094

	THUMB_FUNC_START sub_080260AC
sub_080260AC: @ 0x080260AC
	push {r4,lr}
	add r4, r0, #0
	mov r0, #1
	strb r0, [r4, #20]
	ldr r0, _080260E0  @ =0x0000FFFC
	strh r0, [r4, #58]
	add r2, r4, #0
	add r2, r2, #94
	ldrb r0, [r2]
	mov r1, #3
	orr r0, r0, r1
	strb r0, [r2]
	add r0, r4, #0
	bl 0x08008DD8
	add r0, r4, #0
	mov r1, #1
	bl 0x08003870
	add r0, r4, #0
	bl sub_080260E4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080260E0:
	.4byte 0x0000FFFC
	THUMB_FUNC_END sub_080260AC

	THUMB_FUNC_START sub_080260E4
sub_080260E4: @ 0x080260E4
	push {r4-r7,lr}
	add r5, r0, #0
	ldr r4, [r5, #88]
	mov r1, #50
	ldrsh r0, [r4, r1]
	ldr r6, [r5, #116]
	mov r2, #50
	ldrsh r1, [r6, r2]
	sub r0, r0, r1
	mov r1, #3
	bl __divsi3
	lsl r0, r0, #16
	lsr r7, r0, #16
	mov r1, #54
	ldrsh r0, [r4, r1]
	mov r2, #54
	ldrsh r1, [r6, r2]
	sub r0, r0, r1
	mov r1, #3
	bl __divsi3
	lsl r0, r0, #16
	lsr r1, r0, #16
	ldrb r0, [r5, #10]
	cmp r0, #2
	beq _08026120
	cmp r0, #3
	beq _08026130
	b _08026144
_08026120:
	lsl r0, r7, #16
	asr r0, r0, #16
	ldrh r2, [r6, #50]
	add r0, r0, r2
	strh r0, [r5, #50]
	lsl r0, r1, #16
	asr r0, r0, #16
	b _0802613E
_08026130:
	lsl r0, r7, #16
	asr r0, r0, #15
	ldrh r2, [r6, #50]
	add r0, r0, r2
	strh r0, [r5, #50]
	lsl r0, r1, #16
	asr r0, r0, #15
_0802613E:
	ldrh r6, [r6, #54]
	add r0, r0, r6
	strh r0, [r5, #54]
_08026144:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080260E4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802614C
sub_0802614C: @ 0x0802614C
	push {r4,r5,lr}
	ldr r2, _08026198  @ =gUnknown_0813C624
	mov r1, #43
	add r1, r1, r0
	mov r12, r1
	ldrb r1, [r1]
	add r2, r1, r2
	ldr r4, [r0, #84]
	mov r3, #0
	ldrsb r3, [r2, r3]
	ldr r2, _0802619C  @ =gUnknown_0813E4CC
	lsl r1, r1, #4
	add r1, r1, r2
	mov r5, #0
	ldrsh r1, [r1, r5]
	mul r1, r3, r1
	asr r1, r1, #8
	ldrh r5, [r4, #50]
	add r1, r1, r5
	strh r1, [r0, #50]
	mov r5, r12
	ldrb r1, [r5]
	lsl r1, r1, #4
	add r1, r1, #128
	add r1, r1, r2
	mov r2, #0
	ldrsh r1, [r1, r2]
	add r2, r3, #0
	mul r2, r1, r2
	asr r2, r2, #8
	add r2, r2, #8
	ldrh r1, [r4, #54]
	sub r1, r1, r2
	strh r1, [r0, #54]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08026198:
	.4byte gUnknown_0813C624
_0802619C:
	.4byte gUnknown_0813E4CC
	THUMB_FUNC_END sub_0802614C

	THUMB_FUNC_START sub_080261A0
sub_080261A0: @ 0x080261A0
	push {r4,r5,lr}
	add r4, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r0, _080261FC  @ =gUnknown_0813C624
	mov r2, #43
	add r2, r2, r4
	mov r12, r2
	ldrb r5, [r2]
	add r0, r5, r0
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	mul r0, r1, r0
	cmp r0, #0
	bge _080261C2
	add r0, r0, #15
_080261C2:
	ldr r3, [r4, #84]
	lsl r1, r0, #20
	asr r1, r1, #24
	ldr r2, _08026200  @ =gUnknown_0813E4CC
	lsl r0, r5, #4
	add r0, r0, r2
	mov r5, #0
	ldrsh r0, [r0, r5]
	mul r0, r1, r0
	asr r0, r0, #8
	ldrh r5, [r3, #50]
	add r0, r0, r5
	strh r0, [r4, #50]
	mov r5, r12
	ldrb r0, [r5]
	lsl r0, r0, #4
	add r0, r0, #128
	add r0, r0, r2
	mov r2, #0
	ldrsh r0, [r0, r2]
	mul r1, r0, r1
	asr r1, r1, #8
	add r1, r1, #8
	ldrh r0, [r3, #54]
	sub r0, r0, r1
	strh r0, [r4, #54]
	pop {r4,r5}
	pop {r0}
	bx r0
_080261FC:
	.4byte gUnknown_0813C624
_08026200:
	.4byte gUnknown_0813E4CC
	THUMB_FUNC_END sub_080261A0

	THUMB_FUNC_START sub_08026204
sub_08026204: @ 0x08026204
	push {r4,lr}
	ldr r2, [r0, #84]
	ldr r3, _08026240  @ =gUnknown_0813C644
	mov r1, #42
	add r1, r1, r2
	mov r12, r1
	ldrb r1, [r1]
	lsl r1, r1, #1
	add r1, r1, r3
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrh r4, [r2, #50]
	add r1, r1, r4
	strh r1, [r0, #50]
	mov r4, r12
	ldrb r1, [r4]
	lsl r1, r1, #1
	add r1, r1, #1
	add r1, r1, r3
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrh r2, [r2, #54]
	add r1, r1, r2
	strh r1, [r0, #54]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08026240:
	.4byte gUnknown_0813C644
	THUMB_FUNC_END sub_08026204

	THUMB_FUNC_START sub_08026244
sub_08026244: @ 0x08026244
	push {r4,r5,lr}
	mov r12, r0
	ldr r3, [r0, #84]
	mov r4, r12
	add r4, r4, #120
	ldrh r0, [r3, #50]
	ldrh r1, [r4]
	sub r0, r0, r1
	mov r1, r12
	ldrh r1, [r1, #50]
	add r0, r0, r1
	mov r2, r12
	strh r0, [r2, #50]
	mov r5, r12
	add r5, r5, #122
	ldrh r1, [r3, #54]
	ldrh r2, [r5]
	sub r1, r1, r2
	add r0, r0, r1
	mov r1, r12
	strh r0, [r1, #50]
	ldrh r0, [r3, #50]
	strh r0, [r4]
	ldr r0, [r1, #84]
	ldrh r0, [r0, #54]
	strh r0, [r5]
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08026244

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08026280
sub_08026280: @ 0x08026280
	push {r4,r5,lr}
	add r4, r0, #0
	ldr r5, _080262A0  @ =gUnknown_0813C664
	bl 0x08002E18
	lsl r0, r0, #24
	lsr r0, r0, #22
	add r0, r0, r5
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080262A0:
	.4byte gUnknown_0813C664
	THUMB_FUNC_END sub_08026280

	THUMB_FUNC_START sub_080262A4
sub_080262A4: @ 0x080262A4
	push {lr}
	add r2, r0, #0
	ldr r0, [r2, #84]
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #0
	bne _080262B4
	str r0, [r2, #84]
_080262B4:
	ldr r0, _080262C8  @ =gUnknown_0813C678
	ldrb r1, [r2, #20]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0
_080262C8:
	.4byte gUnknown_0813C678
	THUMB_FUNC_END sub_080262A4

	THUMB_FUNC_START sub_080262CC
sub_080262CC: @ 0x080262CC
	push {lr}
	add r3, r0, #0
	add r0, r0, #65
	ldrb r0, [r0]
	cmp r0, #131
	bhi _0802630A
	mov r2, #0
	mov r0, #2
	strb r0, [r3, #20]
	strb r2, [r3, #24]
	ldrb r1, [r3, #28]
	sub r0, r0, #6
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r3, #28]
	add r0, r3, #0
	add r0, r0, #60
	strb r2, [r0]
	strh r2, [r3, #58]
	ldr r0, [r3, #76]
	str r0, [r3, #88]
	strh r2, [r0, #58]
	ldr r1, [r3, #84]
	ldr r0, [r3, #76]
	str r0, [r1, #100]
	add r0, r3, #0
	mov r1, #4
	bl 0x08003870
	b _08026310
_0802630A:
	add r0, r3, #0
	bl sub_080264E0
_08026310:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080262CC

	THUMB_FUNC_START sub_08026314
sub_08026314: @ 0x08026314
	push {r4,lr}
	add r3, r0, #0
	mov r2, #1
	mov r0, #1
	strb r0, [r3, #20]
	mov r0, #120
	strb r0, [r3, #23]
	ldrb r1, [r3, #28]
	sub r0, r0, #124
	and r0, r0, r1
	orr r0, r0, r2
	strb r0, [r3, #28]
	add r1, r3, #0
	add r1, r1, #46
	mov r0, #4
	strb r0, [r1]
	ldrb r1, [r3, #28]
	sub r0, r0, #53
	and r0, r0, r1
	mov r1, #16
	orr r0, r0, r1
	strb r0, [r3, #28]
	add r0, r3, #0
	add r0, r0, #43
	ldrb r0, [r0]
	lsr r0, r0, #3
	add r2, r3, #0
	add r2, r2, #42
	strb r0, [r2]
	ldr r1, _08026388  @ =gUnknown_0813C684
	ldrb r0, [r2]
	lsl r0, r0, #2
	add r0, r0, r1
	ldrh r0, [r0]
	ldrh r4, [r3, #50]
	add r0, r0, r4
	strh r0, [r3, #50]
	ldrb r0, [r2]
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r3, #54]
	add r0, r0, r1
	strh r0, [r3, #54]
	ldrh r0, [r3, #58]
	sub r0, r0, #4
	strh r0, [r3, #58]
	ldr r0, _0802638C  @ =gUnknown_0813C6EC
	str r0, [r3, #72]
	ldrb r1, [r2]
	add r0, r3, #0
	bl 0x08003870
	pop {r4}
	pop {r0}
	bx r0
_08026388:
	.4byte gUnknown_0813C684
_0802638C:
	.4byte gUnknown_0813C6EC
	THUMB_FUNC_END sub_08026314

	THUMB_FUNC_START sub_08026390
sub_08026390: @ 0x08026390
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	add r0, r4, #0
	bl 0x08009FB8
	cmp r0, #0
	beq _080263AE
	ldrb r0, [r4, #23]
	cmp r0, #0
	bne _080263B6
_080263AE:
	add r0, r4, #0
	bl sub_080264E0
	b _080263E6
_080263B6:
	add r0, r4, #0
	bl 0x08008E50
	ldrb r0, [r4, #23]
	cmp r0, #30
	bne _080263CE
	add r2, r4, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #127
	and r0, r0, r1
	strb r0, [r2]
_080263CE:
	ldrb r0, [r4, #23]
	cmp r0, #29
	bhi _080263E6
	ldrb r2, [r4, #28]
	lsl r1, r2, #30
	lsr r1, r1, #30
	mov r0, #1
	eor r1, r1, r0
	sub r0, r0, #5
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #28]
_080263E6:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08026390

	THUMB_FUNC_START sub_080263EC
sub_080263EC: @ 0x080263EC
	push {r4,lr}
	add r4, r0, #0
	ldr r1, _08026450  @ =gUnknown_03005E10
	ldr r0, [r4, #88]
	ldrb r0, [r0, #10]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _08026406
	ldrb r0, [r4, #24]
	add r0, r0, #1
	strb r0, [r4, #24]
_08026406:
	ldrb r0, [r4, #24]
	cmp r0, #45
	bhi _08026418
	ldr r1, [r4, #88]
	add r0, r1, #0
	add r0, r0, #61
	ldrb r0, [r0]
	cmp r0, #0
	beq _080264AC
_08026418:
	ldr r0, [r4, #88]
	add r0, r0, #61
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802646A
	bl 0x0800099C
	ldr r2, [r4, #88]
	add r2, r2, #62
	ldr r3, _08026454  @ =gUnknown_0813C694
	mov r1, #1
	and r1, r1, r0
	add r1, r1, r3
	ldrb r0, [r1]
	ldrb r1, [r2]
	add r0, r0, r1
	strb r0, [r2]
	ldr r2, [r4, #88]
	add r1, r2, #0
	add r1, r1, #61
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _08026458
	ldrb r0, [r1]
	lsr r0, r0, #1
	add r1, r1, #5
	b _08026468
_08026450:
	.4byte gUnknown_03005E10
_08026454:
	.4byte gUnknown_0813C694
_08026458:
	mov r0, #0
	ldrsb r0, [r1, r0]
	neg r0, r0
	lsr r1, r0, #31
	add r0, r0, r1
	asr r0, r0, #1
	add r1, r2, #0
	add r1, r1, #66
_08026468:
	strb r0, [r1]
_0802646A:
	ldr r3, _080264A8  @ =gUnknown_03006A30
	ldr r0, [r4, #88]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r3
	mov r1, #0
	strb r1, [r0, #10]
	ldr r0, [r4, #88]
	ldrb r0, [r0, #10]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #4
	add r1, r1, r3
	ldrh r2, [r1, #54]
	mov r0, #239
	and r0, r0, r2
	strh r0, [r1, #54]
	ldr r0, [r4, #88]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r3
	mov r1, #20
	strh r1, [r0, #8]
	add r0, r4, #0
	bl sub_080264E0
	b _080264D6
_080264A8:
	.4byte gUnknown_03006A30
_080264AC:
	add r0, r1, #0
	add r1, r4, #0
	bl sub_0803D3D0
	ldr r0, [r4, #52]
	add r0, r0, #1
	str r0, [r4, #52]
	ldr r0, [r4, #88]
	bl 0x080074C0
	ldr r2, _080264DC  @ =gUnknown_03006A30
	ldr r0, [r4, #88]
	ldrb r0, [r0, #10]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #4
	add r1, r1, r2
	ldrb r2, [r1, #26]
	mov r0, #128
	orr r0, r0, r2
	strb r0, [r1, #26]
_080264D6:
	pop {r4}
	pop {r0}
	bx r0
_080264DC:
	.4byte gUnknown_03006A30
	THUMB_FUNC_END sub_080263EC

	THUMB_FUNC_START sub_080264E0
sub_080264E0: @ 0x080264E0
	push {lr}
	add r2, r0, #0
	ldr r1, [r2, #84]
	cmp r1, #0
	beq _080264EE
	mov r0, #0
	str r0, [r1, #88]
_080264EE:
	add r0, r2, #0
	bl sub_08012540
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080264E0

	THUMB_FUNC_START sub_080264F8
sub_080264F8: @ 0x080264F8
	push {r4,r5,lr}
	add r4, r0, #0
	ldr r5, _08026518  @ =gUnknown_0813C6F4
	bl 0x08002E18
	lsl r0, r0, #24
	lsr r0, r0, #22
	add r0, r0, r5
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08026518:
	.4byte gUnknown_0813C6F4
	THUMB_FUNC_END sub_080264F8

	THUMB_FUNC_START sub_0802651C
sub_0802651C: @ 0x0802651C
	push {lr}
	ldr r2, _08026530  @ =gUnknown_0813C708
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08026530:
	.4byte gUnknown_0813C708
	THUMB_FUNC_END sub_0802651C

	THUMB_FUNC_START sub_08026534
sub_08026534: @ 0x08026534
	push {lr}
	add r3, r0, #0
	add r0, r0, #65
	ldrb r0, [r0]
	cmp r0, #128
	bne _08026548
	add r0, r3, #0
	bl sub_08012540
	b _08026576
_08026548:
	mov r2, #0
	mov r0, #4
	strb r0, [r3, #20]
	mov r0, #43
	add r0, r0, r3
	mov r12, r0
	ldrb r0, [r0]
	mov r1, #16
	eor r0, r0, r1
	mov r1, r12
	strb r0, [r1]
	mov r0, #128
	str r0, [r3, #12]
	mov r0, #144
	lsl r0, r0, #9
	str r0, [r3, #16]
	add r0, r3, #0
	add r0, r0, #60
	strb r2, [r0]
	add r0, r3, #0
	mov r1, #8
	bl 0x08003870
_08026576:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08026534

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802657C
sub_0802657C: @ 0x0802657C
	push {r4,lr}
	mov r12, r0
	mov r2, #1
	mov r4, #1
	strb r4, [r0, #20]
	mov r1, #8
	strb r1, [r0, #23]
	ldrb r0, [r0, #28]
	mov r3, #4
	neg r3, r3
	and r3, r3, r0
	orr r3, r3, r2
	mov r0, #49
	neg r0, r0
	and r3, r3, r0
	mov r0, #16
	orr r3, r3, r0
	mov r0, r12
	strb r3, [r0, #28]
	add r0, r0, #43
	ldrb r2, [r0]
	and r1, r1, r2
	cmp r1, #0
	beq _080265D0
	mov r0, #16
	and r0, r0, r2
	cmp r0, #0
	bne _080265BC
	mov r0, #4
	orr r3, r3, r0
	mov r2, r12
	strb r3, [r2, #28]
_080265BC:
	mov r1, r12
	add r1, r1, #42
	strb r4, [r1]
	ldr r0, _080265CC  @ =gUnknown_0813C724
	mov r3, r12
	str r0, [r3, #72]
	add r0, r1, #0
	b _080265EE
_080265CC:
	.4byte gUnknown_0813C724
_080265D0:
	mov r0, #16
	and r0, r0, r2
	cmp r0, #0
	beq _080265E0
	mov r0, #8
	orr r3, r3, r0
	mov r0, r12
	strb r3, [r0, #28]
_080265E0:
	mov r0, r12
	add r0, r0, #42
	mov r1, #2
	strb r1, [r0]
	ldr r1, _080265FC  @ =gUnknown_0813C71C
	mov r2, r12
	str r1, [r2, #72]
_080265EE:
	ldrb r1, [r0]
	mov r0, r12
	bl 0x08003870
	pop {r4}
	pop {r0}
	bx r0
_080265FC:
	.4byte gUnknown_0813C71C
	THUMB_FUNC_END sub_0802657C

	THUMB_FUNC_START sub_08026600
sub_08026600: @ 0x08026600
	push {r4,r5,lr}
	add r4, r0, #0
	ldr r0, [r4, #84]
	cmp r0, #0
	beq _08026618
	ldr r0, [r0, #88]
	cmp r0, r4
	beq _08026618
	add r0, r4, #0
	bl sub_08012540
	b _0802664E
_08026618:
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #0
	bne _0802664E
	mov r0, #2
	strb r0, [r4, #20]
	add r2, r4, #0
	add r2, r2, #60
	ldrb r0, [r2]
	mov r1, #128
	orr r0, r0, r1
	strb r0, [r2]
	add r2, r2, #20
	ldrh r1, [r2]
	ldr r0, _08026654  @ =0x0000CFFF
	and r0, r0, r1
	strh r0, [r2]
	add r0, r4, #0
	bl 0x08008DD8
	ldr r0, [r4, #84]
	cmp r0, #0
	beq _0802664E
	str r5, [r0, #88]
_0802664E:
	pop {r4,r5}
	pop {r0}
	bx r0
_08026654:
	.4byte 0x0000CFFF
	THUMB_FUNC_END sub_08026600

	THUMB_FUNC_START sub_08026658
sub_08026658: @ 0x08026658
	push {r4,lr}
	add r4, r0, #0
	bl 0x08009FDC
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r1, #0
	bne _08026688
	mov r0, #3
	strb r0, [r4, #20]
	mov r0, #30
	strb r0, [r4, #23]
	add r0, r4, #0
	add r0, r0, #60
	strb r1, [r0]
	sub r0, r0, #18
	ldrb r1, [r0]
	add r1, r1, #2
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x08003870
	b _0802668E
_08026688:
	add r0, r4, #0
	bl 0x08008E50
_0802668E:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08026658

	THUMB_FUNC_START sub_08026694
sub_08026694: @ 0x08026694
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _080266AE
	add r0, r4, #0
	bl sub_08012540
_080266AE:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08026694

	THUMB_FUNC_START sub_080266B4
sub_080266B4: @ 0x080266B4
	push {r4,lr}
	add r4, r0, #0
	bl sub_0803CC20
	add r0, r4, #0
	bl 0x08003828
	mov r1, #192
	lsl r1, r1, #5
	add r0, r4, #0
	bl 0x08003594
	cmp r0, #0
	bne _080266D6
	add r0, r4, #0
	bl sub_08012540
_080266D6:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080266B4

	THUMB_FUNC_START sub_080266DC
sub_080266DC: @ 0x080266DC
	push {r4,lr}
	add r3, r0, #0
	ldr r4, [r3, #84]
	ldrb r0, [r3, #20]
	cmp r0, #0
	bne _08026708
	mov r0, #1
	strb r0, [r3, #20]
	add r2, r3, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #32
	orr r0, r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #9]
	add r0, r3, #0
	add r0, r0, #112
	strb r1, [r0]
	ldrb r0, [r4, #8]
	add r1, r3, #0
	add r1, r1, #113
	strb r0, [r1]
_08026708:
	add r0, r4, #0
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802672A
	add r0, r3, #0
	add r0, r0, #112
	ldrb r0, [r0]
	ldrb r1, [r4, #9]
	cmp r0, r1
	bne _0802672A
	add r0, r3, #0
	add r0, r0, #113
	ldrb r0, [r0]
	ldrb r1, [r4, #8]
	cmp r0, r1
	beq _08026732
_0802672A:
	add r0, r3, #0
	bl sub_08012540
	b _0802674E
_08026732:
	add r0, r3, #0
	add r0, r0, #65
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0802674E
	add r1, r4, #0
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #0
	bne _0802674E
	mov r0, #244
	strb r0, [r1]
_0802674E:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080266DC

	THUMB_FUNC_START sub_08026754
sub_08026754: @ 0x08026754
	push {lr}
	ldr r2, _08026768  @ =gUnknown_0813CBE0
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08026768:
	.4byte gUnknown_0813CBE0
	THUMB_FUNC_END sub_08026754

	THUMB_FUNC_START sub_0802676C
sub_0802676C: @ 0x0802676C
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #20]
	add r0, r0, #1
	mov r1, #0
	strb r0, [r4, #20]
	add r0, r4, #0
	add r0, r0, #60
	strb r1, [r0]
	ldr r0, _080267BC  @ =gUnknown_0813CBF0
	str r0, [r4, #72]
	mov r0, #50
	ldrsh r1, [r4, r0]
	ldr r2, _080267C0  @ =gUnknown_03000450
	ldrh r0, [r2, #24]
	sub r1, r1, r0
	asr r1, r1, #4
	mov r3, #54
	ldrsh r0, [r4, r3]
	ldrh r2, [r2, #26]
	sub r0, r0, r2
	asr r0, r0, #4
	lsl r0, r0, #6
	orr r1, r1, r0
	add r0, r4, #0
	add r0, r0, #124
	strh r1, [r0]
	ldrh r0, [r0]
	add r1, r4, #0
	add r1, r1, #80
	ldrh r1, [r1]
	bl 0x0800932C
	add r1, r4, #0
	add r1, r1, #122
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080267BC:
	.4byte gUnknown_0813CBF0
_080267C0:
	.4byte gUnknown_03000450
	THUMB_FUNC_END sub_0802676C

	THUMB_FUNC_START sub_080267C4
sub_080267C4: @ 0x080267C4
	push {r4-r6,lr}
	add r6, r0, #0
	bl sub_080269F8
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #0
	beq _080268C8
	ldr r3, _0802687C  @ =gUnknown_03006A30
	mov r0, #1
	and r0, r0, r2
	cmp r0, #0
	beq _080267EC
	ldrh r1, [r3, #54]
	mov r0, #144
	and r0, r0, r1
	cmp r0, #0
	beq _080267EC
	mov r0, #254
	and r2, r2, r0
_080267EC:
	add r3, r3, #144
	mov r0, #2
	and r0, r0, r2
	cmp r0, #0
	beq _08026804
	ldrh r1, [r3, #54]
	mov r0, #144
	and r0, r0, r1
	cmp r0, #0
	beq _08026804
	mov r0, #253
	and r2, r2, r0
_08026804:
	add r3, r3, #144
	mov r0, #4
	and r0, r0, r2
	cmp r0, #0
	beq _0802681C
	ldrh r1, [r3, #54]
	mov r0, #144
	and r0, r0, r1
	cmp r0, #0
	beq _0802681C
	mov r0, #251
	and r2, r2, r0
_0802681C:
	add r3, r3, #144
	mov r0, #8
	and r0, r0, r2
	cmp r0, #0
	beq _08026834
	ldrh r1, [r3, #54]
	mov r0, #144
	and r0, r0, r1
	cmp r0, #0
	beq _08026834
	mov r0, #247
	and r2, r2, r0
_08026834:
	cmp r2, #0
	beq _080268C8
	ldr r0, _08026880  @ =gUnknown_0201F000
	add r1, r6, #0
	add r1, r1, #82
	ldrb r2, [r1]
	lsl r2, r2, #2
	add r2, r2, r0
	ldr r1, _08026884  @ =gUnknown_08137B10
	ldrb r0, [r6, #10]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r2]
	ldr r0, [r0]
	orr r1, r1, r0
	str r1, [r2]
	add r0, r6, #0
	mov r1, #18
	bl 0x08003E10
	ldrb r0, [r6, #11]
	cmp r0, #0
	beq _0802688C
	mov r0, #2
	strb r0, [r6, #20]
	ldr r0, _08026888  @ =0x00000149
	add r5, r6, #0
	add r5, r5, #124
	ldrh r1, [r5]
	add r4, r6, #0
	add r4, r4, #80
	ldrh r2, [r4]
	bl sub_08014658
	b _080268A4
	.byte 0x00
	.byte 0x00
_0802687C:
	.4byte gUnknown_03006A30
_08026880:
	.4byte gUnknown_0201F000
_08026884:
	.4byte gUnknown_08137B10
_08026888:
	.4byte 0x00000149
_0802688C:
	ldr r0, _080268D0  @ =0x0000014B
	add r5, r6, #0
	add r5, r5, #124
	ldrh r1, [r5]
	add r4, r6, #0
	add r4, r4, #80
	ldrh r2, [r4]
	bl sub_08014658
	add r0, r6, #0
	bl sub_08012540
_080268A4:
	add r2, r6, #0
	add r2, r2, #120
	ldrh r1, [r2]
	ldr r0, _080268D4  @ =0x0000FFFF
	cmp r1, r0
	beq _080268C8
	add r0, r1, #0
	ldrh r1, [r5]
	ldrh r2, [r4]
	bl 0x08008F48
	add r0, r6, #0
	add r0, r0, #126
	ldrb r0, [r0]
	ldrh r1, [r5]
	ldrh r2, [r4]
	bl 0x08008F3C
_080268C8:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080268D0:
	.4byte 0x0000014B
_080268D4:
	.4byte 0x0000FFFF
	THUMB_FUNC_END sub_080267C4

	THUMB_FUNC_START sub_080268D8
sub_080268D8: @ 0x080268D8
	push {r4,lr}
	add r4, r0, #0
	bl sub_08026A6C
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldr r3, _08026954  @ =gUnknown_03006A30
	mov r0, #1
	and r0, r0, r2
	cmp r0, #0
	beq _080268FC
	ldrh r1, [r3, #54]
	mov r0, #144
	and r0, r0, r1
	cmp r0, #0
	beq _080268FC
	mov r0, #254
	and r2, r2, r0
_080268FC:
	add r3, r3, #144
	mov r0, #2
	and r0, r0, r2
	cmp r0, #0
	beq _08026914
	ldrh r1, [r3, #54]
	mov r0, #144
	and r0, r0, r1
	cmp r0, #0
	beq _08026914
	mov r0, #253
	and r2, r2, r0
_08026914:
	add r3, r3, #144
	mov r0, #4
	and r0, r0, r2
	cmp r0, #0
	beq _0802692C
	ldrh r1, [r3, #54]
	mov r0, #144
	and r0, r0, r1
	cmp r0, #0
	beq _0802692C
	mov r0, #251
	and r2, r2, r0
_0802692C:
	add r3, r3, #144
	mov r0, #8
	and r0, r0, r2
	cmp r0, #0
	beq _08026944
	ldrh r1, [r3, #54]
	mov r0, #144
	and r0, r0, r1
	cmp r0, #0
	beq _08026944
	mov r0, #247
	and r2, r2, r0
_08026944:
	cmp r2, #0
	bne _0802694C
	mov r0, #3
	strb r0, [r4, #20]
_0802694C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08026954:
	.4byte gUnknown_03006A30
	THUMB_FUNC_END sub_080268D8

	THUMB_FUNC_START sub_08026958
sub_08026958: @ 0x08026958
	push {r4-r6,lr}
	add r4, r0, #0
	add r6, r4, #0
	add r6, r6, #124
	ldrh r0, [r6]
	add r5, r4, #0
	add r5, r5, #80
	ldrh r1, [r5]
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r1, r0, #16
	ldr r2, _080269A8  @ =0xFEB80000
	add r0, r0, r2
	lsr r0, r0, #16
	cmp r0, #1
	bls _080269AC
	add r0, r4, #0
	add r0, r0, #122
	ldrh r0, [r0]
	cmp r1, r0
	beq _080269AC
	mov r0, #2
	strb r0, [r4, #20]
	ldrh r0, [r6]
	ldrh r1, [r5]
	bl 0x08008F58
	add r1, r4, #0
	add r1, r1, #120
	strh r0, [r1]
	ldrh r0, [r6]
	ldrh r1, [r5]
	bl 0x080093C8
	add r1, r4, #0
	add r1, r1, #126
	strb r0, [r1]
	b _080269E8
	.byte 0x00
	.byte 0x00
_080269A8:
	.4byte 0xFEB80000
_080269AC:
	mov r0, #1
	strb r0, [r4, #20]
	ldr r0, _080269F0  @ =gUnknown_0201F000
	add r1, r4, #0
	add r1, r1, #82
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r2, _080269F4  @ =gUnknown_08137B10
	ldrb r0, [r4, #10]
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r2, [r0]
	ldr r0, [r1]
	bic r0, r0, r2
	str r0, [r1]
	mov r0, #164
	lsl r0, r0, #1
	add r1, r4, #0
	add r1, r1, #124
	ldrh r1, [r1]
	add r2, r4, #0
	add r2, r2, #80
	ldrh r2, [r2]
	bl sub_08014658
	add r0, r4, #0
	mov r1, #18
	bl 0x08003E10
_080269E8:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080269F0:
	.4byte gUnknown_0201F000
_080269F4:
	.4byte gUnknown_08137B10
	THUMB_FUNC_END sub_08026958

	THUMB_FUNC_START sub_080269F8
sub_080269F8: @ 0x080269F8
	push {r4-r6,lr}
	add r4, r0, #0
	bl sub_08000580
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #0
	beq _08026A18
	add r1, r4, #0
	add r1, r1, #120
	ldr r0, _08026A14  @ =0x0000FFFF
	strh r0, [r1]
	add r0, r2, #0
	b _08026A66
_08026A14:
	.4byte 0x0000FFFF
_08026A18:
	add r6, r4, #0
	add r6, r6, #124
	ldrh r0, [r6]
	add r5, r4, #0
	add r5, r5, #80
	ldrh r1, [r5]
	bl 0x0800932C
	lsl r0, r0, #16
	lsr r1, r0, #16
	mov r0, #164
	lsl r0, r0, #1
	cmp r1, r0
	beq _08026A64
	add r0, r0, #2
	cmp r1, r0
	beq _08026A64
	add r0, r4, #0
	add r0, r0, #122
	ldrh r0, [r0]
	cmp r1, r0
	beq _08026A64
	ldrh r0, [r6]
	ldrh r1, [r5]
	bl 0x08008F58
	add r1, r4, #0
	add r1, r1, #120
	strh r0, [r1]
	ldrh r0, [r6]
	ldrh r1, [r5]
	bl 0x080093C8
	add r1, r4, #0
	add r1, r1, #126
	strb r0, [r1]
	mov r0, #16
	b _08026A66
_08026A64:
	mov r0, #0
_08026A66:
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080269F8

	THUMB_FUNC_START sub_08026A6C
sub_08026A6C: @ 0x08026A6C
	push {r4,r5,lr}
	add r4, r0, #0
	bl sub_08000580
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	bne _08026AAE
	add r5, r4, #0
	add r5, r5, #120
	ldrh r1, [r5]
	ldr r0, _08026AA8  @ =0x0000FFFF
	cmp r1, r0
	beq _08026AAC
	add r0, r4, #0
	add r0, r0, #124
	ldrh r0, [r0]
	add r1, r4, #0
	add r1, r1, #80
	ldrh r1, [r1]
	bl 0x08008F58
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldrh r5, [r5]
	cmp r0, r5
	bne _08026AAC
	mov r0, #16
	b _08026AAE
	.byte 0x00
	.byte 0x00
_08026AA8:
	.4byte 0x0000FFFF
_08026AAC:
	mov r0, #0
_08026AAE:
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08026A6C

	THUMB_FUNC_START sub_08026AB4
sub_08026AB4: @ 0x08026AB4
	push {lr}
	ldr r2, _08026AC8  @ =gUnknown_0813CBF8
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08026AC8:
	.4byte gUnknown_0813CBF8
	THUMB_FUNC_END sub_08026AB4

	THUMB_FUNC_START sub_08026ACC
sub_08026ACC: @ 0x08026ACC
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r4, r0, #0
	mov r0, #1
	strb r0, [r4, #20]
	ldrh r0, [r4, #50]
	strb r0, [r4, #22]
	mov r0, #50
	ldrsh r1, [r4, r0]
	lsl r0, r1, #4
	sub r0, r0, r1
	lsl r0, r0, #2
	strh r0, [r4, #50]
	add r0, r4, #0
	add r0, r0, #82
	ldrb r0, [r0]
	mov r2, #54
	ldrsh r1, [r4, r2]
	bl sub_08012F84
	str r0, [r4, #112]
	add r5, r0, #0
	mov r7, #0
	ldrh r0, [r5]
	ldr r1, _08026B68  @ =0x0000FFFF
	cmp r0, r1
	beq _08026B4A
	mov r2, #252
	lsl r2, r2, #4
	mov r8, r2
	mov r9, r1
	mov r6, #63
_08026B10:
	lsr r0, r0, #13
	sub r0, r0, #2
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #1
	bhi _08026B3C
	ldrh r2, [r5, #4]
	mov r0, r8
	and r0, r0, r2
	lsr r0, r0, #6
	ldrh r3, [r5, #6]
	mov r1, r8
	and r1, r1, r3
	orr r0, r0, r1
	add r1, r6, #0
	and r1, r1, r2
	add r1, r1, #1
	add r2, r6, #0
	and r2, r2, r3
	add r2, r2, #1
	bl sub_08013754
_08026B3C:
	add r0, r7, #1
	lsl r0, r0, #16
	lsr r7, r0, #16
	add r5, r5, #8
	ldrh r0, [r5]
	cmp r0, r9
	bne _08026B10
_08026B4A:
	ldrb r0, [r4, #23]
	cmp r0, #0
	beq _08026B56
	ldrb r0, [r4, #23]
	cmp r7, r0
	bcs _08026B58
_08026B56:
	strb r7, [r4, #23]
_08026B58:
	ldrb r0, [r4, #10]
	cmp r0, #255
	beq _08026B6C
	bl sub_08013D20
	str r0, [r4, #104]
	b _08026B72
	.byte 0x00
	.byte 0x00
_08026B68:
	.4byte 0x0000FFFF
_08026B6C:
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
_08026B72:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08026ACC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08026B80
sub_08026B80: @ 0x08026B80
	push {r4,r5,lr}
	add r5, r0, #0
	ldr r1, _08026BC0  @ =gUnknown_0201F000
	add r0, r0, #82
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r5, #104]
	and r0, r0, r1
	cmp r0, r1
	bne _08026BBA
	ldr r0, _08026BC4  @ =0x80020000
	bl sub_0800D24C
	ldr r0, _08026BC8  @ =0x800D01A7
	bl sub_0800D24C
	ldrb r0, [r5, #22]
	cmp r0, #0
	beq _08026BB6
	ldr r4, _08026BCC  @ =0x000001A1
	add r0, r4, #0
	bl sub_0800D24C
	ldr r0, _08026BD0  @ =gUnknown_03006C80
	strh r4, [r0, #38]
_08026BB6:
	mov r0, #2
	strb r0, [r5, #20]
_08026BBA:
	pop {r4,r5}
	pop {r0}
	bx r0
_08026BC0:
	.4byte gUnknown_0201F000
_08026BC4:
	.4byte 0x80020000
_08026BC8:
	.4byte 0x800D01A7
_08026BCC:
	.4byte 0x000001A1
_08026BD0:
	.4byte gUnknown_03006C80
	THUMB_FUNC_END sub_08026B80

	THUMB_FUNC_START sub_08026BD4
sub_08026BD4: @ 0x08026BD4
	push {r4,lr}
	add r4, r0, #0
	add r0, r0, #100
	ldrh r0, [r0]
	bl 0x08000A40
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldrb r1, [r4, #23]
	cmp r0, r1
	bcs _08026BF4
	add r0, r4, #0
	mov r1, #0
	bl sub_08026CC0
	b _08026BF8
_08026BF4:
	mov r0, #3
	strb r0, [r4, #20]
_08026BF8:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08026BD4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08026C00
sub_08026C00: @ 0x08026C00
	push {r4,lr}
	add r4, r0, #0
	add r0, r0, #100
	ldrh r0, [r0]
	bl 0x08000A40
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldrb r1, [r4, #23]
	cmp r0, r1
	bcs _08026C1E
	add r0, r4, #0
	mov r1, #90
	bl sub_08026CC0
_08026C1E:
	ldrh r1, [r4, #50]
	mov r2, #50
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _08026C36
	sub r0, r1, #1
	strh r0, [r4, #50]
	lsl r0, r0, #16
	cmp r0, #0
	bne _08026C36
	mov r0, #4
	strb r0, [r4, #20]
_08026C36:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08026C00

	THUMB_FUNC_START sub_08026C3C
sub_08026C3C: @ 0x08026C3C
	add r1, r0, #0
	add r0, r0, #98
	ldrh r0, [r0]
	cmp r0, #0
	bne _08026C4E
	mov r0, #5
	strb r0, [r1, #20]
	mov r0, #60
	strb r0, [r1, #23]
_08026C4E:
	bx lr
	THUMB_FUNC_END sub_08026C3C

	THUMB_FUNC_START sub_08026C50
sub_08026C50: @ 0x08026C50
	push {r4,r5,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #0
	bne _08026CAC
	ldrb r3, [r4, #11]
	add r0, r3, #0
	cmp r0, #255
	beq _08026C88
	ldr r0, _08026CB4  @ =gUnknown_0201F000
	add r1, r4, #0
	add r1, r1, #82
	ldrb r2, [r1]
	lsl r2, r2, #2
	add r2, r2, r0
	ldr r1, _08026CB8  @ =gUnknown_08137B10
	mov r0, #31
	and r0, r0, r3
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r2]
	ldr r0, [r0]
	orr r1, r1, r0
	str r1, [r2]
_08026C88:
	ldrb r1, [r4, #11]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _08026C98
	mov r0, #16
	bl sub_0800D24C
_08026C98:
	ldrb r0, [r4, #22]
	cmp r0, #0
	beq _08026CA6
	ldr r0, _08026CBC  @ =gUnknown_03006C80
	strh r5, [r0, #38]
	bl sub_0803A20C
_08026CA6:
	add r0, r4, #0
	bl sub_08012540
_08026CAC:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08026CB4:
	.4byte gUnknown_0201F000
_08026CB8:
	.4byte gUnknown_08137B10
_08026CBC:
	.4byte gUnknown_03006C80
	THUMB_FUNC_END sub_08026C50

	THUMB_FUNC_START sub_08026CC0
sub_08026CC0: @ 0x08026CC0
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r5, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r9, r1
	add r7, r5, #0
	add r7, r7, #100
	ldrh r0, [r7]
	bl 0x08000A70
	lsl r0, r0, #24
	lsr r6, r0, #24
	bl sub_080123E8
	add r4, r0, #0
	cmp r4, #0
	beq _08026D50
	lsl r0, r6, #3
	ldr r1, [r5, #112]
	add r1, r1, r0
	mov r0, #82
	add r0, r0, r5
	mov r8, r0
	ldrb r2, [r0]
	add r0, r4, #0
	bl 0x0800A148
	lsl r0, r0, #24
	cmp r0, #0
	beq _08026D50
	ldrb r1, [r4, #9]
	add r0, r4, #0
	add r0, r0, #112
	strb r1, [r0]
	ldrb r0, [r4, #10]
	add r1, r4, #0
	add r1, r1, #113
	strb r0, [r1]
	ldrb r0, [r4, #11]
	add r1, r1, #1
	strb r0, [r1]
	str r5, [r4, #96]
	add r1, r6, #1
	add r0, r4, #0
	add r0, r0, #104
	strb r1, [r0]
	mov r1, r8
	ldrb r0, [r1]
	add r1, r4, #0
	add r1, r1, #82
	strb r0, [r1]
	mov r0, #6
	strb r0, [r4, #8]
	mov r0, #10
	strb r0, [r4, #9]
	mov r0, r9
	strb r0, [r4, #24]
	add r1, r5, #0
	add r1, r1, #98
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	ldr r1, _08026D5C  @ =gUnknown_08137B10
	lsl r0, r6, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r7]
	orr r0, r0, r1
	strh r0, [r7]
_08026D50:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_08026D5C:
	.4byte gUnknown_08137B10
	THUMB_FUNC_END sub_08026CC0

	THUMB_FUNC_START sub_08026D60
sub_08026D60: @ 0x08026D60
	push {lr}
	add r2, r0, #0
	add r0, r0, #108
	ldrh r0, [r0]
	cmp r0, #0
	beq _08026D80
	ldr r0, _08026D7C  @ =gUnknown_02016328
	ldrb r0, [r0]
	cmp r0, #0
	bne _08026D80
	add r0, r2, #0
	bl sub_08012540
	b _08026D90
_08026D7C:
	.4byte gUnknown_02016328
_08026D80:
	ldr r0, _08026D94  @ =gUnknown_0813CC10
	ldrb r1, [r2, #20]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r2, #0
	bl _call_via_r1
_08026D90:
	pop {r0}
	bx r0
_08026D94:
	.4byte gUnknown_0813CC10
	THUMB_FUNC_END sub_08026D60

	THUMB_FUNC_START sub_08026D98
sub_08026D98: @ 0x08026D98
	push {lr}
	add r1, r0, #0
	ldrb r0, [r1, #20]
	add r0, r0, #1
	strb r0, [r1, #20]
	ldrb r0, [r1, #24]
	cmp r0, #0
	bne _08026DAE
	add r0, r1, #0
	bl sub_08026E24
_08026DAE:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08026D98

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08026DB4
sub_08026DB4: @ 0x08026DB4
	push {lr}
	add r1, r0, #0
	ldrb r0, [r1, #24]
	sub r0, r0, #1
	strb r0, [r1, #24]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08026DCA
	add r0, r1, #0
	bl sub_08026E24
_08026DCA:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08026DB4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08026DD0
sub_08026DD0: @ 0x08026DD0
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r3, r4, #0
	add r3, r3, #41
	ldrb r1, [r3]
	cmp r1, #1
	bne _08026DEA
	add r0, r4, #0
	bl sub_08026EA0
	b _08026E1C
_08026DEA:
	mov r0, #128
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #0
	beq _08026DFE
	add r0, r4, #0
	bl sub_08012540
	b _08026E1C
_08026DFE:
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _08026E1C
	strb r2, [r3]
	ldrb r0, [r4, #24]
	cmp r0, #0
	bne _08026E16
	mov r0, #116
	bl 0x08003DFC
	b _08026E1C
_08026E16:
	mov r0, #157
	bl 0x08003DFC
_08026E1C:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08026DD0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08026E24
sub_08026E24: @ 0x08026E24
	push {r4,lr}
	add r4, r0, #0
	mov r0, #2
	strb r0, [r4, #20]
	add r0, r4, #0
	add r0, r0, #112
	ldrb r0, [r0]
	cmp r0, #18
	beq _08026E54
	mov r1, #50
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08026E46
	mov r1, #54
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _08026E54
_08026E46:
	ldrb r0, [r4, #28]
	mov r1, #4
	neg r1, r1
	and r1, r1, r0
	mov r0, #1
	orr r1, r1, r0
	strb r1, [r4, #28]
_08026E54:
	ldr r0, _08026E9C  @ =gUnknown_0813CC1C
	add r1, r4, #0
	add r1, r1, #112
	ldrb r1, [r1]
	bl 0x08000AAC
	lsl r0, r0, #24
	cmp r0, #0
	beq _08026E8E
	mov r2, #1
	mov r0, #1
	strb r0, [r4, #24]
	ldrb r1, [r4, #30]
	sub r0, r0, #17
	and r0, r0, r1
	orr r0, r0, r2
	strb r0, [r4, #30]
	add r1, r4, #0
	add r1, r1, #32
	mov r0, #244
	strb r0, [r1]
	ldrb r1, [r4, #28]
	mov r0, #63
	and r0, r0, r1
	mov r1, #128
	orr r0, r0, r1
	strb r0, [r4, #28]
	mov r0, #145
	strb r0, [r4, #27]
_08026E8E:
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
	pop {r4}
	pop {r0}
	bx r0
_08026E9C:
	.4byte gUnknown_0813CC1C
	THUMB_FUNC_END sub_08026E24

	THUMB_FUNC_START sub_08026EA0
sub_08026EA0: @ 0x08026EA0
	push {r4-r6,lr}
	add r6, r0, #0
	bl sub_080123E8
	add r5, r0, #0
	cmp r5, #0
	beq _08026EE6
	mov r4, #0
	mov r0, #3
	strb r0, [r5, #8]
	add r0, r6, #0
	add r0, r0, #112
	ldrb r0, [r0]
	strb r0, [r5, #9]
	add r0, r6, #0
	add r0, r0, #113
	ldrb r0, [r0]
	strb r0, [r5, #10]
	add r0, r6, #0
	add r0, r0, #114
	ldrb r0, [r0]
	strb r0, [r5, #11]
	ldrb r0, [r6, #23]
	strb r0, [r5, #23]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_08044018
	mov r0, #4
	add r1, r5, #0
	bl sub_08012728
	add r0, r6, #0
	add r0, r0, #41
	strb r4, [r0]
_08026EE6:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08026EA0

	THUMB_FUNC_START sub_08026EEC
sub_08026EEC: @ 0x08026EEC
	push {lr}
	ldr r2, _08026F00  @ =gUnknown_0813CCD4
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08026F00:
	.4byte gUnknown_0813CCD4
	THUMB_FUNC_END sub_08026EEC

	THUMB_FUNC_START sub_08026F04
sub_08026F04: @ 0x08026F04
	push {r4,r5,lr}
	add r5, r0, #0
	ldrb r1, [r5, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r5, #28]
	add r0, r5, #0
	add r0, r0, #46
	mov r4, #0
	strb r4, [r0]
	add r1, r5, #0
	add r1, r1, #60
	mov r0, #216
	strb r0, [r1]
	add r1, r1, #10
	mov r0, #244
	strb r0, [r1]
	sub r1, r1, #6
	mov r0, #53
	strb r0, [r1]
	sub r1, r1, #1
	mov r0, #13
	strb r0, [r1]
	ldr r0, _08026F74  @ =gUnknown_0813CD2C
	str r0, [r5, #72]
	add r1, r1, #29
	ldr r0, _08026F78  @ =0x000007FF
	strh r0, [r1]
	ldrb r0, [r5, #20]
	add r0, r0, #1
	strb r0, [r5, #20]
	add r0, r5, #0
	bl 0x08003B94
	add r0, r5, #0
	mov r1, #0
	bl 0x08003870
	ldr r0, _08026F7C  @ =gUnknown_03000488
	mov r1, #128
	lsl r1, r1, #1
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r4, [r0, #4]
	add r1, r5, #0
	bl sub_0803D770
	add r0, r5, #0
	bl 0x080005F0
	pop {r4,r5}
	pop {r0}
	bx r0
_08026F74:
	.4byte gUnknown_0813CD2C
_08026F78:
	.4byte 0x000007FF
_08026F7C:
	.4byte gUnknown_03000488
	THUMB_FUNC_END sub_08026F04

	THUMB_FUNC_START sub_08026F80
sub_08026F80: @ 0x08026F80
	push {r4,r5,lr}
	add r4, r0, #0
	add r0, r0, #65
	ldrb r1, [r0]
	mov r2, #128
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08026FD2
	add r0, r4, #0
	add r0, r0, #60
	ldrb r1, [r0]
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, #0
	bne _08026FC8
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	add r2, r4, #0
	add r2, r2, #94
	ldrb r0, [r2]
	mov r1, #3
	orr r0, r0, r1
	strb r0, [r2]
	add r0, r4, #0
	bl 0x08003BCC
	add r0, r4, #0
	mov r1, #1
	bl 0x08003870
	mov r0, #86
	bl 0x08003DFC
	b _0802702A
_08026FC8:
	mov r0, #91
	bl 0x08003DFC
	mov r0, #64
	strb r0, [r4, #23]
_08026FD2:
	ldrb r1, [r4, #23]
	cmp r1, #0
	beq _0802702A
	sub r1, r1, #1
	strb r1, [r4, #23]
	ldrb r0, [r4, #24]
	add r5, r0, #1
	strb r5, [r4, #24]
	lsl r1, r1, #24
	lsr r2, r1, #24
	cmp r2, #0
	beq _08027018
	ldr r0, _08027010  @ =gUnknown_03000488
	ldr r3, _08027014  @ =gUnknown_0813CCE0
	mov r2, #14
	and r2, r2, r5
	lsl r1, r2, #1
	add r1, r1, r3
	ldrh r1, [r1]
	strh r1, [r0]
	add r2, r2, #1
	lsl r2, r2, #1
	add r2, r2, r3
	ldrh r1, [r2]
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	add r1, r4, #0
	bl sub_0803D770
	b _0802702A
_08027010:
	.4byte gUnknown_03000488
_08027014:
	.4byte gUnknown_0813CCE0
_08027018:
	ldr r0, _08027030  @ =gUnknown_03000488
	mov r1, #128
	lsl r1, r1, #1
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r2, [r0, #4]
	add r1, r4, #0
	bl sub_0803D770
_0802702A:
	pop {r4,r5}
	pop {r0}
	bx r0
_08027030:
	.4byte gUnknown_03000488
	THUMB_FUNC_END sub_08026F80

	THUMB_FUNC_START sub_08027034
sub_08027034: @ 0x08027034
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08027056
	add r0, r4, #0
	bl 0x08000620
	add r0, r4, #0
	bl sub_08012540
_08027056:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027034

	THUMB_FUNC_START sub_0802705C
sub_0802705C: @ 0x0802705C
	push {r4,lr}
	add r4, r0, #0
	add r3, r4, #0
	add r3, r3, #116
	ldrb r0, [r3]
	cmp r0, #0
	beq _0802708E
	ldr r2, _080270B4  @ =gUnknown_08137B10
	ldrb r0, [r4, #10]
	mov r1, #31
	and r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r2, _080270B8  @ =gUnknown_0201F000
	add r0, r4, #0
	add r0, r0, #82
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r1, [r1]
	ldr r0, [r0]
	and r1, r1, r0
	cmp r1, #0
	bne _0802708E
	strb r1, [r3]
_0802708E:
	ldrb r0, [r4, #20]
	cmp r0, #4
	beq _0802709A
	add r0, r4, #0
	bl sub_080275F8
_0802709A:
	ldr r1, _080270BC  @ =gUnknown_0813CD38
	ldrb r0, [r4, #20]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
	mov r0, #0
	str r0, [r4, #96]
	pop {r4}
	pop {r0}
	bx r0
_080270B4:
	.4byte gUnknown_08137B10
_080270B8:
	.4byte gUnknown_0201F000
_080270BC:
	.4byte gUnknown_0813CD38
	THUMB_FUNC_END sub_0802705C

	THUMB_FUNC_START sub_080270C0
sub_080270C0: @ 0x080270C0
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	cmp r0, #0
	beq _080270CE
	mov r0, #4
	b _080270E0
_080270CE:
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	ldrb r0, [r4, #20]
	add r0, r0, #1
_080270E0:
	strb r0, [r4, #20]
	mov r2, #0
	mov r0, #30
	strb r0, [r4, #23]
	add r3, r4, #0
	add r3, r3, #94
	ldrb r1, [r3]
	sub r0, r0, #34
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r3]
	add r0, r4, #0
	add r0, r0, #46
	strb r2, [r0]
	ldr r0, _08027150  @ =gUnknown_0813CDF4
	str r0, [r4, #72]
	ldrb r0, [r4, #11]
	add r0, r0, #1
	lsl r0, r0, #6
	str r0, [r4, #12]
	ldrh r1, [r4, #50]
	add r0, r4, #0
	add r0, r0, #120
	strh r1, [r0]
	ldrh r0, [r4, #54]
	add r1, r4, #0
	add r1, r1, #122
	strh r0, [r1]
	ldr r3, _08027154  @ =gUnknown_0813CD4C
	ldr r2, _08027158  @ =gUnknown_03006C80
	ldrb r0, [r2, #1]
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r3
	ldrh r0, [r0]
	mov r1, #15
	and r1, r1, r0
	lsl r0, r0, #4
	orr r0, r0, r1
	strb r0, [r4, #30]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r3
	ldrh r1, [r0]
	add r0, r4, #0
	bl sub_0802C070
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
	pop {r4}
	pop {r0}
	bx r0
_08027150:
	.4byte gUnknown_0813CDF4
_08027154:
	.4byte gUnknown_0813CD4C
_08027158:
	.4byte gUnknown_03006C80
	THUMB_FUNC_END sub_080270C0

	THUMB_FUNC_START sub_0802715C
sub_0802715C: @ 0x0802715C
	push {r4-r6,lr}
	add r4, r0, #0
	ldrb r2, [r4, #10]
	mov r0, #128
	and r0, r0, r2
	cmp r0, #0
	beq _080271D0
	add r3, r4, #0
	add r3, r3, #116
	ldrb r0, [r3]
	cmp r0, #0
	bne _080271D0
	mov r0, #50
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, r0, #120
	ldrh r0, [r0]
	cmp r1, r0
	bne _08027190
	mov r1, #54
	ldrsh r0, [r4, r1]
	add r1, r4, #0
	add r1, r1, #122
	ldrh r1, [r1]
	cmp r0, r1
	beq _080271D0
_08027190:
	ldr r0, _080271C8  @ =gUnknown_08137B10
	mov r1, #31
	and r1, r1, r2
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r2, _080271CC  @ =gUnknown_0201F000
	add r0, r4, #0
	add r0, r0, #82
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r1, [r1]
	ldr r0, [r0]
	and r1, r1, r0
	cmp r1, #0
	beq _080271D0
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	mov r0, #45
	strb r0, [r4, #23]
	mov r0, #1
	strb r0, [r3]
	add r0, r4, #0
	mov r1, #1
	bl 0x08003870
	b _08027212
_080271C8:
	.4byte gUnknown_08137B10
_080271CC:
	.4byte gUnknown_0201F000
_080271D0:
	ldr r0, [r4, #96]
	mov r1, #240
	and r0, r0, r1
	lsr r5, r0, #4
	ldr r0, _08027218  @ =gUnknown_0813CD5C
	add r0, r5, r0
	ldrb r0, [r0]
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	cmp r0, #255
	beq _080271EE
	add r0, r4, #0
	bl sub_080272D0
_080271EE:
	add r0, r4, #0
	add r0, r0, #117
	ldrb r1, [r0]
	add r6, r0, #0
	cmp r5, r1
	beq _08027208
	add r0, r5, #0
	bic r0, r0, r1
	cmp r0, #0
	beq _08027208
	mov r0, #18
	bl 0x08003DFC
_08027208:
	strb r5, [r6]
	add r1, r5, #1
	add r0, r4, #0
	bl 0x08003870
_08027212:
	pop {r4-r6}
	pop {r0}
	bx r0
_08027218:
	.4byte gUnknown_0813CD5C
	THUMB_FUNC_END sub_0802715C

	THUMB_FUNC_START sub_0802721C
sub_0802721C: @ 0x0802721C
	add r3, r0, #0
	ldrb r0, [r3, #23]
	sub r0, r0, #1
	strb r0, [r3, #23]
	lsl r0, r0, #24
	cmp r0, #0
	beq _0802723E
	ldrb r2, [r3, #28]
	lsl r1, r2, #30
	lsr r1, r1, #30
	mov r0, #1
	eor r1, r1, r0
	sub r0, r0, #5
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r3, #28]
	b _08027258
_0802723E:
	mov r0, #45
	strb r0, [r3, #23]
	ldrb r0, [r3, #20]
	add r0, r0, #1
	strb r0, [r3, #20]
	add r0, r3, #0
	add r0, r0, #120
	ldrh r0, [r0]
	strh r0, [r3, #50]
	add r0, r3, #0
	add r0, r0, #122
	ldrh r0, [r0]
	strh r0, [r3, #54]
_08027258:
	bx lr
	THUMB_FUNC_END sub_0802721C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802725C
sub_0802725C: @ 0x0802725C
	add r3, r0, #0
	ldrb r0, [r3, #23]
	sub r0, r0, #1
	strb r0, [r3, #23]
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	beq _0802727E
	ldrb r2, [r3, #28]
	lsl r1, r2, #30
	lsr r1, r1, #30
	mov r0, #1
	eor r1, r1, r0
	sub r0, r0, #5
	and r0, r0, r2
	orr r0, r0, r1
	b _08027294
_0802727E:
	mov r2, #1
	mov r0, #1
	strb r0, [r3, #20]
	add r0, r3, #0
	add r0, r0, #116
	strb r1, [r0]
	ldrb r1, [r3, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	orr r0, r0, r2
_08027294:
	strb r0, [r3, #28]
	bx lr
	THUMB_FUNC_END sub_0802725C

	THUMB_FUNC_START sub_08027298
sub_08027298: @ 0x08027298
	add r3, r0, #0
	ldr r2, _080272C8  @ =gUnknown_08137B10
	ldrb r0, [r3, #10]
	mov r1, #31
	and r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r2, _080272CC  @ =gUnknown_0201F000
	add r0, r3, #0
	add r0, r0, #82
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r1, [r1]
	ldr r0, [r0]
	and r1, r1, r0
	cmp r1, #0
	beq _080272C6
	ldrb r0, [r3, #20]
	sub r0, r0, #1
	strb r0, [r3, #20]
	mov r0, #45
	strb r0, [r3, #23]
_080272C6:
	bx lr
_080272C8:
	.4byte gUnknown_08137B10
_080272CC:
	.4byte gUnknown_0201F000
	THUMB_FUNC_END sub_08027298

	THUMB_FUNC_START sub_080272D0
sub_080272D0: @ 0x080272D0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r4, r0, #0
	add r0, r0, #80
	ldrh r0, [r0]
	bl sub_08015DC0
	mov r8, r0
	ldrh r1, [r4, #50]
	add r0, r4, #0
	add r0, r0, #124
	mov r2, #0
	strh r1, [r0]
	ldrh r0, [r4, #54]
	add r1, r4, #0
	add r1, r1, #126
	strh r0, [r1]
	strh r2, [r4, #44]
	ldr r6, [r4, #96]
	mov r0, #15
	and r6, r6, r0
	cmp r6, #0
	bne _08027302
	b _080275EA
_08027302:
	add r0, r4, #0
	add r0, r0, #43
	ldrb r0, [r0]
	lsr r7, r0, #2
	cmp r7, #7
	bls _08027310
	b _080275EA
_08027310:
	lsl r0, r7, #2
	ldr r1, _0802731C  @ =0x08027320
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_0802731C:
	.4byte 0x08027320
	.4byte _08027340
	.4byte _08027340
	.4byte _080273CA
	.4byte _080273CA
	.4byte _08027454
	.4byte _08027454
	.4byte _080274DE
	.4byte _080274DE
_08027340:
	add r0, r4, #0
	mov r1, r8
	bl sub_080276CC
	ldr r1, [r4, #12]
	ldrh r3, [r4, #44]
	add r0, r4, #0
	mov r2, #0
	bl 0x08002E84
	add r0, r4, #0
	add r0, r0, #126
	ldrh r0, [r0]
	ldrh r1, [r4, #54]
	sub r0, r0, r1
	lsl r0, r0, #24
	lsr r5, r0, #16
	cmp r5, #0
	beq _080273C4
	mov r0, #1
	and r0, r0, r6
	cmp r0, #0
	beq _0802737A
	ldr r0, _080275F4  @ =gUnknown_03006A30
	ldr r0, [r0, #40]
	add r1, r5, #0
	mov r2, #0
	bl 0x08002E70
_0802737A:
	mov r0, #2
	and r0, r0, r6
	cmp r0, #0
	beq _08027390
	ldr r0, _080275F4  @ =gUnknown_03006A30
	add r0, r0, #184
	ldr r0, [r0]
	add r1, r5, #0
	mov r2, #0
	bl 0x08002E70
_08027390:
	mov r0, #4
	and r0, r0, r6
	cmp r0, #0
	beq _080273AA
	ldr r0, _080275F4  @ =gUnknown_03006A30
	mov r1, #164
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	add r1, r5, #0
	mov r2, #0
	bl 0x08002E70
_080273AA:
	mov r0, #8
	and r0, r0, r6
	cmp r0, #0
	beq _080273C4
	ldr r0, _080275F4  @ =gUnknown_03006A30
	mov r1, #236
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	add r1, r5, #0
	mov r2, #0
	bl 0x08002E70
_080273C4:
	cmp r7, #1
	beq _080273CA
	b _080275EA
_080273CA:
	add r0, r4, #0
	mov r1, r8
	bl sub_0802782C
	ldr r1, [r4, #12]
	ldrh r3, [r4, #44]
	add r0, r4, #0
	mov r2, #8
	bl 0x08002E84
	add r1, r4, #0
	add r1, r1, #124
	ldrh r0, [r4, #50]
	ldrh r1, [r1]
	sub r0, r0, r1
	lsl r0, r0, #24
	lsr r5, r0, #16
	cmp r5, #0
	beq _0802744E
	mov r0, #1
	and r0, r0, r6
	cmp r0, #0
	beq _08027404
	ldr r0, _080275F4  @ =gUnknown_03006A30
	ldr r0, [r0, #40]
	add r1, r5, #0
	mov r2, #8
	bl 0x08002E70
_08027404:
	mov r0, #2
	and r0, r0, r6
	cmp r0, #0
	beq _0802741A
	ldr r0, _080275F4  @ =gUnknown_03006A30
	add r0, r0, #184
	ldr r0, [r0]
	add r1, r5, #0
	mov r2, #8
	bl 0x08002E70
_0802741A:
	mov r0, #4
	and r0, r0, r6
	cmp r0, #0
	beq _08027434
	ldr r0, _080275F4  @ =gUnknown_03006A30
	mov r1, #164
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	add r1, r5, #0
	mov r2, #8
	bl 0x08002E70
_08027434:
	mov r0, #8
	and r0, r0, r6
	cmp r0, #0
	beq _0802744E
	ldr r0, _080275F4  @ =gUnknown_03006A30
	mov r1, #236
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	add r1, r5, #0
	mov r2, #8
	bl 0x08002E70
_0802744E:
	cmp r7, #3
	beq _08027454
	b _080275EA
_08027454:
	add r0, r4, #0
	mov r1, r8
	bl sub_08027780
	ldr r1, [r4, #12]
	ldrh r3, [r4, #44]
	add r0, r4, #0
	mov r2, #16
	bl 0x08002E84
	add r1, r4, #0
	add r1, r1, #126
	ldrh r0, [r4, #54]
	ldrh r1, [r1]
	sub r0, r0, r1
	lsl r0, r0, #24
	lsr r5, r0, #16
	cmp r5, #0
	beq _080274D8
	mov r0, #1
	and r0, r0, r6
	cmp r0, #0
	beq _0802748E
	ldr r0, _080275F4  @ =gUnknown_03006A30
	ldr r0, [r0, #40]
	add r1, r5, #0
	mov r2, #16
	bl 0x08002E70
_0802748E:
	mov r0, #2
	and r0, r0, r6
	cmp r0, #0
	beq _080274A4
	ldr r0, _080275F4  @ =gUnknown_03006A30
	add r0, r0, #184
	ldr r0, [r0]
	add r1, r5, #0
	mov r2, #16
	bl 0x08002E70
_080274A4:
	mov r0, #4
	and r0, r0, r6
	cmp r0, #0
	beq _080274BE
	ldr r0, _080275F4  @ =gUnknown_03006A30
	mov r1, #164
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	add r1, r5, #0
	mov r2, #16
	bl 0x08002E70
_080274BE:
	mov r0, #8
	and r0, r0, r6
	cmp r0, #0
	beq _080274D8
	ldr r0, _080275F4  @ =gUnknown_03006A30
	mov r1, #236
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	add r1, r5, #0
	mov r2, #16
	bl 0x08002E70
_080274D8:
	cmp r7, #5
	beq _080274DE
	b _080275EA
_080274DE:
	add r0, r4, #0
	mov r1, r8
	bl sub_080278E8
	ldr r1, [r4, #12]
	ldrh r3, [r4, #44]
	add r0, r4, #0
	mov r2, #24
	bl 0x08002E84
	add r0, r4, #0
	add r0, r0, #124
	ldrh r0, [r0]
	ldrh r1, [r4, #50]
	sub r0, r0, r1
	lsl r0, r0, #24
	lsr r5, r0, #16
	cmp r5, #0
	beq _08027562
	mov r0, #1
	and r0, r0, r6
	cmp r0, #0
	beq _08027518
	ldr r0, _080275F4  @ =gUnknown_03006A30
	ldr r0, [r0, #40]
	add r1, r5, #0
	mov r2, #24
	bl 0x08002E70
_08027518:
	mov r0, #2
	and r0, r0, r6
	cmp r0, #0
	beq _0802752E
	ldr r0, _080275F4  @ =gUnknown_03006A30
	add r0, r0, #184
	ldr r0, [r0]
	add r1, r5, #0
	mov r2, #24
	bl 0x08002E70
_0802752E:
	mov r0, #4
	and r0, r0, r6
	cmp r0, #0
	beq _08027548
	ldr r0, _080275F4  @ =gUnknown_03006A30
	mov r1, #164
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	add r1, r5, #0
	mov r2, #24
	bl 0x08002E70
_08027548:
	mov r0, #8
	and r0, r0, r6
	cmp r0, #0
	beq _08027562
	ldr r0, _080275F4  @ =gUnknown_03006A30
	mov r1, #236
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	add r1, r5, #0
	mov r2, #24
	bl 0x08002E70
_08027562:
	cmp r7, #7
	bne _080275EA
	add r0, r4, #0
	mov r1, r8
	bl sub_080276CC
	ldr r1, [r4, #12]
	ldrh r3, [r4, #44]
	add r0, r4, #0
	mov r2, #0
	bl 0x08002E84
	add r0, r4, #0
	add r0, r0, #126
	ldrh r0, [r0]
	ldrh r1, [r4, #54]
	sub r0, r0, r1
	lsl r0, r0, #24
	lsr r5, r0, #16
	cmp r5, #0
	beq _080275EA
	mov r0, #1
	and r0, r0, r6
	cmp r0, #0
	beq _080275A0
	ldr r0, _080275F4  @ =gUnknown_03006A30
	ldr r0, [r0, #40]
	add r1, r5, #0
	mov r2, #0
	bl 0x08002E70
_080275A0:
	mov r0, #2
	and r0, r0, r6
	cmp r0, #0
	beq _080275B6
	ldr r0, _080275F4  @ =gUnknown_03006A30
	add r0, r0, #184
	ldr r0, [r0]
	add r1, r5, #0
	mov r2, #0
	bl 0x08002E70
_080275B6:
	mov r0, #4
	and r0, r0, r6
	cmp r0, #0
	beq _080275D0
	ldr r0, _080275F4  @ =gUnknown_03006A30
	mov r1, #164
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	add r1, r5, #0
	mov r2, #0
	bl 0x08002E70
_080275D0:
	mov r0, #8
	and r6, r6, r0
	cmp r6, #0
	beq _080275EA
	ldr r0, _080275F4  @ =gUnknown_03006A30
	mov r1, #236
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	add r1, r5, #0
	mov r2, #0
	bl 0x08002E70
_080275EA:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_080275F4:
	.4byte gUnknown_03006A30
	THUMB_FUNC_END sub_080272D0

	THUMB_FUNC_START sub_080275F8
sub_080275F8: @ 0x080275F8
	push {r4-r6,lr}
	add r4, r0, #0
	bl sub_08000694
	ldr r0, [r4, #96]
	mov r6, #1
	and r0, r0, r6
	cmp r0, #0
	beq _0802762E
	ldr r5, _08027624  @ =gUnknown_03006A30
	ldr r0, [r5, #40]
	bl 0x08003FB0
	lsl r0, r0, #24
	cmp r0, #0
	beq _08027628
	ldr r1, [r5, #40]
	add r0, r4, #0
	bl sub_080003E0
	b _0802762E
	.byte 0x00
	.byte 0x00
_08027624:
	.4byte gUnknown_03006A30
_08027628:
	ldr r0, [r4, #96]
	eor r0, r0, r6
	str r0, [r4, #96]
_0802762E:
	ldr r0, [r4, #96]
	mov r6, #2
	and r0, r0, r6
	cmp r0, #0
	beq _0802765E
	ldr r0, _08027654  @ =gUnknown_03006A30
	add r5, r0, #0
	add r5, r5, #184
	ldr r0, [r5]
	bl 0x08003FB0
	lsl r0, r0, #24
	cmp r0, #0
	beq _08027658
	ldr r1, [r5]
	add r0, r4, #0
	bl sub_080003E0
	b _0802765E
_08027654:
	.4byte gUnknown_03006A30
_08027658:
	ldr r0, [r4, #96]
	eor r0, r0, r6
	str r0, [r4, #96]
_0802765E:
	ldr r0, [r4, #96]
	mov r6, #4
	and r0, r0, r6
	cmp r0, #0
	beq _08027692
	ldr r0, _08027688  @ =gUnknown_03006A30
	mov r1, #164
	lsl r1, r1, #1
	add r5, r0, r1
	ldr r0, [r5]
	bl 0x08003FB0
	lsl r0, r0, #24
	cmp r0, #0
	beq _0802768C
	ldr r1, [r5]
	add r0, r4, #0
	bl sub_080003E0
	b _08027692
	.byte 0x00
	.byte 0x00
_08027688:
	.4byte gUnknown_03006A30
_0802768C:
	ldr r0, [r4, #96]
	eor r0, r0, r6
	str r0, [r4, #96]
_08027692:
	ldr r0, [r4, #96]
	mov r6, #8
	and r0, r0, r6
	cmp r0, #0
	beq _080276C6
	ldr r0, _080276BC  @ =gUnknown_03006A30
	mov r1, #236
	lsl r1, r1, #1
	add r5, r0, r1
	ldr r0, [r5]
	bl 0x08003FB0
	lsl r0, r0, #24
	cmp r0, #0
	beq _080276C0
	ldr r1, [r5]
	add r0, r4, #0
	bl sub_080003E0
	b _080276C6
	.byte 0x00
	.byte 0x00
_080276BC:
	.4byte gUnknown_03006A30
_080276C0:
	ldr r0, [r4, #96]
	eor r0, r0, r6
	str r0, [r4, #96]
_080276C6:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080275F8

	THUMB_FUNC_START sub_080276CC
sub_080276CC: @ 0x080276CC
	push {r4,lr}
	add r4, r0, #0
	mov r1, #21
	neg r1, r1
	mov r2, #25
	neg r2, r2
	bl 0x0800934C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #66
	beq _080276FA
	cmp r0, #32
	beq _080276FA
	sub r0, r0, #19
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #11
	bls _080276FA
	ldrh r1, [r4, #44]
	mov r0, #2
	orr r0, r0, r1
	strh r0, [r4, #44]
_080276FA:
	mov r1, #5
	neg r1, r1
	mov r2, #25
	neg r2, r2
	add r0, r4, #0
	bl 0x0800934C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #66
	beq _08027726
	cmp r0, #32
	beq _08027726
	sub r0, r0, #19
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #11
	bls _08027726
	ldrh r1, [r4, #44]
	mov r0, #2
	orr r0, r0, r1
	strh r0, [r4, #44]
_08027726:
	mov r2, #25
	neg r2, r2
	add r0, r4, #0
	mov r1, #4
	bl 0x0800934C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #66
	beq _08027750
	cmp r0, #32
	beq _08027750
	sub r0, r0, #19
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #11
	bls _08027750
	ldrh r1, [r4, #44]
	mov r0, #4
	orr r0, r0, r1
	strh r0, [r4, #44]
_08027750:
	mov r2, #25
	neg r2, r2
	add r0, r4, #0
	mov r1, #20
	bl 0x0800934C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #66
	beq _0802777A
	cmp r0, #32
	beq _0802777A
	sub r0, r0, #19
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #11
	bls _0802777A
	ldrh r1, [r4, #44]
	mov r0, #4
	orr r0, r0, r1
	strh r0, [r4, #44]
_0802777A:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080276CC

	THUMB_FUNC_START sub_08027780
sub_08027780: @ 0x08027780
	push {r4,lr}
	add r4, r0, #0
	mov r1, #21
	neg r1, r1
	mov r2, #24
	bl 0x0800934C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #66
	beq _080277AC
	cmp r0, #32
	beq _080277AC
	sub r0, r0, #19
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #11
	bls _080277AC
	ldrh r1, [r4, #44]
	mov r0, #32
	orr r0, r0, r1
	strh r0, [r4, #44]
_080277AC:
	mov r1, #5
	neg r1, r1
	add r0, r4, #0
	mov r2, #24
	bl 0x0800934C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #66
	beq _080277D6
	cmp r0, #32
	beq _080277D6
	sub r0, r0, #19
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #11
	bls _080277D6
	ldrh r1, [r4, #44]
	mov r0, #32
	orr r0, r0, r1
	strh r0, [r4, #44]
_080277D6:
	add r0, r4, #0
	mov r1, #4
	mov r2, #24
	bl 0x0800934C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #66
	beq _080277FE
	cmp r0, #32
	beq _080277FE
	sub r0, r0, #19
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #11
	bls _080277FE
	ldrh r1, [r4, #44]
	mov r0, #64
	orr r0, r0, r1
	strh r0, [r4, #44]
_080277FE:
	add r0, r4, #0
	mov r1, #20
	mov r2, #24
	bl 0x0800934C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #66
	beq _08027826
	cmp r0, #32
	beq _08027826
	sub r0, r0, #19
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #11
	bls _08027826
	ldrh r1, [r4, #44]
	mov r0, #64
	orr r0, r0, r1
	strh r0, [r4, #44]
_08027826:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027780

	THUMB_FUNC_START sub_0802782C
sub_0802782C: @ 0x0802782C
	push {r4,lr}
	add r4, r0, #0
	mov r2, #21
	neg r2, r2
	mov r1, #24
	bl 0x0800934C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #66
	beq _0802785C
	cmp r0, #32
	beq _0802785C
	sub r0, r0, #19
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #11
	bls _0802785C
	ldrh r1, [r4, #44]
	mov r2, #128
	lsl r2, r2, #6
	add r0, r2, #0
	orr r0, r0, r1
	strh r0, [r4, #44]
_0802785C:
	mov r2, #5
	neg r2, r2
	add r0, r4, #0
	mov r1, #24
	bl 0x0800934C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #66
	beq _0802788A
	cmp r0, #32
	beq _0802788A
	sub r0, r0, #19
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #11
	bls _0802788A
	ldrh r1, [r4, #44]
	mov r2, #128
	lsl r2, r2, #6
	add r0, r2, #0
	orr r0, r0, r1
	strh r0, [r4, #44]
_0802788A:
	add r0, r4, #0
	mov r1, #24
	mov r2, #4
	bl 0x0800934C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #66
	beq _080278B6
	cmp r0, #32
	beq _080278B6
	sub r0, r0, #19
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #11
	bls _080278B6
	ldrh r1, [r4, #44]
	mov r2, #128
	lsl r2, r2, #7
	add r0, r2, #0
	orr r0, r0, r1
	strh r0, [r4, #44]
_080278B6:
	add r0, r4, #0
	mov r1, #24
	mov r2, #20
	bl 0x0800934C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #66
	beq _080278E2
	cmp r0, #32
	beq _080278E2
	sub r0, r0, #19
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #11
	bls _080278E2
	ldrh r1, [r4, #44]
	mov r2, #128
	lsl r2, r2, #7
	add r0, r2, #0
	orr r0, r0, r1
	strh r0, [r4, #44]
_080278E2:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802782C

	THUMB_FUNC_START sub_080278E8
sub_080278E8: @ 0x080278E8
	push {r4,lr}
	add r4, r0, #0
	mov r1, #25
	neg r1, r1
	mov r2, #21
	neg r2, r2
	bl 0x0800934C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #66
	beq _0802791A
	cmp r0, #32
	beq _0802791A
	sub r0, r0, #19
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #11
	bls _0802791A
	ldrh r1, [r4, #44]
	mov r2, #128
	lsl r2, r2, #2
	add r0, r2, #0
	orr r0, r0, r1
	strh r0, [r4, #44]
_0802791A:
	mov r1, #25
	neg r1, r1
	mov r2, #5
	neg r2, r2
	add r0, r4, #0
	bl 0x0800934C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #66
	beq _0802794A
	cmp r0, #32
	beq _0802794A
	sub r0, r0, #19
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #11
	bls _0802794A
	ldrh r1, [r4, #44]
	mov r2, #128
	lsl r2, r2, #2
	add r0, r2, #0
	orr r0, r0, r1
	strh r0, [r4, #44]
_0802794A:
	mov r1, #25
	neg r1, r1
	add r0, r4, #0
	mov r2, #4
	bl 0x0800934C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #66
	beq _08027978
	cmp r0, #32
	beq _08027978
	sub r0, r0, #19
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #11
	bls _08027978
	ldrh r1, [r4, #44]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	orr r0, r0, r1
	strh r0, [r4, #44]
_08027978:
	mov r1, #25
	neg r1, r1
	add r0, r4, #0
	mov r2, #20
	bl 0x0800934C
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #66
	beq _080279A6
	cmp r0, #32
	beq _080279A6
	sub r0, r0, #19
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #11
	bls _080279A6
	ldrh r1, [r4, #44]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	orr r0, r0, r1
	strh r0, [r4, #44]
_080279A6:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080278E8

	THUMB_FUNC_START sub_080279AC
sub_080279AC: @ 0x080279AC
	push {lr}
	ldr r2, _080279C0  @ =gUnknown_0813CDFC
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_080279C0:
	.4byte gUnknown_0813CDFC
	THUMB_FUNC_END sub_080279AC

	THUMB_FUNC_START sub_080279C4
sub_080279C4: @ 0x080279C4
	push {r4,r5,lr}
	add r4, r0, #0
	ldrb r1, [r4, #11]
	mov r0, #2
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #42
	strb r0, [r1]
	ldrb r1, [r1]
	add r0, r4, #0
	bl 0x08003870
	ldrb r1, [r4, #11]
	mov r2, #1
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, #0
	beq _080279F2
	add r1, r4, #0
	add r1, r1, #120
	mov r0, #255
	strb r0, [r1]
	b _080279F8
_080279F2:
	add r0, r4, #0
	add r0, r0, #120
	strb r2, [r0]
_080279F8:
	ldrb r0, [r4, #11]
	lsr r0, r0, #4
	strb r0, [r4, #11]
	cmp r0, #0
	beq _08027A0A
	ldrb r0, [r4, #10]
	bl sub_08013D20
	str r0, [r4, #96]
_08027A0A:
	mov r3, #1
	mov r0, #1
	strb r0, [r4, #20]
	ldrb r2, [r4, #28]
	mov r1, #4
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	orr r0, r0, r3
	strb r0, [r4, #28]
	add r2, r4, #0
	add r2, r2, #94
	ldrb r0, [r2]
	and r1, r1, r0
	strb r1, [r2]
	add r0, r4, #0
	add r0, r0, #80
	ldrh r0, [r0]
	bl sub_08015DC0
	mov r1, #50
	ldrsh r2, [r4, r1]
	ldr r3, _08027A60  @ =gUnknown_03000450
	ldrh r1, [r3, #24]
	sub r2, r2, r1
	asr r2, r2, #4
	mov r5, #54
	ldrsh r1, [r4, r5]
	ldrh r3, [r3, #26]
	sub r1, r1, r3
	asr r1, r1, #4
	lsl r1, r1, #6
	orr r2, r2, r1
	lsl r2, r2, #1
	add r2, r2, #4
	add r0, r0, r2
	str r0, [r4, #124]
	add r0, r4, #0
	bl sub_08027BCC
	pop {r4,r5}
	pop {r0}
	bx r0
_08027A60:
	.4byte gUnknown_03000450
	THUMB_FUNC_END sub_080279C4

	THUMB_FUNC_START sub_08027A64
sub_08027A64: @ 0x08027A64
	push {r4,lr}
	add r4, r0, #0
	ldr r1, _08027ABC  @ =gUnknown_0201F000
	add r0, r0, #82
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r4, #96]
	ldr r0, [r0]
	and r0, r0, r1
	cmp r0, r1
	bne _08027AB6
	mov r0, #2
	strb r0, [r4, #20]
	mov r0, #8
	strb r0, [r4, #24]
	ldrb r0, [r4, #11]
	cmp r0, #1
	bne _08027A8E
	mov r0, #0
	str r0, [r4, #96]
_08027A8E:
	add r0, r4, #0
	bl sub_08027C14
	add r2, r4, #0
	add r2, r2, #42
	add r0, r4, #0
	add r0, r0, #120
	ldrb r0, [r0]
	ldrb r1, [r2]
	add r0, r0, r1
	mov r1, #3
	and r0, r0, r1
	strb r0, [r2]
	ldrb r1, [r2]
	add r0, r4, #0
	bl 0x08003870
	mov r0, #87
	bl 0x08003DFC
_08027AB6:
	pop {r4}
	pop {r0}
	bx r0
_08027ABC:
	.4byte gUnknown_0201F000
	THUMB_FUNC_END sub_08027A64

	THUMB_FUNC_START sub_08027AC0
sub_08027AC0: @ 0x08027AC0
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #24]
	sub r0, r0, #1
	strb r0, [r4, #24]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08027B16
	mov r2, #3
	mov r0, #3
	strb r0, [r4, #20]
	ldrb r0, [r4, #23]
	strb r0, [r4, #24]
	ldr r1, _08027B1C  @ =gUnknown_0201F000
	add r0, r4, #0
	add r0, r0, #82
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r4, #96]
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #118
	strh r0, [r1]
	sub r1, r1, #76
	add r0, r4, #0
	add r0, r0, #120
	ldrb r0, [r0]
	ldrb r3, [r1]
	add r0, r0, r3
	and r0, r0, r2
	strb r0, [r1]
	ldrb r1, [r1]
	add r0, r4, #0
	bl 0x08003870
	add r0, r4, #0
	bl sub_08027BCC
	mov r0, #87
	bl 0x08003DFC
_08027B16:
	pop {r4}
	pop {r0}
	bx r0
_08027B1C:
	.4byte gUnknown_0201F000
	THUMB_FUNC_END sub_08027AC0

	THUMB_FUNC_START sub_08027B20
sub_08027B20: @ 0x08027B20
	push {r4,lr}
	add r4, r0, #0
	bl sub_08027C48
	lsl r0, r0, #24
	cmp r0, #0
	bne _08027BC4
	ldrb r0, [r4, #11]
	cmp r0, #2
	beq _08027B3E
	cmp r0, #2
	ble _08027B88
	cmp r0, #3
	beq _08027B60
	b _08027B88
_08027B3E:
	ldr r1, _08027B5C  @ =gUnknown_0201F000
	add r0, r4, #0
	add r0, r0, #82
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r4, #96]
	ldr r0, [r0]
	and r0, r0, r1
	cmp r0, r1
	beq _08027B88
	mov r0, #1
	strb r0, [r4, #20]
	b _08027BC4
	.byte 0x00
	.byte 0x00
_08027B5C:
	.4byte gUnknown_0201F000
_08027B60:
	ldr r1, _08027B80  @ =gUnknown_0201F000
	add r0, r4, #0
	add r0, r0, #82
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r4, #96]
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #118
	ldrh r1, [r1]
	cmp r0, r1
	bne _08027B84
	mov r0, #255
	b _08027B86
_08027B80:
	.4byte gUnknown_0201F000
_08027B84:
	mov r0, #1
_08027B86:
	strb r0, [r4, #24]
_08027B88:
	ldrb r0, [r4, #24]
	sub r0, r0, #1
	strb r0, [r4, #24]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08027BC4
	mov r0, #2
	strb r0, [r4, #20]
	mov r0, #8
	strb r0, [r4, #24]
	add r0, r4, #0
	bl sub_08027C14
	add r2, r4, #0
	add r2, r2, #42
	add r0, r4, #0
	add r0, r0, #120
	ldrb r0, [r0]
	ldrb r1, [r2]
	add r0, r0, r1
	mov r1, #3
	and r0, r0, r1
	strb r0, [r2]
	ldrb r1, [r2]
	add r0, r4, #0
	bl 0x08003870
	mov r0, #87
	bl 0x08003DFC
_08027BC4:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027B20

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08027BCC
sub_08027BCC: @ 0x08027BCC
	push {r4,lr}
	mov r12, r0
	ldr r1, _08027C0C  @ =gUnknown_0813CE0C
	add r0, r0, #42
	ldrb r0, [r0]
	lsr r0, r0, #1
	lsl r0, r0, #1
	add r1, r0, r1
	ldrh r4, [r1]
	ldr r1, _08027C10  @ =gUnknown_08137B90
	add r0, r0, r1
	mov r2, #0
	ldrsb r2, [r0, r2]
	lsl r2, r2, #1
	mov r1, r12
	ldr r0, [r1, #124]
	add r0, r0, r2
	ldrh r3, [r0]
	add r1, r1, #112
	strh r3, [r1]
	strh r4, [r0]
	sub r0, r0, r2
	strh r4, [r0]
	sub r0, r0, r2
	ldrh r2, [r0]
	add r1, r1, #4
	strh r2, [r1]
	strh r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08027C0C:
	.4byte gUnknown_0813CE0C
_08027C10:
	.4byte gUnknown_08137B90
	THUMB_FUNC_END sub_08027BCC

	THUMB_FUNC_START sub_08027C14
sub_08027C14: @ 0x08027C14
	add r3, r0, #0
	ldr r1, _08027C44  @ =gUnknown_08137B90
	add r0, r0, #42
	ldrb r0, [r0]
	lsr r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r1
	mov r2, #0
	ldrsb r2, [r0, r2]
	lsl r2, r2, #1
	ldr r0, [r3, #124]
	add r0, r0, r2
	add r1, r3, #0
	add r1, r1, #112
	ldrh r1, [r1]
	strh r1, [r0]
	sub r0, r0, r2
	sub r0, r0, r2
	add r1, r3, #0
	add r1, r1, #116
	ldrh r1, [r1]
	strh r1, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_08027C44:
	.4byte gUnknown_08137B90
	THUMB_FUNC_END sub_08027C14

	THUMB_FUNC_START sub_08027C48
sub_08027C48: @ 0x08027C48
	push {r4,lr}
	ldr r2, _08027C88  @ =gUnknown_0813CE0C
	add r1, r0, #0
	add r1, r1, #42
	ldrb r1, [r1]
	lsr r1, r1, #1
	lsl r1, r1, #1
	add r2, r1, r2
	ldrh r3, [r2]
	add r4, r3, #0
	ldr r2, _08027C8C  @ =gUnknown_08137B90
	add r1, r1, r2
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	lsl r1, r1, #1
	ldr r0, [r0, #124]
	add r0, r0, r1
	ldrh r2, [r0]
	cmp r3, r2
	bne _08027C90
	sub r0, r0, r1
	ldrh r2, [r0]
	cmp r3, r2
	bne _08027C90
	sub r0, r0, r1
	ldrh r0, [r0]
	cmp r4, r0
	bne _08027C90
	mov r0, #0
	b _08027C92
	.byte 0x00
	.byte 0x00
_08027C88:
	.4byte gUnknown_0813CE0C
_08027C8C:
	.4byte gUnknown_08137B90
_08027C90:
	mov r0, #1
_08027C92:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08027C48

	THUMB_FUNC_START sub_08027C98
sub_08027C98: @ 0x08027C98
	push {lr}
	ldr r2, _08027CAC  @ =gUnknown_0813CE30
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08027CAC:
	.4byte gUnknown_0813CE30
	THUMB_FUNC_END sub_08027C98

	THUMB_FUNC_START sub_08027CB0
sub_08027CB0: @ 0x08027CB0
	push {r4-r6,lr}
	add r6, r0, #0
	ldrb r2, [r6, #28]
	mov r1, #4
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #1
	orr r0, r0, r2
	strb r0, [r6, #28]
	add r3, r6, #0
	add r3, r3, #46
	mov r0, #0
	strb r0, [r3]
	add r3, r3, #48
	ldrb r0, [r3]
	and r1, r1, r0
	orr r1, r1, r2
	strb r1, [r3]
	ldrb r0, [r6, #20]
	add r0, r0, #1
	strb r0, [r6, #20]
	ldr r0, _08027D38  @ =0x0000010F
	mov r2, #50
	ldrsh r1, [r6, r2]
	ldr r4, _08027D3C  @ =gUnknown_03000450
	ldrh r2, [r4, #24]
	sub r1, r1, r2
	asr r1, r1, #4
	mov r3, #54
	ldrsh r2, [r6, r3]
	ldrh r3, [r4, #26]
	sub r2, r2, r3
	asr r2, r2, #4
	lsl r2, r2, #6
	orr r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	add r5, r6, #0
	add r5, r5, #80
	ldrh r2, [r5]
	bl 0x08008F78
	mov r0, #50
	ldrsh r1, [r6, r0]
	ldrh r0, [r4, #24]
	sub r1, r1, r0
	asr r1, r1, #4
	mov r2, #54
	ldrsh r0, [r6, r2]
	ldrh r2, [r4, #26]
	sub r0, r0, r2
	asr r0, r0, #4
	lsl r0, r0, #6
	orr r1, r1, r0
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #15
	bl 0x08008F3C
	add r0, r6, #0
	mov r1, #0
	bl 0x08003870
	pop {r4-r6}
	pop {r0}
	bx r0
_08027D38:
	.4byte 0x0000010F
_08027D3C:
	.4byte gUnknown_03000450
	THUMB_FUNC_END sub_08027CB0

	THUMB_FUNC_START sub_08027D40
sub_08027D40: @ 0x08027D40
	push {r4-r7,lr}
	add r6, r0, #0
	add r0, r0, #41
	ldrb r1, [r0]
	add r0, r0, #83
	strb r1, [r0]
	add r0, r6, #0
	bl 0x08003828
	mov r4, #0
	ldr r5, _08027DE4  @ =gUnknown_03006A30
	ldrb r1, [r5, #15]
	mov r7, #3
	add r0, r7, #0
	and r0, r0, r1
	cmp r0, #3
	bne _08027D6E
	ldr r1, [r5, #40]
	add r0, r6, #0
	bl sub_08027DF0
	lsl r0, r0, #24
	lsr r4, r0, #24
_08027D6E:
	add r0, r5, #0
	add r0, r0, #159
	ldrb r1, [r0]
	add r0, r7, #0
	and r0, r0, r1
	cmp r0, #3
	bne _08027D8E
	add r0, r5, #0
	add r0, r0, #184
	ldr r1, [r0]
	add r0, r6, #0
	bl sub_08027DF0
	orr r4, r4, r0
	lsl r0, r4, #24
	lsr r4, r0, #24
_08027D8E:
	ldr r1, _08027DE8  @ =0x0000012F
	add r0, r5, r1
	ldrb r1, [r0]
	add r0, r7, #0
	and r0, r0, r1
	cmp r0, #3
	bne _08027DB0
	mov r1, #164
	lsl r1, r1, #1
	add r0, r5, r1
	ldr r1, [r0]
	add r0, r6, #0
	bl sub_08027DF0
	orr r4, r4, r0
	lsl r0, r4, #24
	lsr r4, r0, #24
_08027DB0:
	ldr r1, _08027DEC  @ =0x000001BF
	add r0, r5, r1
	ldrb r1, [r0]
	add r0, r7, #0
	and r0, r0, r1
	cmp r0, #3
	bne _08027DD2
	mov r1, #236
	lsl r1, r1, #1
	add r0, r5, r1
	ldr r1, [r0]
	add r0, r6, #0
	bl sub_08027DF0
	orr r4, r4, r0
	lsl r0, r4, #24
	lsr r4, r0, #24
_08027DD2:
	add r1, r6, #0
	add r1, r1, #125
	ldrb r0, [r1]
	and r4, r4, r0
	strb r4, [r1]
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08027DE4:
	.4byte gUnknown_03006A30
_08027DE8:
	.4byte 0x0000012F
_08027DEC:
	.4byte 0x000001BF
	THUMB_FUNC_END sub_08027D40

	THUMB_FUNC_START sub_08027DF0
sub_08027DF0: @ 0x08027DF0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r5, r0, #0
	add r4, r1, #0
	ldrh r0, [r5, #50]
	ldrh r1, [r4, #50]
	sub r0, r0, r1
	add r0, r0, #16
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #32
	bls _08027E0C
	b _08027F34
_08027E0C:
	ldrh r0, [r5, #54]
	ldrh r1, [r4, #54]
	sub r0, r0, r1
	add r0, r0, #16
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #32
	bls _08027E1E
	b _08027F34
_08027E1E:
	ldrb r1, [r4, #10]
	add r0, r1, #0
	add r0, r0, #120
	add r7, r5, r0
	ldr r0, _08027E84  @ =gUnknown_08137B10
	mov r8, r0
	lsl r1, r1, #2
	add r1, r1, r8
	add r6, r5, #0
	add r6, r6, #125
	ldrb r2, [r6]
	ldr r0, [r1]
	and r0, r0, r2
	cmp r0, #0
	bne _08027E88
	add r0, r5, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _08027F34
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0803CECC
	lsl r0, r0, #24
	lsr r2, r0, #24
	add r2, r2, #4
	mov r0, #24
	and r2, r2, r0
	mov r1, #16
	add r0, r2, #0
	eor r0, r0, r1
	lsl r0, r0, #24
	add r1, r4, #0
	add r1, r1, #42
	lsr r0, r0, #26
	ldrb r1, [r1]
	cmp r0, r1
	bne _08027F34
	strb r2, [r7]
	ldrb r0, [r4, #10]
	lsl r0, r0, #2
	add r0, r0, r8
	ldr r0, [r0]
	ldrb r1, [r6]
	orr r0, r0, r1
	strb r0, [r6]
	b _08027ECC
	.byte 0x00
	.byte 0x00
_08027E84:
	.4byte gUnknown_08137B10
_08027E88:
	add r0, r5, #0
	add r0, r0, #41
	add r1, r5, #0
	add r1, r1, #124
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _08027ECC
	ldrb r0, [r7]
	add r0, r0, #2
	mov r1, #30
	and r0, r0, r1
	strb r0, [r7]
	ldrb r0, [r7]
	add r0, r0, #2
	mov r1, #24
	and r0, r0, r1
	mov r1, #16
	eor r0, r0, r1
	asr r0, r0, #2
	add r1, r4, #0
	add r1, r1, #42
	strb r0, [r1]
	cmp r0, #6
	bne _08027EC2
	ldrb r0, [r4, #28]
	mov r1, #4
	orr r0, r0, r1
	b _08027ECA
_08027EC2:
	ldrb r1, [r4, #28]
	mov r0, #5
	neg r0, r0
	and r0, r0, r1
_08027ECA:
	strb r0, [r4, #28]
_08027ECC:
	ldr r2, _08027F18  @ =gUnknown_0813CE38
	ldrb r1, [r7]
	add r0, r1, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrh r3, [r5, #50]
	add r0, r0, r3
	lsl r0, r0, #16
	add r1, r1, #1
	add r1, r1, r2
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrh r2, [r5, #54]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r7, r0, #16
	asr r0, r0, #16
	lsr r6, r1, #16
	asr r1, r1, #16
	add r2, r5, #0
	add r2, r2, #80
	ldrh r2, [r2]
	bl 0x080093AC
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #15
	beq _08027F20
	strh r7, [r4, #50]
	strh r6, [r4, #54]
	ldr r0, _08027F1C  @ =gUnknown_08137B10
	ldrb r1, [r4, #10]
	lsl r1, r1, #2
	add r1, r1, r0
	ldrb r0, [r1]
	b _08027F36
_08027F18:
	.4byte gUnknown_0813CE38
_08027F1C:
	.4byte gUnknown_08137B10
_08027F20:
	ldr r2, _08027F40  @ =gUnknown_03006A30
	ldrb r0, [r4, #10]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #4
	add r1, r1, r2
	ldrb r2, [r1, #15]
	mov r0, #191
	and r0, r0, r2
	strb r0, [r1, #15]
_08027F34:
	mov r0, #0
_08027F36:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
_08027F40:
	.4byte gUnknown_03006A30
	THUMB_FUNC_END sub_08027DF0

	THUMB_FUNC_START sub_08027F44
sub_08027F44: @ 0x08027F44
	push {lr}
	add r3, r0, #0
	ldr r0, [r3, #112]
	cmp r0, #0
	beq _08027F7A
	sub r0, r0, #1
	str r0, [r3, #112]
	cmp r0, #0
	bne _08027F5E
	add r0, r3, #0
	bl sub_08012540
	b _08027F8A
_08027F5E:
	cmp r0, #15
	bhi _08027F7A
	ldr r0, _08027F90  @ =gUnknown_03000E20
	ldrh r0, [r0]
	mov r1, #2
	and r1, r1, r0
	lsl r1, r1, #16
	lsr r1, r1, #17
	ldrb r2, [r3, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r3, #28]
_08027F7A:
	ldr r0, _08027F94  @ =gUnknown_0813CE80
	ldrb r1, [r3, #20]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r3, #0
	bl _call_via_r1
_08027F8A:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08027F90:
	.4byte gUnknown_03000E20
_08027F94:
	.4byte gUnknown_0813CE80
	THUMB_FUNC_END sub_08027F44

	THUMB_FUNC_START sub_08027F98
sub_08027F98: @ 0x08027F98
	push {r4,r5,lr}
	add r5, r0, #0
	add r2, r5, #0
	add r2, r2, #94
	ldrb r1, [r2]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r2]
	add r0, r5, #0
	add r0, r0, #46
	mov r4, #0
	strb r4, [r0]
	ldr r1, _08028000  @ =gUnknown_0813CF70
	ldrb r0, [r5, #10]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r5, #72]
	mov r0, #128
	lsl r0, r0, #1
	str r0, [r5, #12]
	ldrb r0, [r5, #20]
	add r0, r0, #1
	strb r0, [r5, #20]
	add r0, r5, #0
	add r0, r0, #82
	ldrb r0, [r0]
	ldrb r1, [r5, #11]
	bl sub_08012F84
	add r2, r0, #0
	str r2, [r5, #120]
	str r2, [r5, #108]
	str r4, [r5, #112]
	ldrh r1, [r2]
	ldr r0, _08028004  @ =0x0000FFFE
	cmp r1, r0
	bne _08027FF4
	ldrh r0, [r2, #2]
	str r0, [r5, #112]
	add r0, r2, #4
	str r0, [r5, #120]
	str r0, [r5, #108]
_08027FF4:
	ldrb r0, [r5, #23]
	cmp r0, #0
	beq _08028008
	bl sub_08013D20
	b _0802800A
_08028000:
	.4byte gUnknown_0813CF70
_08028004:
	.4byte 0x0000FFFE
_08028008:
	mov r0, #0
_0802800A:
	str r0, [r5, #96]
	ldr r3, _08028048  @ =gUnknown_0813CE8C
	ldr r2, _0802804C  @ =gUnknown_03006C80
	ldrb r0, [r2, #1]
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r3
	ldrh r0, [r0]
	mov r1, #15
	and r1, r1, r0
	lsl r0, r0, #4
	orr r0, r0, r1
	strb r0, [r5, #30]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r3
	ldrh r1, [r0]
	add r0, r5, #0
	bl sub_0802C070
	add r0, r5, #0
	bl sub_08028170
	ldrb r1, [r5, #10]
	add r0, r5, #0
	bl 0x08003870
	pop {r4,r5}
	pop {r0}
	bx r0
_08028048:
	.4byte gUnknown_0813CE8C
_0802804C:
	.4byte gUnknown_03006C80
	THUMB_FUNC_END sub_08027F98

	THUMB_FUNC_START sub_08028050
sub_08028050: @ 0x08028050
	push {lr}
	add r2, r0, #0
	ldr r1, _08028088  @ =gUnknown_0201F000
	add r0, r0, #82
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r2, #96]
	and r0, r0, r1
	cmp r0, r1
	bne _08028084
	mov r0, #0
	str r0, [r2, #96]
	ldrb r1, [r2, #28]
	sub r0, r0, #4
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r2, #28]
	ldrb r0, [r2, #20]
	add r0, r0, #1
	strb r0, [r2, #20]
	add r0, r2, #0
	bl sub_0804C9C8
_08028084:
	pop {r0}
	bx r0
_08028088:
	.4byte gUnknown_0201F000
	THUMB_FUNC_END sub_08028050

	THUMB_FUNC_START sub_0802808C
sub_0802808C: @ 0x0802808C
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #10]
	cmp r0, #8
	bhi _0802809E
	add r0, r4, #0
	bl sub_08000694
	b _080280A4
_0802809E:
	add r0, r4, #0
	bl sub_0800066C
_080280A4:
	ldr r1, _080280C0  @ =gUnknown_0813CE9C
	ldrb r0, [r4, #21]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
	mov r0, #0
	str r0, [r4, #96]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080280C0:
	.4byte gUnknown_0813CE9C
	THUMB_FUNC_END sub_0802808C

	THUMB_FUNC_START sub_080280C4
sub_080280C4: @ 0x080280C4
	push {r4,lr}
	add r4, r0, #0
	bl sub_08028200
	add r0, r4, #0
	add r0, r0, #116
	ldrh r1, [r0]
	mov r2, #54
	ldrsh r0, [r4, r2]
	cmp r1, r0
	blt _080280E2
	strh r1, [r4, #54]
	add r0, r4, #0
	bl sub_08028170
_080280E2:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080280C4

	THUMB_FUNC_START sub_080280E8
sub_080280E8: @ 0x080280E8
	push {r4,lr}
	add r4, r0, #0
	bl sub_08028200
	add r0, r4, #0
	add r0, r0, #116
	ldrh r1, [r0]
	mov r2, #50
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bgt _08028106
	strh r1, [r4, #50]
	add r0, r4, #0
	bl sub_08028170
_08028106:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080280E8

	THUMB_FUNC_START sub_0802810C
sub_0802810C: @ 0x0802810C
	push {r4,lr}
	add r4, r0, #0
	bl sub_08028200
	add r0, r4, #0
	add r0, r0, #116
	ldrh r1, [r0]
	mov r2, #54
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bgt _0802812A
	strh r1, [r4, #54]
	add r0, r4, #0
	bl sub_08028170
_0802812A:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802810C

	THUMB_FUNC_START sub_08028130
sub_08028130: @ 0x08028130
	push {r4,lr}
	add r4, r0, #0
	bl sub_08028200
	add r0, r4, #0
	add r0, r0, #116
	ldrh r1, [r0]
	mov r2, #50
	ldrsh r0, [r4, r2]
	cmp r1, r0
	blt _0802814E
	strh r1, [r4, #50]
	add r0, r4, #0
	bl sub_08028170
_0802814E:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08028130

	THUMB_FUNC_START sub_08028154
sub_08028154: @ 0x08028154
	push {lr}
	add r2, r0, #0
	ldr r0, [r2, #104]
	sub r0, r0, #1
	str r0, [r2, #104]
	mov r1, #1
	neg r1, r1
	cmp r0, r1
	bne _0802816C
	add r0, r2, #0
	bl sub_08028170
_0802816C:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08028154

	THUMB_FUNC_START sub_08028170
sub_08028170: @ 0x08028170
	push {r4,lr}
	add r2, r0, #0
	ldr r0, [r2, #120]
	ldrh r1, [r0]
	ldr r0, _0802819C  @ =0x0000FFFF
	cmp r1, r0
	bne _08028182
	ldr r0, [r2, #108]
	str r0, [r2, #120]
_08028182:
	ldr r3, [r2, #120]
	ldrh r4, [r3]
	mov r0, #128
	lsl r0, r0, #8
	and r0, r0, r4
	add r1, r3, #0
	cmp r0, #0
	beq _080281A0
	mov r0, #4
	strb r0, [r2, #21]
	ldrh r0, [r1, #2]
	str r0, [r2, #104]
	b _080281F4
_0802819C:
	.4byte 0x0000FFFF
_080281A0:
	add r0, r2, #0
	add r0, r0, #43
	strb r4, [r0]
	add r3, r1, #2
	lsl r0, r4, #24
	lsr r0, r0, #27
	strb r0, [r2, #21]
	ldrb r0, [r2, #21]
	cmp r0, #1
	beq _080281CC
	cmp r0, #1
	bgt _080281BE
	cmp r0, #0
	beq _080281C8
	b _080281EA
_080281BE:
	cmp r0, #2
	beq _080281D4
	cmp r0, #3
	beq _080281DC
	b _080281EA
_080281C8:
	ldrh r0, [r2, #54]
	b _080281DE
_080281CC:
	ldrh r0, [r1, #2]
	ldrh r1, [r2, #50]
	add r0, r0, r1
	b _080281E2
_080281D4:
	ldrh r0, [r1, #2]
	ldrh r1, [r2, #54]
	add r0, r0, r1
	b _080281E2
_080281DC:
	ldrh r0, [r2, #50]
_080281DE:
	ldrh r1, [r1, #2]
	sub r0, r0, r1
_080281E2:
	add r1, r2, #0
	add r1, r1, #116
	strh r0, [r1]
	add r3, r3, #2
_080281EA:
	ldrh r0, [r3]
	ldr r1, [r2, #120]
	cmp r0, #0
	beq _080281F4
	str r0, [r2, #12]
_080281F4:
	add r0, r1, #0
	add r0, r0, #8
	str r0, [r2, #120]
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08028170

	THUMB_FUNC_START sub_08028200
sub_08028200: @ 0x08028200
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r4, r0, #0
	ldr r7, [r4, #96]
	mov r0, #15
	and r7, r7, r0
	ldrh r0, [r4, #50]
	mov r1, #124
	add r1, r1, r4
	mov r8, r1
	strh r0, [r1]
	ldrh r0, [r4, #54]
	add r6, r4, #0
	add r6, r6, #126
	strh r0, [r6]
	add r0, r4, #0
	add r0, r0, #43
	ldrb r0, [r0]
	lsr r0, r0, #3
	add r5, r0, #0
	cmp r0, #1
	beq _080282F8
	cmp r0, #1
	bgt _08028238
	cmp r0, #0
	beq _08028246
	b _080284FA
_08028238:
	cmp r0, #2
	bne _0802823E
	b _080283A8
_0802823E:
	cmp r0, #3
	bne _08028244
	b _08028454
_08028244:
	b _080284FA
_08028246:
	add r0, r4, #0
	bl sub_0803CC20
	ldrh r0, [r6]
	ldrh r1, [r4, #54]
	sub r0, r0, r1
	lsl r0, r0, #24
	lsr r4, r0, #16
	cmp r4, #0
	bne _0802825C
	b _080284FA
_0802825C:
	mov r0, #1
	and r0, r0, r7
	cmp r0, #0
	beq _0802827C
	ldr r5, _080282F4  @ =gUnknown_03006A30
	ldr r0, [r5, #40]
	bl 0x08003FB0
	lsl r0, r0, #24
	cmp r0, #0
	beq _0802827C
	ldr r0, [r5, #40]
	add r1, r4, #0
	mov r2, #0
	bl 0x08002E70
_0802827C:
	mov r0, #2
	and r0, r0, r7
	cmp r0, #0
	beq _080282A0
	ldr r0, _080282F4  @ =gUnknown_03006A30
	add r5, r0, #0
	add r5, r5, #184
	ldr r0, [r5]
	bl 0x08003FB0
	lsl r0, r0, #24
	cmp r0, #0
	beq _080282A0
	ldr r0, [r5]
	add r1, r4, #0
	mov r2, #0
	bl 0x08002E70
_080282A0:
	mov r0, #4
	and r0, r0, r7
	cmp r0, #0
	beq _080282C6
	ldr r0, _080282F4  @ =gUnknown_03006A30
	mov r2, #164
	lsl r2, r2, #1
	add r5, r0, r2
	ldr r0, [r5]
	bl 0x08003FB0
	lsl r0, r0, #24
	cmp r0, #0
	beq _080282C6
	ldr r0, [r5]
	add r1, r4, #0
	mov r2, #0
	bl 0x08002E70
_080282C6:
	mov r0, #8
	and r7, r7, r0
	cmp r7, #0
	bne _080282D0
	b _080284FA
_080282D0:
	ldr r0, _080282F4  @ =gUnknown_03006A30
	mov r1, #236
	lsl r1, r1, #1
	add r5, r0, r1
	ldr r0, [r5]
	bl 0x08003FB0
	lsl r0, r0, #24
	cmp r0, #0
	bne _080282E6
	b _080284FA
_080282E6:
	ldr r0, [r5]
	add r1, r4, #0
	mov r2, #0
	bl 0x08002E70
	b _080284FA
	.byte 0x00
	.byte 0x00
_080282F4:
	.4byte gUnknown_03006A30
_080282F8:
	add r0, r4, #0
	bl sub_0803CC20
	ldrh r0, [r4, #50]
	mov r2, r8
	ldrh r1, [r2]
	sub r0, r0, r1
	lsl r0, r0, #24
	lsr r4, r0, #16
	cmp r4, #0
	bne _08028310
	b _080284FA
_08028310:
	and r5, r5, r7
	cmp r5, #0
	beq _0802832E
	ldr r5, _080283A4  @ =gUnknown_03006A30
	ldr r0, [r5, #40]
	bl 0x08003FB0
	lsl r0, r0, #24
	cmp r0, #0
	beq _0802832E
	ldr r0, [r5, #40]
	add r1, r4, #0
	mov r2, #8
	bl 0x08002E70
_0802832E:
	mov r0, #2
	and r0, r0, r7
	cmp r0, #0
	beq _08028352
	ldr r0, _080283A4  @ =gUnknown_03006A30
	add r5, r0, #0
	add r5, r5, #184
	ldr r0, [r5]
	bl 0x08003FB0
	lsl r0, r0, #24
	cmp r0, #0
	beq _08028352
	ldr r0, [r5]
	add r1, r4, #0
	mov r2, #8
	bl 0x08002E70
_08028352:
	mov r0, #4
	and r0, r0, r7
	cmp r0, #0
	beq _08028378
	ldr r0, _080283A4  @ =gUnknown_03006A30
	mov r1, #164
	lsl r1, r1, #1
	add r5, r0, r1
	ldr r0, [r5]
	bl 0x08003FB0
	lsl r0, r0, #24
	cmp r0, #0
	beq _08028378
	ldr r0, [r5]
	add r1, r4, #0
	mov r2, #8
	bl 0x08002E70
_08028378:
	mov r0, #8
	and r7, r7, r0
	cmp r7, #0
	bne _08028382
	b _080284FA
_08028382:
	ldr r0, _080283A4  @ =gUnknown_03006A30
	mov r2, #236
	lsl r2, r2, #1
	add r5, r0, r2
	ldr r0, [r5]
	bl 0x08003FB0
	lsl r0, r0, #24
	cmp r0, #0
	bne _08028398
	b _080284FA
_08028398:
	ldr r0, [r5]
	add r1, r4, #0
	mov r2, #8
	bl 0x08002E70
	b _080284FA
_080283A4:
	.4byte gUnknown_03006A30
_080283A8:
	add r0, r4, #0
	bl sub_0803CC20
	ldrh r0, [r4, #54]
	ldrh r1, [r6]
	sub r0, r0, r1
	lsl r0, r0, #24
	lsr r4, r0, #16
	cmp r4, #0
	bne _080283BE
	b _080284FA
_080283BE:
	mov r0, #1
	and r0, r0, r7
	cmp r0, #0
	beq _080283DE
	ldr r5, _08028450  @ =gUnknown_03006A30
	ldr r0, [r5, #40]
	bl 0x08003FB0
	lsl r0, r0, #24
	cmp r0, #0
	beq _080283DE
	ldr r0, [r5, #40]
	add r1, r4, #0
	mov r2, #16
	bl 0x08002E70
_080283DE:
	mov r0, #2
	and r0, r0, r7
	cmp r0, #0
	beq _08028402
	ldr r0, _08028450  @ =gUnknown_03006A30
	add r5, r0, #0
	add r5, r5, #184
	ldr r0, [r5]
	bl 0x08003FB0
	lsl r0, r0, #24
	cmp r0, #0
	beq _08028402
	ldr r0, [r5]
	add r1, r4, #0
	mov r2, #16
	bl 0x08002E70
_08028402:
	mov r0, #4
	and r0, r0, r7
	cmp r0, #0
	beq _08028428
	ldr r0, _08028450  @ =gUnknown_03006A30
	mov r1, #164
	lsl r1, r1, #1
	add r5, r0, r1
	ldr r0, [r5]
	bl 0x08003FB0
	lsl r0, r0, #24
	cmp r0, #0
	beq _08028428
	ldr r0, [r5]
	add r1, r4, #0
	mov r2, #16
	bl 0x08002E70
_08028428:
	mov r0, #8
	and r7, r7, r0
	cmp r7, #0
	beq _080284FA
	ldr r0, _08028450  @ =gUnknown_03006A30
	mov r2, #236
	lsl r2, r2, #1
	add r5, r0, r2
	ldr r0, [r5]
	bl 0x08003FB0
	lsl r0, r0, #24
	cmp r0, #0
	beq _080284FA
	ldr r0, [r5]
	add r1, r4, #0
	mov r2, #16
	bl 0x08002E70
	b _080284FA
_08028450:
	.4byte gUnknown_03006A30
_08028454:
	add r0, r4, #0
	bl sub_0803CC20
	mov r1, r8
	ldrh r0, [r1]
	ldrh r1, [r4, #50]
	sub r0, r0, r1
	lsl r0, r0, #24
	lsr r4, r0, #16
	cmp r4, #0
	beq _080284FA
	mov r0, #1
	and r0, r0, r7
	cmp r0, #0
	beq _0802848A
	ldr r5, _08028504  @ =gUnknown_03006A30
	ldr r0, [r5, #40]
	bl 0x08003FB0
	lsl r0, r0, #24
	cmp r0, #0
	beq _0802848A
	ldr r0, [r5, #40]
	add r1, r4, #0
	mov r2, #24
	bl 0x08002E70
_0802848A:
	mov r0, #2
	and r0, r0, r7
	cmp r0, #0
	beq _080284AE
	ldr r0, _08028504  @ =gUnknown_03006A30
	add r5, r0, #0
	add r5, r5, #184
	ldr r0, [r5]
	bl 0x08003FB0
	lsl r0, r0, #24
	cmp r0, #0
	beq _080284AE
	ldr r0, [r5]
	add r1, r4, #0
	mov r2, #24
	bl 0x08002E70
_080284AE:
	mov r0, #4
	and r0, r0, r7
	cmp r0, #0
	beq _080284D4
	ldr r0, _08028504  @ =gUnknown_03006A30
	mov r2, #164
	lsl r2, r2, #1
	add r5, r0, r2
	ldr r0, [r5]
	bl 0x08003FB0
	lsl r0, r0, #24
	cmp r0, #0
	beq _080284D4
	ldr r0, [r5]
	add r1, r4, #0
	mov r2, #24
	bl 0x08002E70
_080284D4:
	mov r0, #8
	and r7, r7, r0
	cmp r7, #0
	beq _080284FA
	ldr r0, _08028504  @ =gUnknown_03006A30
	mov r1, #236
	lsl r1, r1, #1
	add r5, r0, r1
	ldr r0, [r5]
	bl 0x08003FB0
	lsl r0, r0, #24
	cmp r0, #0
	beq _080284FA
	ldr r0, [r5]
	add r1, r4, #0
	mov r2, #24
	bl 0x08002E70
_080284FA:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_08028504:
	.4byte gUnknown_03006A30
	THUMB_FUNC_END sub_08028200

	THUMB_FUNC_START sub_08028508
sub_08028508: @ 0x08028508
	push {lr}
	ldr r2, _0802851C  @ =gUnknown_0813CFA0
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0802851C:
	.4byte gUnknown_0813CFA0
	THUMB_FUNC_END sub_08028508

	THUMB_FUNC_START sub_08028520
sub_08028520: @ 0x08028520
	push {r4,lr}
	add r4, r0, #0
	add r0, r0, #80
	ldrh r1, [r0]
	mov r0, #192
	lsl r0, r0, #8
	and r0, r0, r1
	cmp r0, #0
	bne _08028538
	add r0, r4, #0
	bl 0x08008D90
_08028538:
	ldrb r0, [r4, #20]
	add r0, r0, #1
	mov r2, #0
	strb r0, [r4, #20]
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	add r0, r4, #0
	add r0, r0, #46
	strb r2, [r0]
	add r1, r4, #0
	add r1, r1, #60
	mov r0, #152
	strb r0, [r1]
	add r1, r1, #3
	mov r0, #11
	strb r0, [r1]
	add r1, r1, #1
	mov r0, #22
	strb r0, [r1]
	add r1, r1, #4
	mov r0, #10
	strb r0, [r1]
	add r1, r1, #2
	mov r0, #16
	strb r0, [r1]
	ldr r0, _0802859C  @ =gUnknown_0813CFCC
	ldr r0, [r0]
	str r0, [r4, #72]
	add r1, r1, #22
	ldr r0, _080285A0  @ =0x000007FF
	strh r0, [r1]
	add r0, r4, #0
	mov r1, #1
	bl 0x08003870
	add r0, r4, #0
	bl 0x080005F0
	mov r0, #3
	bl 0x08003DFC
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802859C:
	.4byte gUnknown_0813CFCC
_080285A0:
	.4byte 0x000007FF
	THUMB_FUNC_END sub_08028520

	THUMB_FUNC_START sub_080285A4
sub_080285A4: @ 0x080285A4
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r2, r4, #0
	add r2, r2, #41
	ldrb r1, [r2]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080285C8
	add r0, r4, #0
	bl 0x08000620
	add r0, r4, #0
	bl sub_08012540
	b _080285F0
_080285C8:
	lsl r0, r1, #24
	lsr r0, r0, #24
	cmp r0, #4
	bhi _080285E4
	ldr r0, _080285E0  @ =gUnknown_0813CFCC
	ldrb r1, [r2]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r0, [r1]
	str r0, [r4, #72]
	b _080285F0
	.byte 0x00
	.byte 0x00
_080285E0:
	.4byte gUnknown_0813CFCC
_080285E4:
	add r2, r4, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #127
	and r0, r0, r1
	strb r0, [r2]
_080285F0:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080285A4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080285F8
sub_080285F8: @ 0x080285F8
	push {lr}
	ldr r2, _0802860C  @ =gUnknown_0813CFE0
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0802860C:
	.4byte gUnknown_0813CFE0
	THUMB_FUNC_END sub_080285F8

	THUMB_FUNC_START sub_08028610
sub_08028610: @ 0x08028610
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r7, r0, #0
	ldrh r0, [r7, #50]
	mov r4, #63
	add r2, r4, #0
	and r2, r2, r0
	lsl r2, r2, #3
	add r2, r2, #8
	add r0, r7, #0
	add r0, r0, #124
	mov r1, #0
	mov r8, r1
	strh r2, [r0]
	ldrh r0, [r7, #50]
	mov r3, #252
	lsl r3, r3, #4
	add r1, r3, #0
	and r1, r1, r0
	ldr r5, _0802869C  @ =gUnknown_0201EFF8
	mov r6, #82
	ldrb r0, [r6, r7]
	lsl r0, r0, #2
	add r0, r0, r5
	lsr r1, r1, #2
	ldrh r0, [r0]
	add r1, r1, r0
	add r2, r2, r1
	strh r2, [r7, #50]
	ldrh r0, [r7, #54]
	and r4, r4, r0
	lsl r4, r4, #3
	add r4, r4, #8
	add r0, r7, #0
	add r0, r0, #126
	strh r4, [r0]
	ldrh r0, [r7, #54]
	and r3, r3, r0
	ldrb r0, [r6, r7]
	lsl r0, r0, #2
	add r5, r5, #2
	add r0, r0, r5
	lsr r3, r3, #2
	ldrh r0, [r0]
	add r3, r3, r0
	add r4, r4, r3
	strh r4, [r7, #54]
	ldrb r0, [r6, r7]
	ldrb r1, [r7, #10]
	bl sub_08012F84
	str r0, [r7, #120]
	mov r0, r8
	str r0, [r7, #112]
	ldrb r0, [r7, #20]
	add r0, r0, #1
	strb r0, [r7, #20]
	add r1, r7, #0
	add r1, r1, #118
	mov r0, #1
	strh r0, [r1]
	add r0, r7, #0
	bl 0x08008D90
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_0802869C:
	.4byte gUnknown_0201EFF8
	THUMB_FUNC_END sub_08028610

	THUMB_FUNC_START sub_080286A0
sub_080286A0: @ 0x080286A0
	push {r4,lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, r1, #118
	ldrh r0, [r1]
	sub r0, r0, #1
	strh r0, [r1]
	lsl r0, r0, #16
	cmp r0, #0
	bne _080286C2
	ldrb r0, [r4, #23]
	strh r0, [r1]
	ldr r1, [r4, #120]
	add r0, r4, #0
	bl sub_08028728
	str r0, [r4, #120]
_080286C2:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080286A0

	THUMB_FUNC_START sub_080286C8
sub_080286C8: @ 0x080286C8
	push {r4,lr}
	add r4, r0, #0
	ldr r2, [r4, #112]
	cmp r2, #0
	beq _080286F0
	ldr r0, _080286EC  @ =gUnknown_0201F000
	add r1, r4, #0
	add r1, r1, #82
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r0, [r1]
	and r0, r0, r2
	cmp r2, r0
	bne _08028722
	mov r0, #0
	str r0, [r4, #112]
	b _08028714
_080286EC:
	.4byte gUnknown_0201F000
_080286F0:
	add r1, r4, #0
	add r1, r1, #116
	ldrh r0, [r1]
	cmp r0, #0
	beq _08028700
	sub r0, r0, #1
	strh r0, [r1]
	b _08028722
_08028700:
	add r0, r4, #0
	add r0, r0, #124
	ldrh r1, [r0]
	add r0, r0, #2
	ldrh r2, [r0]
	add r0, r4, #0
	bl 0x08009E6C
	cmp r0, #0
	beq _08028722
_08028714:
	ldrb r0, [r4, #20]
	sub r0, r0, #1
	strb r0, [r4, #20]
	ldrb r1, [r4, #23]
	add r0, r4, #0
	add r0, r0, #118
	strh r1, [r0]
_08028722:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080286C8

	THUMB_FUNC_START sub_08028728
sub_08028728: @ 0x08028728
	push {r4-r7,lr}
	add r4, r0, #0
	add r6, r1, #0
	ldrh r1, [r6]
	lsr r7, r1, #12
	cmp r7, #14
	bne _08028742
	ldr r0, _08028754  @ =0x00000FFF
	and r0, r0, r1
	lsl r0, r0, #1
	sub r6, r6, r0
	ldrh r0, [r6]
	lsr r7, r0, #12
_08028742:
	add r0, r7, #0
	sub r0, r0, #10
	cmp r0, #5
	bhi _08028774
	lsl r0, r0, #2
	ldr r1, _08028758  @ =0x0802875C
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_08028754:
	.4byte 0x00000FFF
_08028758:
	.4byte 0x0802875C
	.4byte _080287C8
	.4byte _080287E0
	.4byte _080287EA
	.4byte _08028814
	.4byte _08028774
	.4byte _08028834
_08028774:
	mov r0, #10
	bl sub_08012468
	add r5, r0, #0
	cmp r5, #0
	beq _0802883C
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0803D3D0
	ldrh r0, [r6]
	mov r1, #63
	and r1, r1, r0
	lsl r1, r1, #4
	ldr r2, _080287C4  @ =gUnknown_0201EFF8
	add r3, r4, #0
	add r3, r3, #82
	ldrb r0, [r3]
	lsl r0, r0, #2
	add r0, r0, r2
	ldrh r0, [r0]
	add r0, r0, #8
	add r1, r1, r0
	strh r1, [r5, #50]
	ldrh r0, [r6]
	mov r1, #252
	lsl r1, r1, #4
	and r1, r1, r0
	lsr r1, r1, #2
	add r1, r1, #8
	ldrb r0, [r3]
	lsl r0, r0, #2
	add r2, r2, #2
	add r0, r0, r2
	ldrh r0, [r0]
	add r0, r0, r1
	strh r0, [r5, #54]
	strb r7, [r5, #10]
	b _0802883C
	.byte 0x00
	.byte 0x00
_080287C4:
	.4byte gUnknown_0201EFF8
_080287C8:
	ldrh r1, [r6]
	ldr r0, _080287DC  @ =0x00000FFF
	and r0, r0, r1
	lsl r1, r0, #4
	sub r1, r1, r0
	lsl r1, r1, #1
	add r0, r4, #0
	add r0, r0, #118
	strh r1, [r0]
	b _0802883C
_080287DC:
	.4byte 0x00000FFF
_080287E0:
	ldrb r0, [r6]
	bl sub_08013D20
	str r0, [r4, #112]
	b _08028826
_080287EA:
	ldr r1, _0802880C  @ =gUnknown_0201F000
	add r0, r4, #0
	add r0, r0, #82
	ldrb r2, [r0]
	lsl r2, r2, #2
	add r2, r2, r1
	ldr r3, _08028810  @ =gUnknown_08137B10
	ldrh r1, [r6]
	mov r0, #31
	and r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldr r1, [r2]
	ldr r0, [r0]
	orr r1, r1, r0
	str r1, [r2]
	b _0802883C
_0802880C:
	.4byte gUnknown_0201F000
_08028810:
	.4byte gUnknown_08137B10
_08028814:
	ldrh r1, [r6]
	ldr r0, _08028830  @ =0x00000FFF
	and r0, r0, r1
	lsl r1, r0, #4
	sub r1, r1, r0
	lsl r1, r1, #2
	add r0, r4, #0
	add r0, r0, #116
	strh r1, [r0]
_08028826:
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	b _0802883C
	.byte 0x00
	.byte 0x00
_08028830:
	.4byte 0x00000FFF
_08028834:
	add r0, r4, #0
	bl sub_08012540
	b _08028840
_0802883C:
	add r6, r6, #2
	add r0, r6, #0
_08028840:
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08028728

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08028848
sub_08028848: @ 0x08028848
	push {lr}
	ldr r2, _0802885C  @ =gUnknown_0813CFEC
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0802885C:
	.4byte gUnknown_0813CFEC
	THUMB_FUNC_END sub_08028848

	THUMB_FUNC_START sub_08028860
sub_08028860: @ 0x08028860
	push {r4,r5,lr}
	add r4, r0, #0
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	ldrb r1, [r4, #28]
	mov r2, #4
	neg r2, r2
	add r0, r2, #0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	add r1, r4, #0
	add r1, r1, #94
	ldrb r0, [r1]
	and r2, r2, r0
	strb r2, [r1]
	add r2, r4, #0
	add r2, r2, #60
	mov r0, #9
	strb r0, [r2]
	sub r1, r1, #30
	mov r0, #56
	strb r0, [r1]
	sub r1, r1, #1
	mov r0, #1
	strb r0, [r1]
	ldr r0, _080288F0  @ =gUnknown_0813D0C0
	str r0, [r4, #72]
	add r1, r1, #29
	mov r0, #170
	strh r0, [r1]
	ldrb r0, [r4, #11]
	lsr r0, r0, #5
	add r5, r4, #0
	add r5, r5, #42
	strb r0, [r5]
	ldrb r1, [r4, #11]
	mov r0, #31
	and r0, r0, r1
	strb r0, [r4, #11]
	ldrb r0, [r5]
	cmp r0, #3
	bhi _080288C6
	mov r0, #3
	strb r0, [r4, #20]
	ldrb r0, [r2]
	mov r1, #128
	orr r0, r0, r1
	strb r0, [r2]
_080288C6:
	ldrb r0, [r4, #10]
	bl sub_08013D20
	str r0, [r4, #96]
	ldrb r1, [r5]
	add r0, r4, #0
	bl 0x08003870
	ldr r1, _080288F4  @ =gUnknown_0813D008
	ldr r0, _080288F8  @ =gUnknown_03006C80
	ldrb r0, [r0, #1]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r1, [r0]
	add r0, r4, #0
	bl sub_0802C070
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080288F0:
	.4byte gUnknown_0813D0C0
_080288F4:
	.4byte gUnknown_0813D008
_080288F8:
	.4byte gUnknown_03006C80
	THUMB_FUNC_END sub_08028860

	THUMB_FUNC_START sub_080288FC
sub_080288FC: @ 0x080288FC
	add r2, r0, #0
	ldr r1, _0802891C  @ =gUnknown_0201F000
	add r0, r0, #82
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r2, #96]
	and r0, r0, r1
	cmp r0, r1
	bne _08028918
	ldrb r0, [r2, #20]
	add r0, r0, #1
	strb r0, [r2, #20]
_08028918:
	bx lr
	.byte 0x00
	.byte 0x00
_0802891C:
	.4byte gUnknown_0201F000
	THUMB_FUNC_END sub_080288FC

	THUMB_FUNC_START sub_08028920
sub_08028920: @ 0x08028920
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0802895A
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	add r2, r4, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r2]
	add r1, r4, #0
	add r1, r1, #42
	ldrb r0, [r1]
	sub r0, r0, #4
	strb r0, [r1]
	ldrb r1, [r1]
	add r0, r4, #0
	bl 0x08003870
_0802895A:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08028920

	THUMB_FUNC_START sub_08028960
sub_08028960: @ 0x08028960
	push {lr}
	add r3, r0, #0
	add r0, r0, #65
	ldrb r0, [r0]
	cmp r0, #149
	bne _080289BC
	ldr r0, [r3, #76]
	add r0, r0, #43
	ldrb r1, [r0]
	add r1, r1, #4
	mov r0, #24
	and r1, r1, r0
	asr r1, r1, #3
	add r0, r3, #0
	add r0, r0, #42
	ldrb r2, [r0]
	mov r0, #3
	and r0, r0, r2
	cmp r1, r0
	bne _080289BC
	ldrb r0, [r3, #20]
	add r0, r0, #1
	strb r0, [r3, #20]
	add r2, r3, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #127
	and r0, r0, r1
	strb r0, [r2]
	ldr r0, _080289C0  @ =gUnknown_0201F000
	add r1, r3, #0
	add r1, r1, #82
	ldrb r2, [r1]
	lsl r2, r2, #2
	add r2, r2, r0
	ldr r1, _080289C4  @ =gUnknown_08137B10
	ldrb r0, [r3, #11]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r2]
	ldr r0, [r0]
	orr r1, r1, r0
	str r1, [r2]
	mov r0, #23
	bl 0x08003DFC
_080289BC:
	pop {r0}
	bx r0
_080289C0:
	.4byte gUnknown_0201F000
_080289C4:
	.4byte gUnknown_08137B10
	THUMB_FUNC_END sub_08028960

	THUMB_FUNC_START sub_080289C8
sub_080289C8: @ 0x080289C8
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08028A00
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	ldrb r0, [r4, #23]
	lsl r0, r0, #1
	add r1, r4, #0
	add r1, r1, #124
	strh r0, [r1]
	add r0, r4, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r1, r1, #4
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x08003870
_08028A00:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080289C8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08028A08
sub_08028A08: @ 0x08028A08
	add r3, r0, #0
	ldrb r0, [r3, #23]
	cmp r0, #0
	beq _08028A40
	add r1, r3, #0
	add r1, r1, #124
	ldrh r0, [r1]
	sub r0, r0, #1
	strh r0, [r1]
	lsl r0, r0, #16
	cmp r0, #0
	bne _08028A40
	ldrb r0, [r3, #20]
	add r0, r0, #1
	strb r0, [r3, #20]
	ldr r0, _08028A44  @ =gUnknown_0201F000
	sub r1, r1, #42
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r2, _08028A48  @ =gUnknown_08137B10
	ldrb r0, [r3, #11]
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r2, [r0]
	ldr r0, [r1]
	bic r0, r0, r2
	str r0, [r1]
_08028A40:
	bx lr
	.byte 0x00
	.byte 0x00
_08028A44:
	.4byte gUnknown_0201F000
_08028A48:
	.4byte gUnknown_08137B10
	THUMB_FUNC_END sub_08028A08

	THUMB_FUNC_START sub_08028A4C
sub_08028A4C: @ 0x08028A4C
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08028A80
	ldrb r0, [r4, #20]
	sub r0, r0, #3
	strb r0, [r4, #20]
	add r2, r4, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r2]
	add r0, r4, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r0, r4, #0
	bl 0x08003870
_08028A80:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08028A4C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08028A88
sub_08028A88: @ 0x08028A88
	push {lr}
	ldr r2, _08028A9C  @ =gUnknown_0813D0C8
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08028A9C:
	.4byte gUnknown_0813D0C8
	THUMB_FUNC_END sub_08028A88

	THUMB_FUNC_START sub_08028AA0
sub_08028AA0: @ 0x08028AA0
	add r2, r0, #0
	ldrb r0, [r2, #20]
	add r0, r0, #1
	strb r0, [r2, #20]
	add r1, r2, #0
	add r1, r1, #69
	mov r0, #100
	strb r0, [r1]
	sub r1, r1, #9
	mov r0, #137
	strb r0, [r1]
	add r1, r1, #4
	mov r0, #56
	strb r0, [r1]
	sub r1, r1, #1
	mov r0, #62
	strb r0, [r1]
	ldr r1, _08028AD8  @ =gUnknown_0813D120
	ldrb r0, [r2, #10]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r2, #72]
	add r1, r2, #0
	add r1, r1, #92
	ldr r0, _08028ADC  @ =0x000021AA
	strh r0, [r1]
	bx lr
_08028AD8:
	.4byte gUnknown_0813D120
_08028ADC:
	.4byte 0x000021AA
	THUMB_FUNC_END sub_08028AA0

	THUMB_FUNC_START sub_08028AE0
sub_08028AE0: @ 0x08028AE0
	push {r4-r6,lr}
	add r2, r0, #0
	add r6, r2, #0
	add r6, r6, #124
	ldrb r0, [r6]
	cmp r0, #0
	beq _08028AF2
	sub r0, r0, #1
	strb r0, [r6]
_08028AF2:
	add r5, r2, #0
	add r5, r5, #125
	ldrb r0, [r5]
	cmp r0, #0
	beq _08028B00
	sub r0, r0, #1
	strb r0, [r5]
_08028B00:
	add r4, r2, #0
	add r4, r4, #126
	ldrb r0, [r4]
	cmp r0, #0
	beq _08028B0E
	sub r0, r0, #1
	strb r0, [r4]
_08028B0E:
	add r3, r2, #0
	add r3, r3, #127
	ldrb r0, [r3]
	cmp r0, #0
	beq _08028B1C
	sub r0, r0, #1
	strb r0, [r3]
_08028B1C:
	ldrb r0, [r2, #24]
	cmp r0, #0
	beq _08028B26
	sub r0, r0, #1
	strb r0, [r2, #24]
_08028B26:
	add r0, r2, #0
	add r0, r0, #65
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08028BA0
	ldr r0, [r2, #76]
	ldrb r0, [r0, #10]
	cmp r0, #1
	beq _08028B60
	cmp r0, #1
	bgt _08028B46
	cmp r0, #0
	beq _08028B50
	b _08028B90
_08028B46:
	cmp r0, #2
	beq _08028B70
	cmp r0, #3
	beq _08028B80
	b _08028B90
_08028B50:
	ldrb r0, [r6]
	cmp r0, #0
	bne _08028BA0
	add r0, r2, #0
	add r1, r6, #0
	bl sub_08028C54
	b _08028BA0
_08028B60:
	ldrb r0, [r5]
	cmp r0, #0
	bne _08028BA0
	add r0, r2, #0
	add r1, r5, #0
	bl sub_08028C54
	b _08028BA0
_08028B70:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08028BA0
	add r0, r2, #0
	add r1, r4, #0
	bl sub_08028C54
	b _08028BA0
_08028B80:
	ldrb r0, [r3]
	cmp r0, #0
	bne _08028BA0
	add r0, r2, #0
	add r1, r3, #0
	bl sub_08028C54
	b _08028BA0
_08028B90:
	ldrb r0, [r2, #24]
	cmp r0, #0
	bne _08028BA0
	add r1, r2, #0
	add r1, r1, #24
	add r0, r2, #0
	bl sub_08028C54
_08028BA0:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08028AE0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08028BA8
sub_08028BA8: @ 0x08028BA8
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	add r1, r0, #1
	strb r1, [r4, #23]
	lsl r0, r1, #24
	lsr r0, r0, #24
	ldrb r2, [r4, #24]
	cmp r0, r2
	bcs _08028BCC
	mov r0, #1
	and r1, r1, r0
	cmp r1, #0
	beq _08028BE0
	add r0, r4, #0
	bl sub_08029720
	b _08028BE0
_08028BCC:
	add r0, r4, #0
	bl sub_080291F8
	mov r0, #8
	mov r1, #0
	bl sub_080161F8
	add r0, r4, #0
	bl sub_08012540
_08028BE0:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08028BA8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08028BE8
sub_08028BE8: @ 0x08028BE8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	mov r0, #15
	mov r1, #15
	mov r2, #0
	bl sub_0804C8A8
	add r7, r0, #0
	cmp r7, #0
	beq _08028C46
	bl 0x0800099C
	add r6, r0, #0
	bl 0x0800099C
	add r5, r0, #0
	ldr r0, _08028C50  @ =gUnknown_0813D0D4
	mov r2, r8
	ldrb r1, [r2, #10]
	add r0, r1, r0
	mov r4, #0
	ldrsb r4, [r0, r4]
	add r1, r1, #2
	add r0, r6, #0
	bl __umodsi3
	lsl r0, r0, #4
	add r4, r4, r0
	mov r0, #7
	and r5, r5, r0
	add r4, r4, r5
	sub r4, r4, #4
	lsl r4, r4, #16
	bl 0x0800099C
	add r3, r0, #0
	mov r0, #31
	and r3, r3, r0
	sub r3, r3, #16
	lsl r3, r3, #16
	mov r0, r8
	add r1, r7, #0
	add r2, r4, #0
	bl sub_0803D4A4
_08028C46:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_08028C50:
	.4byte gUnknown_0813D0D4
	THUMB_FUNC_END sub_08028BE8

	THUMB_FUNC_START sub_08028C54
sub_08028C54: @ 0x08028C54
	push {r4,r5,lr}
	add r4, r0, #0
	ldr r0, [r4, #76]
	add r0, r0, #64
	ldrb r2, [r0]
	cmp r2, #35
	bhi _08028CCA
	ldr r0, _08028C84  @ =gUnknown_0813D0D8
	add r0, r2, r0
	ldrb r2, [r0]
	add r5, r2, #0
	cmp r2, #0
	beq _08028CCA
	mov r0, #8
	strb r0, [r1]
	add r0, r4, #0
	add r0, r0, #69
	ldrb r3, [r0]
	add r1, r0, #0
	cmp r2, r3
	bls _08028C88
	mov r0, #0
	b _08028C8A
	.byte 0x00
	.byte 0x00
_08028C84:
	.4byte gUnknown_0813D0D8
_08028C88:
	sub r0, r3, r5
_08028C8A:
	strb r0, [r1]
	ldrb r1, [r1]
	cmp r1, #0
	beq _08028CAE
	ldr r0, [r4, #96]
	cmp r0, #0
	bne _08028CA6
	cmp r1, #49
	bhi _08028CA6
	add r0, r4, #0
	bl sub_08028CD0
	mov r0, #1
	str r0, [r4, #96]
_08028CA6:
	add r0, r4, #0
	bl sub_08028BE8
	b _08028CCA
_08028CAE:
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	strb r1, [r4, #23]
	ldrb r0, [r4, #10]
	add r0, r0, #1
	lsl r0, r0, #1
	strb r0, [r4, #24]
	add r2, r4, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #127
	and r0, r0, r1
	strb r0, [r2]
_08028CCA:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08028C54

	THUMB_FUNC_START sub_08028CD0
sub_08028CD0: @ 0x08028CD0
	push {r4-r6,lr}
	add r4, r0, #0
	ldr r1, _08028CF0  @ =gUnknown_0813D238
	ldrb r2, [r4, #10]
	lsl r0, r2, #2
	add r0, r0, r1
	ldr r5, [r0]
	cmp r2, #1
	bne _08028CE4
	b _08028DEC
_08028CE4:
	cmp r2, #1
	bgt _08028CF4
	cmp r2, #0
	beq _08028D02
	b _080291E8
	.byte 0x00
	.byte 0x00
_08028CF0:
	.4byte gUnknown_0813D238
_08028CF4:
	cmp r2, #2
	bne _08028CFA
	b _08028F08
_08028CFA:
	cmp r2, #3
	bne _08028D00
	b _08029064
_08028D00:
	b _080291E8
_08028D02:
	mov r0, #50
	ldrsh r1, [r4, r0]
	ldr r2, _08028DE4  @ =gUnknown_03000450
	ldrh r0, [r2, #24]
	add r0, r0, #8
	sub r1, r1, r0
	asr r1, r1, #4
	mov r3, #54
	ldrsh r0, [r4, r3]
	ldrh r2, [r2, #26]
	sub r0, r0, r2
	asr r0, r0, #4
	lsl r0, r0, #6
	orr r1, r1, r0
	lsl r1, r1, #16
	ldrh r0, [r5]
	add r5, r5, #2
	lsr r6, r1, #16
	ldr r2, _08028DE8  @ =0xFFBF0000
	add r1, r1, r2
	lsr r1, r1, #16
	add r4, r4, #80
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #64
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #63
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #62
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	sub r1, r6, #1
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	ldrh r2, [r4]
	add r1, r6, #0
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #1
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #63
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #64
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #65
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r1, r6, #0
	add r1, r1, #66
	b _08029050
_08028DE4:
	.4byte gUnknown_03000450
_08028DE8:
	.4byte 0xFFBF0000
_08028DEC:
	mov r3, #50
	ldrsh r1, [r4, r3]
	ldr r2, _08028F00  @ =gUnknown_03000450
	ldrh r0, [r2, #24]
	sub r1, r1, r0
	asr r1, r1, #4
	mov r3, #54
	ldrsh r0, [r4, r3]
	ldrh r2, [r2, #26]
	sub r0, r0, r2
	asr r0, r0, #4
	lsl r0, r0, #6
	orr r1, r1, r0
	lsl r1, r1, #16
	ldrh r0, [r5]
	add r5, r5, #2
	lsr r6, r1, #16
	ldr r2, _08028F04  @ =0xFFBE0000
	add r1, r1, r2
	lsr r1, r1, #16
	add r4, r4, #80
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #65
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #64
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #63
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #62
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	sub r1, r6, #2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	sub r1, r6, #1
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	ldrh r2, [r4]
	add r1, r6, #0
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #1
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #62
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #63
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #64
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #65
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r1, r6, #0
	add r1, r1, #66
	b _08029050
_08028F00:
	.4byte gUnknown_03000450
_08028F04:
	.4byte 0xFFBE0000
_08028F08:
	mov r3, #50
	ldrsh r1, [r4, r3]
	ldr r2, _0802905C  @ =gUnknown_03000450
	ldrh r0, [r2, #24]
	add r0, r0, #8
	sub r1, r1, r0
	asr r1, r1, #4
	mov r3, #54
	ldrsh r0, [r4, r3]
	ldrh r2, [r2, #26]
	sub r0, r0, r2
	asr r0, r0, #4
	lsl r0, r0, #6
	orr r1, r1, r0
	lsl r1, r1, #16
	ldrh r0, [r5]
	add r5, r5, #2
	lsr r6, r1, #16
	ldr r2, _08029060  @ =0xFFBE0000
	add r1, r1, r2
	lsr r1, r1, #16
	add r4, r4, #80
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #65
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #64
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #63
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #62
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #61
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	sub r1, r6, #2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	sub r1, r6, #1
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	ldrh r2, [r4]
	add r1, r6, #0
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #1
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #3
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #62
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #63
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #64
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #65
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #66
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r1, r6, #0
	add r1, r1, #67
_08029050:
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	b _080291E8
_0802905C:
	.4byte gUnknown_03000450
_08029060:
	.4byte 0xFFBE0000
_08029064:
	mov r3, #50
	ldrsh r1, [r4, r3]
	ldr r2, _080291F0  @ =gUnknown_03000450
	ldrh r0, [r2, #24]
	sub r1, r1, r0
	asr r1, r1, #4
	mov r3, #54
	ldrsh r0, [r4, r3]
	ldrh r2, [r2, #26]
	sub r0, r0, r2
	asr r0, r0, #4
	lsl r0, r0, #6
	orr r1, r1, r0
	lsl r1, r1, #16
	ldrh r0, [r5]
	add r5, r5, #2
	lsr r6, r1, #16
	ldr r2, _080291F4  @ =0xFFBD0000
	add r1, r1, r2
	lsr r1, r1, #16
	add r4, r4, #80
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #66
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #65
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #64
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #63
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #62
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #61
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	sub r1, r6, #3
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	sub r1, r6, #2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	sub r1, r6, #1
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	ldrh r2, [r4]
	add r1, r6, #0
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #1
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #3
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #61
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #62
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #63
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #64
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #65
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #66
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r1, r6, #0
	add r1, r1, #67
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
_080291E8:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080291F0:
	.4byte gUnknown_03000450
_080291F4:
	.4byte 0xFFBD0000
	THUMB_FUNC_END sub_08028CD0

	THUMB_FUNC_START sub_080291F8
sub_080291F8: @ 0x080291F8
	push {r4-r6,lr}
	add r4, r0, #0
	ldr r1, _08029218  @ =gUnknown_0813D248
	ldrb r2, [r4, #10]
	lsl r0, r2, #2
	add r0, r0, r1
	ldr r5, [r0]
	cmp r2, #1
	bne _0802920C
	b _08029314
_0802920C:
	cmp r2, #1
	bgt _0802921C
	cmp r2, #0
	beq _0802922A
	b _08029710
	.byte 0x00
	.byte 0x00
_08029218:
	.4byte gUnknown_0813D248
_0802921C:
	cmp r2, #2
	bne _08029222
	b _08029430
_08029222:
	cmp r2, #3
	bne _08029228
	b _0802958C
_08029228:
	b _08029710
_0802922A:
	mov r0, #50
	ldrsh r1, [r4, r0]
	ldr r2, _0802930C  @ =gUnknown_03000450
	ldrh r0, [r2, #24]
	add r0, r0, #8
	sub r1, r1, r0
	asr r1, r1, #4
	mov r3, #54
	ldrsh r0, [r4, r3]
	ldrh r2, [r2, #26]
	sub r0, r0, r2
	asr r0, r0, #4
	lsl r0, r0, #6
	orr r1, r1, r0
	lsl r1, r1, #16
	ldrh r0, [r5]
	add r5, r5, #2
	lsr r6, r1, #16
	ldr r2, _08029310  @ =0xFFBF0000
	add r1, r1, r2
	lsr r1, r1, #16
	add r4, r4, #80
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #64
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #63
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #62
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	sub r1, r6, #1
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	ldrh r2, [r4]
	add r1, r6, #0
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #1
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #63
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #64
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #65
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r1, r6, #0
	add r1, r1, #66
	b _08029578
_0802930C:
	.4byte gUnknown_03000450
_08029310:
	.4byte 0xFFBF0000
_08029314:
	mov r3, #50
	ldrsh r1, [r4, r3]
	ldr r2, _08029428  @ =gUnknown_03000450
	ldrh r0, [r2, #24]
	sub r1, r1, r0
	asr r1, r1, #4
	mov r3, #54
	ldrsh r0, [r4, r3]
	ldrh r2, [r2, #26]
	sub r0, r0, r2
	asr r0, r0, #4
	lsl r0, r0, #6
	orr r1, r1, r0
	lsl r1, r1, #16
	ldrh r0, [r5]
	add r5, r5, #2
	lsr r6, r1, #16
	ldr r2, _0802942C  @ =0xFFBE0000
	add r1, r1, r2
	lsr r1, r1, #16
	add r4, r4, #80
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #65
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #64
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #63
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #62
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	sub r1, r6, #2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	sub r1, r6, #1
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	ldrh r2, [r4]
	add r1, r6, #0
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #1
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #62
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #63
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #64
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #65
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r1, r6, #0
	add r1, r1, #66
	b _08029578
_08029428:
	.4byte gUnknown_03000450
_0802942C:
	.4byte 0xFFBE0000
_08029430:
	mov r3, #50
	ldrsh r1, [r4, r3]
	ldr r2, _08029584  @ =gUnknown_03000450
	ldrh r0, [r2, #24]
	add r0, r0, #8
	sub r1, r1, r0
	asr r1, r1, #4
	mov r3, #54
	ldrsh r0, [r4, r3]
	ldrh r2, [r2, #26]
	sub r0, r0, r2
	asr r0, r0, #4
	lsl r0, r0, #6
	orr r1, r1, r0
	lsl r1, r1, #16
	ldrh r0, [r5]
	add r5, r5, #2
	lsr r6, r1, #16
	ldr r2, _08029588  @ =0xFFBE0000
	add r1, r1, r2
	lsr r1, r1, #16
	add r4, r4, #80
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #65
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #64
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #63
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #62
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #61
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	sub r1, r6, #2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	sub r1, r6, #1
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	ldrh r2, [r4]
	add r1, r6, #0
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #1
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #3
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #62
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #63
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #64
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #65
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #66
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r1, r6, #0
	add r1, r1, #67
_08029578:
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	b _08029710
_08029584:
	.4byte gUnknown_03000450
_08029588:
	.4byte 0xFFBE0000
_0802958C:
	mov r3, #50
	ldrsh r1, [r4, r3]
	ldr r2, _08029718  @ =gUnknown_03000450
	ldrh r0, [r2, #24]
	sub r1, r1, r0
	asr r1, r1, #4
	mov r3, #54
	ldrsh r0, [r4, r3]
	ldrh r2, [r2, #26]
	sub r0, r0, r2
	asr r0, r0, #4
	lsl r0, r0, #6
	orr r1, r1, r0
	lsl r1, r1, #16
	ldrh r0, [r5]
	add r5, r5, #2
	lsr r6, r1, #16
	ldr r2, _0802971C  @ =0xFFBD0000
	add r1, r1, r2
	lsr r1, r1, #16
	add r4, r4, #80
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #66
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #65
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #64
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #63
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #62
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	sub r1, r1, #61
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	sub r1, r6, #3
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	sub r1, r6, #2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	sub r1, r6, #1
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	ldrh r2, [r4]
	add r1, r6, #0
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #1
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #3
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #61
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #62
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #63
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #64
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #65
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r5, r5, #2
	add r1, r6, #0
	add r1, r1, #66
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
	ldrh r0, [r5]
	add r1, r6, #0
	add r1, r1, #67
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r4]
	bl sub_08014658
_08029710:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08029718:
	.4byte gUnknown_03000450
_0802971C:
	.4byte 0xFFBD0000
	THUMB_FUNC_END sub_080291F8

	THUMB_FUNC_START sub_08029720
sub_08029720: @ 0x08029720
	push {r4,lr}
	add r4, r0, #0
	mov r0, #15
	mov r1, #2
	mov r2, #0
	bl sub_0804C8A8
	add r2, r0, #0
	cmp r2, #0
	beq _08029756
	ldr r1, _080297F4  @ =gUnknown_0813D0FC
	ldrb r0, [r4, #23]
	lsr r0, r0, #1
	add r0, r0, r1
	ldrb r1, [r0]
	ldrh r0, [r4, #50]
	sub r0, r0, r1
	strh r0, [r2, #50]
	ldrh r0, [r4, #54]
	sub r0, r0, #20
	strh r0, [r2, #54]
	add r0, r4, #0
	add r0, r0, #80
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, r0, #80
	strh r1, [r0]
_08029756:
	mov r0, #15
	mov r1, #2
	mov r2, #0
	bl sub_0804C8A8
	add r2, r0, #0
	cmp r2, #0
	beq _08029788
	ldr r0, _080297F4  @ =gUnknown_0813D0FC
	ldrb r1, [r4, #23]
	lsr r1, r1, #1
	add r1, r1, r0
	ldrh r0, [r4, #50]
	ldrb r1, [r1]
	add r0, r0, r1
	strh r0, [r2, #50]
	ldrh r0, [r4, #54]
	sub r0, r0, #20
	strh r0, [r2, #54]
	add r0, r4, #0
	add r0, r0, #80
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, r0, #80
	strh r1, [r0]
_08029788:
	mov r0, #15
	mov r1, #2
	mov r2, #0
	bl sub_0804C8A8
	add r2, r0, #0
	cmp r2, #0
	beq _080297BA
	ldr r1, _080297F4  @ =gUnknown_0813D0FC
	ldrb r0, [r4, #23]
	lsr r0, r0, #1
	add r0, r0, r1
	ldrb r1, [r0]
	ldrh r0, [r4, #50]
	sub r0, r0, r1
	strh r0, [r2, #50]
	ldrh r0, [r4, #54]
	add r0, r0, #20
	strh r0, [r2, #54]
	add r0, r4, #0
	add r0, r0, #80
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, r0, #80
	strh r1, [r0]
_080297BA:
	mov r0, #15
	mov r1, #2
	mov r2, #0
	bl sub_0804C8A8
	add r2, r0, #0
	cmp r2, #0
	beq _080297EC
	ldr r0, _080297F4  @ =gUnknown_0813D0FC
	ldrb r1, [r4, #23]
	lsr r1, r1, #1
	add r1, r1, r0
	ldrh r0, [r4, #50]
	ldrb r1, [r1]
	add r0, r0, r1
	strh r0, [r2, #50]
	ldrh r0, [r4, #54]
	add r0, r0, #20
	strh r0, [r2, #54]
	add r0, r4, #0
	add r0, r0, #80
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, r0, #80
	strh r1, [r0]
_080297EC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080297F4:
	.4byte gUnknown_0813D0FC
	THUMB_FUNC_END sub_08029720

	THUMB_FUNC_START sub_080297F8
sub_080297F8: @ 0x080297F8
	push {lr}
	ldr r2, _0802980C  @ =gUnknown_0813D258
	ldrb r1, [r0, #11]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0802980C:
	.4byte gUnknown_0813D258
	THUMB_FUNC_END sub_080297F8

	THUMB_FUNC_START sub_08029810
sub_08029810: @ 0x08029810
	push {lr}
	ldr r2, _08029824  @ =gUnknown_0813D260
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08029824:
	.4byte gUnknown_0813D260
	THUMB_FUNC_END sub_08029810

	THUMB_FUNC_START sub_08029828
sub_08029828: @ 0x08029828
	push {lr}
	ldr r2, _0802983C  @ =gUnknown_0813D268
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0802983C:
	.4byte gUnknown_0813D268
	THUMB_FUNC_END sub_08029828

	THUMB_FUNC_START sub_08029840
sub_08029840: @ 0x08029840
	add r2, r0, #0
	ldrb r0, [r2, #20]
	add r0, r0, #1
	strb r0, [r2, #20]
	add r1, r2, #0
	add r1, r1, #60
	mov r0, #137
	strb r0, [r1]
	add r1, r1, #4
	mov r0, #56
	strb r0, [r1]
	sub r1, r1, #1
	mov r0, #69
	strb r0, [r1]
	ldr r0, _08029868  @ =gUnknown_0813D270
	str r0, [r2, #72]
	add r1, r1, #29
	mov r0, #170
	strh r0, [r1]
	bx lr
_08029868:
	.4byte gUnknown_0813D270
	THUMB_FUNC_END sub_08029840

	THUMB_FUNC_START sub_0802986C
sub_0802986C: @ 0x0802986C
	push {r4-r6,lr}
	add r6, r0, #0
	add r0, r0, #65
	ldrb r0, [r0]
	cmp r0, #149
	bne _08029920
	ldr r0, [r6, #76]
	add r0, r0, #43
	ldrb r0, [r0]
	add r0, r0, #4
	mov r1, #24
	and r0, r0, r1
	cmp r0, #0
	bne _08029920
	add r2, r6, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #127
	and r0, r0, r1
	strb r0, [r2]
	ldr r0, _08029928  @ =gUnknown_0201F000
	add r1, r6, #0
	add r1, r1, #82
	ldrb r2, [r1]
	lsl r2, r2, #2
	add r2, r2, r0
	ldr r1, _0802992C  @ =gUnknown_08137B10
	ldrb r0, [r6, #10]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r2]
	ldr r0, [r0]
	orr r1, r1, r0
	str r1, [r2]
	mov r0, #50
	ldrsh r4, [r6, r0]
	ldr r1, _08029930  @ =gUnknown_03000450
	ldrh r0, [r1, #24]
	add r0, r0, #8
	sub r4, r4, r0
	asr r4, r4, #4
	mov r2, #54
	ldrsh r0, [r6, r2]
	ldrh r1, [r1, #26]
	add r1, r1, #8
	sub r0, r0, r1
	asr r0, r0, #4
	lsl r0, r0, #6
	orr r4, r4, r0
	lsl r4, r4, #16
	lsr r4, r4, #16
	mov r0, #169
	lsl r0, r0, #1
	add r5, r6, #0
	add r5, r5, #80
	ldrh r2, [r5]
	add r1, r4, #0
	bl sub_08014658
	ldr r0, _08029934  @ =0x00000153
	add r1, r4, #1
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	bl sub_08014658
	mov r0, #170
	lsl r0, r0, #1
	add r1, r4, #0
	add r1, r1, #64
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	bl sub_08014658
	ldr r0, _08029938  @ =0x00000155
	add r4, r4, #65
	lsl r4, r4, #16
	lsr r4, r4, #16
	ldrh r2, [r5]
	add r1, r4, #0
	bl sub_08014658
	add r0, r6, #0
	mov r1, #23
	bl 0x08003E10
	add r0, r6, #0
	bl sub_08012540
_08029920:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08029928:
	.4byte gUnknown_0201F000
_0802992C:
	.4byte gUnknown_08137B10
_08029930:
	.4byte gUnknown_03000450
_08029934:
	.4byte 0x00000153
_08029938:
	.4byte 0x00000155
	THUMB_FUNC_END sub_0802986C

	THUMB_FUNC_START sub_0802993C
sub_0802993C: @ 0x0802993C
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	ldrb r0, [r4, #10]
	bl sub_08013D20
	str r0, [r4, #96]
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802993C

	THUMB_FUNC_START sub_08029954
sub_08029954: @ 0x08029954
	push {r4-r6,lr}
	add r6, r0, #0
	ldr r1, _080299E4  @ =gUnknown_0201F000
	add r0, r0, #82
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r6, #96]
	and r0, r0, r1
	cmp r0, r1
	bne _080299DC
	mov r0, #50
	ldrsh r4, [r6, r0]
	ldr r1, _080299E8  @ =gUnknown_03000450
	ldrh r0, [r1, #24]
	add r0, r0, #8
	sub r4, r4, r0
	asr r4, r4, #4
	mov r2, #54
	ldrsh r0, [r6, r2]
	ldrh r1, [r1, #26]
	add r1, r1, #8
	sub r0, r0, r1
	asr r0, r0, #4
	lsl r0, r0, #6
	orr r4, r4, r0
	lsl r4, r4, #16
	lsr r4, r4, #16
	mov r0, #167
	lsl r0, r0, #1
	add r5, r6, #0
	add r5, r5, #80
	ldrh r2, [r5]
	add r1, r4, #0
	bl sub_08014658
	ldr r0, _080299EC  @ =0x0000014F
	add r1, r4, #1
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	bl sub_08014658
	mov r0, #168
	lsl r0, r0, #1
	add r1, r4, #0
	add r1, r1, #64
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	bl sub_08014658
	ldr r0, _080299F0  @ =0x00000151
	add r4, r4, #65
	lsl r4, r4, #16
	lsr r4, r4, #16
	ldrh r2, [r5]
	add r1, r4, #0
	bl sub_08014658
	add r0, r6, #0
	mov r1, #23
	bl 0x08003E10
	add r0, r6, #0
	bl sub_08012540
_080299DC:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080299E4:
	.4byte gUnknown_0201F000
_080299E8:
	.4byte gUnknown_03000450
_080299EC:
	.4byte 0x0000014F
_080299F0:
	.4byte 0x00000151
	THUMB_FUNC_END sub_08029954

	THUMB_FUNC_START sub_080299F4
sub_080299F4: @ 0x080299F4
	push {r4-r6,lr}
	add r4, r0, #0
	ldr r1, _08029A68  @ =gUnknown_0813D278
	ldrb r0, [r4, #20]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
	add r0, r4, #0
	add r0, r0, #65
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08029A62
	mov r0, #127
	and r0, r0, r1
	cmp r0, #0
	bne _08029A62
	ldr r6, _08029A6C  @ =gUnknown_03006A30
	ldr r0, [r4, #76]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r6
	ldrh r1, [r0, #54]
	mov r5, #128
	lsl r5, r5, #3
	add r0, r5, #0
	and r0, r0, r1
	cmp r0, #0
	bne _08029A62
	mov r0, #85
	mov r1, #1
	mov r2, #0
	bl sub_0804C8A8
	add r1, r0, #0
	cmp r1, #0
	beq _08029A62
	ldr r0, [r4, #76]
	str r0, [r1, #88]
	ldr r0, [r4, #76]
	ldrb r0, [r0, #10]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #4
	add r1, r1, r6
	ldrh r2, [r1, #54]
	add r0, r5, #0
	orr r0, r0, r2
	strh r0, [r1, #54]
_08029A62:
	pop {r4-r6}
	pop {r0}
	bx r0
_08029A68:
	.4byte gUnknown_0813D278
_08029A6C:
	.4byte gUnknown_03006A30
	THUMB_FUNC_END sub_080299F4

	THUMB_FUNC_START sub_08029A70
sub_08029A70: @ 0x08029A70
	push {r4,lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, r1, #80
	mov r0, #128
	lsl r0, r0, #7
	strh r0, [r1]
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
	add r2, r4, #0
	add r2, r2, #94
	ldrb r1, [r2]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #8
	orr r0, r0, r1
	strb r0, [r2]
	ldr r0, _08029AD8  @ =gUnknown_0813D454
	str r0, [r4, #72]
	add r1, r4, #0
	add r1, r1, #43
	mov r0, #255
	strb r0, [r1]
	add r1, r1, #63
	mov r0, #1
	strb r0, [r1]
	add r0, r4, #0
	bl sub_0802A028
	mov r0, #60
	strb r0, [r4, #24]
	add r1, r4, #0
	add r1, r1, #123
	mov r0, #30
	strb r0, [r1]
	ldr r1, _08029ADC  @ =gUnknown_03000450
	ldr r0, [r1]
	str r0, [r4, #88]
	str r4, [r1]
	pop {r4}
	pop {r0}
	bx r0
_08029AD8:
	.4byte gUnknown_0813D454
_08029ADC:
	.4byte gUnknown_03000450
	THUMB_FUNC_END sub_08029A70

	THUMB_FUNC_START sub_08029AE0
sub_08029AE0: @ 0x08029AE0
	push {r4-r6,lr}
	add r4, r0, #0
	ldrb r0, [r4, #10]
	cmp r0, #0
	bne _08029AFA
	bl sub_0803DF84
	ldrb r0, [r4, #24]
	cmp r0, #0
	beq _08029AFA
	sub r0, r0, #1
	strb r0, [r4, #24]
	b _08029C80
_08029AFA:
	add r0, r4, #0
	add r0, r0, #69
	ldrb r1, [r0]
	add r6, r0, #0
	cmp r1, #0
	bne _08029B24
	ldr r0, _08029B1C  @ =gUnknown_03006C80
	ldrb r1, [r4, #10]
	ldrb r0, [r0, #6]
	cmp r0, r1
	bne _08029B20
	add r1, r4, #0
	add r1, r1, #121
	mov r0, #4
	strb r0, [r1]
	add r5, r1, #0
	b _08029B2E
_08029B1C:
	.4byte gUnknown_03006C80
_08029B20:
	add r1, r1, #1
	b _08029B26
_08029B24:
	ldrb r1, [r4, #10]
_08029B26:
	add r0, r4, #0
	add r0, r0, #121
	strb r1, [r0]
	add r5, r0, #0
_08029B2E:
	ldr r0, [r4, #16]
	cmp r0, #0
	beq _08029B4C
	add r0, r4, #0
	bl 0x08003828
	mov r1, #128
	lsl r1, r1, #6
	add r0, r4, #0
	bl 0x08003594
	add r0, r4, #0
	bl sub_0803CC20
	b _08029C80
_08029B4C:
	add r1, r4, #0
	add r1, r1, #120
	ldrb r0, [r1]
	cmp r0, #0
	beq _08029BE6
	sub r0, r0, #1
	strb r0, [r1]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	bne _08029B64
	b _08029C80
_08029B64:
	mov r0, #15
	bl sub_08012494
	add r5, r0, #0
	cmp r5, #0
	bne _08029B72
	b _08029C80
_08029B72:
	bl 0x0800099C
	mov r1, #1
	and r1, r1, r0
	cmp r1, #0
	beq _08029B8E
	bl 0x0800099C
	mov r1, #15
	and r0, r0, r1
	ldrh r1, [r4, #50]
	add r0, r0, r1
	strh r0, [r5, #50]
	b _08029B9C
_08029B8E:
	bl 0x0800099C
	mov r1, #15
	and r0, r0, r1
	ldrh r1, [r4, #50]
	sub r1, r1, r0
	strh r1, [r5, #50]
_08029B9C:
	bl 0x0800099C
	mov r1, #1
	and r1, r1, r0
	cmp r1, #0
	beq _08029BB8
	bl 0x0800099C
	mov r1, #15
	and r0, r0, r1
	ldrh r1, [r4, #54]
	add r0, r0, r1
	strh r0, [r5, #54]
	b _08029BC6
_08029BB8:
	bl 0x0800099C
	mov r1, #15
	and r0, r0, r1
	ldrh r1, [r4, #54]
	sub r1, r1, r0
	strh r1, [r5, #54]
_08029BC6:
	mov r0, #4
	strb r0, [r5, #11]
	str r4, [r5, #84]
	add r1, r4, #0
	add r1, r1, #122
	ldrb r2, [r1]
	add r0, r2, #1
	strb r0, [r1]
	mov r0, #3
	and r0, r0, r2
	cmp r0, #0
	bne _08029C80
	mov r0, #187
	bl 0x08003DFC
	b _08029C80
_08029BE6:
	ldrb r0, [r4, #23]
	cmp r0, #0
	beq _08029C24
	cmp r0, #90
	bne _08029BFC
	ldrb r0, [r4, #10]
	cmp r0, #4
	beq _08029BFC
	mov r0, #188
	bl 0x08003DFC
_08029BFC:
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08029C14
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
	b _08029C80
_08029C14:
	ldrb r0, [r5]
	cmp r0, #4
	beq _08029C80
	add r1, r0, #0
	add r0, r4, #0
	bl 0x08003870
	b _08029C80
_08029C24:
	ldrb r0, [r4, #10]
	cmp r0, #0
	bne _08029C38
	ldr r0, _08029C54  @ =gUnknown_03000450
	ldr r1, [r4, #88]
	str r1, [r0]
	mov r0, #206
	lsl r0, r0, #1
	bl sub_0800D24C
_08029C38:
	mov r0, #1
	strb r0, [r6]
	ldrb r0, [r5]
	strb r0, [r4, #10]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #4
	bne _08029C58
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
	b _08029C7A
	.byte 0x00
	.byte 0x00
_08029C54:
	.4byte gUnknown_03000450
_08029C58:
	ldrb r1, [r4, #10]
	add r0, r4, #0
	bl 0x08003870
	ldrb r1, [r4, #28]
	mov r0, #49
	neg r0, r0
	and r0, r0, r1
	mov r1, #32
	orr r0, r0, r1
	strb r0, [r4, #28]
	add r2, r4, #0
	add r2, r2, #60
	ldrb r0, [r2]
	mov r1, #128
	orr r0, r0, r1
	strb r0, [r2]
_08029C7A:
	add r0, r4, #0
	bl sub_0802A0A8
_08029C80:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08029AE0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08029C88
sub_08029C88: @ 0x08029C88
	push {r4-r6,lr}
	add r5, r0, #0
	bl 0x08003828
	mov r1, #128
	lsl r1, r1, #6
	add r0, r5, #0
	bl 0x08003594
	add r0, r5, #0
	add r0, r0, #112
	ldrb r0, [r0]
	cmp r0, #3
	beq _08029CF0
	cmp r0, #3
	ble _08029CC8
	cmp r0, #4
	bne _08029D04
	ldr r0, [r5, #56]
	cmp r0, #0
	beq _08029CB4
	b _08029E42
_08029CB4:
	ldrb r0, [r5, #23]
	sub r0, r0, #10
	strb r0, [r5, #23]
	lsl r0, r0, #24
	cmp r0, #0
	beq _08029D04
	mov r0, #192
	lsl r0, r0, #10
	str r0, [r5, #16]
	b _08029E42
_08029CC8:
	cmp r0, #0
	blt _08029D04
	add r1, r5, #0
	add r1, r1, #114
	mov r0, #24
	ldrsb r0, [r5, r0]
	ldrh r1, [r1]
	add r0, r0, r1
	strh r0, [r5, #50]
	ldrb r0, [r5, #24]
	neg r0, r0
	strb r0, [r5, #24]
	ldrb r0, [r5, #23]
	sub r0, r0, #1
	strb r0, [r5, #23]
	lsl r0, r0, #24
	cmp r0, #0
	beq _08029CEE
	b _08029E42
_08029CEE:
	b _08029D04
_08029CF0:
	add r0, r5, #0
	bl sub_0803CC20
	add r2, r5, #0
	add r2, r2, #43
	ldrb r0, [r2]
	add r0, r0, #1
	mov r1, #31
	and r0, r0, r1
	strb r0, [r2]
_08029D04:
	add r0, r5, #0
	add r0, r0, #114
	ldrh r0, [r0]
	strh r0, [r5, #50]
	add r0, r5, #0
	add r0, r0, #112
	ldrb r0, [r0]
	cmp r0, #4
	bls _08029D18
	b _08029E42
_08029D18:
	lsl r0, r0, #2
	ldr r1, _08029D24  @ =0x08029D28
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_08029D24:
	.4byte 0x08029D28
	.4byte _08029D84
	.4byte _08029DB2
	.4byte _08029DF0
	.4byte _08029E1C
	.4byte _08029D3C
_08029D3C:
	ldr r0, _08029D80  @ =gUnknown_03006C80
	ldrb r0, [r0]
	lsl r1, r0, #2
	strb r1, [r5, #23]
	lsl r0, r0, #26
	cmp r0, #0
	beq _08029E14
	mov r6, #31
_08029D4C:
	bl 0x0800099C
	add r4, r0, #0
	and r4, r4, r6
	lsl r4, r4, #4
	add r4, r4, #118
	bl 0x0800099C
	add r2, r0, #0
	and r2, r2, r6
	lsl r2, r2, #20
	mov r0, #168
	lsl r0, r0, #16
	add r2, r2, r0
	lsr r2, r2, #16
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0802A134
	ldrb r0, [r5, #23]
	sub r0, r0, #1
	strb r0, [r5, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08029D4C
	b _08029E14
_08029D80:
	.4byte gUnknown_03006C80
_08029D84:
	bl 0x0800099C
	mov r1, #31
	and r0, r0, r1
	add r1, r5, #0
	add r1, r1, #43
	strb r0, [r1]
	mov r0, #128
	lsl r0, r0, #1
	str r0, [r5, #12]
	mov r0, #3
	strb r0, [r5, #20]
	mov r0, #128
	lsl r0, r0, #10
	str r0, [r5, #16]
	mov r0, #5
	strb r0, [r5, #23]
	ldrh r1, [r5, #50]
	ldrh r2, [r5, #54]
	add r0, r5, #0
	bl sub_0802A134
	b _08029E42
_08029DB2:
	ldr r4, _08029DEC  @ =gUnknown_03006A30
	bl 0x08003170
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #4
	add r4, r4, #40
	add r1, r1, r4
	ldr r1, [r1]
	add r0, r5, #0
	bl 0x08003F4C
	add r1, r5, #0
	add r1, r1, #43
	strb r0, [r1]
	ldrb r0, [r5, #10]
	add r0, r0, #3
	strb r0, [r5, #23]
	mov r0, #128
	lsl r0, r0, #1
	str r0, [r5, #12]
	mov r0, #3
	strb r0, [r5, #20]
	mov r0, #128
	lsl r0, r0, #10
	str r0, [r5, #16]
	b _08029E42
_08029DEC:
	.4byte gUnknown_03006A30
_08029DF0:
	mov r0, #15
	bl sub_08012494
	add r4, r0, #0
	cmp r4, #0
	beq _08029E14
	ldrh r0, [r5, #50]
	strh r0, [r4, #50]
	ldrh r0, [r5, #54]
	strh r0, [r4, #54]
	bl 0x08003170
	strb r0, [r4, #23]
	str r5, [r4, #84]
	add r1, r5, #0
	add r1, r1, #113
	mov r0, #1
	strb r0, [r1]
_08029E14:
	add r0, r5, #0
	bl sub_0802A0A8
	b _08029E42
_08029E1C:
	mov r0, #15
	bl sub_08012494
	add r4, r0, #0
	cmp r4, #0
	beq _08029E3C
	bl 0x08003170
	strb r0, [r4, #23]
	ldrh r0, [r5, #50]
	strh r0, [r4, #50]
	ldrh r0, [r5, #54]
	strh r0, [r4, #54]
	mov r0, #1
	strb r0, [r4, #11]
	str r5, [r4, #84]
_08029E3C:
	add r0, r5, #0
	bl sub_0802A0A8
_08029E42:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08029C88

	THUMB_FUNC_START sub_08029E48
sub_08029E48: @ 0x08029E48
	push {r4,r5,lr}
	add r5, r0, #0
	bl 0x08003828
	add r0, r5, #0
	bl 0x08002E64
	mov r1, #128
	lsl r1, r1, #6
	add r0, r5, #0
	bl 0x08003594
	cmp r0, #0
	bne _08029EDA
	ldrb r0, [r5, #10]
	cmp r0, #3
	bhi _08029E70
	mov r0, #167
	bl 0x08003DFC
_08029E70:
	ldrb r0, [r5, #23]
	sub r0, r0, #1
	strb r0, [r5, #23]
	lsl r0, r0, #24
	cmp r0, #0
	beq _08029ED4
	ldrb r0, [r5, #10]
	cmp r0, #4
	bne _08029E88
	mov r0, #49
	bl 0x08003DFC
_08029E88:
	mov r0, #128
	lsl r0, r0, #10
	str r0, [r5, #16]
	add r0, r5, #0
	add r0, r0, #112
	ldrb r0, [r0]
	cmp r0, #0
	bne _08029EA2
	bl 0x0800099C
	mov r1, #31
	and r0, r0, r1
	b _08029EBE
_08029EA2:
	ldr r4, _08029ED0  @ =gUnknown_03006A30
	bl 0x08003170
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #4
	add r4, r4, #40
	add r1, r1, r4
	ldr r1, [r1]
	add r0, r5, #0
	bl 0x08003F4C
_08029EBE:
	add r1, r5, #0
	add r1, r1, #43
	strb r0, [r1]
	ldrh r1, [r5, #50]
	ldrh r2, [r5, #54]
	add r0, r5, #0
	bl sub_0802A134
	b _08029EDA
_08029ED0:
	.4byte gUnknown_03006A30
_08029ED4:
	add r0, r5, #0
	bl sub_0802A0A8
_08029EDA:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08029E48

	THUMB_FUNC_START sub_08029EE0
sub_08029EE0: @ 0x08029EE0
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #10]
	cmp r0, #4
	bne _08029EF0
	mov r0, #6
	strb r0, [r4, #20]
	b _08029F98
_08029EF0:
	ldrb r2, [r4, #28]
	lsl r1, r2, #30
	lsr r1, r1, #30
	mov r0, #1
	eor r1, r1, r0
	mov r3, #4
	neg r3, r3
	add r0, r3, #0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #28]
	add r2, r4, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r0, #127
	and r0, r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #24]
	cmp r0, #0
	beq _08029F88
	ldr r0, [r4, #116]
	sub r0, r0, #1
	str r0, [r4, #116]
	mov r1, #1
	neg r1, r1
	cmp r0, r1
	bne _08029F98
	mov r0, #5
	str r0, [r4, #116]
	ldrb r0, [r4, #23]
	cmp r0, #0
	beq _08029F64
	mov r0, #15
	bl sub_08012494
	add r1, r0, #0
	cmp r1, #0
	beq _08029F5C
	ldrh r0, [r4, #50]
	strh r0, [r1, #50]
	ldrh r0, [r4, #54]
	strh r0, [r1, #54]
	ldrh r0, [r4, #58]
	strh r0, [r1, #58]
	ldrb r0, [r4, #10]
	strb r0, [r1, #10]
	mov r0, #3
	strb r0, [r1, #11]
	str r4, [r1, #84]
	ldrb r0, [r4, #23]
	ldrb r2, [r4, #24]
	cmp r0, r2
	bne _08029F5C
	str r1, [r4, #88]
_08029F5C:
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	b _08029F98
_08029F64:
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	ldr r1, _08029F84  @ =gUnknown_0813D44A
	ldrb r0, [r4, #10]
	sub r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	str r0, [r4, #116]
	ldrb r1, [r4, #28]
	add r0, r3, #0
	and r0, r0, r1
	strb r0, [r4, #28]
	b _08029F98
	.byte 0x00
	.byte 0x00
_08029F84:
	.4byte gUnknown_0813D44A
_08029F88:
	bl 0x0800099C
	mov r1, #7
	and r0, r0, r1
	add r0, r0, #1
	strb r0, [r4, #24]
	mov r0, #5
	str r0, [r4, #116]
_08029F98:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08029EE0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08029FA0
sub_08029FA0: @ 0x08029FA0
	push {r4,lr}
	add r4, r0, #0
	ldr r0, [r4, #88]
	ldrh r1, [r0, #50]
	strh r1, [r4, #50]
	ldrh r1, [r0, #54]
	strh r1, [r4, #54]
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #0
	bne _08029FC6
	str r0, [r4, #116]
	add r1, r4, #0
	add r1, r1, #69
	mov r0, #0
	strb r0, [r1]
	mov r0, #163
	bl 0x08003DFC
_08029FC6:
	ldr r0, [r4, #116]
	sub r0, r0, #1
	str r0, [r4, #116]
	mov r1, #1
	neg r1, r1
	cmp r0, r1
	bne _0802A00C
	ldrb r2, [r4, #28]
	lsl r1, r2, #30
	lsr r1, r1, #30
	mov r0, #1
	eor r1, r1, r0
	sub r0, r0, #5
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #28]
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
	add r0, r4, #0
	bl sub_0802A028
	mov r1, #50
	ldrsh r0, [r4, r1]
	mov r2, #54
	ldrsh r1, [r4, r2]
	mov r3, #252
	lsl r3, r3, #1
	add r2, r3, #0
	bl 0x08003F54
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
_0802A00C:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08029FA0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802A014
sub_0802A014: @ 0x0802A014
	push {r4,lr}
	add r4, r0, #0
	bl sub_08043F20
	mov r0, #5
	strb r0, [r4, #10]
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802A014

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802A028
sub_0802A028: @ 0x0802A028
	push {r4,lr}
	add r4, r0, #0
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802A060
	ldrb r0, [r4, #10]
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _0802A060
	ldr r0, _0802A098  @ =0x06013000
	ldr r3, _0802A09C  @ =gUnknown_0813D294
	ldrb r2, [r4, #10]
	sub r2, r2, #1
	lsl r1, r2, #2
	add r1, r1, r3
	ldr r3, _0802A0A0  @ =0x03000030
	ldr r1, [r1]
	ldr r3, [r3]
	add r1, r1, r3
	ldr r3, _0802A0A4  @ =gUnknown_0813D29C
	lsl r2, r2, #1
	add r2, r2, r3
	ldrh r2, [r2]
	bl 0x080009F4
_0802A060:
	mov r0, #192
	lsl r0, r0, #10
	str r0, [r4, #16]
	mov r2, #0
	mov r0, #1
	strb r0, [r4, #20]
	mov r0, #90
	strb r0, [r4, #23]
	add r1, r4, #0
	add r1, r1, #120
	mov r0, #120
	strb r0, [r1]
	sub r1, r1, #74
	mov r0, #2
	strb r0, [r1]
	ldrb r1, [r4, #28]
	sub r0, r0, #51
	and r0, r0, r1
	mov r1, #16
	orr r0, r0, r1
	strb r0, [r4, #28]
	add r0, r4, #0
	add r0, r0, #122
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802A098:
	.4byte 0x06013000
_0802A09C:
	.4byte gUnknown_0813D294
_0802A0A0:
	.4byte 0x03000030
_0802A0A4:
	.4byte gUnknown_0813D29C
	THUMB_FUNC_END sub_0802A028

	THUMB_FUNC_START sub_0802A0A8
sub_0802A0A8: @ 0x0802A0A8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r4, r0, #0
	add r1, r4, #0
	add r1, r1, #112
	ldrb r0, [r1]
	cmp r0, #2
	beq _0802A0D2
	add r0, r4, #0
	add r0, r0, #113
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802A0D2
	mov r0, #2
	strb r0, [r1]
	add r6, r4, #0
	add r6, r6, #43
	add r7, r4, #0
	add r7, r7, #114
	b _0802A10C
_0802A0D2:
	add r6, r4, #0
	add r6, r6, #43
	add r7, r4, #0
	add r7, r7, #114
	ldr r0, _0802A130  @ =gUnknown_084276C8
	mov r8, r0
	add r5, r4, #0
	add r5, r5, #112
_0802A0E2:
	ldrb r0, [r4, #10]
	sub r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r8
	ldr r0, [r0]
	bl 0x08003184
	lsl r0, r0, #24
	lsr r1, r0, #24
	add r2, r1, #0
	ldrb r0, [r5]
	cmp r0, r1
	beq _0802A0E2
	cmp r1, #2
	bne _0802A10A
	add r0, r4, #0
	add r0, r0, #113
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802A0E2
_0802A10A:
	strb r2, [r5]
_0802A10C:
	mov r0, #30
	strb r0, [r4, #23]
	mov r1, #2
	strb r1, [r4, #24]
	mov r0, #8
	strb r0, [r6]
	mov r0, #128
	lsl r0, r0, #2
	str r0, [r4, #12]
	strb r1, [r4, #20]
	ldrh r0, [r4, #50]
	strh r0, [r7]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802A130:
	.4byte gUnknown_084276C8
	THUMB_FUNC_END sub_0802A0A8

	THUMB_FUNC_START sub_0802A134
sub_0802A134: @ 0x0802A134
	push {r4-r6,lr}
	add r6, r0, #0
	lsl r1, r1, #16
	lsr r5, r1, #16
	lsl r2, r2, #16
	lsr r4, r2, #16
	bl 0x0800099C
	mov r1, #1
	and r1, r1, r0
	cmp r1, #0
	bne _0802A162
	mov r0, #15
	bl sub_08012494
	add r1, r0, #0
	cmp r1, #0
	beq _0802A162
	strh r5, [r1, #50]
	strh r4, [r1, #54]
	mov r0, #2
	strb r0, [r1, #11]
	str r6, [r1, #84]
_0802A162:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802A134

	THUMB_FUNC_START sub_0802A168
sub_0802A168: @ 0x0802A168
	push {lr}
	add r2, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	cmp r1, #0
	bne _0802A178
	add r0, r0, #39
	strb r1, [r0]
_0802A178:
	ldr r0, _0802A18C  @ =gUnknown_0813D464
	ldrb r1, [r2, #20]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0
_0802A18C:
	.4byte gUnknown_0813D464
	THUMB_FUNC_END sub_0802A168

	THUMB_FUNC_START sub_0802A190
sub_0802A190: @ 0x0802A190
	push {lr}
	add r3, r0, #0
	ldrb r0, [r3, #20]
	add r0, r0, #1
	strb r0, [r3, #20]
	add r1, r3, #0
	add r1, r1, #60
	mov r0, #137
	strb r0, [r1]
	add r1, r1, #3
	mov r0, #57
	strb r0, [r1]
	add r1, r1, #29
	ldr r0, _0802A1E0  @ =0x000020AA
	strh r0, [r1]
	sub r1, r1, #28
	mov r0, #63
	strb r0, [r1]
	ldr r0, _0802A1E4  @ =gUnknown_0813D46C
	str r0, [r3, #72]
	ldrb r0, [r3, #11]
	cmp r0, #0
	bne _0802A1F6
	ldr r0, _0802A1E8  @ =gUnknown_0201F000
	add r1, r1, #18
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r2, _0802A1EC  @ =gUnknown_08137B10
	ldrb r0, [r3, #10]
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r1, [r1]
	ldr r0, [r0]
	and r1, r1, r0
	cmp r1, #0
	beq _0802A1F0
	mov r0, #1
	strb r0, [r3, #11]
	b _0802A212
_0802A1E0:
	.4byte 0x000020AA
_0802A1E4:
	.4byte gUnknown_0813D46C
_0802A1E8:
	.4byte gUnknown_0201F000
_0802A1EC:
	.4byte gUnknown_08137B10
_0802A1F0:
	mov r0, #0
	strb r0, [r3, #11]
	b _0802A212
_0802A1F6:
	ldr r0, _0802A21C  @ =gUnknown_0201F000
	add r1, r3, #0
	add r1, r1, #82
	ldrb r2, [r1]
	lsl r2, r2, #2
	add r2, r2, r0
	ldr r1, _0802A220  @ =gUnknown_08137B10
	ldrb r0, [r3, #10]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r2]
	ldr r0, [r0]
	orr r1, r1, r0
	str r1, [r2]
_0802A212:
	add r0, r3, #0
	bl sub_0802A28C
	pop {r0}
	bx r0
_0802A21C:
	.4byte gUnknown_0201F000
_0802A220:
	.4byte gUnknown_08137B10
	THUMB_FUNC_END sub_0802A190

	THUMB_FUNC_START sub_0802A224
sub_0802A224: @ 0x0802A224
	push {r4,lr}
	add r4, r0, #0
	add r0, r0, #65
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0802A27C
	add r2, r4, #0
	add r2, r2, #100
	ldrb r0, [r2]
	cmp r0, #0
	bne _0802A27C
	mov r1, #1
	mov r0, #1
	strb r0, [r2]
	ldrb r0, [r4, #11]
	eor r0, r0, r1
	strb r0, [r4, #11]
	add r1, r4, #0
	add r1, r1, #61
	mov r0, #232
	strb r0, [r1]
	add r0, r4, #0
	bl sub_0802A28C
	ldr r0, _0802A284  @ =gUnknown_0201F000
	add r1, r4, #0
	add r1, r1, #82
	ldrb r2, [r1]
	lsl r2, r2, #2
	add r2, r2, r0
	ldr r1, _0802A288  @ =gUnknown_08137B10
	ldrb r0, [r4, #10]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r2]
	ldr r0, [r0]
	eor r1, r1, r0
	str r1, [r2]
	add r0, r4, #0
	mov r1, #23
	bl 0x08003E10
_0802A27C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802A284:
	.4byte gUnknown_0201F000
_0802A288:
	.4byte gUnknown_08137B10
	THUMB_FUNC_END sub_0802A224

	THUMB_FUNC_START sub_0802A28C
sub_0802A28C: @ 0x0802A28C
	push {r4,r5,lr}
	add r4, r0, #0
	ldrb r0, [r4, #11]
	cmp r0, #0
	beq _0802A2CC
	ldr r0, _0802A2C4  @ =0x0000014D
	mov r2, #50
	ldrsh r1, [r4, r2]
	ldr r3, _0802A2C8  @ =gUnknown_03000450
	ldrh r2, [r3, #24]
	sub r1, r1, r2
	asr r1, r1, #4
	mov r5, #54
	ldrsh r2, [r4, r5]
	ldrh r3, [r3, #26]
	sub r2, r2, r3
	asr r2, r2, #4
	lsl r2, r2, #6
	orr r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	add r2, r4, #0
	add r2, r2, #80
	ldrh r2, [r2]
	bl sub_08014658
	b _0802A2F8
	.byte 0x00
	.byte 0x00
_0802A2C4:
	.4byte 0x0000014D
_0802A2C8:
	.4byte gUnknown_03000450
_0802A2CC:
	mov r0, #166
	lsl r0, r0, #1
	mov r2, #50
	ldrsh r1, [r4, r2]
	ldr r3, _0802A300  @ =gUnknown_03000450
	ldrh r2, [r3, #24]
	sub r1, r1, r2
	asr r1, r1, #4
	mov r5, #54
	ldrsh r2, [r4, r5]
	ldrh r3, [r3, #26]
	sub r2, r2, r3
	asr r2, r2, #4
	lsl r2, r2, #6
	orr r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	add r2, r4, #0
	add r2, r2, #80
	ldrh r2, [r2]
	bl sub_08014658
_0802A2F8:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802A300:
	.4byte gUnknown_03000450
	THUMB_FUNC_END sub_0802A28C

	THUMB_FUNC_START sub_0802A304
sub_0802A304: @ 0x0802A304
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #24]
	cmp r0, #0
	beq _0802A324
	sub r0, r0, #1
	strb r0, [r4, #24]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0802A324
	add r0, r4, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r0, r4, #0
	bl 0x08003870
_0802A324:
	ldr r0, _0802A33C  @ =gUnknown_0813D474
	ldrb r1, [r4, #20]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802A33C:
	.4byte gUnknown_0813D474
	THUMB_FUNC_END sub_0802A304

	THUMB_FUNC_START sub_0802A340
sub_0802A340: @ 0x0802A340
	push {r4,lr}
	add r4, r0, #0
	ldrb r1, [r4, #11]
	mov r0, #127
	and r0, r0, r1
	cmp r0, #3
	bne _0802A35C
	mov r0, #128
	and r0, r0, r1
	ldr r1, _0802A3BC  @ =gUnknown_03006C80
	ldrb r1, [r1]
	sub r1, r1, #2
	orr r0, r0, r1
	strb r0, [r4, #11]
_0802A35C:
	mov r3, #1
	mov r0, #1
	strb r0, [r4, #20]
	ldrb r2, [r4, #28]
	mov r1, #4
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	orr r0, r0, r3
	strb r0, [r4, #28]
	add r2, r4, #0
	add r2, r2, #94
	ldrb r0, [r2]
	and r1, r1, r0
	strb r1, [r2]
	ldr r0, _0802A3C0  @ =gUnknown_0813D4CC
	str r0, [r4, #72]
	add r0, r4, #0
	bl 0x08008DD8
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
	ldrb r0, [r4, #11]
	lsr r0, r0, #7
	add r1, r4, #0
	add r1, r1, #124
	strh r0, [r1]
	ldrb r1, [r4, #11]
	mov r0, #3
	and r0, r0, r1
	strb r0, [r4, #11]
	ldr r1, _0802A3BC  @ =gUnknown_03006C80
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _0802A3C8
	ldr r0, _0802A3C4  @ =gUnknown_0813D480
	ldrb r1, [r4, #11]
	add r1, r1, #12
	lsl r1, r1, #1
	add r1, r1, r0
	ldrh r1, [r1]
	add r0, r4, #0
	bl sub_0802C070
	b _0802A3E0
	.byte 0x00
	.byte 0x00
_0802A3BC:
	.4byte gUnknown_03006C80
_0802A3C0:
	.4byte gUnknown_0813D4CC
_0802A3C4:
	.4byte gUnknown_0813D480
_0802A3C8:
	ldr r2, _0802A3E8  @ =gUnknown_0813D480
	ldrb r1, [r1, #1]
	lsl r0, r1, #1
	add r0, r0, r1
	ldrb r1, [r4, #11]
	add r0, r0, r1
	lsl r0, r0, #1
	add r0, r0, r2
	ldrh r1, [r0]
	add r0, r4, #0
	bl sub_0802C070
_0802A3E0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802A3E8:
	.4byte gUnknown_0813D480
	THUMB_FUNC_END sub_0802A340

	THUMB_FUNC_START sub_0802A3EC
sub_0802A3EC: @ 0x0802A3EC
	push {r4-r6,lr}
	add r4, r0, #0
	bl sub_0802A4EC
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldrb r2, [r4, #11]
	add r0, r2, #2
	cmp r5, r0
	blt _0802A448
	ldr r0, _0802A440  @ =gUnknown_0201F000
	add r1, r4, #0
	add r1, r1, #82
	ldrb r2, [r1]
	lsl r2, r2, #2
	add r2, r2, r0
	ldr r1, _0802A444  @ =gUnknown_08137B10
	ldrb r0, [r4, #10]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r2]
	ldr r0, [r0]
	orr r1, r1, r0
	str r1, [r2]
	mov r1, #0
	mov r0, #2
	strb r0, [r4, #20]
	strb r1, [r4, #24]
	strh r1, [r4, #58]
	add r1, r4, #0
	add r1, r1, #42
	mov r0, #4
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #4
	bl 0x08003870
	mov r0, #113
	bl 0x08003DFC
	b _0802A48A
	.byte 0x00
	.byte 0x00
_0802A440:
	.4byte gUnknown_0201F000
_0802A444:
	.4byte gUnknown_08137B10
_0802A448:
	add r0, r4, #0
	add r0, r0, #42
	ldrb r1, [r0]
	add r6, r0, #0
	cmp r5, r1
	bls _0802A47C
	add r0, r2, #1
	cmp r0, r5
	bne _0802A46C
	mov r0, #4
	strb r0, [r4, #24]
	add r1, r5, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	add r0, r4, #0
	bl 0x08003870
	b _0802A474
_0802A46C:
	add r0, r4, #0
	add r1, r5, #0
	bl 0x08003870
_0802A474:
	mov r0, #18
	bl 0x08003DFC
	b _0802A488
_0802A47C:
	cmp r5, r1
	bcs _0802A488
	add r0, r4, #0
	add r1, r5, #0
	bl 0x08003870
_0802A488:
	strb r5, [r6]
_0802A48A:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802A3EC

	THUMB_FUNC_START sub_0802A490
sub_0802A490: @ 0x0802A490
	push {r4,lr}
	add r4, r0, #0
	add r0, r0, #124
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802A4DC
	add r0, r4, #0
	bl sub_0802A4EC
	lsl r0, r0, #24
	lsr r1, r0, #24
	ldrb r0, [r4, #11]
	add r0, r0, #2
	cmp r1, r0
	bge _0802A4DC
	mov r0, #1
	strb r0, [r4, #20]
	add r3, r4, #0
	add r3, r3, #42
	strb r1, [r3]
	ldr r0, _0802A4E4  @ =gUnknown_0201F000
	add r1, r4, #0
	add r1, r1, #82
	ldrb r2, [r1]
	lsl r2, r2, #2
	add r2, r2, r0
	ldr r1, _0802A4E8  @ =gUnknown_08137B10
	ldrb r0, [r4, #10]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r2]
	ldr r0, [r0]
	eor r1, r1, r0
	str r1, [r2]
	ldrb r1, [r3]
	add r0, r4, #0
	bl 0x08003870
_0802A4DC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802A4E4:
	.4byte gUnknown_0201F000
_0802A4E8:
	.4byte gUnknown_08137B10
	THUMB_FUNC_END sub_0802A490

	THUMB_FUNC_START sub_0802A4EC
sub_0802A4EC: @ 0x0802A4EC
	push {r4-r6,lr}
	add r5, r0, #0
	bl sub_08000580
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r0, r4, #0
	bl 0x08000A40
	lsl r0, r0, #24
	lsr r3, r0, #24
	mov r0, #1
	and r0, r0, r4
	cmp r0, #0
	beq _0802A55A
	ldr r2, _0802A52C  @ =gUnknown_03006A30
	ldr r1, _0802A530  @ =gUnknown_0813D49E
	add r0, r5, #0
	add r0, r0, #42
	ldrb r0, [r0]
	add r0, r0, r1
	ldrb r0, [r0]
	add r1, r2, #0
	add r1, r1, #63
	strb r0, [r1]
	ldrh r1, [r2, #54]
	mov r0, #144
	and r0, r0, r1
	cmp r0, #0
	beq _0802A534
	sub r0, r3, #1
	b _0802A556
_0802A52C:
	.4byte gUnknown_03006A30
_0802A530:
	.4byte gUnknown_0813D49E
_0802A534:
	ldr r0, [r2, #40]
	ldr r0, [r0, #108]
	cmp r0, #0
	beq _0802A55A
	ldr r1, [r0, #88]
	ldrb r0, [r1, #8]
	cmp r0, #1
	bne _0802A55A
	ldr r0, _0802A588  @ =gUnknown_08137B10
	ldrb r1, [r1, #10]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r0, [r1]
	and r0, r0, r4
	cmp r0, #0
	bne _0802A55A
	add r0, r3, #1
_0802A556:
	lsl r0, r0, #24
	lsr r3, r0, #24
_0802A55A:
	mov r0, #2
	and r0, r0, r4
	cmp r0, #0
	beq _0802A5BE
	ldr r2, _0802A58C  @ =gUnknown_03006A30
	ldr r1, _0802A590  @ =gUnknown_0813D49E
	add r0, r5, #0
	add r0, r0, #42
	ldrb r0, [r0]
	add r0, r0, r1
	ldrb r0, [r0]
	add r1, r2, #0
	add r1, r1, #207
	strb r0, [r1]
	add r0, r2, #0
	add r0, r0, #198
	ldrh r1, [r0]
	mov r0, #144
	and r0, r0, r1
	cmp r0, #0
	beq _0802A594
	sub r0, r3, #1
	b _0802A5BA
_0802A588:
	.4byte gUnknown_08137B10
_0802A58C:
	.4byte gUnknown_03006A30
_0802A590:
	.4byte gUnknown_0813D49E
_0802A594:
	add r0, r2, #0
	add r0, r0, #184
	ldr r0, [r0]
	ldr r0, [r0, #108]
	cmp r0, #0
	beq _0802A5BE
	ldr r1, [r0, #88]
	ldrb r0, [r1, #8]
	cmp r0, #1
	bne _0802A5BE
	ldr r0, _0802A5F0  @ =gUnknown_08137B10
	ldrb r1, [r1, #10]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r0, [r1]
	and r0, r0, r4
	cmp r0, #0
	bne _0802A5BE
	add r0, r3, #1
_0802A5BA:
	lsl r0, r0, #24
	lsr r3, r0, #24
_0802A5BE:
	mov r0, #4
	and r0, r0, r4
	cmp r0, #0
	beq _0802A62C
	ldr r2, _0802A5F4  @ =gUnknown_03006A30
	ldr r1, _0802A5F8  @ =gUnknown_0813D49E
	add r0, r5, #0
	add r0, r0, #42
	ldrb r0, [r0]
	add r0, r0, r1
	ldrb r0, [r0]
	ldr r6, _0802A5FC  @ =0x0000015F
	add r1, r2, r6
	strb r0, [r1]
	mov r1, #171
	lsl r1, r1, #1
	add r0, r2, r1
	ldrh r1, [r0]
	mov r0, #144
	and r0, r0, r1
	cmp r0, #0
	beq _0802A600
	sub r0, r3, #1
	b _0802A628
	.byte 0x00
	.byte 0x00
_0802A5F0:
	.4byte gUnknown_08137B10
_0802A5F4:
	.4byte gUnknown_03006A30
_0802A5F8:
	.4byte gUnknown_0813D49E
_0802A5FC:
	.4byte 0x0000015F
_0802A600:
	mov r6, #164
	lsl r6, r6, #1
	add r0, r2, r6
	ldr r0, [r0]
	ldr r0, [r0, #108]
	cmp r0, #0
	beq _0802A62C
	ldr r1, [r0, #88]
	ldrb r0, [r1, #8]
	cmp r0, #1
	bne _0802A62C
	ldr r0, _0802A65C  @ =gUnknown_08137B10
	ldrb r1, [r1, #10]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r0, [r1]
	and r0, r0, r4
	cmp r0, #0
	bne _0802A62C
	add r0, r3, #1
_0802A628:
	lsl r0, r0, #24
	lsr r3, r0, #24
_0802A62C:
	mov r0, #8
	and r0, r0, r4
	cmp r0, #0
	beq _0802A698
	ldr r2, _0802A660  @ =gUnknown_03006A30
	ldr r1, _0802A664  @ =gUnknown_0813D49E
	add r0, r5, #0
	add r0, r0, #42
	ldrb r0, [r0]
	add r0, r0, r1
	ldrb r0, [r0]
	ldr r5, _0802A668  @ =0x000001EF
	add r1, r2, r5
	strb r0, [r1]
	mov r6, #243
	lsl r6, r6, #1
	add r0, r2, r6
	ldrh r1, [r0]
	mov r0, #144
	and r0, r0, r1
	cmp r0, #0
	beq _0802A66C
	sub r0, r3, #1
	b _0802A694
_0802A65C:
	.4byte gUnknown_08137B10
_0802A660:
	.4byte gUnknown_03006A30
_0802A664:
	.4byte gUnknown_0813D49E
_0802A668:
	.4byte 0x000001EF
_0802A66C:
	mov r1, #236
	lsl r1, r1, #1
	add r0, r2, r1
	ldr r0, [r0]
	ldr r0, [r0, #108]
	cmp r0, #0
	beq _0802A698
	ldr r1, [r0, #88]
	ldrb r0, [r1, #8]
	cmp r0, #1
	bne _0802A698
	ldr r0, _0802A6A0  @ =gUnknown_08137B10
	ldrb r1, [r1, #10]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r0, [r1]
	and r0, r0, r4
	cmp r0, #0
	bne _0802A698
	add r0, r3, #1
_0802A694:
	lsl r0, r0, #24
	lsr r3, r0, #24
_0802A698:
	add r0, r3, #0
	pop {r4-r6}
	pop {r1}
	bx r1
_0802A6A0:
	.4byte gUnknown_08137B10
	THUMB_FUNC_END sub_0802A4EC

	THUMB_FUNC_START sub_0802A6A4
sub_0802A6A4: @ 0x0802A6A4
	push {lr}
	ldr r2, _0802A6B8  @ =gUnknown_0813D4D4
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0802A6B8:
	.4byte gUnknown_0813D4D4
	THUMB_FUNC_END sub_0802A6A4

	THUMB_FUNC_START sub_0802A6BC
sub_0802A6BC: @ 0x0802A6BC
	push {r4-r6,lr}
	add r4, r0, #0
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	mov r0, #0
	strb r0, [r4, #11]
	add r2, r4, #0
	add r2, r2, #94
	ldrb r0, [r2]
	mov r1, #3
	orr r0, r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #10]
	cmp r0, #0
	bne _0802A6F4
	ldrb r0, [r4, #28]
	mov r1, #49
	neg r1, r1
	and r1, r1, r0
	mov r0, #32
	orr r1, r1, r0
	strb r1, [r4, #28]
	b _0802A6FC
_0802A6F4:
	ldrb r0, [r4, #28]
	mov r1, #48
	orr r0, r0, r1
	strb r0, [r4, #28]
_0802A6FC:
	mov r0, #50
	ldrsh r1, [r4, r0]
	ldr r2, _0802A79C  @ =gUnknown_03000450
	ldrh r0, [r2, #24]
	sub r1, r1, r0
	asr r1, r1, #4
	mov r3, #54
	ldrsh r0, [r4, r3]
	ldrh r2, [r2, #26]
	sub r0, r0, r2
	asr r0, r0, #4
	lsl r0, r0, #6
	orr r1, r1, r0
	lsl r1, r1, #16
	lsr r6, r1, #16
	ldrb r0, [r4, #10]
	add r0, r0, #1
	lsl r0, r0, #3
	ldrh r1, [r4, #50]
	add r0, r0, r1
	strh r0, [r4, #50]
	ldrb r0, [r4, #10]
	add r0, r0, #1
	lsl r0, r0, #3
	ldrh r3, [r4, #54]
	add r0, r0, r3
	strh r0, [r4, #54]
	add r3, r4, #0
	add r3, r3, #43
	ldrb r0, [r3]
	mov r1, #16
	eor r0, r0, r1
	strb r0, [r3]
	ldr r1, _0802A7A0  @ =gUnknown_0813D4EE
	ldrb r0, [r4, #10]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	str r0, [r4, #12]
	ldr r2, _0802A7A4  @ =gUnknown_0813D4F4
	ldrb r0, [r4, #10]
	lsl r0, r0, #3
	ldrb r1, [r3]
	lsr r1, r1, #2
	add r0, r0, r1
	lsl r0, r0, #1
	add r0, r0, r2
	ldrh r0, [r0]
	ldrh r1, [r4, #50]
	add r0, r0, r1
	add r1, r4, #0
	add r1, r1, #104
	strh r0, [r1]
	ldrb r0, [r4, #10]
	lsl r0, r0, #3
	ldrb r1, [r3]
	lsr r1, r1, #2
	add r0, r0, r1
	add r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r2
	ldrh r0, [r0]
	ldrh r3, [r4, #54]
	add r0, r0, r3
	add r2, r4, #0
	add r2, r2, #106
	strh r0, [r2]
	mov r0, #1
	strb r0, [r4, #20]
	mov r0, #16
	strb r0, [r4, #24]
	ldrb r0, [r4, #10]
	cmp r0, #0
	beq _0802A7A8
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
	b _0802A7B0
	.byte 0x00
	.byte 0x00
_0802A79C:
	.4byte gUnknown_03000450
_0802A7A0:
	.4byte gUnknown_0813D4EE
_0802A7A4:
	.4byte gUnknown_0813D4F4
_0802A7A8:
	add r0, r4, #0
	mov r1, #1
	bl 0x08003870
_0802A7B0:
	ldr r1, _0802A7E0  @ =gUnknown_0813D4E8
	ldrb r0, [r4, #10]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r1, [r0]
	add r0, r4, #0
	bl sub_0802C070
	add r5, r4, #0
	add r5, r5, #80
	ldrh r0, [r5]
	lsr r0, r0, #14
	cmp r0, #2
	bne _0802A7CE
	b _0802A9A2
_0802A7CE:
	ldrb r0, [r4, #10]
	cmp r0, #1
	beq _0802A824
	cmp r0, #1
	bgt _0802A7E4
	cmp r0, #0
	beq _0802A7EA
	b _0802AB6E
	.byte 0x00
	.byte 0x00
_0802A7E0:
	.4byte gUnknown_0813D4E8
_0802A7E4:
	cmp r0, #2
	beq _0802A8AC
	b _0802AB6E
_0802A7EA:
	ldrh r2, [r5]
	mov r0, #50
	add r1, r6, #0
	bl sub_08014658
	add r1, r6, #1
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #51
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #64
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #52
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #65
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #53
	bl sub_08014658
	b _0802AB6E
_0802A824:
	ldrh r2, [r5]
	mov r0, #54
	add r1, r6, #0
	bl sub_08014658
	add r1, r6, #1
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #55
	bl sub_08014658
	add r1, r6, #2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #56
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #64
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #57
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #65
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #58
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #66
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #59
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #128
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #60
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #129
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #61
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #130
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #62
	bl sub_08014658
	b _0802AB6E
_0802A8AC:
	ldrh r2, [r5]
	mov r0, #63
	add r1, r6, #0
	bl sub_08014658
	add r1, r6, #1
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #64
	bl sub_08014658
	add r1, r6, #2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #65
	bl sub_08014658
	add r1, r6, #3
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #66
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #64
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #67
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #65
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #68
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #66
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #69
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #67
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #70
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #128
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #71
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #129
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #72
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #130
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #73
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #131
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #74
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #192
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #75
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #193
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #76
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #194
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #77
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #195
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #78
	bl sub_08014658
	b _0802AB6E
_0802A9A2:
	ldrb r0, [r4, #10]
	cmp r0, #1
	beq _0802A9F2
	cmp r0, #1
	bgt _0802A9B2
	cmp r0, #0
	beq _0802A9B8
	b _0802AB6E
_0802A9B2:
	cmp r0, #2
	beq _0802AA7A
	b _0802AB6E
_0802A9B8:
	ldrh r2, [r5]
	mov r0, #91
	add r1, r6, #0
	bl sub_08014658
	add r1, r6, #1
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #92
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #64
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #93
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #65
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #94
	bl sub_08014658
	b _0802AB6E
_0802A9F2:
	ldrh r2, [r5]
	mov r0, #95
	add r1, r6, #0
	bl sub_08014658
	add r1, r6, #1
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #96
	bl sub_08014658
	add r1, r6, #2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #97
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #64
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #98
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #65
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #99
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #66
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #100
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #128
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #101
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #129
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #102
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #130
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #103
	bl sub_08014658
	b _0802AB6E
_0802AA7A:
	ldrh r2, [r5]
	mov r0, #104
	add r1, r6, #0
	bl sub_08014658
	add r1, r6, #1
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #105
	bl sub_08014658
	add r1, r6, #2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #106
	bl sub_08014658
	add r1, r6, #3
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #107
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #64
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #108
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #65
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #109
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #66
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #110
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #67
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #111
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #128
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #112
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #129
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #113
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #130
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #114
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #131
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #115
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #192
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #116
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #193
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #117
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #194
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #118
	bl sub_08014658
	add r1, r6, #0
	add r1, r1, #195
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r2, [r5]
	mov r0, #119
	bl sub_08014658
_0802AB6E:
	mov r0, #11
	bl 0x08003DFC
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802A6BC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802AB7C
sub_0802AB7C: @ 0x0802AB7C
	push {r4,lr}
	add r4, r0, #0
	bl sub_0803CC20
	ldr r0, [r4, #56]
	ldr r1, _0802ABD4  @ =0xFFFF8000
	add r0, r0, r1
	str r0, [r4, #56]
	ldrb r0, [r4, #24]
	sub r0, r0, #1
	strb r0, [r4, #24]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0802ABCC
	mov r0, #2
	strb r0, [r4, #20]
	add r0, r4, #0
	add r0, r0, #104
	ldrh r0, [r0]
	strh r0, [r4, #50]
	add r0, r4, #0
	add r0, r0, #106
	ldrh r0, [r0]
	strh r0, [r4, #54]
	ldr r0, _0802ABD8  @ =0x0000FFF0
	strh r0, [r4, #58]
	ldrb r1, [r4, #10]
	add r1, r1, #8
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r0, #15
	mov r2, #0
	bl sub_0804C8A8
	add r1, r0, #0
	cmp r1, #0
	beq _0802ABCC
	add r0, r4, #0
	bl sub_0803D3D0
_0802ABCC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802ABD4:
	.4byte 0xFFFF8000
_0802ABD8:
	.4byte 0x0000FFF0
	THUMB_FUNC_END sub_0802AB7C

	THUMB_FUNC_START sub_0802ABDC
sub_0802ABDC: @ 0x0802ABDC
	push {r4,lr}
	add r3, r0, #0
	ldrb r0, [r3, #11]
	cmp r0, #0
	beq _0802AC50
	ldrb r1, [r3, #23]
	mov r4, #1
	add r0, r4, #0
	and r0, r0, r1
	add r2, r1, #0
	cmp r0, #0
	beq _0802ABFA
	ldr r0, _0802AC58  @ =gUnknown_03006A30
	add r0, r0, #57
	strb r4, [r0]
_0802ABFA:
	mov r0, #2
	and r0, r0, r2
	cmp r0, #0
	beq _0802AC08
	ldr r0, _0802AC58  @ =gUnknown_03006A30
	add r0, r0, #201
	strb r4, [r0]
_0802AC08:
	mov r0, #4
	and r0, r0, r2
	cmp r0, #0
	beq _0802AC18
	ldr r0, _0802AC58  @ =gUnknown_03006A30
	ldr r2, _0802AC5C  @ =0x00000159
	add r0, r0, r2
	strb r4, [r0]
_0802AC18:
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _0802AC28
	ldr r0, _0802AC58  @ =gUnknown_03006A30
	ldr r1, _0802AC60  @ =0x000001E9
	add r0, r0, r1
	strb r4, [r0]
_0802AC28:
	mov r0, #3
	strb r0, [r3, #20]
	ldr r1, _0802AC64  @ =gUnknown_0813D524
	ldrb r0, [r3, #10]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	str r0, [r3, #12]
	add r2, r3, #0
	add r2, r2, #43
	ldrb r0, [r2]
	mov r1, #16
	eor r0, r0, r1
	strb r0, [r2]
	mov r0, #192
	lsl r0, r0, #8
	str r0, [r3, #16]
	mov r0, #12
	bl 0x08003DFC
_0802AC50:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802AC58:
	.4byte gUnknown_03006A30
_0802AC5C:
	.4byte 0x00000159
_0802AC60:
	.4byte 0x000001E9
_0802AC64:
	.4byte gUnknown_0813D524
	THUMB_FUNC_END sub_0802ABDC

	THUMB_FUNC_START sub_0802AC68
sub_0802AC68: @ 0x0802AC68
	push {r4,lr}
	add r4, r0, #0
	bl 0x08009664
	add r0, r4, #0
	bl 0x08008E50
	mov r1, #128
	lsl r1, r1, #5
	add r0, r4, #0
	bl 0x08003594
	cmp r0, #0
	bne _0802AC9E
	mov r0, #4
	strb r0, [r4, #20]
	ldrb r1, [r4, #28]
	sub r0, r0, #8
	and r0, r0, r1
	strb r0, [r4, #28]
	add r0, r4, #0
	bl sub_0802ACA4
	ldrb r1, [r4, #10]
	mov r0, #30
	bl sub_080161F8
_0802AC9E:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802AC68

	THUMB_FUNC_START sub_0802ACA4
sub_0802ACA4: @ 0x0802ACA4
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r6, r0, #0
	ldrb r0, [r6, #10]
	cmp r0, #1
	beq _0802ACF0
	cmp r0, #1
	bgt _0802ACBE
	cmp r0, #0
	beq _0802ACC4
	b _0802ADC8
_0802ACBE:
	cmp r0, #2
	beq _0802AD44
	b _0802ADC8
_0802ACC4:
	mov r0, #15
	mov r1, #14
	mov r2, #0
	bl sub_0804C8A8
	add r4, r0, #0
	cmp r4, #0
	beq _0802ACDC
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0803D3D0
_0802ACDC:
	mov r5, #3
	ldr r0, _0802ACEC  @ =gUnknown_0813D52A
	mov r8, r0
	add r0, r6, #0
	mov r1, #107
	bl 0x08003E10
	b _0802ADC8
_0802ACEC:
	.4byte gUnknown_0813D52A
_0802ACF0:
	mov r0, #15
	mov r1, #14
	mov r2, #0
	bl sub_0804C8A8
	add r4, r0, #0
	cmp r4, #0
	beq _0802AD0E
	mov r3, #128
	lsl r3, r3, #12
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_0803D4A4
_0802AD0E:
	mov r0, #15
	mov r1, #14
	mov r2, #0
	bl sub_0804C8A8
	add r4, r0, #0
	cmp r4, #0
	beq _0802AD2A
	ldr r3, _0802AD3C  @ =0xFFF80000
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_0803D4A4
_0802AD2A:
	mov r5, #4
	ldr r1, _0802AD40  @ =gUnknown_0813D532
	mov r8, r1
	add r0, r6, #0
	mov r1, #108
	bl 0x08003E10
	b _0802ADC8
	.byte 0x00
	.byte 0x00
_0802AD3C:
	.4byte 0xFFF80000
_0802AD40:
	.4byte gUnknown_0813D532
_0802AD44:
	mov r0, #15
	mov r1, #14
	mov r2, #0
	bl sub_0804C8A8
	add r4, r0, #0
	cmp r4, #0
	beq _0802AD60
	ldr r3, _0802AE30  @ =0xFFF00000
	add r0, r6, #0
	add r1, r4, #0
	add r2, r3, #0
	bl sub_0803D4A4
_0802AD60:
	mov r0, #15
	mov r1, #14
	mov r2, #0
	bl sub_0804C8A8
	add r4, r0, #0
	cmp r4, #0
	beq _0802AD7E
	ldr r2, _0802AE30  @ =0xFFF00000
	mov r3, #128
	lsl r3, r3, #13
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0803D4A4
_0802AD7E:
	mov r0, #15
	mov r1, #14
	mov r2, #0
	bl sub_0804C8A8
	add r4, r0, #0
	cmp r4, #0
	beq _0802AD9C
	mov r2, #128
	lsl r2, r2, #13
	ldr r3, _0802AE30  @ =0xFFF00000
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0803D4A4
_0802AD9C:
	mov r0, #15
	mov r1, #14
	mov r2, #0
	bl sub_0804C8A8
	add r4, r0, #0
	cmp r4, #0
	beq _0802ADBA
	mov r3, #128
	lsl r3, r3, #13
	add r0, r6, #0
	add r1, r4, #0
	add r2, r3, #0
	bl sub_0803D4A4
_0802ADBA:
	mov r5, #5
	ldr r0, _0802AE34  @ =gUnknown_0813D53C
	mov r8, r0
	add r0, r6, #0
	mov r1, #109
	bl 0x08003E10
_0802ADC8:
	lsl r0, r5, #16
	cmp r0, #0
	blt _0802AE22
	ldr r1, _0802AE38  @ =gUnknown_0813D548
	mov r9, r1
	mov r7, #31
_0802ADD4:
	bl 0x0800099C
	and r0, r0, r7
	lsl r0, r0, #1
	add r0, r0, r9
	ldrb r1, [r0]
	mov r0, #0
	mov r2, #1
	bl sub_0804C8A8
	add r4, r0, #0
	lsl r5, r5, #16
	cmp r4, #0
	beq _0802AE18
	bl 0x0800099C
	and r0, r0, r7
	mov r1, #128
	add r2, r4, #0
	add r2, r2, #43
	orr r0, r0, r1
	strb r0, [r2]
	asr r0, r5, #15
	add r0, r0, r8
	mov r2, #0
	ldrsb r2, [r0, r2]
	lsl r2, r2, #16
	mov r3, #1
	ldrsb r3, [r0, r3]
	lsl r3, r3, #16
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0803D4A4
_0802AE18:
	ldr r1, _0802AE3C  @ =0xFFFF0000
	add r0, r5, r1
	lsr r5, r0, #16
	cmp r0, #0
	bge _0802ADD4
_0802AE22:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802AE30:
	.4byte 0xFFF00000
_0802AE34:
	.4byte gUnknown_0813D53C
_0802AE38:
	.4byte gUnknown_0813D548
_0802AE3C:
	.4byte 0xFFFF0000
	THUMB_FUNC_END sub_0802ACA4

	THUMB_FUNC_START sub_0802AE40
sub_0802AE40: @ 0x0802AE40
	push {lr}
	ldr r2, _0802AE54  @ =gUnknown_084276EC
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0802AE54:
	.4byte gUnknown_084276EC
	THUMB_FUNC_END sub_0802AE40

	THUMB_FUNC_START sub_0802AE58
sub_0802AE58: @ 0x0802AE58
	push {r4,r5,lr}
	add r5, r0, #0
	ldrb r0, [r5, #20]
	add r0, r0, #1
	mov r2, #0
	strb r0, [r5, #20]
	ldrb r1, [r5, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r5, #28]
	add r0, r5, #0
	add r0, r0, #46
	strb r2, [r0]
	ldr r0, _0802AED0  @ =gUnknown_084276E4
	str r0, [r5, #72]
	add r1, r5, #0
	add r1, r1, #64
	mov r0, #56
	strb r0, [r1]
	sub r1, r1, #1
	mov r0, #31
	strb r0, [r1]
	sub r1, r1, #3
	mov r0, #201
	strb r0, [r1]
	add r1, r1, #32
	mov r4, #0
	mov r0, #85
	strh r0, [r1]
	bl 0x0800099C
	mov r1, #7
	and r0, r0, r1
	mov r1, #240
	sub r1, r1, r0
	add r0, r5, #0
	add r0, r0, #70
	strb r1, [r0]
	mov r1, #50
	ldrsh r0, [r5, r1]
	str r0, [r5, #96]
	mov r1, #54
	ldrsh r0, [r5, r1]
	str r0, [r5, #100]
	ldrb r1, [r5, #11]
	lsl r0, r1, #2
	add r0, r0, r1
	add r0, r0, #10
	str r0, [r5, #104]
	strb r4, [r5, #11]
	ldrb r1, [r5, #10]
	add r0, r5, #0
	bl 0x08003870
	pop {r4,r5}
	pop {r0}
	bx r0
_0802AED0:
	.4byte gUnknown_084276E4
	THUMB_FUNC_END sub_0802AE58

	THUMB_FUNC_START sub_0802AED4
sub_0802AED4: @ 0x0802AED4
	push {r4,r5,lr}
	add r4, r0, #0
	add r0, r0, #65
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0802AF90
	mov r0, #30
	strb r0, [r4, #23]
	bl 0x0800099C
	ldr r2, [r4, #76]
	add r2, r2, #62
	ldr r3, _0802AF3C  @ =gUnknown_084276F4
	mov r1, #7
	and r1, r1, r0
	add r1, r1, r3
	ldrb r0, [r1]
	ldrb r1, [r2]
	add r0, r0, r1
	mov r1, #31
	and r0, r0, r1
	strb r0, [r2]
	bl 0x0800099C
	mov r1, #7
	and r0, r0, r1
	mov r1, #240
	sub r1, r1, r0
	add r0, r4, #0
	add r0, r0, #70
	strb r1, [r0]
	add r1, r4, #0
	add r1, r1, #61
	mov r0, #252
	strb r0, [r1]
	ldrb r1, [r4, #10]
	cmp r1, #1
	bne _0802AF8A
	ldr r0, _0802AF40  @ =gUnknown_03005AD8
	ldrb r0, [r0]
	cmp r0, #111
	bhi _0802AF8A
	strb r1, [r4, #11]
	ldr r2, [r4, #108]
	ldr r0, _0802AF44  @ =0x0000012B
	cmp r2, r0
	bhi _0802AF48
	mov r1, #1
	b _0802AF62
	.byte 0x00
	.byte 0x00
_0802AF3C:
	.4byte gUnknown_084276F4
_0802AF40:
	.4byte gUnknown_03005AD8
_0802AF44:
	.4byte 0x0000012B
_0802AF48:
	ldr r0, _0802AF54  @ =0x000001DF
	cmp r2, r0
	bhi _0802AF58
	mov r1, #2
	b _0802AF62
	.byte 0x00
	.byte 0x00
_0802AF54:
	.4byte 0x000001DF
_0802AF58:
	ldr r0, _0802B000  @ =0x00000383
	mov r1, #8
	cmp r2, r0
	bhi _0802AF62
	mov r1, #3
_0802AF62:
	mov r0, #0
	mov r2, #1
	bl sub_0804C8A8
	add r5, r0, #0
	cmp r5, #0
	beq _0802AF8A
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0803D3D0
	bl 0x0800099C
	mov r1, #31
	and r0, r0, r1
	mov r1, #128
	add r2, r5, #0
	add r2, r2, #43
	orr r0, r0, r1
	strb r0, [r2]
_0802AF8A:
	mov r0, #140
	bl 0x08003DFC
_0802AF90:
	ldrb r0, [r4, #10]
	cmp r0, #1
	bne _0802AFC8
	ldrb r0, [r4, #11]
	cmp r0, #0
	beq _0802AFC8
	ldrb r0, [r4, #24]
	sub r0, r0, #1
	strb r0, [r4, #24]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0802AFB2
	mov r0, #60
	strb r0, [r4, #24]
	ldr r0, [r4, #104]
	sub r0, r0, #1
	str r0, [r4, #104]
_0802AFB2:
	ldr r0, [r4, #108]
	add r0, r0, #1
	str r0, [r4, #108]
	ldr r0, [r4, #104]
	cmp r0, #0
	bne _0802AFC8
	strb r0, [r4, #10]
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
_0802AFC8:
	ldrb r0, [r4, #23]
	cmp r0, #0
	beq _0802B008
	sub r0, r0, #1
	strb r0, [r4, #23]
	ldr r0, _0802B004  @ =gUnknown_03000E20
	ldrh r1, [r0]
	mov r5, #3
	mov r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _0802B010
	bl 0x0800099C
	ldr r1, [r4, #96]
	and r0, r0, r5
	add r1, r1, r0
	sub r1, r1, #2
	strh r1, [r4, #50]
	bl 0x0800099C
	ldr r1, [r4, #100]
	and r0, r0, r5
	add r1, r1, r0
	sub r1, r1, #2
	strh r1, [r4, #54]
	b _0802B010
	.byte 0x00
	.byte 0x00
_0802B000:
	.4byte 0x00000383
_0802B004:
	.4byte gUnknown_03000E20
_0802B008:
	ldr r0, [r4, #96]
	strh r0, [r4, #50]
	ldr r0, [r4, #100]
	strh r0, [r4, #54]
_0802B010:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802AED4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802B018
sub_0802B018: @ 0x0802B018
	push {lr}
	ldr r2, _0802B02C  @ =gUnknown_0813D5C8
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0802B02C:
	.4byte gUnknown_0813D5C8
	THUMB_FUNC_END sub_0802B018

	THUMB_FUNC_START sub_0802B030
sub_0802B030: @ 0x0802B030
	push {r4,lr}
	add r4, r0, #0
	mov r3, #1
	mov r0, #1
	strb r0, [r4, #20]
	ldrb r2, [r4, #28]
	mov r1, #4
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	orr r0, r0, r3
	strb r0, [r4, #28]
	add r2, r4, #0
	add r2, r2, #94
	ldrb r0, [r2]
	and r1, r1, r0
	strb r1, [r2]
	ldrh r2, [r4, #50]
	mov r1, #252
	lsl r1, r1, #2
	add r0, r1, #0
	and r0, r0, r2
	add r0, r0, #8
	strh r0, [r4, #50]
	ldrh r0, [r4, #54]
	and r1, r1, r0
	add r1, r1, #8
	strh r1, [r4, #54]
	mov r0, #50
	ldrsh r1, [r4, r0]
	ldr r2, _0802B0A4  @ =gUnknown_03000450
	ldrh r0, [r2, #24]
	sub r1, r1, r0
	asr r1, r1, #4
	mov r3, #54
	ldrsh r0, [r4, r3]
	ldrh r2, [r2, #26]
	sub r0, r0, r2
	asr r0, r0, #4
	lsl r0, r0, #6
	orr r1, r1, r0
	add r2, r4, #0
	add r2, r2, #124
	strh r1, [r2]
	mov r0, #128
	lsl r0, r0, #7
	ldrh r1, [r2]
	sub r2, r2, #44
	ldrh r2, [r2]
	bl 0x08008F48
	ldrb r1, [r4, #10]
	add r0, r4, #0
	bl 0x08003870
	pop {r4}
	pop {r0}
	bx r0
_0802B0A4:
	.4byte gUnknown_03000450
	THUMB_FUNC_END sub_0802B030

	THUMB_FUNC_START sub_0802B0A8
sub_0802B0A8: @ 0x0802B0A8
	push {r4-r6,lr}
	add r4, r0, #0
	add r6, r4, #0
	add r6, r6, #124
	ldrh r0, [r6]
	add r5, r4, #0
	add r5, r5, #80
	ldrh r1, [r5]
	bl 0x0800932C
	lsl r0, r0, #16
	ldr r1, _0802B0F4  @ =0x40080000
	cmp r0, r1
	bne _0802B0EE
	mov r0, #128
	lsl r0, r0, #7
	ldrh r1, [r6]
	ldrh r2, [r5]
	bl 0x08008F48
	mov r1, #0
	mov r0, #2
	strb r0, [r4, #20]
	add r0, r4, #0
	add r0, r0, #120
	strb r1, [r0]
	add r0, r0, #2
	strb r1, [r0]
	add r1, r4, #0
	add r1, r1, #126
	mov r0, #60
	strh r0, [r1]
	mov r0, #152
	bl 0x08003DFC
_0802B0EE:
	pop {r4-r6}
	pop {r0}
	bx r0
_0802B0F4:
	.4byte 0x40080000
	THUMB_FUNC_END sub_0802B0A8

	THUMB_FUNC_START sub_0802B0F8
sub_0802B0F8: @ 0x0802B0F8
	push {r4,lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, r1, #126
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802B120
	sub r0, r0, #1
	strh r0, [r1]
	mov r1, #7
	and r0, r0, r1
	cmp r0, #0
	bne _0802B118
	add r0, r4, #0
	bl sub_0802B148
_0802B118:
	add r0, r4, #0
	bl 0x08003828
	b _0802B140
_0802B120:
	add r2, r4, #0
	add r2, r2, #120
	ldrb r0, [r2]
	cmp r0, #0
	beq _0802B134
	sub r0, r0, #1
	strb r0, [r2]
	mov r0, #32
	strh r0, [r1]
	b _0802B140
_0802B134:
	mov r0, #1
	strb r0, [r4, #20]
	ldrb r1, [r4, #10]
	add r0, r4, #0
	bl 0x08003870
_0802B140:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802B0F8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802B148
sub_0802B148: @ 0x0802B148
	push {r4,r5,lr}
	add r5, r0, #0
	add r0, r0, #120
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802B164
	ldr r4, _0802B160  @ =gUnknown_0813D5DC
	bl 0x0800099C
	mov r1, #15
	b _0802B16C
	.byte 0x00
	.byte 0x00
_0802B160:
	.4byte gUnknown_0813D5DC
_0802B164:
	ldr r4, _0802B194  @ =gUnknown_0813D5DC
	bl 0x0800099C
	mov r1, #31
_0802B16C:
	and r1, r1, r0
	add r1, r1, r4
	ldrb r1, [r1]
	cmp r1, #255
	bne _0802B198
	add r1, r5, #0
	add r1, r1, #122
	ldrb r0, [r1]
	cmp r0, #2
	bhi _0802B1F0
	add r0, r0, #1
	strb r0, [r1]
	add r2, r5, #0
	add r2, r2, #120
	ldrb r0, [r2]
	lsl r0, r0, #1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r2]
	b _0802B1F0
_0802B194:
	.4byte gUnknown_0813D5DC
_0802B198:
	mov r0, #0
	mov r2, #1
	bl sub_0804C8A8
	add r4, r0, #0
	cmp r4, #0
	beq _0802B1F0
	ldr r3, _0802B1F8  @ =gUnknown_0813D5D4
	ldrb r0, [r5, #10]
	lsl r0, r0, #1
	add r1, r0, r3
	mov r2, #0
	ldrsb r2, [r1, r2]
	lsl r2, r2, #16
	add r0, r0, #1
	add r0, r0, r3
	mov r3, #0
	ldrsb r3, [r0, r3]
	lsl r3, r3, #16
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0803D4A4
	bl 0x0800099C
	ldrb r2, [r5, #10]
	mov r1, #2
	eor r2, r2, r1
	ldr r3, _0802B1FC  @ =gUnknown_0813D5FC
	mov r1, #7
	and r1, r1, r0
	add r1, r1, r3
	lsl r2, r2, #3
	ldrb r1, [r1]
	add r2, r2, r1
	mov r0, #31
	and r2, r2, r0
	mov r1, #128
	neg r1, r1
	add r0, r1, #0
	add r1, r4, #0
	add r1, r1, #43
	orr r2, r2, r0
	strb r2, [r1]
_0802B1F0:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802B1F8:
	.4byte gUnknown_0813D5D4
_0802B1FC:
	.4byte gUnknown_0813D5FC
	THUMB_FUNC_END sub_0802B148

	THUMB_FUNC_START sub_0802B200
sub_0802B200: @ 0x0802B200
	push {lr}
	ldr r2, _0802B214  @ =gUnknown_0842770C
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0802B214:
	.4byte gUnknown_0842770C
	THUMB_FUNC_END sub_0802B200

	THUMB_FUNC_START sub_0802B218
sub_0802B218: @ 0x0802B218
	add r3, r0, #0
	ldrb r0, [r3, #20]
	add r0, r0, #1
	strb r0, [r3, #20]
	ldrb r1, [r3, #28]
	mov r2, #4
	neg r2, r2
	add r0, r2, #0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r3, #28]
	add r1, r3, #0
	add r1, r1, #46
	mov r0, #1
	strb r0, [r1]
	ldrb r1, [r3, #28]
	sub r0, r0, #50
	and r0, r0, r1
	mov r1, #16
	orr r0, r0, r1
	strb r0, [r3, #28]
	ldr r0, _0802B26C  @ =gUnknown_08427700
	str r0, [r3, #72]
	add r1, r3, #0
	add r1, r1, #64
	mov r0, #56
	strb r0, [r1]
	sub r1, r1, #1
	mov r0, #31
	strb r0, [r1]
	sub r1, r1, #3
	mov r0, #217
	strb r0, [r1]
	add r1, r1, #32
	mov r0, #85
	strh r0, [r1]
	ldrh r0, [r3, #54]
	sub r0, r0, #4
	strh r0, [r3, #54]
	strh r2, [r3, #58]
	bx lr
_0802B26C:
	.4byte gUnknown_08427700
	THUMB_FUNC_END sub_0802B218

	push {r4-r6,lr}
