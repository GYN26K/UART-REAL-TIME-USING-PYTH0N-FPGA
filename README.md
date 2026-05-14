# UART REAL-TIME USING PYTHON + FPGA

Real-time UART communication between Basys3 FPGA and Python using Verilog and Jupyter Notebook.

---

## Features

- UART Transmitter and Receiver
- FPGA ↔ Python communication
- Live HEX and ASCII monitoring
- 7-Segment display output
- UART data logging
- USB-UART communication
- Switch-based UART transmission

---

## Hardware Used

- Basys3 FPGA Board
- USB-UART
- Onboard switches
- Buttons
- LEDs
- 7-Segment Display

---

## Software Used

- Vivado
- Verilog HDL
- Python 3
- Jupyter Notebook
- PySerial

---

## UART Configuration

| Parameter | Value |
|---|---|
| Clock Frequency | 100 MHz |
| Baud Rate | 9600 |
| Data Bits | 8 |
| Stop Bits | 1 |
| Parity | None |

---

## System Flow

```text
FPGA Switches
      ↓
UART Transmitter
      ↓
USB UART
      ↓
Python / Jupyter Notebook
      ↓
HEX + ASCII Display
```

---

## Working

1. Set switch values on FPGA  
2. Press transmit button  
3. FPGA sends UART data  
4. Python receives and displays HEX + ASCII values  
5. Data can also be stored in `.hex` files  

---

## Python Setup

Install PySerial:

```bash
pip install pyserial
```

Run Jupyter Notebook:

```bash
jupyter notebook
```

---

## Files

| File | Description |
|---|---|
| `top_module.v` | Top module |
| `transmittor.v` | UART transmitter |
| `receiver.v` | UART receiver |
| `baud_rate_gen.v` | Baud generator |
| `debounce_file.v` | Debounce logic |
| `display_unit.v` | Display module |
| `seg7_display.v` | 7-segment display |
| `FPGA_UART_conversion.py` | Python UART monitor |

---

## Output

- Live UART communication
- HEX data display
- ASCII monitoring
- FPGA to Python data transfer
- Real-time UART debugging

---

## Author

Yashmith Gali
