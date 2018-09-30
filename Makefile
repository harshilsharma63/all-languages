.PHONY: all test clean

build: c java golang

c: c.c
	@gcc -o c.out c.c
	@./c.out

java: java.java
	@javac java.java
	@java Main

golang: go.go
	@go build go.go
	@./go
