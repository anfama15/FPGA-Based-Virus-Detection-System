# FPGA_CEP
Design and implemention of algorithmic state machine (ASM) comprising of controller and Datapath
implemented in RTL based model, which can find how many times a virus pattern equal to 10111
occurs in a data file.

Example for pattern matching: In pattern matching, a sequence is scanned bit by bit and once a 
required pattern is found, the scan restarts from the next bit. For example, we have 11011101011 in 
the data file, the scanning process start from the left, we have 11 at that start (first and second bit) 
that is different from the virus pattern (10111), since it’s a mismatch, the scan starts form the second 
bit. Upon restarting the scan from second bit, we have found that the virus pattern exists in the next 
four bits, so the counter is incremented to one and the scan restarts from sixth bit and this process 
continues until the end of file.

Data files that contains large strings of binary sequence; is downloaded, in the flash 
memory.

Please set up the rom according to your data and also you can easily change detection sequence in the code.
