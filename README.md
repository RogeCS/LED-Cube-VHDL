# LED-Cube-VHDL
8x8x8 LED cube animations following the beat of *Into the void - kiss*. Using VHDL and DE2 Altera Board 

## FPGA
- EP2C35F672C6ES

## Result
- https://youtu.be/m5wf9QhJaiM

## The master file 
- Is located on the test_led folder and has the name TL.vhd, in here you can see all the called functions
- All the files that contains the project logic have .vhd extension

## The executable
- Is located on test_led/output_files/TL.sof
- it is important to know that the DE2 has 72 GPIO pins and the way to connect the led cube to this inputs (Most important thing to use the executable) is not shown in here. Maybe in the future I will upload the pins assigments

## Observations
- The Leds used are of 20mA and 3.3V its. It is important to consider this to not burn out leds with the DE2 as the GPIO gives 3.3Vout
- This is not the best solution to the leds cube using an FPGA but it still works and it is a fun project
- Follow this link if you don't know how to build the led cube: https://youtu.be/vf_IpviMiFU
