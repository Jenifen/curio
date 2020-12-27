# An array of radio control pulse-width modulated (PWM) values in units of microseconds.
# 
# Typically analog radio control pulses are published at 50Hz and each pulse lasts
# between 1000 and 2000 µs.
# 
# The channel PWM values may also be obtained by decoding a radio control serial
# signal such as SUMD which operates at a higher frequency (100 Hz).

uint16[] channels
