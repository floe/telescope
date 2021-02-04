#!/usr/bin/python3
from gpiozero import PhaseEnableMotor
from time import sleep

motor = PhaseEnableMotor(2, 3)   # focus motor
#motor = PhaseEnableMotor(15, 14) # drive motor
motor.forward(0.5)
sleep(5)
motor.stop()
