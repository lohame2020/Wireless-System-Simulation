clear all; close all;

#
# In this program we simulate the effects of an additive noise into a signal source s(t). 
#
#  s(t)-----(sum)-------r(t)
#             |
#             |
#            n(t)


# 
# Transmitter 
#

x = 1:100;
voice = sin(x);

# Convert to digital 

digital = sign(voice);
#area(x,digital);


#
# Channel
#

noise = awgn(voice,-20);

# additive channel

raw_receiver = noise + digital;


subplot(2, 1, 1)
area(x, digital);
subplot(2, 1, 2)
area(x, raw_receiver);

# Sent/Received

pre_ber = digital - raw_receiver;
bits_received = find(pre_ber < -1); 
BER = numel(bits_received)/numel(digital)  
