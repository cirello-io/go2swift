package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
)

func main() {
	log.SetFlags(0)
	log.SetPrefix("")
	log.Println("simple go2swift bridge")
	s := bufio.NewScanner(os.Stdin)
	for {
		fmt.Print("> ")
		if !s.Scan() {
			break
		}
		out := computeHello(s.Text())
		log.Println("got:", out)
	}
	if err := s.Err(); err != nil {
		log.Fatal(err)
	}
}
