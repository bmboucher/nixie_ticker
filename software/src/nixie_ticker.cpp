#include <stdio.h>
#include <curl/curl.h>
#include <nixie_driver.hpp>
#include <unistd.h>
#include <string>
#include <iostream>

size_t write_data(void* buffer, size_t size, size_t nmemb, void* userp) {
	NixieDisplay* display = (NixieDisplay*)userp;
	std::string price_str = std::string((const char*)buffer);
	std::cout << price_str << std::endl;
	display->write(price_str + std::string("X", 7 - nmemb));
	return size * nmemb;
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
		curl_easy_setopt(curl, CURLOPT_WRITEDATA, (void*)&display);
		/* Perform the request, res will get the return code */ 
		while (true) {
			res = curl_easy_perform(curl);
			/* Check for errors */ 
			if (res != CURLE_OK)
				std::cerr << "curl_easy_perform() failed: "
						  << curl_easy_strerror(res) << std::endl;
			usleep(500000);
		}
				       
		/* always cleanup */ 
		curl_easy_cleanup(curl);
	}
	   
	curl_global_cleanup();
	return 0;
}
