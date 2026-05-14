# UART REAL-TIME USING PYTHON + FPGA

Real-time UART communication system using Verilog on the Basys3 FPGA board with live Python/Jupyter monitoring.

---

## Features

- UART Transmitter and Receiver using Verilog
- Real-time FPGA ↔ Python communication
- Live HEX + ASCII logging
- 7-Segment display visualization
- FPGA memory buffering
- UART data monitoring using Jupyter Notebook
- USB-UART communication
- Switch-controlled UART input

---

## Hardware

- Basys3 FPGA Board
- USB-UART Interface
- Onboard switches/buttons
- 7-segment display
- LEDs

---

## Software

- Vivado Design Suite
- Verilog HDL
- Python 3
- Jupyter Notebook
- PySerial

## UART Configuration

| Parameter | Value |
|---|---|
| Clock Frequency | 100 MHz |
| Baud Rate | 9600 |
| Data Bits | 8 |
| Stop Bits | 1 |
| Parity | None |
| UART Format | 8N1 |

---

## System Architecture

```text
Switches
   ↓
UART Transmitter
   ↓
USB UART
   ↓
Python / Jupyter Notebook
   ↓
HEX + ASCII Logging
```

---

## FPGA Workflow

### 1. Generate Bitstream


### 2. Program FPGA

Open Hardware Manager and program the Basys3 FPGA board.

---

### 3. Give Input

- Set switch values
- Press TX button
- UART transmits switch data



### 4. Real-Time UART Transmission

FPGA transmits UART bytes through onboard USB-UART.

---

## Python Setup

Install dependencies:

```bash
pip install pyserial
```

Run Jupyter Notebook:

```bash
jupyter notebook
```

---


## FPGA Memory Buffer

Incoming UART bytes are stored in FPGA memory.


## 7-Segment Display

Latest UART byte is displayed in hexadecimal format.


## Files

| File | Description |
|---|---|
| `top_module.v` | Main UART top module |
| `transmittor.v` | UART transmitter |
| `receiver.v` | UART receiver |
| `baud_rate_generator.v` | Baud rate generator |
| `newdebounce.v` | Debounce logic |
| `seven_segment_display.v` | 7-segment display driver |
| `uart_realtime.ipynb` | Python UART notebook |

---

## Learning Outcomes

This project demonstrates:

- FPGA digital design
- UART protocol implementation
- FSM design
- Hardware/software integration
- Real-time FPGA debugging
- UART communication
- Memory buffering
- Python-FPGA interfacing

---

## Author

Yashmith Gali
