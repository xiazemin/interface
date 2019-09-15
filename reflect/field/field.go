package main

import (
	"fmt"
	"reflect"
)

type Struct1 struct {
	A int64
	B int64
	C int64
}

func main() {
	P := new(Struct1)

	V := reflect.ValueOf(P).Elem()
	V.FieldByName("A").SetInt(100)
	V.FieldByName("B").SetInt(200)
	V.FieldByName("C").SetInt(300)

	fmt.Printf("%v", P)
}
