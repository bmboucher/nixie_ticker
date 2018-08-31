CC=g++
CPP_FLAGS=-Wall -pthread -Iinc/ -fPIC
LD_FLAGS=-lpigpiod_if2 -lrt

bin/nixie_tester: obj/nixie_tester.o lib/nixie_driver.so
	$(CC) $(CPP_FLAGS) $< -o $@ $(LD_FLAGS) -Llib/ -lnixie_driver

lib/nixie_driver.so: obj/nixie_driver.o
	$(CC) $(CPP_FLAGS) $< -o $@ $(LD_FLAGS) -shared

obj/%.o: src/%.cpp
	$(CC) $(CPP_FLAGS) -c $< -o $@ $(LD_FLAGS)

clean:
	rm -rf bin/* obj/* lib/*
