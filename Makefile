CFLAGS=-g -O2 -Wall -Wextra -Isrc -rdynamic -DNDEBUG $(OPTFLAGS)
LIBS=-ldl $(OPTLIBS)

SOURCES=$(wildcard src/**/*.c src/*.c)
OBJECTS=$(patsubst %.c,%.o,$(SOURCES))

TEST_SRC=$(wildcard tests/*_tests.c)
TEST_EXEC=$(patsubst %.c,%,$(TEST_SRC))

TARGET=build/liblcthw.a
SO_TARGET=$(patsubst %.a,%.so,$(TARGET))

all: build objects shared test_exec

objects: 
	cc -c $(SOURCES) -o $(OBJECTS) -fPIC

shared:
	cc -shared -o $(SO_TARGET) $(OBJECTS)

test_exec:
	cc $(TEST_SRC) $(LIBS) -o $(TEST_EXEC)

build:
	@mkdir -p build
	@mkdir -p bin

# The Cleaner
clean:
	rm -rf build $(OBJECTS) $(TEST_EXEC) ./src/*.so
	rm -f tests/tests.log 
	find . -name "*.gc*" -exec rm {} \;
	rm -rf `find . -name "*.dSYM" -print`