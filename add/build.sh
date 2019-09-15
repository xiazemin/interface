go build -gcflags '-l -N' add.go

go tool objdump -s "main.main" add
TEXT main.main(SB) /Users/didi/goLang/src/github.com/xiazemin/interface/add/add.go
  add.go:7              0x104f380               65488b0c25a0080000      MOVQ GS:0x8a0, CX
  add.go:7              0x104f389               483b6110                CMPQ 0x10(CX), SP
  add.go:7              0x104f38d               764c                    JBE 0x104f3db
  add.go:7              0x104f38f               4883ec38                SUBQ $0x38, SP
  add.go:7              0x104f393               48896c2430              MOVQ BP, 0x30(SP)
  add.go:7              0x104f398               488d6c2430              LEAQ 0x30(SP), BP
  add.go:8              0x104f39d               48c74424280a000000      MOVQ $0xa, 0x28(SP)
  add.go:9              0x104f3a6               48c744242014000000      MOVQ $0x14, 0x20(SP)
  add.go:11             0x104f3af               488b442428              MOVQ 0x28(SP), AX
  add.go:11             0x104f3b4               48890424                MOVQ AX, 0(SP)
  add.go:11             0x104f3b8               488b442420              MOVQ 0x20(SP), AX
  add.go:11             0x104f3bd               4889442408              MOVQ AX, 0x8(SP)
  add.go:11             0x104f3c2               e899ffffff              CALL main.add(SB)
  add.go:11             0x104f3c7               488b442410              MOVQ 0x10(SP), AX
  add.go:11             0x104f3cc               4889442418              MOVQ AX, 0x18(SP)
  add.go:13             0x104f3d1               488b6c2430              MOVQ 0x30(SP), BP
  add.go:13             0x104f3d6               4883c438                ADDQ $0x38, SP
  add.go:13             0x104f3da               c3                      RET
  add.go:7              0x104f3db               e89083ffff              CALL runtime.morestack_noctxt(SB)
  add.go:7              0x104f3e0               eb9e                    JMP main.main(SB)
  :-1                   0x104f3e2               cc                      INT $0x3
  :-1                   0x104f3e3               cc                      INT $0x3
  :-1                   0x104f3e4               cc                      INT $0x3
  :-1                   0x104f3e5               cc                      INT $0x3
  :-1                   0x104f3e6               cc                      INT $0x3
  :-1                   0x104f3e7               cc                      INT $0x3
  :-1                   0x104f3e8               cc                      INT $0x3
  :-1                   0x104f3e9               cc                      INT $0x3
  :-1                   0x104f3ea               cc                      INT $0x3
  :-1                   0x104f3eb               cc                      INT $0x3
  :-1                   0x104f3ec               cc                      INT $0x3
  :-1                   0x104f3ed               cc                      INT $0x3
  :-1                   0x104f3ee               cc                      INT $0x3
  :-1                   0x104f3ef               cc                      INT $0x3



 go tool objdump -s "main.add" add
  TEXT main.add(SB) /Users/didi/goLang/src/github.com/xiazemin/interface/add/add.go
    add.go:3              0x104f360               48c744241800000000      MOVQ $0x0, 0x18(SP)
    add.go:4              0x104f369               488b442408              MOVQ 0x8(SP), AX
    add.go:4              0x104f36e               4803442410              ADDQ 0x10(SP), AX
    add.go:4              0x104f373               4889442418              MOVQ AX, 0x18(SP)
    add.go:4              0x104f378               c3                      RET
    :-1                   0x104f379               cc                      INT $0x3
    :-1                   0x104f37a               cc                      INT $0x3
    :-1                   0x104f37b               cc                      INT $0x3
    :-1                   0x104f37c               cc                      INT $0x3
    :-1                   0x104f37d               cc                      INT $0x3
    :-1                   0x104f37e               cc                      INT $0x3
    :-1                   0x104f37f               cc                      INT $0x3