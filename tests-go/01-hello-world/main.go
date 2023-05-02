package main

import "fmt"

func main() {
	var a int = 10
	b := 11
	s := "prout"
	const cs string = "test 01"

	fmt.Println("hello world", a, b, s)
	fmt.Printf("prout %s %T\n", s, s)

	s = "plop"
	fmt.Printf("%s\n", s)
}
