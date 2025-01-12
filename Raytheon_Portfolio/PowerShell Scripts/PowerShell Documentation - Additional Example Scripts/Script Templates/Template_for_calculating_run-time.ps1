#Calculate the run-time of the script
$StartTime = Get-Date 

<#
##-----Script Code-----##
#>

#Calculate the run-time of the script
$RunTime = New-TimeSpan -Start $StartTime -End (get-date) 
"Execution time was {0} hours, {1} minutes, {2} seconds and {3} milliseconds." -f $RunTime.Hours,  $RunTime.Minutes,  $RunTime.Seconds,  $RunTime.Milliseconds