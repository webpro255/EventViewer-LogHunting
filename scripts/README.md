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


# XML Log Hunting Queries

This script contains all XML queries for various log hunting use cases, including brute force detection, privilege escalation monitoring, and account lockouts.

## How to Use:

1. Open **Event Viewer**.
2. Navigate to the log (e.g., **Windows Logs > Security**).
3. Right-click the log and select **Filter Current Log...**.
4. Switch to the **XML** tab.
5. Check the box for **Edit query manually**.
6. Paste the relevant query from the `log_hunting_queries.xml` file.
7. Click **OK** to apply the filter.

## Queries Included:

- **Brute Force Login Attempts**: Filters for Event ID 4625.
- **Privilege Escalation Monitoring**: Filters for Event ID 4672.
- **Logon Failures and Successes**: Filters for Event IDs 4624 and 4625.
- **After-Hours Logon Attempts**: Filters logons outside regular business hours.
- **Account Lockouts**: Filters for Event ID 4740.
- **Logon Attempts from Specific IP**: Filters logon attempts from a specific IP address.


