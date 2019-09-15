go build -gcflags '-N -l' field.go
go tool objdump -s 'main.main' field
TEXT main.main(SB) /Users/didi/goLang/src/github.com/xiazemin/interface/reflect/field/field.go
  field.go:14           0x1095690               65488b0c25a0080000              MOVQ GS:0x8a0, CX
  field.go:14           0x1095699               488d842478ffffff                LEAQ 0xffffff78(SP), AX
  field.go:14           0x10956a1               483b4110                        CMPQ 0x10(CX), AX
  field.go:14           0x10956a5               0f8614030000                    JBE 0x10959bf
  field.go:14           0x10956ab               4881ec08010000                  SUBQ $0x108, SP
  field.go:14           0x10956b2               4889ac2400010000                MOVQ BP, 0x100(SP)
  field.go:14           0x10956ba               488dac2400010000                LEAQ 0x100(SP), BP
  field.go:14           0x10956c2               488d0517f40100                  LEAQ 0x1f417(IP), AX
  field.go:15           0x10956c9               48890424                        MOVQ AX, 0(SP)
  field.go:15           0x10956cd               e8be97f7ff                      CALL runtime.newobject(SB)
  field.go:15           0x10956d2               488b442408                      MOVQ 0x8(SP), AX
  field.go:15           0x10956d7               4889442440                      MOVQ AX, 0x40(SP)
  field.go:17           0x10956dc               4889442450                      MOVQ AX, 0x50(SP)
  field.go:17           0x10956e1               488d0dd8b30000                  LEAQ 0xb3d8(IP), CX
  field.go:17           0x10956e8               48890c24                        MOVQ CX, 0(SP)
  field.go:17           0x10956ec               4889442408                      MOVQ AX, 0x8(SP)
  field.go:17           0x10956f1               e8aad6feff                      CALL reflect.ValueOf(SB)
  field.go:17           0x10956f6               488b442410                      MOVQ 0x10(SP), AX
  field.go:17           0x10956fb               488b4c2418                      MOVQ 0x18(SP), CX
  field.go:17           0x1095700               488b542420                      MOVQ 0x20(SP), DX
  field.go:17           0x1095705               48898424e8000000                MOVQ AX, 0xe8(SP)
  field.go:17           0x109570d               48898c24f0000000                MOVQ CX, 0xf0(SP)
  field.go:17           0x1095715               48899424f8000000                MOVQ DX, 0xf8(SP)
  field.go:17           0x109571d               488b8424e8000000                MOVQ 0xe8(SP), AX
  field.go:17           0x1095725               488b8c24f0000000                MOVQ 0xf0(SP), CX
  field.go:17           0x109572d               48890424                        MOVQ AX, 0(SP)
  field.go:17           0x1095731               48894c2408                      MOVQ CX, 0x8(SP)
  field.go:17           0x1095736               4889542410                      MOVQ DX, 0x10(SP)
  field.go:17           0x109573b               e820b0feff                      CALL reflect.Value.Elem(SB)
  field.go:17           0x1095740               488b442418                      MOVQ 0x18(SP), AX
  field.go:17           0x1095745               488b4c2420                      MOVQ 0x20(SP), CX
  field.go:17           0x109574a               488b542428                      MOVQ 0x28(SP), DX
  field.go:17           0x109574f               4889442470                      MOVQ AX, 0x70(SP)
  field.go:17           0x1095754               48894c2478                      MOVQ CX, 0x78(SP)
  field.go:17           0x1095759               4889942480000000                MOVQ DX, 0x80(SP)
  field.go:18           0x1095761               488b442470                      MOVQ 0x70(SP), AX
  field.go:18           0x1095766               488b4c2478                      MOVQ 0x78(SP), CX
  field.go:18           0x109576b               488b942480000000                MOVQ 0x80(SP), DX
  field.go:18           0x1095773               48890424                        MOVQ AX, 0(SP)
  field.go:18           0x1095777               48894c2408                      MOVQ CX, 0x8(SP)
  field.go:18           0x109577c               4889542410                      MOVQ DX, 0x10(SP)
  field.go:18           0x1095781               488d0598080300                  LEAQ 0x30898(IP), AX
  field.go:18           0x1095788               4889442418                      MOVQ AX, 0x18(SP)
  field.go:18           0x109578d               48c744242001000000              MOVQ $0x1, 0x20(SP)
  field.go:18           0x1095796               e885b5feff                      CALL reflect.Value.FieldByName(SB)
  field.go:18           0x109579b               488b442428                      MOVQ 0x28(SP), AX
  field.go:18           0x10957a0               488b4c2430                      MOVQ 0x30(SP), CX
  field.go:18           0x10957a5               488b542438                      MOVQ 0x38(SP), DX
  field.go:18           0x10957aa               48898424d0000000                MOVQ AX, 0xd0(SP)
  field.go:18           0x10957b2               48898c24d8000000                MOVQ CX, 0xd8(SP)
  field.go:18           0x10957ba               48899424e0000000                MOVQ DX, 0xe0(SP)
  field.go:18           0x10957c2               488b8424d0000000                MOVQ 0xd0(SP), AX
  field.go:18           0x10957ca               488b8c24d8000000                MOVQ 0xd8(SP), CX
  field.go:18           0x10957d2               48890424                        MOVQ AX, 0(SP)
  field.go:18           0x10957d6               48894c2408                      MOVQ CX, 0x8(SP)
  field.go:18           0x10957db               4889542410                      MOVQ DX, 0x10(SP)
  field.go:18           0x10957e0               48c744241864000000              MOVQ $0x64, 0x18(SP)
  field.go:18           0x10957e9               e802ccfeff                      CALL reflect.Value.SetInt(SB)
  field.go:19           0x10957ee               488b442470                      MOVQ 0x70(SP), AX
  field.go:19           0x10957f3               488b4c2478                      MOVQ 0x78(SP), CX
  field.go:19           0x10957f8               488b942480000000                MOVQ 0x80(SP), DX
  field.go:19           0x1095800               48890424                        MOVQ AX, 0(SP)
  field.go:19           0x1095804               48894c2408                      MOVQ CX, 0x8(SP)
  field.go:19           0x1095809               4889542410                      MOVQ DX, 0x10(SP)
  field.go:19           0x109580e               488d050c080300                  LEAQ 0x3080c(IP), AX
  field.go:19           0x1095815               4889442418                      MOVQ AX, 0x18(SP)
  field.go:19           0x109581a               48c744242001000000              MOVQ $0x1, 0x20(SP)
  field.go:19           0x1095823               e8f8b4feff                      CALL reflect.Value.FieldByName(SB)
  field.go:19           0x1095828               488b442428                      MOVQ 0x28(SP), AX
  field.go:19           0x109582d               488b4c2430                      MOVQ 0x30(SP), CX
  field.go:19           0x1095832               488b542438                      MOVQ 0x38(SP), DX
  field.go:19           0x1095837               48898424b8000000                MOVQ AX, 0xb8(SP)
  field.go:19           0x109583f               48898c24c0000000                MOVQ CX, 0xc0(SP)
  field.go:19           0x1095847               48899424c8000000                MOVQ DX, 0xc8(SP)
  field.go:19           0x109584f               488b8424b8000000                MOVQ 0xb8(SP), AX
  field.go:19           0x1095857               488b8c24c0000000                MOVQ 0xc0(SP), CX
  field.go:19           0x109585f               48890424                        MOVQ AX, 0(SP)
  field.go:19           0x1095863               48894c2408                      MOVQ CX, 0x8(SP)
  field.go:19           0x1095868               4889542410                      MOVQ DX, 0x10(SP)
  field.go:19           0x109586d               48c7442418c8000000              MOVQ $0xc8, 0x18(SP)
  field.go:19           0x1095876               e875cbfeff                      CALL reflect.Value.SetInt(SB)
  field.go:20           0x109587b               488b442470                      MOVQ 0x70(SP), AX
  field.go:20           0x1095880               488b4c2478                      MOVQ 0x78(SP), CX
  field.go:20           0x1095885               488b942480000000                MOVQ 0x80(SP), DX
  field.go:20           0x109588d               48890424                        MOVQ AX, 0(SP)
  field.go:20           0x1095891               48894c2408                      MOVQ CX, 0x8(SP)
  field.go:20           0x1095896               4889542410                      MOVQ DX, 0x10(SP)
  field.go:20           0x109589b               488d0580070300                  LEAQ 0x30780(IP), AX
  field.go:20           0x10958a2               4889442418                      MOVQ AX, 0x18(SP)
  field.go:20           0x10958a7               48c744242001000000              MOVQ $0x1, 0x20(SP)
  field.go:20           0x10958b0               e86bb4feff                      CALL reflect.Value.FieldByName(SB)
  field.go:20           0x10958b5               488b442428                      MOVQ 0x28(SP), AX
  field.go:20           0x10958ba               488b4c2430                      MOVQ 0x30(SP), CX
  field.go:20           0x10958bf               488b542438                      MOVQ 0x38(SP), DX
  field.go:20           0x10958c4               48898424a0000000                MOVQ AX, 0xa0(SP)
  field.go:20           0x10958cc               48898c24a8000000                MOVQ CX, 0xa8(SP)
  field.go:20           0x10958d4               48899424b0000000                MOVQ DX, 0xb0(SP)
  field.go:20           0x10958dc               488b8424a0000000                MOVQ 0xa0(SP), AX
  field.go:20           0x10958e4               488b8c24a8000000                MOVQ 0xa8(SP), CX
  field.go:20           0x10958ec               48890424                        MOVQ AX, 0(SP)
  field.go:20           0x10958f0               48894c2408                      MOVQ CX, 0x8(SP)
  field.go:20           0x10958f5               4889542410                      MOVQ DX, 0x10(SP)
  field.go:20           0x10958fa               48c74424182c010000              MOVQ $0x12c, 0x18(SP)
  field.go:20           0x1095903               e8e8cafeff                      CALL reflect.Value.SetInt(SB)
  field.go:22           0x1095908               488b442440                      MOVQ 0x40(SP), AX
  field.go:22           0x109590d               4889442448                      MOVQ AX, 0x48(SP)
  field.go:22           0x1095912               48c744246000000000              MOVQ $0x0, 0x60(SP)
  field.go:22           0x109591b               48c744246800000000              MOVQ $0x0, 0x68(SP)
  field.go:22           0x1095924               488d442460                      LEAQ 0x60(SP), AX
  field.go:22           0x1095929               4889442458                      MOVQ AX, 0x58(SP)
  field.go:22           0x109592e               8400                            TESTB AL, 0(AX)
  field.go:22           0x1095930               488b442448                      MOVQ 0x48(SP), AX
  field.go:22           0x1095935               488d0d84b10000                  LEAQ 0xb184(IP), CX
  field.go:22           0x109593c               48894c2460                      MOVQ CX, 0x60(SP)
  field.go:22           0x1095941               4889442468                      MOVQ AX, 0x68(SP)
  field.go:22           0x1095946               488b442458                      MOVQ 0x58(SP), AX
  field.go:22           0x109594b               8400                            TESTB AL, 0(AX)
  field.go:22           0x109594d               eb00                            JMP 0x109594f
  field.go:22           0x109594f               4889842488000000                MOVQ AX, 0x88(SP)
  field.go:22           0x1095957               48c784249000000001000000        MOVQ $0x1, 0x90(SP)
  field.go:22           0x1095963               48c784249800000001000000        MOVQ $0x1, 0x98(SP)
  field.go:22           0x109596f               488d05c7060300                  LEAQ 0x306c7(IP), AX
  field.go:22           0x1095976               48890424                        MOVQ AX, 0(SP)
  field.go:22           0x109597a               48c744240802000000              MOVQ $0x2, 0x8(SP)
  field.go:22           0x1095983               488b842498000000                MOVQ 0x98(SP), AX
  field.go:22           0x109598b               488b8c2490000000                MOVQ 0x90(SP), CX
  field.go:22           0x1095993               488b942488000000                MOVQ 0x88(SP), DX
  field.go:22           0x109599b               4889542410                      MOVQ DX, 0x10(SP)
  field.go:22           0x10959a0               48894c2418                      MOVQ CX, 0x18(SP)
  field.go:22           0x10959a5               4889442420                      MOVQ AX, 0x20(SP)
  field.go:22           0x10959aa               e81171ffff                      CALL fmt.Printf(SB)
  field.go:23           0x10959af               488bac2400010000                MOVQ 0x100(SP), BP
  field.go:23           0x10959b7               4881c408010000                  ADDQ $0x108, SP
  field.go:23           0x10959be               c3                              RET
  field.go:14           0x10959bf               e8bc88fbff                      CALL runtime.morestack_noctxt(SB)
  field.go:14           0x10959c4               e9c7fcffff                      JMP main.main(SB)
  :-1                   0x10959c9               cc                              INT $0x3
  :-1                   0x10959ca               cc                              INT $0x3
  :-1                   0x10959cb               cc                              INT $0x3
  :-1                   0x10959cc               cc                              INT $0x3
  :-1                   0x10959cd               cc                              INT $0x3
  :-1                   0x10959ce               cc                              INT $0x3
  :-1                   0x10959cf               cc                              INT $0x3