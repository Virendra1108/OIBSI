# Basic Firewall Configuration with UFW

## Objective

The purpose of this project is to configure a basic firewall using UFW (Uncomplicated Firewall) on a Linux system. The goal is to allow secure remote access via SSH while blocking unwanted traffic such as HTTP.

## Tools Used

- UFW (Uncomplicated Firewall)
- Operating System: Ubuntu Linux

## Steps Performed

1. Install UFW if it is not already installed:
   ```
   sudo apt update
   sudo apt install ufw
   ```

2. Reset existing firewall rules to default:
   ```
   sudo ufw reset
   ```

3. Allow incoming SSH connections on port 22:
   ```
   sudo ufw allow ssh
   ```

4. Deny incoming HTTP traffic on port 80:
   ```
   sudo ufw deny http
   ```

5. Enable the firewall:
   ```
   sudo ufw enable
   ```

6. Check the firewall status and verify the rules:
   ```
   sudo ufw status verbose
   ```

## Expected Result

Once configured, the firewall should:
- Allow incoming SSH connections (port 22)
- Block incoming HTTP connections (port 80)
- Be in an active and enforced state

## Files Included

- `ufw_configuration.sh`: Shell script that automates the configuration steps
- `screenshot_ufw_status.png`: Screenshot showing the result of the `ufw status verbose` command
- `README.md`: Documentation explaining the purpose, steps, and outcome

## Notes

Before enabling the firewall, ensure that SSH access is properly configured. Blocking SSH by mistake can lock you out of a remote server. Always test connectivity after applying firewall rules to verify that critical services remain reachable.
