.PHONY: all test clean

build:
	@make do -s

do: c java golang cpp python

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
	g++ cpp.cpp -o cpp.out
	./cpp.out
	rm cpp.out

python: python.py
	python3 python.py
