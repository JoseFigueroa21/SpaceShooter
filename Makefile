CFLAGS = -I ./include
##LIB    = ./libggfonts.so
LFLAGS = -lrt -lX11 -lGLU -lGL -pthread -lm #-lXrandr

all: asteroids

asteroids: asteroids.cpp log.cpp timers.cpp djosep.cpp etapiaramire.cpp fsanchez.cpp jandrestacza.cpp
	g++ $(CFLAGS) asteroids.cpp djosep.cpp etapiaramire.cpp fsanchez.cpp jandrestacza.cpp log.cpp timers.cpp libggfonts.a -Wall -Wextra $(LFLAGS) -oasteroids

clean:
	rm -f asteroids
	rm -f *.o

