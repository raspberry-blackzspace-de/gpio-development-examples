#include <wiringPi.h>
#include <stdio.h>

#define LED 0  // GPIO17

int main(void) {
    if (wiringPiSetup() == -1) {
        printf("Can't init wiringPi: %s\n", strerror(errno));
        return 1;
    }

    pinMode(LED, OUTPUT);  // Set LED pin as output

    while (1) {
        digitalWrite(LED, HIGH);  // Turn on LED
        delay(500);  // Wait 500 milliseconds
        digitalWrite(LED, LOW);  // Turn off LED
        delay(500);  // Wait 500 milliseconds
    }

    return 0;
}
