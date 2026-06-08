/*
 * g++ (Debian 14.2.0-19) 14.2.0
 * 0002even_fibonacci_numbers.cpp
 *
 * Copyright 2026 Jörg Mekka
 * @GitHub JoergEm
 *
 * This program is WITHOUT ANY WARRANTY; without even the implied
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 *
 *
 */

#include <cstdlib>
#include <iostream>
#include <string>
#include <cmath>

using namespace std;

unsigned long long fibonacci_binet(unsigned nummer) {
    double wurzel_5 = std::sqrt(5.0);
    double term_add = (1.0 + wurzel_5) / 2.0;
    double term_sub = (1.0 - wurzel_5) / 2.0;

    double ergebnis = (std::pow(term_add, nummer) - std::pow(term_sub, nummer)) / wurzel_5;

    return static_cast<unsigned long long>(std::round(ergebnis));
}


int main()
{
    unsigned long long ergebnis = 0;

    for (unsigned nummer = 3;; nummer += 3) {
        auto summe = fibonacci_binet(nummer);

        if (summe >= 4000000)
            break;

        ergebnis += summe;       
    }
	cout << ergebnis;
	return EXIT_SUCCESS;
}