CC      = gcc

OPTIONS  = -Wall -Wextra

TARGET  = bin/ndc

SRCS	= $(wildcard src/*.c)

OBJS    = $(SRCS:src/%.c=obj/%.o)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) -o $@ $^

obj/%.o: src/%.c
	$(CC) $(OPTIONS) -c $< -o $@

clean:
	rm -rf obj bin
	@mkdir obj bin