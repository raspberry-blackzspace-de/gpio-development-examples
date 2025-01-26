# WiringPi README

Compiling:
```sh
ls -l
read -p "Enter Program to Compile: " code
read -p "Enter Program-Output-Name: " name
gcc $code -o $name -lwiringPi
```


Example Compiling:
```sh
gcc blink.c -o blink -lwiringPi
```