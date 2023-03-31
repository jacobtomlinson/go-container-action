package main

import (
	"fmt"
	"os"
)

func main() {
	myInput := os.Getenv("INPUT_MYINPUT")

	output := fmt.Sprintf("Hello %s", myInput)

	os.Setenv("GITHUB_OUTPUT", "myOutput="+output )
}
