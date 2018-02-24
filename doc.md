1) Need to serialize file to make it easy for work and explore 2018.02.24 15:16
Write code it dose not serialize correctly, but speed is
Read and convert CSV: 20sec
Serialize: 8 sec
Write dump: 0.6 sec
Read and Restore: 10sec ; ( wroing time on bugy code 0.2 sec;) 
So resore from bin is 100 times faster.

2) Fixed code. now Read Binary data of 1 000 000 lines take 10 seconds. (2018.02.24 21:48)
so CSV is 2 times longer