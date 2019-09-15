package main

import (
	"reflect"
)

type Struct1 struct {
	A int64
	B int64
	C int64
}

func (p *Struct1) Set() {
	p.A = 200
}

func main() {
	P := new(Struct1)
	P.A = 100
	P.B = 200
	P.C = 300

	V := reflect.ValueOf(P)

	params := make([]reflect.Value, 0)
	V.MethodByName("Set").Call(params)
}
