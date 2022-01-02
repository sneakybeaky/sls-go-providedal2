package main

import (
	"fmt"
	"github.com/aws/aws-lambda-go/lambda"
	"runtime"
)

func HandleRequest() (string, error) {
	return fmt.Sprintf("Hello world ! Running on %q architecture\n", runtime.GOARCH), nil
}

func main() {
	lambda.Start(HandleRequest)
}
