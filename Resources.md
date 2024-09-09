# Additional Resources for Log Hunting

## 1. Tools to Parse and Analyze Logs

- **Event Log Explorer**: A tool to browse, analyze, and monitor Windows event logs in a more user-friendly interface. [Download here](https://www.eventlogxp.com/)
  
- **ELK Stack (Elasticsearch, Logstash, Kibana)**: Use this stack to store and visualize Windows Event Logs. [Learn more](https://www.elastic.co/what-is/elk-stack)

- **Sysmon**: A powerful logging tool that extends the default Windows Event Viewer logging. [Learn more](https://docs.microsoft.com/en-us/sysinternals/downloads/sysmon)

## 2. Log Search and Analysis Commands

- **PowerShell Log Search**:
   Use the following command to filter Event Viewer logs by time:
   ```powershell
   Get-WinEvent -FilterHashtable @{LogName='Security'; StartTime=(Get-Date).AddDays(-7)} | Format-Table TimeCreated, ID, Message
   ```
- **Logstash**: A configuration for ingesting Windows logs with Logstash for more complex analysis.
``sh
input {
   file {
      path => "C:/Logs/security_events.csv"
      start_position => "beginning"
   }
}
output {
   elasticsearch {
      hosts => ["localhost:9200"]
      index => "windows-events"
   }
}
``
## 3. Learning Resources

1. [Advanced XML Filtering in Windows Event Viewer](https://techcommunity.microsoft.com/t5/ask-the-directory-services-team/advanced-xml-filtering-in-the-windows-event-viewer/ba-p/399761)

2. [Windows Security Log Events (Event ID 4624)](https://learn.microsoft.com/en-us/previous-versions/windows/it-pro/windows-10/security/threat-protection/auditing/event-4624)

3. [Windows Security Log Events](https://learn.microsoft.com/en-us/windows/security/threat-protection/)

4. [MITRE ATT&CK Framework](https://attack.mitre.org/)





