#include <nixie_driver.hpp>
#include <iostream>

void test_single_register(NixieDisplay& display, uint8_t reg) {
	bool curr_setting = display.get_register(reg);
	std::cout << "\tFLIPPING REGISTER " << (int)reg << " (CURRENTLY " << curr_setting << ")" << std::endl;
	display.set_register(reg, !curr_setting);
	display.update();
}

void test_led_counter(NixieDisplay& display, uint32_t counter) {
	for (uint8_t led_num = 0; led_num < NUM_NIXIES; led_num++) {
		display.set_led(led_num, counter & 1);
		counter = counter >> 1;
	}
	display.update();
}


int main(void) {
	NixieDisplay display;
	while (true) {
		std::string input;
		std::cout << "> " << std::flush;
		getline(std::cin, input);
		display.write(input);
	}
	/*
		uint32_t counter = 1;
		while (counter < 1000) {
			test_led_counter(display, counter);
			counter++;
		}

		int reg = 0;
		while (true) {
			std::cout << "Enter register: " << std::flush;
			std::cin >> reg;
			test_single_register(display, reg);
		}
	*/
}
