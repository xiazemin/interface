package main

import (
	"reflect"
)

func main() {
	var x int64 = 10

	reflect.ValueOf(x).SetInt(20)

	reflect.ValueOf(&x).SetInt(20)

	reflect.ValueOf(&x).Elem().SetInt(20)
}
