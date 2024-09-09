# Event Viewer Log Hunting Scripts and Queries

This folder contains PowerShell scripts and XML queries designed for log hunting using Windows Event Viewer. These tools can help track specific security events and detect suspicious activities.

## PowerShell Scripts

- `filter_security_logs.ps1`: PowerShell script to filter Event Viewer logs for specific Event IDs (e.g., 4624, 4625) and export them to a CSV file.

## XML Queries for Event Viewer

These XML queries can be used directly in Event Viewer to filter specific events. Follow the steps below to use them:

### How to Use XML Queries in Event Viewer:

1. Open **Event Viewer**.
2. Navigate to the desired log (e.g., **Windows Logs > Security**).
3. Right-click on the log and select **Filter Current Log...**.
4. Go to the **XML** tab.
5. Check the box for **Edit query manually**.
6. Copy and paste the contents of the desired XML file (e.g., `brute_force_logins.xml`) into the query box.
7. Click **OK** to apply the filter.

### Available XML Queries:

- `brute_force_logins.xml`: Detect multiple failed login attempts (Event ID 4625).
- `privilege_escalation.xml`: Track privileged logons (Event ID 4672).
- `logon_tracking.xml`: Monitor both successful and failed logons (Event IDs 4624 and 4625).
- `account_lockouts.xml`: Detect account lockouts (Event ID 4740).

