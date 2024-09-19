# FPGA Parking System on Basys3

## Created By
- Charunthon Limseelo
- Aunyada Kumraksa
- Pakawat Phasook
- Nanthida Teankrajang
- Narinthorn Navabutr

## Overview
This project implements a simple parking system using the Basys3 FPGA development board. The system monitors and displays the available parking slots on a seven-segment display and outputs the current floor status on an LED. It is designed to handle multiple floors and slots using basic logic components like LUTs, flip-flops, and counters.

## Features
- **Clock Control**: A slow clock is generated from the main clock input to drive various timing-related components.
- **Multiple Inputs**: Two sets of 5-bit inputs represent parking slots for floors.
- **Seven-Segment Display**: Displays available slots or floor information.
- **LED Indicators**: Displays the current parking floor.
- **Slot Availability**: Tracks the availability of parking slots and displays it through the available signals.
  
## Components
- **Inputs**:
  - `clock`: The main clock input.
  - `floor`: Input representing the parking floor.
  - `slot[4:0]` and `slot2[4:0]`: 5-bit inputs representing parking slots.
  
- **Outputs**:
  - `led_floor`: Displays the current floor status.
  - `available[4:0]` and `availablex[4:0]`: Displays available parking slots.
  - `seg[6:0]`: Seven-segment display outputs.
  - `an[3:0]`: Controls which segment of the display is active.

- **Logic Components**:
  - **LUTs**: Used to calculate the availability of slots and control the seven-segment display.
  - **FDRE**: Registers used for storing slot and floor states.
  - **Counters**: Manage timing and sequencing for display and clock operations.

## How it Works
1. The clock signal is received and processed to generate different timing signals.
2. Parking slot inputs are monitored and stored using flip-flops.
3. Availability of slots is calculated using LUTs, and the result is displayed on the seven-segment display.
4. The current floor is output through an LED.

## How to Use
1. Connect the inputs for `clock`, `floor`, `slot`, and `slot2`.
2. Observe the `led_floor` for the floor information.
3. Check the seven-segment display (`seg[6:0]`) for the current availability of parking slots.
4. Monitor the `available[4:0]` outputs for slot availability.

## Dependencies
This project is designed for the Basys3 FPGA board and requires Xilinx Vivado for synthesis and implementation.

## Future Improvements
- Adding more floors and slots.
- Displaying additional information on the seven-segment display.
- Implementing a user interface for easy configuration.

