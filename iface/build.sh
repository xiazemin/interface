 go build -gcflags '-l -N' iface.go

 go tool objdump -s "main.main" iface
TEXT main.main(SB) /Users/didi/goLang/src/github.com/xiazemin/interface/iface/iface.go
  iface.go:23           0x104f3e0               65488b0c25a0080000      MOVQ GS:0x8a0, CX
  iface.go:23           0x104f3e9               483b6110                CMPQ 0x10(CX), SP
  iface.go:23           0x104f3ed               0f8687000000            JBE 0x104f47a
  iface.go:23           0x104f3f3               4883ec38                SUBQ $0x38, SP
  iface.go:23           0x104f3f7               48896c2430              MOVQ BP, 0x30(SP)
  iface.go:23           0x104f3fc               488d6c2430              LEAQ 0x30(SP), BP
  iface.go:23           0x104f401               488d0578ff0000          LEAQ 0xff78(IP), AX
  iface.go:24           0x104f408               48890424                MOVQ AX, 0(SP)
  iface.go:24           0x104f40c               e87fcefbff              CALL runtime.newobject(SB)
  iface.go:24           0x104f411               488b442408              MOVQ 0x8(SP), AX
  iface.go:24           0x104f416               4889442410              MOVQ AX, 0x10(SP)
  iface.go:25           0x104f41b               48c744242000000000      MOVQ $0x0, 0x20(SP)
  iface.go:25           0x104f424               48c744242800000000      MOVQ $0x0, 0x28(SP)
  iface.go:26           0x104f42d               488b442410              MOVQ 0x10(SP), AX
  iface.go:26           0x104f432               4889442418              MOVQ AX, 0x18(SP)
  iface.go:26           0x104f437               488d0da27c0500          LEAQ 0x57ca2(IP), CX
  iface.go:26           0x104f43e               48894c2420              MOVQ CX, 0x20(SP)
  iface.go:26           0x104f443               4889442428              MOVQ AX, 0x28(SP)
  iface.go:28           0x104f448               488b442420              MOVQ 0x20(SP), AX
  iface.go:28           0x104f44d               488b4020                MOVQ 0x20(AX), AX
  iface.go:28           0x104f451               488b4c2428              MOVQ 0x28(SP), CX
  iface.go:28           0x104f456               48890c24                MOVQ CX, 0(SP)
  iface.go:28           0x104f45a               ffd0                    CALL AX
  iface.go:29           0x104f45c               488b442420              MOVQ 0x20(SP), AX
  iface.go:29           0x104f461               488b4028                MOVQ 0x28(AX), AX
  iface.go:29           0x104f465               488b4c2428              MOVQ 0x28(SP), CX
  iface.go:29           0x104f46a               48890c24                MOVQ CX, 0(SP)
  iface.go:29           0x104f46e               ffd0                    CALL AX
  iface.go:30           0x104f470               488b6c2430              MOVQ 0x30(SP), BP
  iface.go:30           0x104f475               4883c438                ADDQ $0x38, SP
  iface.go:30           0x104f479               c3                      RET
  iface.go:23           0x104f47a               e8f182ffff              CALL runtime.morestack_noctxt(SB)
  iface.go:23           0x104f47f               e95cffffff              JMP main.main(SB)
  :-1                   0x104f484               cc                      INT $0x3
  :-1                   0x104f485               cc                      INT $0x3
  :-1                   0x104f486               cc                      INT $0x3
  :-1                   0x104f487               cc                      INT $0x3
  :-1                   0x104f488               cc                      INT $0x3
  :-1                   0x104f489               cc                      INT $0x3
  :-1                   0x104f48a               cc                      INT $0x3
  :-1                   0x104f48b               cc                      INT $0x3
  :-1                   0x104f48c               cc                      INT $0x3
  :-1                   0x104f48d               cc                      INT $0x3
  :-1                   0x104f48e               cc                      INT $0x3
  :-1                   0x104f48f               cc                      INT $0x3

(gdb) p i
$1 = {tab = 0x0, data = 0x0}

(gdb) p *a
$3 = {A = 0, B = 0}

(gdb) s
28              i.Add()
(gdb) p i
$4 = {tab = 0x10a70e0 <Struct1,main.I>, data = 0xc420074000}

(gdb) p *i.tab._type
$8 = {size = 8, ptrdata = 8, hash = 2419731170, tflag = 1 '\001', align = 8 '\b', fieldalign = 8 '\b', kind = 54 '6', alg = 0x10a7d10 <runtime.algarray+80>,
  gcdata = 0x1075f28 <runtime.gcbits.*> "\001\002\003\004\005\006\a\b\n\f\016\017\020\022\025\026\027\030\033\036\037\",8<BUXr\216\330\377", str = 14048,
  ptrToThis = 0}
(gdb) p *i.tab.inter
$9 = {typ = {size = 16, ptrdata = 16, hash = 3736260049, tflag = 7 '\a', align = 8 '\b', fieldalign = 8 '\b', kind = 20 '\024',
    alg = 0x10a7d40 <runtime.algarray+128>,
    gcdata = 0x1075f2a <runtime.gcbits.*+2> "\003\004\005\006\a\b\n\f\016\017\020\022\025\026\027\030\033\036\037\",8<BUXr\216\330\377", str = 4030,
    ptrToThis = 26464}, pkgpath = {bytes = 0x104f7d0 <type.*+720> ""}, mhdr = {array = 0x105dcc0 <type.*+59328>, len = 2, cap = 2}}
(gdb) p *i.tab.link
Cannot access memory at address 0x0
(gdb) p *i.data
Attempt to dereference a generic pointer.

(gdb) p *i.tab._type.alg
$10 = {hash = {void (void *, uintptr, uintptr *)} 0x10a7d10 <runtime.algarray+80>, equal = {void (void *, void *, bool *)} 0x10a7d10 <runtime.algarray+80>}

(gdb) p *i.tab.fun
$11 = 17101664








