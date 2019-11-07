function Get-SystemUptime ($computer = "$env:computername") {
  $lastboot = [System.Management.ManagementDateTimeconverter]::ToDateTime("$((gwmi  Win32_OperatingSystem).LastBootUpTime)")
  $uptime = (Get-Date) - $lastboot
  #Write-Host "System Uptime for $computer is: " $uptime.days "days" $uptime.hours "hours" $uptime.minutes "minutes" $uptime.seconds "seconds"
  return (($uptime.days).ToString()+"d:"+($uptime.hours).ToString()+"h:"+$uptime.minutes.ToString()+"m:"+($uptime.seconds).ToString()+"s")
}

Get-SystemUptime