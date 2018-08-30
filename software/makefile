CPP_FLAGS=-Wall -pthread -Iinc/
LD_FLAGS=-lpigpiod_if2 -lrt

nixie_driver: src/nixie_driver.cpp
	g++ $(CPP_FLAGS) -o bin/nixie_driver src/nixie_driver.cpp $(LD_FLAGS)

debug: src/nixie_driver.cpp
	g++ $(CPP_FLAGS) -ggdb -o bin/nixie_driver_debug src/nixie_driver.cpp $(LD_FLAGS)

clean:
	rm -rf bin/*
