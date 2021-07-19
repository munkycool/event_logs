cd Desktop

Get-EventLog -LogName System -After (get-date).AddDays(-1)  > last_24.txt
Get-EventLog -EntryType Error > errors.txt
Get-EventLog -InstanceID 16 -LogName System
Get-EventLog -LogName System -Newest 20
Get-EventLog -LogName System -Source *
$Events = Get-EventLog -LogName System -Newest 500
$Events | Group-Object -Property Source -NoElement | Sort-Object -Property Count -Descending | ft -AutoSize -Wrap 