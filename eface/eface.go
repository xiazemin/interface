package main

type Struct1 struct {
	A int64
	B int64
}

func main() {
	s := new(Struct1)
	var i interface{}
	i = s

	_ = i
}
