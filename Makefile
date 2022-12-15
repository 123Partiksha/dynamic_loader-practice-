VPATH	= @srcdir@
CC    = gcc
FLAGS        = # -std=gnu99 -Iinclude
CFLAGS       = -mavx2 -fPIC # -g -pedantic -Wall -Wextra -ggdb3
LDFLAGS      = -shared

DEBUGFLAGS   = -O0 -D _DEBUG
RELEASEFLAGS = -O2 -D NDEBUG -combine -fwhole-program

TARGET  = buffer.so
SOURCES = buffer.c
HEADERS = $(wildcard *.h)
OBJECTS = $(SOURCES:.c=.o)


all: $(TARGET)

$(TARGET): $(OBJECTS)
		gcc -mavx2 refrence.c -ldotproduct -o test -L/$$PWD
		echo @srcdir@
	        $(CC) $(FLAGS) $(CFLAGS) $(LDFLAGS) -o $(TARGET) $(OBJECTS)
clean:
		rm buffer.so
		rm buffer.o
