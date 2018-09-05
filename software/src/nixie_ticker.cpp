#include <stdio.h>
#include <curl/curl.h>
#include <nixie_driver.hpp>
#include <unistd.h>
#include <string>
#include <vector>
#include <iostream>
#include <sstream>
#include <fstream>
#include <iomanip>
#include <time.h>
#include <sys/time.h>

const double TICK_DELAY_SECONDS = 0.25;
const double TICKER_SWITCH_SECONDS = 5;

typedef long long millis_t;

const millis_t TICK_DELAY_MS = TICK_DELAY_SECONDS * 1000;
const millis_t TICKER_SWITCH_MS = TICKER_SWITCH_SECONDS * 1000;

size_t current_ticker = 0;
millis_t last_tick = 0;
millis_t last_ticker_switch = 0;

millis_t timeMillis() {
	struct timeval tp;
	gettimeofday(&tp, NULL);
	return (millis_t)tp.tv_sec * 1000L + tp.tv_usec / 1000;
}

void update_display(NixieDisplay& display, double value) {
	std::stringstream ss;
	ss << std::fixed << std::setfill('X') 
	   << std::setw(NUM_NIXIES + 1) << std::setprecision(2)
	   << value << ' ';
    for (uint8_t i = 0; i < NUM_NIXIES; i++) {
		ss << (current_ticker == i ? '1' : '0');
	}
	display.write(ss.str());
}

size_t write_data(void* buffer, size_t size, size_t nmemb, void* userp) {
	NixieDisplay* display = (NixieDisplay*)userp;
	std::string price_str = std::string((const char*)buffer);
	std::cout << price_str << std::endl;
	try {
		double price = std::stod(price_str);
		update_display(*display, price);
	} catch (...) {
	}
	return size * nmemb;
}

std::vector<std::string> read_tickers(const char* path) {
	std::vector<std::string> tickers(NUM_NIXIES);
	std::ifstream file;
	file.open(path);
	for (size_t i = 0; i < NUM_NIXIES; i++) {
		std::string ticker;
		std::getline(file, ticker);
		tickers.push_back(ticker);
	}
	file.close();
	return tickers;
}

int main(int argc, char *argv[])
{
	std::vector<std::string> tickers(NUM_NIXIES);
	if (argc > 1) {
		tickers = read_tickers(argv[1]);
	} else {
		tickers.push_back("appl");
		tickers.push_back("snap");
		tickers.push_back("spy");
		tickers.push_back("gs");
		tickers.push_back("ge");
		tickers.push_back("goog");
	}
	NixieDisplay display;
	
	CURL *curl;
	CURLcode res;
	
	curl_global_init(CURL_GLOBAL_DEFAULT);
	curl = curl_easy_init();
	if(curl) {
		curl_easy_setopt(curl, CURLOPT_SSL_VERIFYPEER, 0L);
		curl_easy_setopt(curl, CURLOPT_SSL_VERIFYHOST, 0L);
		curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, write_data);
		curl_easy_setopt(curl, CURLOPT_WRITEDATA, (void*)&display);
		last_tick = timeMillis();
		last_ticker_switch = timeMillis();
		/* Perform the request, res will get the return code */ 
		while (true) {
			if (timeMillis() - last_ticker_switch >= TICKER_SWITCH_MS) {
				current_ticker += 1;
				if (current_ticker == NUM_NIXIES) current_ticker = 0;
				last_ticker_switch = timeMillis();
			}
			
			if (timeMillis() - last_tick >= TICK_DELAY_MS) {
				last_tick = timeMillis();
				std::string url = "https://api.iextrading.com/1.0/stock/" + tickers[current_ticker] + "/price";
				std::cout << url << std::endl;
				curl_easy_setopt(curl, CURLOPT_URL, url.c_str());
				res = curl_easy_perform(curl);
				/* Check for errors */ 
				if (res != CURLE_OK)
					std::cerr << "curl_easy_perform() failed: "
							  << curl_easy_strerror(res) << std::endl;
			}			
		}
				       
		/* always cleanup */ 
		curl_easy_cleanup(curl);
	}
	   
	curl_global_cleanup();
	return 0;
}
