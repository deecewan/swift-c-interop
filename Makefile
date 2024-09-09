all: native swift

native:
	clang -o native.o -c native.c

swift:
	swiftc -I . -L . main.swift native.o

clean:
	rm native.o main
