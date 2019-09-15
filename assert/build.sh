go build -gcflags '-l -N' assert.go
go tool objdump -s 'main.main' assert
TEXT main.main(SB) /Users/didi/goLang/src/github.com/xiazemin/interface/assert/assert.go
  assert.go:7           0x104f360               4883ec48                SUBQ $0x48, SP
  assert.go:7           0x104f364               48896c2440              MOVQ BP, 0x40(SP)
  assert.go:7           0x104f369               488d6c2440              LEAQ 0x40(SP), BP
  assert.go:8           0x104f36e               48c744241000000000      MOVQ $0x0, 0x10(SP)
  assert.go:8           0x104f377               488d442410              LEAQ 0x10(SP), AX
  assert.go:8           0x104f37c               4889442420              MOVQ AX, 0x20(SP)
  assert.go:10          0x104f381               48c744243000000000      MOVQ $0x0, 0x30(SP)
  assert.go:10          0x104f38a               48c744243800000000      MOVQ $0x0, 0x38(SP)
  assert.go:11          0x104f393               488b442420              MOVQ 0x20(SP), AX
  assert.go:11          0x104f398               4889442428              MOVQ AX, 0x28(SP)
  assert.go:11          0x104f39d               488d0d1c680000          LEAQ 0x681c(IP), CX
  assert.go:11          0x104f3a4               48894c2430              MOVQ CX, 0x30(SP)
  assert.go:11          0x104f3a9               4889442438              MOVQ AX, 0x38(SP)
  assert.go:13          0x104f3ae               488b442438              MOVQ 0x38(SP), AX
  assert.go:13          0x104f3b3               488b4c2430              MOVQ 0x30(SP), CX
  assert.go:13          0x104f3b8               488d1581ed0000          LEAQ 0xed81(IP), DX
  assert.go:13          0x104f3bf               4839d1                  CMPQ DX, CX
  assert.go:13          0x104f3c2               7402                    JE 0x104f3c6
  assert.go:13          0x104f3c4               eb3f                    JMP 0x104f405
  assert.go:13          0x104f3c6               488b00                  MOVQ 0(AX), AX
  assert.go:13          0x104f3c9               b901000000              MOVL $0x1, CX
  assert.go:13          0x104f3ce               eb00                    JMP 0x104f3d0
  assert.go:13          0x104f3d0               4889442418              MOVQ AX, 0x18(SP)
  assert.go:13          0x104f3d5               884c2407                MOVB CL, 0x7(SP)
  assert.go:13          0x104f3d9               488b442418              MOVQ 0x18(SP), AX
  assert.go:13          0x104f3de               4889442408              MOVQ AX, 0x8(SP)
  assert.go:13          0x104f3e3               0fb6442407              MOVZX 0x7(SP), AX
  assert.go:13          0x104f3e8               88442406                MOVB AL, 0x6(SP)
  assert.go:14          0x104f3ec               0fb6442406              MOVZX 0x6(SP), AX
  assert.go:14          0x104f3f1               84c0                    TESTL AL, AL
  assert.go:14          0x104f3f3               7502                    JNE 0x104f3f7
  assert.go:14          0x104f3f5               eb0c                    JMP 0x104f403
  assert.go:14          0x104f3f7               eb00                    JMP 0x104f3f9
  assert.go:17          0x104f3f9               488b6c2440              MOVQ 0x40(SP), BP
  assert.go:17          0x104f3fe               4883c448                ADDQ $0x48, SP
  assert.go:17          0x104f402               c3                      RET
  assert.go:14          0x104f403               ebf4                    JMP 0x104f3f9
  assert.go:14          0x104f405               31c9                    XORL CX, CX
  assert.go:14          0x104f407               31c0                    XORL AX, AX
  assert.go:13          0x104f409               ebc5                    JMP 0x104f3d0
  :-1                   0x104f40b               cc                      INT $0x3
  :-1                   0x104f40c               cc                      INT $0x3
  :-1                   0x104f40d               cc                      INT $0x3
  :-1                   0x104f40e               cc                      INT $0x3
  :-1                   0x104f40f               cc                      INT $0x3