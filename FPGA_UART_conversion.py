#!/usr/bin/env python
# coding: utf-8

# In[1]:


import serial
from datetime import datetime


# In[3]:


ser = serial.Serial(
    port='COM6',   
    baudrate=9600,
    timeout=1
)

print("Connected to FPGA UART")


# In[5]:


while True:

    data = ser.read()

    if data:

        value = data[0]

        ascii_char = chr(value)

        hex_value = format(value, '02X')

        print(
            f"ASCII: {ascii_char} | "
            f"HEX: {hex_value}"
        )


# In[ ]:


hex_file = open("data.hex","a")

while True:

    data = ser.read()

    if data:

        value = data[0]

        hex_value = format(value, '02X')

        hex_file.write(hex_value + '\n')

        hex_file.flush()

        print(hex_value)


# In[ ]:





# In[ ]:




