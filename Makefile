.PHONY: build clean deploy all

build:
	GOOS=linux GOARCH=arm64 go build -tags lambda.norpc -ldflags="-s -w" -o bin/bootstrap hello/main.go
	zip -j bin/hello.zip bin/bootstrap

clean:
	rm -rf ./bin

deploy:
	npx sls deploy --verbose

all: clean build deploy
