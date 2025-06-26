# Exploiting SQL Injection in DVWA (Low Security)

## Objective

The goal of this task is to demonstrate how a SQL Injection vulnerability can be exploited in the DVWA (Damn Vulnerable Web Application) environment when it is set to Low Security mode. This serves as a learning exercise for understanding how improperly sanitized user input can compromise a web application's database.

## Environment Setup

- DVWA (Damn Vulnerable Web Application)
- APACHE server with PHP and MySQL
- Ubuntu Linux
- Web browser (e.g., Firefox)

## Description of the Attack

SQL Injection is a web security vulnerability that allows an attacker to interfere with the queries that an application makes to its database. It usually occurs when user input is incorrectly filtered for string literal escape characters embedded in SQL statements.

In DVWA with Low security level, user inputs are not sanitized or validated, making it vulnerable to SQL Injection. An attacker can manipulate input fields to execute arbitrary SQL code on the server.

## Steps to Exploit SQL Injection in DVWA (Low)

1. Open DVWA in your browser and log in using the default credentials.
2. Navigate to the "SQL Injection" module from the left menu.
3. Ensure the DVWA security level is set to Low under the "DVWA Security" tab.
4. In the input field that asks for a user ID, enter the following payload:
   ```
   1' OR '1'='1
   ```
5. Click the "Submit" button.

This payload closes the original query condition and adds an always-true condition (`'1'='1'`), causing the database to return all rows from the users table.

## Result of the Attack

The server executes the following SQL query:
```
SELECT first_name, last_name FROM users WHERE user_id = '1' OR '1'='1';
```

Because `'1'='1'` is always true, the query returns all user records, including usernames and full names, effectively bypassing the intended access restriction.

## Risk and Impact

If this vulnerability were present in a real-world application:
- An attacker could read sensitive data from the database
- Modify or delete data
- Perform administrative operations
- Potentially gain access to the underlying operating system

## Prevention Measures

To prevent SQL Injection vulnerabilities:
- Use prepared statements (parameterized queries)
- Validate and sanitize all user input
- Use stored procedures where possible
- Apply the principle of least privilege for database access
- Use a web application firewall

## Files Included

- `injection_screenshot.png`: Screenshots of the SQL injection process and result.
- `sql_injection_exploit.sh.txt`: script for sql injection.

## Demo video 
<img width="532" alt="image" src="https://github.com/user-attachments/assets/286a1e7d-eee6-41e2-a1a5-7fff08e0d8a4" />

link of video : https://youtu.be/rrhAe8yJ0ec
