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

%.o: %.c $(HEADERS)
	$(CC) $(CFLAGS) -c $< -o $@

$(TARGET): $(OBJECTS)
	$(CC) $(OBJECTS) $(CFLAGS) $(LIBS) -o $@

clean:
	-rm -f *.o
	-rm -f $(TARGET)
