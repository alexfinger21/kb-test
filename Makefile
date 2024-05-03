CC = g++
CFLAGS = -Wall -Wextra -pedantic -std=c++11
LDFLAGS = -lstdc++ -pthread
LIBS = -L/usr/include/libevdev-1.0/libevdev/libevdev.h -l evdev

SRCS = keyboard.cpp
OBJS = $(SRCS:.cpp=.o)
EXEC = keyboard

.PHONY: all clean

all: $(EXEC)

$(EXEC): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(EXEC) $(LIBS) $(LDFLAGS)

%.o: %.cpp
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(EXEC)

