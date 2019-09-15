go build -gcflags '-N -l' value.go
go tool objdump -s 'main.main' value
TEXT main.main(SB) /Users/didi/goLang/src/github.com/xiazemin/interface/reflect/value/value.go
  value.go:7            0x106e3c0               65488b0c25a0080000      MOVQ GS:0x8a0, CX
  value.go:7            0x106e3c9               488d4424c8              LEAQ -0x38(SP), AX
  value.go:7            0x106e3ce               483b4110                CMPQ 0x10(CX), AX
  value.go:7            0x106e3d2               0f86ea010000            JBE 0x106e5c2
  value.go:7            0x106e3d8               4881ecb8000000          SUBQ $0xb8, SP
  value.go:7            0x106e3df               4889ac24b0000000        MOVQ BP, 0xb0(SP)
  value.go:7            0x106e3e7               488dac24b0000000        LEAQ 0xb0(SP), BP
  value.go:7            0x106e3ef               488d05aadb0000          LEAQ 0xdbaa(IP), AX
  value.go:8            0x106e3f6               48890424                MOVQ AX, 0(SP)
  value.go:8            0x106e3fa               e8f100faff              CALL runtime.newobject(SB)
  value.go:8            0x106e3ff               488b442408              MOVQ 0x8(SP), AX
  value.go:8            0x106e404               4889442448              MOVQ AX, 0x48(SP)
  value.go:8            0x106e409               48c7000a000000          MOVQ $0xa, 0(AX)
  value.go:10           0x106e410               488b442448              MOVQ 0x48(SP), AX
  value.go:10           0x106e415               488b00                  MOVQ 0(AX), AX
  value.go:10           0x106e418               4889442430              MOVQ AX, 0x30(SP)
  value.go:10           0x106e41d               488d057cdb0000          LEAQ 0xdb7c(IP), AX
  value.go:10           0x106e424               48890424                MOVQ AX, 0(SP)
  value.go:10           0x106e428               488d442430              LEAQ 0x30(SP), AX
  value.go:10           0x106e42d               4889442408              MOVQ AX, 0x8(SP)
  value.go:10           0x106e432               e829ddf9ff              CALL runtime.convT2E64(SB)
  value.go:10           0x106e437               488b442418              MOVQ 0x18(SP), AX
  value.go:10           0x106e43c               488b4c2410              MOVQ 0x10(SP), CX
  value.go:10           0x106e441               48890c24                MOVQ CX, 0(SP)
  value.go:10           0x106e445               4889442408              MOVQ AX, 0x8(SP)
  value.go:10           0x106e44a               e82199ffff              CALL reflect.ValueOf(SB)
  value.go:10           0x106e44f               488b442410              MOVQ 0x10(SP), AX
  value.go:10           0x106e454               488b4c2418              MOVQ 0x18(SP), CX
  value.go:10           0x106e459               488b542420              MOVQ 0x20(SP), DX
  value.go:10           0x106e45e               4889842498000000        MOVQ AX, 0x98(SP)
  value.go:10           0x106e466               48898c24a0000000        MOVQ CX, 0xa0(SP)
  value.go:10           0x106e46e               48899424a8000000        MOVQ DX, 0xa8(SP)
  value.go:10           0x106e476               488b842498000000        MOVQ 0x98(SP), AX
  value.go:10           0x106e47e               488b8c24a0000000        MOVQ 0xa0(SP), CX
  value.go:10           0x106e486               48890424                MOVQ AX, 0(SP)
  value.go:10           0x106e48a               48894c2408              MOVQ CX, 0x8(SP)
  value.go:10           0x106e48f               4889542410              MOVQ DX, 0x10(SP)
  value.go:10           0x106e494               48c744241814000000      MOVQ $0x14, 0x18(SP)
  value.go:10           0x106e49d               e83e92ffff              CALL reflect.Value.SetInt(SB)
  value.go:12           0x106e4a2               488b442448              MOVQ 0x48(SP), AX
  value.go:12           0x106e4a7               4889442440              MOVQ AX, 0x40(SP)
  value.go:12           0x106e4ac               488d0d2d950000          LEAQ 0x952d(IP), CX
  value.go:12           0x106e4b3               48890c24                MOVQ CX, 0(SP)
  value.go:12           0x106e4b7               4889442408              MOVQ AX, 0x8(SP)
  value.go:12           0x106e4bc               e8af98ffff              CALL reflect.ValueOf(SB)
  value.go:12           0x106e4c1               488b442410              MOVQ 0x10(SP), AX
  value.go:12           0x106e4c6               488b4c2418              MOVQ 0x18(SP), CX
  value.go:12           0x106e4cb               488b542420              MOVQ 0x20(SP), DX
  value.go:12           0x106e4d0               4889842480000000        MOVQ AX, 0x80(SP)
  value.go:12           0x106e4d8               48898c2488000000        MOVQ CX, 0x88(SP)
  value.go:12           0x106e4e0               4889942490000000        MOVQ DX, 0x90(SP)
  value.go:12           0x106e4e8               488b842480000000        MOVQ 0x80(SP), AX
  value.go:12           0x106e4f0               488b8c2488000000        MOVQ 0x88(SP), CX
  value.go:12           0x106e4f8               48890424                MOVQ AX, 0(SP)
  value.go:12           0x106e4fc               48894c2408              MOVQ CX, 0x8(SP)
  value.go:12           0x106e501               4889542410              MOVQ DX, 0x10(SP)
  value.go:12           0x106e506               48c744241814000000      MOVQ $0x14, 0x18(SP)
  value.go:12           0x106e50f               e8cc91ffff              CALL reflect.Value.SetInt(SB)
  value.go:14           0x106e514               488b442448              MOVQ 0x48(SP), AX
  value.go:14           0x106e519               4889442438              MOVQ AX, 0x38(SP)
  value.go:14           0x106e51e               488d0dbb940000          LEAQ 0x94bb(IP), CX
  value.go:14           0x106e525               48890c24                MOVQ CX, 0(SP)
  value.go:14           0x106e529               4889442408              MOVQ AX, 0x8(SP)
  value.go:14           0x106e52e               e83d98ffff              CALL reflect.ValueOf(SB)
  value.go:14           0x106e533               488b442410              MOVQ 0x10(SP), AX
  value.go:14           0x106e538               488b4c2418              MOVQ 0x18(SP), CX
  value.go:14           0x106e53d               488b542420              MOVQ 0x20(SP), DX
  value.go:14           0x106e542               4889442468              MOVQ AX, 0x68(SP)
  value.go:14           0x106e547               48894c2470              MOVQ CX, 0x70(SP)
  value.go:14           0x106e54c               4889542478              MOVQ DX, 0x78(SP)
  value.go:14           0x106e551               488b442468              MOVQ 0x68(SP), AX
  value.go:14           0x106e556               488b4c2470              MOVQ 0x70(SP), CX
  value.go:14           0x106e55b               48890424                MOVQ AX, 0(SP)
  value.go:14           0x106e55f               48894c2408              MOVQ CX, 0x8(SP)
  value.go:14           0x106e564               4889542410              MOVQ DX, 0x10(SP)
  value.go:14           0x106e569               e83285ffff              CALL reflect.Value.Elem(SB)
  value.go:14           0x106e56e               488b442418              MOVQ 0x18(SP), AX
  value.go:14           0x106e573               488b4c2420              MOVQ 0x20(SP), CX
  value.go:14           0x106e578               488b542428              MOVQ 0x28(SP), DX
  value.go:14           0x106e57d               4889442450              MOVQ AX, 0x50(SP)
  value.go:14           0x106e582               48894c2458              MOVQ CX, 0x58(SP)
  value.go:14           0x106e587               4889542460              MOVQ DX, 0x60(SP)
  value.go:14           0x106e58c               488b442450              MOVQ 0x50(SP), AX
  value.go:14           0x106e591               488b4c2458              MOVQ 0x58(SP), CX
  value.go:14           0x106e596               48890424                MOVQ AX, 0(SP)
  value.go:14           0x106e59a               48894c2408              MOVQ CX, 0x8(SP)
  value.go:14           0x106e59f               4889542410              MOVQ DX, 0x10(SP)
  value.go:14           0x106e5a4               48c744241814000000      MOVQ $0x14, 0x18(SP)
  value.go:14           0x106e5ad               e82e91ffff              CALL reflect.Value.SetInt(SB)
  value.go:15           0x106e5b2               488bac24b0000000        MOVQ 0xb0(SP), BP
  value.go:15           0x106e5ba               4881c4b8000000          ADDQ $0xb8, SP
  value.go:15           0x106e5c1               c3                      RET
  value.go:7            0x106e5c2               e859d0fdff              CALL runtime.morestack_noctxt(SB)
  value.go:7            0x106e5c7               e9f4fdffff              JMP main.main(SB)
  :-1                   0x106e5cc               cc                      INT $0x3
  :-1                   0x106e5cd               cc                      INT $0x3
  :-1                   0x106e5ce               cc                      INT $0x3
  :-1                   0x106e5cf               cc                      INT $0x3