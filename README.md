The goal of this project is to design and implement an algorithmic state machine (ASM) that can detect how many times a virus pattern of 10111 occurs in a data file. The ASM consists of a controller and a datapath that is implemented in RTL-based model. The ASM is responsible for scanning the data file bit by bit, and once the virus pattern is found, the scanning process restarts from the next bit.

To start the project, a data file containing a large string of binary sequences is downloaded and stored in the flash memory. The ASM is designed to scan the data file and count the number of times the virus pattern appears. The ASM uses a pattern matching technique to scan the data file bit by bit, and once the virus pattern is found, the scanning process restarts from the next bit.

To implement the ASM, the controller and datapath are designed in RTL-based model. The controller is responsible for controlling the datapath operations and ensuring that the ASM operates correctly. The datapath is responsible for performing the pattern matching and counting the number of occurrences of the virus pattern.

The ASM is tested using a test bench that can either identify the pattern directly from the test bench or use the provided data file. The test bench is designed to simulate the operation of the ASM and ensure that it is working correctly. The ASM is tested using different detection sequences to ensure that it can detect the virus pattern accurately.

Overall, this project involves designing and implementing an ASM that can detect the number of times a virus pattern occurs in a data file. The ASM is designed using a controller and datapath implemented in RTL-based model, and it is tested using a test bench to ensure that it operates correctly.
