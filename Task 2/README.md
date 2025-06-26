# Basic Firewall Configuration with UFW

## Objective

The purpose of this project is to configure a basic firewall using UFW (Uncomplicated Firewall) on a Linux system. The goal is to allow secure remote access via SSH while blocking unwanted traffic such as HTTP.

## Tools Used

- UFW (Uncomplicated Firewall)
- Operating System: Ubuntu Linux

## Steps Performed

1. Install UFW if it is not already installed:
   ```
   sudo apt install ufw -y
   ```

2. Allow incoming SSH connections on port 22:
   ```
   sudo ufw allow ssh
   ```

3. Deny incoming HTTP traffic on port 80:
   ```
   sudo ufw deny http
   ```

4. Enable the firewall:
   ```
   sudo ufw enable
   ```

5. Check the firewall status and verify the rules:
   ```
   sudo ufw status 
   ```

## Expected Result

Once configured, the firewall should:
- Allow incoming SSH connections (port 22)
- Block incoming HTTP connections (port 80)
- Be in an active and enforced state

## Files Included

- `ufw_config.sh`: Shell script that automates the configuration steps
- `status_screenshot.png`: Screenshot showing the result of the `ufw status verbose` command
- `README.md`: Documentation explaining the purpose, steps, and outcome

## Demo Videos
<img width="527" alt="image" src="https://github.com/user-attachments/assets/144ece79-ad85-40b9-9ca5-53d02d6b1a40" />

link of video : https://youtu.be/MNRB4w4xiKg
