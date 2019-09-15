package main

type I interface {
	Add()
	Del()
}

type Struct1 struct {
	A int64
	B int64
}

func (a *Struct1) Add() {
	a.A = a.A + 1
	a.B = a.B + 1
}

func (a *Struct1) Del() {
	a.A = a.A - 1
	a.B = a.B - 1
}

func main() {
	a := new(Struct1)
	var i I
	i = a

	i.Add()
	i.Del()
}
