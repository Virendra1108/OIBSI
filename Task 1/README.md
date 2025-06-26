# Basic Network Scanning with Nmap

## Objective

The objective of this project is to perform a basic network scan using Nmap in order to identify open ports and services running on a local or virtual machine.

## Tools Used

- Nmap (Network Mapper)
- Operating System: Ubuntu/Linux

## Steps Performed

1. Install Nmap:
   sudo apt update
   sudo apt install nmap

2. running nmap scan for open ports:   nmap -sS -sV -O -p- 10.0.2.15

3. Save the scan output to a text file:   nmap -sV 10.0.2.15 -oN nmap_scan_results.txt

## Files Included
- `nmap_scan_reult.txt`: Contains result/output of Nmap scaning in text format.
-  `output_screenshot.jpg`: contains screenshot of nmap scan output.

## Demo Video
![image](https://github.com/user-attachments/assets/bc639399-5a08-4ffb-8252-f3490e734fdb)

link of video: https://youtu.be/HKUczzB_x1w

