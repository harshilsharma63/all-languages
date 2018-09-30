.PHONY: all test clean

build:
	@make do -s

do: c java golang cpp

c: c.c
	gcc -o c.out c.c
	./c.out
	rm c.out

java: java.java
	javac java.java
	java Main
	rm Main.class

golang: go.go
	go build go.go
	./go
	rm go

cpp: cpp.cpp
	g++ gpp.gpp -o gpp.out
	./gpp.out
	rm rpp.out
