# Real-World Use Cases for Event Viewer Log Hunting

## 1. Failed Logins Brute Force Attack
### Scenario
An attacker is attempting to brute force a user's login by repeatedly entering incorrect passwords.

### Steps to Detect
- Go to **Windows Logs > Security**.
- Apply a filter for **Event ID 4625** (failed login attempts).
- Look for repeated login attempts from the same source IP or for the same account in a short period of time.

### Actionable Steps
- Investigate the account and source of failed attempts.
- Lock the account or IP if suspicious behavior continues.
- Correlate with other logs for additional indicators of compromise.

---

## 2. Privilege Escalation Monitoring
### Scenario
A user account is granted higher privileges, potentially as part of a privilege escalation attack.

### Steps to Detect
- Go to **Windows Logs > Security**.
- Filter for **Event ID 4672** (special privileges assigned to a new logon).
- Identify any accounts that are granted privileged access outside of normal procedures.

### Actionable Steps
- Verify the authenticity of the account activity.
- Check if the account’s actions align with expected behavior.
- If unexpected, escalate the issue to security teams for further investigation.
