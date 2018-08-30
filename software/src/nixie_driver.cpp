#include <nixie_driver.hpp>

#include <pigpiod_if2.h>
#include <iostream>
#include <stdint.h>
#include <vector>

const uint32_t LATCH_PIN = 3;
const uint32_t CLK_PIN   = 2;
const uint32_t DATA_PIN  = 14;
const uint8_t NUM_NIXIES = 6;
const uint8_t NUM_REGISTERS = 40;
const double CLK_DELAY = 1e-5;
const uint8_t NIXIES[][4] = 
	{{ 3,  4,  5,  0},
	 { 8, 10, 11,  9},
	 {14, 13, 18, 15},
	 {16, 22, 23, 21},
	 {27, 29, 30, 28},
	 {32, 38, 39, 37}};
const uint8_t LEDS[] = {2, 7, 17, 20, 26, 34};
const uint8_t DECIMAL_POINTS[] = {1, 6, 12, 19, 25, 33};
const uint8_t ANODE = 35;

NixieDisplay::NixieDisplay() {
	pi = pigpio_start(NULL, NULL);
	if (pi >= 0) {
		set_mode(pi, LATCH_PIN, PI_OUTPUT);
		set_mode(pi, CLK_PIN, PI_OUTPUT);
		set_mode(pi, DATA_PIN, PI_OUTPUT);
		gpio_write(pi, LATCH_PIN, 0);
		gpio_write(pi, CLK_PIN, 0);
		gpio_write(pi, DATA_PIN, 0);
		update();
	} else {
		std::cerr << "Failed to initialize PIGPIO: return code " << pi << std::endl;
	}
}

bool NixieDisplay::get_register(uint8_t reg) {
	uint64_t bitmask = (uint64_t)1 << (NUM_REGISTERS - reg - 1);
	return registers & bitmask;
}

void NixieDisplay::set_register(uint8_t reg, bool on) {
	// Registers are stored reversed
	uint64_t bitmask = (uint64_t)1 << (NUM_REGISTERS - reg - 1);
	if (on) {
		registers |= bitmask;
	} else {
		registers &= (~bitmask);
	}
}

void NixieDisplay::update() {
	if (pi < 0) return;
	uint64_t bin = registers;
	for (uint32_t cycle = 0; cycle < NUM_REGISTERS; cycle++) {
		gpio_write(pi, DATA_PIN, bin & 1);
		time_sleep(CLK_DELAY);
		gpio_write(pi, CLK_PIN, 1);
		time_sleep(CLK_DELAY);
		gpio_write(pi, CLK_PIN, 0);
		bin = bin >> 1;
	}
	time_sleep(CLK_DELAY);
	gpio_write(pi, LATCH_PIN, 1);
	time_sleep(CLK_DELAY);
	gpio_write(pi, LATCH_PIN, 0);
	time_sleep(CLK_DELAY);
}

void NixieDisplay::set_anode(bool on) {
	set_register(ANODE, on);
}

void NixieDisplay::set_nixie_digit(uint8_t nixie, uint8_t digit) {
	for (uint8_t bit = 0; bit < 4; bit++) {
		set_register(NIXIES[nixie][bit], digit & 1);
		digit = digit >> 1;
	}
}
	
void NixieDisplay::set_decimal_point(uint8_t nixie, bool on) {
	set_register(DECIMAL_POINTS[nixie], on);
}
	
void NixieDisplay::set_led(uint8_t led, bool on) {
	set_register(LEDS[led], on);
}

/* Examples:
 *   12.34.56 100101
 *   XX1234
 *   XXXXXX 000011
 */
void NixieDisplay::write(const std::string& str) {
	size_t i = 0;
	uint8_t c = 0;
	uint8_t nixie = 0;
	bool anode_flag = false;
	bool found_break = false;
	for (uint8_t dp = 0; dp < NUM_NIXIES; dp++) {
		set_decimal_point(dp, false);
	}
	while (i < str.size()) {
		c = str[i];
		i++;
		if (c == 'X') {
			if (nixie >= NUM_NIXIES) break;
			//std::cout << "Setting digit " << (int)nixie << " to blank" << std::endl;
			set_nixie_digit(nixie, 10); nixie++;
		} else if (c >= '0' && c <= '9') {
			if (nixie >= NUM_NIXIES) break;
			uint8_t digit = c - '0';
			//std::cout << "Setting digit " << (int)nixie << " to value " << (int)digit << std::endl;
			set_nixie_digit(nixie, c - '0'); nixie++; anode_flag = true;
		} else if (c == '.') {
			//std::cout << "Turning on decimal point " << (int)nixie << std::endl; 
			set_decimal_point(nixie, true); anode_flag = true;
		} else if (c == ' ') {
			found_break = true; break;
		}
	}
	if (!found_break) {
		while (i < str.size() && str[i] != ' ') { i++; }
		i++;
	}
	uint8_t led = 0;
	while (i < str.size() && led < NUM_NIXIES) {
		c = str[i];
		i++;
		std::cout << "Setting LED " << (int)led << " to " << (c == '0' ? "OFF" : "ON") << std::endl;
		set_led(led, c != '0');
		led++;
	}
	set_anode(anode_flag);
	update();
}

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
