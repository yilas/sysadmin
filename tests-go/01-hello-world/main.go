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

	// Le scope de i est uniquement limité à cette boucle !
	for i := 0; i < 10; i++ {
		fmt.Printf("(Printf) i = %d\n", i)
		fmt.Println("(Println) i = ", i)
	}
}
