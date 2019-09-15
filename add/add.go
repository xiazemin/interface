package main

func add(a, b int) int {
	return a + b
}

func main() {
	a := 10
	b := 20

	c := add(a, b)
	_ = c
}
