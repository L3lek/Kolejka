#include "kolejka.h"
#include <iostream>
#include <vector>
#include <sstream>
#include <string>
#include <cstdlib>
#include <ctime>


int main(){

	kolejka_prior<std::string> kolejka_wyslane, kolejka_odebrane;
	std::string zdanie, slowo;
	std::cout << "Nadawca: ";
	std::getline(std::cin, zdanie);
	std::istringstream slowa(zdanie);
	
	for (int i = 0; slowa >> slowo; ++i){ 
		kolejka_wyslane.push_sort(i, slowo);
	}

	kolejka_odebrane=kolejka_wyslane.random_pop();

	std::cout << "Odebrane: ";
	kolejka_odebrane.wyswietl();

	return 0;
}