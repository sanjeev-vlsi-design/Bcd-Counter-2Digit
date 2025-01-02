2-Digit BCD Counter
Overview
This project implements a 2-digit Binary Coded Decimal (BCD) counter. A BCD counter counts from 00 to 99 in decimal format, with each digit represented in a 4-bit binary form. The design is commonly used in digital systems for numerical displays, clocks, and counters.

Features
Counts from 00 to 99: The counter cycles through all possible 2-digit BCD numbers.
Modular Design: Split into smaller modules for easy readability and reusability.
Reset Capability: Resets the counter to 00.
Synchronous Design: Ensures precise timing by relying on clock signals.
Clock Enable: Allows counting to be paused or resumed.
Inputs and Outputs
Inputs:
Clock (clk): Drives the counter operation.
Reset (rst): Resets the counter to 00.
Enable (en): Enables counting when asserted.
Outputs:
BCD Tens (tens): Represents the tens place of the counter (4-bit binary).
BCD Units (units): Represents the units place of the counter (4-bit binary).
