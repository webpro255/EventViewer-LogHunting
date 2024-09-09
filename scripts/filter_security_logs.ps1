# PowerShell script to filter and export security logs related to failed logins and privilege escalations

Get-WinEvent -FilterHashtable @{LogName='Security'; ID=4625,4672} | Export-Csv -Path "C:\Logs\security_events.csv" -NoTypeInformation
