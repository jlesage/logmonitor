TARGET = logmonitor
LIBS =
CC = gcc
CFLAGS = -Wall -Werror

SOURCES = logmonitor.c
HEADERS = 
OBJECTS = $(patsubst %.c, %.o, $(SOURCES))

.PHONY: default all clean

default: $(TARGET)
all: default

#OBJECTS = $(patsubst %.c, %.o, $(SRC))
#OBJECTS = $(patsubst %.c, %.o, $(wildcard *.c))
#HEADERS = $(wildcard *.h)
#HEADERS =

%.o: %.c $(HEADERS)
	$(CC) $(CFLAGS) -c $< -o $@

#.PRECIOUS: $(TARGET) $(OBJECTS)

$(TARGET): $(OBJECTS)
	$(CC) $(OBJECTS) $(CFLAGS) $(LIBS) -o $@

clean:
	-rm -f *.o
	-rm -f $(TARGET)
