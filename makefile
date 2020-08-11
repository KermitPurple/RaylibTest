INCLUDE = -Iinclude
LIBS = -lraylib -lopengl32 -lgdi32 -lwinmm

all: main
	g++ bin/*.o -o bin/test.exe $(INCLUDE) $(LIBS)
	@echo

%: src/%.cpp
	g++ $< -c -o bin/$@.o $(INCLUDE) $(LIBS)

clean:
	rm bin/*

new:
	mkdir bin

test: all
	bin/test.exe
