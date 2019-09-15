go build -gcflags '-N -l' method.go
go tool objdump -s 'main.main' method
TEXT main.main(SB) /Users/didi/goLang/src/github.com/xiazemin/interface/reflect/method/method.go
  method.go:17          0x10785b0               65488b0c25a0080000      MOVQ GS:0x8a0, CX
  method.go:17          0x10785b9               488d4424d8              LEAQ -0x28(SP), AX
  method.go:17          0x10785be               483b4110                CMPQ 0x10(CX), AX
  method.go:17          0x10785c2               0f866a010000            JBE 0x1078732
  method.go:17          0x10785c8               4881eca8000000          SUBQ $0xa8, SP
  method.go:17          0x10785cf               4889ac24a0000000        MOVQ BP, 0xa0(SP)
  method.go:17          0x10785d7               488dac24a0000000        LEAQ 0xa0(SP), BP
  method.go:17          0x10785df               488d055abf0100          LEAQ 0x1bf5a(IP), AX
  method.go:18          0x10785e6               48890424                MOVQ AX, 0(SP)
  method.go:18          0x10785ea               e82165f9ff              CALL runtime.newobject(SB)
  method.go:18          0x10785ef               488b442408              MOVQ 0x8(SP), AX
  method.go:18          0x10785f4               4889442448              MOVQ AX, 0x48(SP)
  method.go:19          0x10785f9               8400                    TESTB AL, 0(AX)
  method.go:19          0x10785fb               48c70064000000          MOVQ $0x64, 0(AX)
  method.go:20          0x1078602               488b442448              MOVQ 0x48(SP), AX
  method.go:20          0x1078607               8400                    TESTB AL, 0(AX)
  method.go:20          0x1078609               48c74008c8000000        MOVQ $0xc8, 0x8(AX)
  method.go:21          0x1078611               488b442448              MOVQ 0x48(SP), AX
  method.go:21          0x1078616               8400                    TESTB AL, 0(AX)
  method.go:21          0x1078618               48c740102c010000        MOVQ $0x12c, 0x10(AX)
  method.go:23          0x1078620               488b442448              MOVQ 0x48(SP), AX
  method.go:23          0x1078625               4889442450              MOVQ AX, 0x50(SP)
  method.go:23          0x107862a               488d0dcf4f0100          LEAQ 0x14fcf(IP), CX
  method.go:23          0x1078631               48890c24                MOVQ CX, 0(SP)
  method.go:23          0x1078635               4889442408              MOVQ AX, 0x8(SP)
  method.go:23          0x107863a               e8316cffff              CALL reflect.ValueOf(SB)
  method.go:23          0x107863f               488b442410              MOVQ 0x10(SP), AX
  method.go:23          0x1078644               488b4c2418              MOVQ 0x18(SP), CX
  method.go:23          0x1078649               488b542420              MOVQ 0x20(SP), DX
  method.go:23          0x107864e               4889442470              MOVQ AX, 0x70(SP)
  method.go:23          0x1078653               48894c2478              MOVQ CX, 0x78(SP)
  method.go:23          0x1078658               4889942480000000        MOVQ DX, 0x80(SP)
  method.go:25          0x1078660               488d442448              LEAQ 0x48(SP), AX
  method.go:25          0x1078665               8400                    TESTB AL, 0(AX)
  method.go:25          0x1078667               eb00                    JMP 0x1078669
  method.go:25          0x1078669               4889442458              MOVQ AX, 0x58(SP)
  method.go:25          0x107866e               48c744246000000000      MOVQ $0x0, 0x60(SP)
  method.go:25          0x1078677               48c744246800000000      MOVQ $0x0, 0x68(SP)
  method.go:26          0x1078680               488b442470              MOVQ 0x70(SP), AX
  method.go:26          0x1078685               488b4c2478              MOVQ 0x78(SP), CX
  method.go:26          0x107868a               488b942480000000        MOVQ 0x80(SP), DX
  method.go:26          0x1078692               48890424                MOVQ AX, 0(SP)
  method.go:26          0x1078696               48894c2408              MOVQ CX, 0x8(SP)
  method.go:26          0x107869b               4889542410              MOVQ DX, 0x10(SP)
  method.go:26          0x10786a0               488d05b3a90200          LEAQ 0x2a9b3(IP), AX
  method.go:26          0x10786a7               4889442418              MOVQ AX, 0x18(SP)
  method.go:26          0x10786ac               48c744242003000000      MOVQ $0x3, 0x20(SP)
  method.go:26          0x10786b5               e8a642ffff              CALL reflect.Value.MethodByName(SB)
  method.go:26          0x10786ba               488b442428              MOVQ 0x28(SP), AX
  method.go:26          0x10786bf               488b4c2430              MOVQ 0x30(SP), CX
  method.go:26          0x10786c4               488b542438              MOVQ 0x38(SP), DX
  method.go:26          0x10786c9               4889842488000000        MOVQ AX, 0x88(SP)
  method.go:26          0x10786d1               48898c2490000000        MOVQ CX, 0x90(SP)
  method.go:26          0x10786d9               4889942498000000        MOVQ DX, 0x98(SP)
  method.go:26          0x10786e1               488b842488000000        MOVQ 0x88(SP), AX
  method.go:26          0x10786e9               488b8c2490000000        MOVQ 0x90(SP), CX
  method.go:26          0x10786f1               48890424                MOVQ AX, 0(SP)
  method.go:26          0x10786f5               48894c2408              MOVQ CX, 0x8(SP)
  method.go:26          0x10786fa               4889542410              MOVQ DX, 0x10(SP)
  method.go:26          0x10786ff               488b442468              MOVQ 0x68(SP), AX
  method.go:26          0x1078704               488b4c2460              MOVQ 0x60(SP), CX
  method.go:26          0x1078709               488b542458              MOVQ 0x58(SP), DX
  method.go:26          0x107870e               4889542418              MOVQ DX, 0x18(SP)
  method.go:26          0x1078713               48894c2420              MOVQ CX, 0x20(SP)
  method.go:26          0x1078718               4889442428              MOVQ AX, 0x28(SP)
  method.go:26          0x107871d               e84e05ffff              CALL reflect.Value.Call(SB)
  method.go:27          0x1078722               488bac24a0000000        MOVQ 0xa0(SP), BP
  method.go:27          0x107872a               4881c4a8000000          ADDQ $0xa8, SP
  method.go:27          0x1078731               c3                      RET
  method.go:17          0x1078732               e88939fdff              CALL runtime.morestack_noctxt(SB)
  method.go:17          0x1078737               e974feffff              JMP main.main(SB)
  :-1                   0x107873c               cc                      INT $0x3
  :-1                   0x107873d               cc                      INT $0x3
  :-1                   0x107873e               cc                      INT $0x3
  :-1                   0x107873f               cc                      INT $0x3