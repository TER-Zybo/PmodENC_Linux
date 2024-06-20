# Linux C Application for Displaying Encoder Values

> This branch is dedicated to the implementation of PmodENC rotary encoder with GPIO and interrupt. This project was built with vivado v2023.2.

![design](design.png)

## Overview

This project demonstrates how to create a Linux C application that reads encoder values from Digilent PmodENC rotary encoder and displays them. The process begins with a hardware block design in Vivado, followed by transitioning to writing the C application directly in the Linux user space.

## Repository Structure

The project includes the following directories and files:
```
/hw_with_enc              # Vivado project
/app                      # Linux C application
enc_overlay.dtso          # Device tree overlay for configuring the encoder in the Linux system
```

## How to Use
For detailed instructions on setting up and running the project, please refer to the dedicated [online documentation](https://ter-zybo.github.io/Documentations/docs/pmodenc_linux/).
