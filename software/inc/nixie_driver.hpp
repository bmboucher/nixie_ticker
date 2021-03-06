#pragma once
#include <stdint.h>
#include <string>

namespace {
	const uint8_t NUM_NIXIES = 6;
}

class NixieDisplay {
private:
	int pi;
	uint64_t registers = 0;
public:
	NixieDisplay();
		
	bool get_register(uint8_t reg);
		
	void set_register(uint8_t reg, bool on);
	
	void update();
	
	void set_anode(bool on);
	
	void set_nixie_digit(uint8_t nixie, uint8_t digit);
	
	void set_decimal_point(uint8_t nixie, bool on);
	
	void set_led(uint8_t led, bool on);
	
	void write(const std::string& str);
};