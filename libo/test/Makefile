LIBO_TEST_BASENAMES = osc_explode_test osc_match_test

INCLUDES = -I.. -I/System/Library/Frameworks/Carbon.framework/Headers -I/System/Library/Frameworks/CoreServices.framework/Headers
CFLAGS += -std=c99 -Wall -Wno-trigraphs -arch i386 -O3 -funroll-loops
CC = gcc

all: $(LIBO_TEST_BASENAMES) ../libo.a

%: %.c
	$(CC) $(CFLAGS) $(INCLUDES) -framework CoreServices -L.. -lo -lfl -o $@ $@.c

.PHONY: clean
clean:
	rm -rf $(LIBO_TEST_BASENAMES)
