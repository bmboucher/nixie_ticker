#include <stdio.h>
#include <curl/curl.h>
#include <nixie_driver.hpp>
#include <unistd.h>
#include <string>
#include <iostream>

size_t write_data(void* buffer, size_t size, size_t nmembd, void* userp) {
	NixieDisplay* display = (NixieDisplay*)userp;
	std::string price_str = std::string("X", 7 - size) + std::string((const char*)buffer);
	display->write(price_str);
	std::cout << price_str;
}

int main(void)
{
	NixieDisplay display;
	
	CURL *curl;
	CURLcode res;
	
	curl_global_init(CURL_GLOBAL_DEFAULT);
	curl = curl_easy_init();
	if(curl) {
		curl_easy_setopt(curl, CURLOPT_URL, "https://api.iextrading.com/1.0/stock/aapl/price");
		curl_easy_setopt(curl, CURLOPT_SSL_VERIFYPEER, 0L);
		curl_easy_setopt(curl, CURLOPT_SSL_VERIFYHOST, 0L);
		curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, write_data);
		/* Perform the request, res will get the return code */ 
		for (int i = 0; i < 10; i++) {
			res = curl_easy_perform(curl);
			usleep(250000);
		}
		/* Check for errors */ 
		if (res != CURLE_OK)
			fprintf(stderr, "curl_easy_perform() failed: %s\n",
							curl_easy_strerror(res));
				       
		/* always cleanup */ 
		curl_easy_cleanup(curl);
	}
	   
	curl_global_cleanup();
	return 0;
}
