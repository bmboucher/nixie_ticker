#include <nixie_driver.hpp>
#include <time.h>
#include <unistd.h>

void display_two_digit(int value, NixieDisplay& display, uint8_t nixie) {
	display.set_nixie_digit(nixie,     value / 10);
	display.set_nixie_digit(nixie + 1, value % 10);
}

int main() {
	NixieDisplay display;
	display.set_anode(true);
	bool dp = true;
	while(true) {
		time_t rawtime = time(NULL);
		struct tm* timeinfo = localtime(&rawtime);
		display_two_digit(timeinfo->tm_hour, display, 0);
		display_two_digit(timeinfo->tm_min, display, 2);
		display_two_digit(timeinfo->tm_sec, display, 4);
		display.set_decimal_point(1, dp);
		display.set_decimal_point(3, dp);
		display.update();
		usleep(100000);
		dp = !dp;
	}
}
