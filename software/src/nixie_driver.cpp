#include <pigpiod_if2.h>
#include <iostream>
#include <stdint.h>
#include <vector>

const int pi = pigpio_start(NULL, NULL);
const uint32_t LATCH_PIN = 3;
const uint32_t CLK_PIN   = 2;
const uint32_t DATA_PIN  = 14;
const uint32_t REGISTERS = 40;
const uint32_t CLK_DELAY = 10;

const gpioPulse_t clk_cycle{0, 0, CLK_DELAY};
std::vector<gpioPulse_t> clk_pulses(2 * REGISTERS, clk_cycle);

const gpioPulse_t blank_pulse{0, 0, 0};
std::vector<gpioPulse_t> latch_pulses(3, blank_pulse);

const gpioPulse_t data_pulse{0, 0, 2 * CLK_DELAY};
std::vector<gpioPulse_t> data_pulses(REGISTERS, data_pulse);

void generate_clock() {
	for (uint32_t cycle = 0; cycle < REGISTERS; cycle++) {
		clk_pulses[2 * cycle].gpioOff = 1 << CLK_PIN;
		clk_pulses[2 * cycle + 1].gpioOn = 1 << CLK_PIN;
	}
}

void generate_latch() {
	latch_pulses[0].gpioOff = 1 << LATCH_PIN;
	latch_pulses[0].usDelay = 2 * (REGISTERS + 1) * CLK_DELAY;
	latch_pulses[1].gpioOn = 1 << LATCH_PIN;
	latch_pulses[1].usDelay = CLK_DELAY;
	latch_pulses[2].gpioOff = 1 << LATCH_PIN;
	latch_pulses[2].usDelay = CLK_DELAY;
}

int initialize() {
	int pi = pigpio_start(NULL, NULL);
	if (pi >= 0) {
		set_mode(pi, LATCH_PIN, PI_OUTPUT);
		set_mode(pi, CLK_PIN, PI_OUTPUT);
		set_mode(pi, DATA_PIN, PI_OUTPUT);
		gpio_write(pi, LATCH_PIN, 0);
		gpio_write(pi, CLK_PIN, 0);
		gpio_write(pi, DATA_PIN, 0);
		generate_clock();
		generate_latch();
	}
	return pi;
}

void add_pulses(int pi, std::vector<gpioPulse_t>& pulses) {
	wave_add_generic(pi, pulses.size(), pulses.data());
}

const double CLK_SLEEP = (double)(CLK_DELAY) / 1e6;

int write_binary(int pi, uint64_t bin) {
	if (pi < 0) return -1;
	std::vector<int> reversed(REGISTERS, false);
	for (uint32_t cycle = 0; cycle < REGISTERS; cycle++) {
		reversed[REGISTERS - cycle - 1] = bin & 1;
		bin = bin >> 1;
	}
	for (uint32_t cycle = 0; cycle < REGISTERS; cycle++) {
		gpio_write(pi, DATA_PIN, reversed[cycle]);
		time_sleep(CLK_SLEEP);
		gpio_write(pi, CLK_PIN, 1);
		time_sleep(CLK_SLEEP);
		gpio_write(pi, CLK_PIN, 0);
	}
	time_sleep(CLK_SLEEP);
	gpio_write(pi, LATCH_PIN, 1);
	time_sleep(CLK_SLEEP);
	gpio_write(pi, LATCH_PIN, 0);
	return 0;
	//wave_clear(pi);
	//for (uint32_t cycle = 0; cycle < REGISTERS; cycle++) {
	//	gpioPulse_t& data = data_pulses[REGISTERS - cycle - 1];
	//	data.gpioOn = (bin & 1) ? (1 << DATA_PIN) : 0;
	//	data.gpioOff = (bin & 1) ? 0 : (1 << DATA_PIN);
	//	bin = bin >> 1;
	//}
	//add_pulses(pi, clk_pulses);
	//add_pulses(pi, latch_pulses);
	//add_pulses(pi, data_pulses);
	//int wave_id = wave_create(pi);
	//std::cout << "TOTAL us = " << wave_get_micros(pi) << std::endl;
	//return wave_send_once(pi, wave_id);
}

void test_single_register(int pi, uint32_t reg) {
	int result = write_binary(pi, (uint64_t)1 << reg);
	std::cout << "\tRETURN CODE = " << result << std::endl;
}

const uint64_t LEDS[] = {2, 7, 17, 20, 26, 34};

uint64_t convert_counter(uint32_t counter) {
	uint64_t result = 0;
	for (uint32_t led_num = 0; led_num < 6; led_num++) {
		if (counter & 1) {
			result |= ((uint64_t)1 << LEDS[led_num]);
		}
		counter = counter >> 1;
	}
	return result;
}

int main(void) {
	int pi = initialize();
	if (pi < 0) {
		std::cerr << "ERROR CODE: " << pi << std::endl;
	} else {
		write_binary(pi, 0);
		uint32_t counter = 1;
		while (false) {
			write_binary(pi, convert_counter(counter));
			counter++;
		}

		uint64_t reg = 0;
		while (true) {
			std::cout << "Enter register: " << std::flush;
			std::cin >> reg;
			std::cout << "\tFLIPPING REGISTER " << reg << std::endl;
			test_single_register(pi, reg);
			std::cout << "\tDONE" << std::endl;
		}
	}
}
