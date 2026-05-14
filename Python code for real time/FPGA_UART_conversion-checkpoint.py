{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "576f63fd-8776-4c9e-9930-4c0ca85db35e",
   "metadata": {},
   "outputs": [],
   "source": [
    "import serial\n",
    "from datetime import datetime"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "05b2f38f-b555-4d86-9f2e-b45637aa52d6",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Connected to FPGA UART\n"
     ]
    }
   ],
   "source": [
    "ser = serial.Serial(\n",
    "    port='COM6',   \n",
    "    baudrate=9600,\n",
    "    timeout=1\n",
    ")\n",
    "\n",
    "print(\"Connected to FPGA UART\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "50e61765-9d0a-4a29-9184-d833f6974586",
   "metadata": {},
   "outputs": [
    {
     "name": "stdin",
     "output_type": "stream",
     "text": [
      "SEND :  A\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "DONE : A\n"
     ]
    },
    {
     "name": "stdin",
     "output_type": "stream",
     "text": [
      "SEND :  C\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "DONE : C\n"
     ]
    },
    {
     "name": "stdin",
     "output_type": "stream",
     "text": [
      "SEND :  F\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "DONE : F\n"
     ]
    },
    {
     "name": "stdin",
     "output_type": "stream",
     "text": [
      "SEND :  done\n"
     ]
    }
   ],
   "source": [
    "while True:\n",
    "\n",
    "    msg = input(\"SEND : \")\n",
    "while True:\n",
    "\n",
    "    data = ser.read()\n",
    "\n",
    "    if data:\n",
    "\n",
    "        value = data[0]\n",
    "\n",
    "        ascii_char = chr(value)\n",
    "\n",
    "        hex_value = format(value, '02X')\n",
    "\n",
    "        print(\n",
    "            f\"ASCII: {ascii_char} | \"\n",
    "            f\"HEX: {hex_value}\"\n",
    "        )\n",
    "\n",
    "        if value == 64:\n",
    "\n",
    "            print(\"EXIT\")\n",
    "\n",
    "            break\n",
    "    if msg == \"done\":\n",
    "        break\n",
    "\n",
    "    ser.write(msg.encode())\n",
    "\n",
    "    print(\"DONE :\", msg)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "bbf88a0e-0f64-46f7-b878-d15153145d88",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "ASCII: C | HEX: 43\n",
      "ASCII: F | HEX: 46\n",
      "ASCII: è | HEX: E8\n",
      "ASCII: è | HEX: E8\n",
      "ASCII:   | HEX: A0\n",
      "ASCII:   | HEX: A0\n",
      "ASCII: @ | HEX: 40\n",
      "EXIT\n"
     ]
    }
   ],
   "source": [
    "while True:\n",
    "\n",
    "    data = ser.read()\n",
    "\n",
    "    if data:\n",
    "\n",
    "        value = data[0]\n",
    "\n",
    "        ascii_char = chr(value)\n",
    "\n",
    "        hex_value = format(value, '02X')\n",
    "\n",
    "        print(\n",
    "            f\"ASCII: {ascii_char} | \"\n",
    "            f\"HEX: {hex_value}\"\n",
    "        )\n",
    "\n",
    "        if value == 64:\n",
    "\n",
    "            print(\"EXIT\")\n",
    "\n",
    "            break"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "2a78377a-5d6a-485a-bb7e-7c5514602be0",
   "metadata": {},
   "outputs": [],
   "source": [
    "hex_file = open(\"data.hex\", \"a\")\n",
    "\n",
    "while True:\n",
    "\n",
    "    data = ser.read()\n",
    "\n",
    "    if data:\n",
    "\n",
    "        value = data[0]\n",
    "\n",
    "        hex_value = format(value, '02X')\n",
    "\n",
    "        hex_file.write(hex_value + '\\n')\n",
    "\n",
    "        hex_file.flush()\n",
    "\n",
    "        print(hex_value)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "10b9f376-3a56-4596-87d8-1e813727edf5",
   "metadata": {},
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3 (ipykernel)",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.12.7"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
