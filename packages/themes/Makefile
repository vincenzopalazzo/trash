CC=flutter
FMT=format

default: fmt

fmt:
	dart $(FMT) lib
	$(CC) analyze lib

check:
	$(CC) test