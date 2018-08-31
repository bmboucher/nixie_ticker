CC=g++
CPP_FLAGS=-Wall -pthread -Iinc/ -fPIC
LD_FLAGS=-lpigpiod_if2 -lrt

lib/nixie_driver.so: obj/nixie_driver.o
	$(CC) $(CPP_FLAGS) $< -o $@ $(LD_FLAGS)

obj/%.o: src/%.cpp
	$(CC) $(CPP_FLAGS) -c $< -o $@ $(LD_FLAGS)

debug: src/nixie_driver.cpp
	g++ $(CPP_FLAGS) -ggdb -o bin/nixie_driver_debug src/nixie_driver.cpp $(LD_FLAGS)

clean:
	rm -rf bin/* obj/* lib/*
