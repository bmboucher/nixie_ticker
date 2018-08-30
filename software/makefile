nixie_driver: src/nixie_driver.cpp
	g++ -Wall -pthread -o bin/nixie_driver src/nixie_driver.cpp -lpigpiod_if2 -lrt

debug: src/nixie_driver.cpp
	g++ -Wall -pthread -ggdb -o bin/nixie_driver_debug src/nixie_driver.cpp -lpigpiod_if2 -lrt

clean:
	rm -rf bin/*
