#!/bin/bash

gpio -g mode 5 out
gpio -g mode 6 out
gpio -g mode 19 out
gpio -g mode 26 out
gpio -g mode 12 out
gpio -g mode 13 out


gpio -g write 5 1
gpio -g write 6 1
gpio -g write 19 1
gpio -g write 26 1
gpio -g write 12 0
gpio -g write 13 1

