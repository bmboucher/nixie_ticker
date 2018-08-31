#include <nixie_driver.hpp>
#include <iostream>
#include <cstdlib>
#include <unistd.h>

int main(void) {
	NixieDisplay display;
	display.set_anode(true);
	while(true) {
		for (uint8_t i = 0; i < NUM_NIXIES; i++) {
			uint8_t digit = (uint8_t)(rand() % 10);
			display.set_nixie_digit(i, digit);
			
			bool dp = (bool)(rand() % 2);
			display.set_decimal_point(i, dp);

			bool led = (bool)(rand() % 2);
			display.set_led(i, led);
		}
		display.update();
		usleep(100000);
	}

}
