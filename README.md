# EventViewer-LogHunting
This repository provides a guide on how to effectively use Windows Event Viewer to hunt for security-relevant logs. It's designed to enhance log analysis and threat hunting.
## Key Skills You Will Learn
- **Understanding Event Viewer**: Navigate Windows Event Viewer and understand its structure.
- **Identifying Security Logs**: Find and analyze security-related logs such as user logins, failed login attempts, and suspicious activities.
- **Log Hunting Techniques**: Strategies for hunting specific threat indicators in Event Viewer logs.
- **Use Cases**: Practical examples of real-world cyber incidents and how Event Viewer can help in detection.

## How to Use Event Viewer for Log Hunting
### Step 1: Access Event Viewer
- Open the Run dialog by pressing `Win + R`, then type `eventvwr` and hit Enter.
- Event Viewer opens with categories like **Application**, **Security**, **System**, and more.

### Step 2: Explore Security Logs
- Go to **Windows Logs > Security** to start viewing logs relevant to cybersecurity.
- Focus on Event IDs like:
  - **4624**: Successful login.
  - **4625**: Failed login.
  - **4648**: A logon attempt using explicit credentials.
  - **4672**: Special privileges assigned to a new logon.

### Step 3: Apply Filters
- Right-click on **Security** and select **Filter Current Log**.
- Set filters for specific Event IDs to narrow down logs that are relevant to threat hunting.

### Step 4: Hunting for Indicators of Compromise (IoC)
- Search for suspicious activities like:
  - Multiple failed logins (Event ID 4625).
  - Accounts logging in at unusual times.
  - Privileged accounts being used frequently (Event ID 4672).

### Step 5: Export Logs for Further Analysis
- Right-click on any log category (e.g., **Security**) and select **Save All Events As** to export for offline analysis.

## Real-World Use Cases
1. **Failed Logins Brute Force Attack**:
   - Example log patterns and steps to detect brute force login attempts.
2. **Privilege Escalation Monitoring**:
   - How to spot privilege escalation attempts using Event ID 4672.

## Tools to Complement Event Viewer
- **Sysmon**: Enhance the logging capabilities beyond standard Event Viewer logs.
- **SIEM Systems**: How to forward logs from Event Viewer to SIEM platforms for broader monitoring.
