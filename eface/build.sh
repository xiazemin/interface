go build -gcflags '-l -N' eface.go
go tool objdump -s "main.main" eface
TEXT main.main(SB) /Users/didi/goLang/src/github.com/xiazemin/interface/eface/eface.go
  eface.go:8            0x104f360               4883ec38                SUBQ $0x38, SP
  eface.go:8            0x104f364               48896c2430              MOVQ BP, 0x30(SP)
  eface.go:8            0x104f369               488d6c2430              LEAQ 0x30(SP), BP
  eface.go:9            0x104f36e               48c7042400000000        MOVQ $0x0, 0(SP)
  eface.go:9            0x104f376               48c744240800000000      MOVQ $0x0, 0x8(SP)
  eface.go:9            0x104f37f               488d0424                LEAQ 0(SP), AX
  eface.go:9            0x104f383               4889442410              MOVQ AX, 0x10(SP)
  eface.go:10           0x104f388               48c744242000000000      MOVQ $0x0, 0x20(SP)
  eface.go:10           0x104f391               48c744242800000000      MOVQ $0x0, 0x28(SP)
  eface.go:11           0x104f39a               488b442410              MOVQ 0x10(SP), AX
  eface.go:11           0x104f39f               4889442418              MOVQ AX, 0x18(SP)
  eface.go:11           0x104f3a4               488d0dd5670000          LEAQ 0x67d5(IP), CX
  eface.go:11           0x104f3ab               48894c2420              MOVQ CX, 0x20(SP)
  eface.go:11           0x104f3b0               4889442428              MOVQ AX, 0x28(SP)
  eface.go:14           0x104f3b5               488b6c2430              MOVQ 0x30(SP), BP
  eface.go:14           0x104f3ba               4883c438                ADDQ $0x38, SP
  eface.go:14           0x104f3be               c3                      RET
  :-1                   0x104f3bf               cc                      INT $0x3