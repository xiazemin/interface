package main

type Struct1 struct {
	A int64
}

func main() {
	a := new(Struct1)

	var i interface{}
	i = a

	b, ok := i.(Struct1)
	if ok {
		_ = b
	}
}
