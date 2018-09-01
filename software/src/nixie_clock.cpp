#include <nixie_driver.hpp>
#include <time.h>
#include <unistd.h>
#include <sys/time.h>

void display_two_digit(int value, NixieDisplay& display, uint8_t nixie) {
	display.set_nixie_digit(nixie,     value / 10);
	display.set_nixie_digit(nixie + 1, value % 10);
}

long long timeMillis() {
	struct timeval tp;
	gettimeofday(&tp, NULL);
	return (long long)tp.tv_sec * 1000L + tp.tv_usec / 1000;
}

const long long DP_DELAY = 500;
const long long LED_DELAY = 200;

int main() {
	NixieDisplay display;
	display.set_anode(true);
	bool dp = true;
	long long last_dp = timeMillis();
	long long last_led = timeMillis();
	uint8_t led_num = 0;
	bool led_fwd = true;
	display.set_led(led_num, true);
	while(true) {
		long long curr_time = timeMillis();
		if (curr_time - last_dp >= DP_DELAY) {
			dp = !dp;
			last_dp = curr_time;
		}
		if (curr_time - last_led >= LED_DELAY) {
			display.set_led(led_num, false);
			if (led_num == NUM_NIXIES - 1 && led_fwd) led_fwd = false;
			if (led_num == 0 && !led_fwd) led_fwd = true;
			led_num = led_fwd ? led_num + 1 : led_num - 1;
			display.set_led(led_num, true);
		}

		time_t rawtime = time(NULL);
		struct tm* timeinfo = localtime(&rawtime);
		display_two_digit(timeinfo->tm_hour, display, 0);
		display_two_digit(timeinfo->tm_min, display, 2);
		display_two_digit(timeinfo->tm_sec, display, 4);
		display.set_decimal_point(1, dp);
		display.set_decimal_point(3, dp);
		display.update();
	}
}
