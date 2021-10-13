CFLAGS = -I ./include
##LIB    = ./libggfonts.so
LFLAGS = -lrt -lX11 -lGLU -lGL -pthread -lm #-lXrandr

all: spaceshooter

spaceshooter: spaceshooter.cpp log.cpp timers.cpp djosep.cpp \
			  etapiaramire.cpp fsanchez.cpp jandrestacza.cpp \
			  jfigueroa.cpp	
	g++ $(CFLAGS) spaceshooter.cpp djosep.cpp etapiaramire.cpp \
	fsanchez.cpp jandrestacza.cpp jfigueroa.cpp log.cpp timers.cpp \
	libggfonts.a -Wall -Wextra $(LFLAGS) -o spaceshooter

clean:
	rm -f spaceshooter asteroids
	rm -f *.o
