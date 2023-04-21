LAUNCHER = launcher
# GAME = game
LSRCS = src/launcher/main.cpp
# GSRCS = game/src/main.cpp

all:
	g++ -Wall -I /usr/include/qt6 $(shell pkg-config --cflags Qt6Widgets) $(LSRCS) -o $(LAUNCHER) $(shell pkg-config --libs Qt6Widgets)
# g++ -Wall -lGL -lGLEW -lglfw $(GSRCS) -o $(GAME)
	chmod +x $(LAUNCHER)

clean:
	rm $(LAUNCHER)
# rm $(GAME)