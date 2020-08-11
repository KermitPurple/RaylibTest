LIBS = -lraylib -lopengl32 -lgdi32 -lwinmm

all: main.o 
	g++ bin/*.o -o bin/test.exe $(LIBS)

main.o: src/main.cpp
	g++ src/main.cpp -c -o bin/main.o $(LIBS)

clean:
	rm bin/*

new:
	mkdir bin

test: all
	bin/test.exe
